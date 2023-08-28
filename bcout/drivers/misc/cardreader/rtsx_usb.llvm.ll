; ModuleID = '../bcout/drivers/misc/cardreader/rtsx_usb.llvm.bc'
source_filename = "drivers/misc/cardreader/rtsx_usb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_rtsx_usb_driver_init6:\09\09\09"
module asm ".long\09rtsx_usb_driver_init - .\09\09\09"
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
%struct.kmem_cache = type opaque
%struct.mfd_cell = type { i8*, i32, i32, i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)*, i8*, i64, %struct.property_entry*, i8*, i64, i8, %struct.mfd_cell_acpi_match*, i32, %struct.resource*, i8, i8, i8**, i32 }
%struct.platform_device = type { i8*, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, %struct.resource*, %struct.platform_device_id*, i8*, %struct.mfd_cell*, %struct.pdev_archdata }
%struct.platform_device_id = type { [20 x i8], i64 }
%struct.pdev_archdata = type {}
%struct.property_entry = type opaque
%struct.mfd_cell_acpi_match = type { i8*, i64 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.rtsx_ucr = type { i16, i16, i32, i8, i8, i32, i8*, i32, i8*, %struct.usb_device*, %struct.usb_interface*, %struct.usb_sg_request, i8*, i64, %struct.timer_list, %struct.mutex }
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
%struct.usb_sg_request = type { i32, i64, %struct.spinlock, %struct.usb_device*, i32, i32, %struct.urb**, i32, %struct.completion }
%struct.urb = type { %struct.kref, i32, i8*, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.usb_anchor*, %struct.usb_device*, %struct.usb_host_endpoint*, i32, i32, i32, i32, i8*, i64, %struct.scatterlist*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i8*, void (%struct.urb*)*, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.scatterlist = type opaque
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__param_str_polling_pipe = internal constant [22 x i8] c"rtsx_usb.polling_pipe\00", align 16, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@polling_pipe = internal global i32 1, align 4, !dbg !3985
@__param_polling_pipe = internal constant %struct.kernel_param { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__param_str_polling_pipe, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @polling_pipe to i8*) } }, section "__param", align 8, !dbg !3899
@__UNIQUE_ID_polling_pipetype211 = internal constant [35 x i8] c"rtsx_usb.parmtype=polling_pipe:int\00", section ".modinfo", align 1, !dbg !3951
@__UNIQUE_ID_polling_pipe212 = internal constant [58 x i8] c"rtsx_usb.parm=polling_pipe:polling pipe (0: ctl, 1: bulk)\00", section ".modinfo", align 1, !dbg !3956
@__const.rtsx_usb_card_exclusive_check.cd_mask = private unnamed_addr constant [2 x i16] [i16 6, i16 5], align 2
@__UNIQUE_ID___addressable_rtsx_usb_driver_init214 = internal global i8* bitcast (i32 ()* @rtsx_usb_driver_init to i8*), section ".discard.addressable", align 8, !dbg !3961
@rtsx_usb_driver = internal global %struct.usb_driver { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @rtsx_usb_probe, void (%struct.usb_interface*)* @rtsx_usb_disconnect, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* @rtsx_usb_suspend, i32 (%struct.usb_interface*)* @rtsx_usb_resume, i32 (%struct.usb_interface*)* @rtsx_usb_reset_resume, i32 (%struct.usb_interface*)* @rtsx_usb_pre_reset, i32 (%struct.usb_interface*)* @rtsx_usb_post_reset, %struct.usb_device_id* getelementptr inbounds ([4 x %struct.usb_device_id], [4 x %struct.usb_device_id]* @rtsx_usb_usb_ids, i32 0, i32 0), %struct.attribute_group** null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 10 }, align 8, !dbg !3987
@__exitcall_rtsx_usb_driver_exit = internal global void ()* @rtsx_usb_driver_exit, section ".exitcall.exit", align 8, !dbg !3963
@__UNIQUE_ID_file215 = internal constant [47 x i8] c"rtsx_usb.file=drivers/misc/cardreader/rtsx_usb\00", section ".modinfo", align 1, !dbg !3968
@__UNIQUE_ID_license216 = internal constant [24 x i8] c"rtsx_usb.license=GPL v2\00", section ".modinfo", align 1, !dbg !3973
@__UNIQUE_ID_author217 = internal constant [52 x i8] c"rtsx_usb.author=Roger Tseng <rogerable@realtek.com>\00", section ".modinfo", align 1, !dbg !3978
@__UNIQUE_ID_description218 = internal constant [52 x i8] c"rtsx_usb.description=Realtek USB Card Reader Driver\00", section ".modinfo", align 1, !dbg !3983
@jiffies = external dso_local global i64, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"rtsx_usb\00", align 1
@rtsx_usb_usb_ids = internal constant [4 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3034, i16 297, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id { i16 3, i16 3034, i16 313, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id { i16 3, i16 3034, i16 320, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !4135
@rtsx_usb_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4048
@.str.2 = private unnamed_addr constant [16 x i8] c"&ucr->dev_mutex\00", align 1
@rtsx_usb_cells = internal constant [2 x %struct.mfd_cell] [%struct.mfd_cell { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 0, i32 0, i32 (%struct.platform_device*)* null, i32 (%struct.platform_device*)* null, i32 (%struct.platform_device*)* null, i32 (%struct.platform_device*)* null, i8* null, i64 0, %struct.property_entry* null, i8* null, i64 0, i8 0, %struct.mfd_cell_acpi_match* null, i32 0, %struct.resource* null, i8 0, i8 0, i8** null, i32 0 }, %struct.mfd_cell { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0, i32 (%struct.platform_device*)* null, i32 (%struct.platform_device*)* null, i32 (%struct.platform_device*)* null, i32 (%struct.platform_device*)* null, i8* null, i64 0, %struct.property_entry* null, i8* null, i64 0, i8 0, %struct.mfd_cell_acpi_match* null, i32 0, %struct.resource* null, i8 0, i8 0, i8** null, i32 0 }], align 16, !dbg !4051
@.str.3 = private unnamed_addr constant [15 x i8] c"rtsx_usb_sdmmc\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"rtsx_usb_ms\00", align 1
@llvm.used = appending global [10 x i8*] [i8* bitcast (%struct.kernel_param* @__param_polling_pipe to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__UNIQUE_ID_polling_pipetype211, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__UNIQUE_ID_polling_pipe212, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_rtsx_usb_driver_init214 to i8*), i8* bitcast (void ()* @rtsx_usb_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_rtsx_usb_driver_exit to i8*), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__UNIQUE_ID_file215, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__UNIQUE_ID_license216, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_author217, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_description218, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @rtsx_usb_transfer_data(%struct.rtsx_ucr* %ucr, i32 %pipe, i8* %buf, i32 %len, i32 %num_sg, i32* %act_len, i32 %timeout) #0 !dbg !4146 {
entry:
  %retval = alloca i32, align 4
  %ucr.addr = alloca %struct.rtsx_ucr*, align 8
  %pipe.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %num_sg.addr = alloca i32, align 4
  %act_len.addr = alloca i32*, align 8
  %timeout.addr = alloca i32, align 4
  store %struct.rtsx_ucr* %ucr, %struct.rtsx_ucr** %ucr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr.addr, metadata !4149, metadata !DIExpression()), !dbg !4150
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !4151, metadata !DIExpression()), !dbg !4152
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4153, metadata !DIExpression()), !dbg !4154
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !4155, metadata !DIExpression()), !dbg !4156
  store i32 %num_sg, i32* %num_sg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_sg.addr, metadata !4157, metadata !DIExpression()), !dbg !4158
  store i32* %act_len, i32** %act_len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %act_len.addr, metadata !4159, metadata !DIExpression()), !dbg !4160
  store i32 %timeout, i32* %timeout.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %timeout.addr, metadata !4161, metadata !DIExpression()), !dbg !4162
  %0 = load i32, i32* %timeout.addr, align 4, !dbg !4163
  %cmp = icmp slt i32 %0, 600, !dbg !4165
  br i1 %cmp, label %if.then, label %if.end, !dbg !4166

if.then:                                          ; preds = %entry
  store i32 600, i32* %timeout.addr, align 4, !dbg !4167
  br label %if.end, !dbg !4168

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %num_sg.addr, align 4, !dbg !4169
  %tobool = icmp ne i32 %1, 0, !dbg !4169
  br i1 %tobool, label %if.then1, label %if.else, !dbg !4171

if.then1:                                         ; preds = %if.end
  %2 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4172
  %3 = load i32, i32* %pipe.addr, align 4, !dbg !4173
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !4174
  %5 = bitcast i8* %4 to %struct.scatterlist*, !dbg !4175
  %6 = load i32, i32* %num_sg.addr, align 4, !dbg !4176
  %7 = load i32, i32* %len.addr, align 4, !dbg !4177
  %8 = load i32*, i32** %act_len.addr, align 8, !dbg !4178
  %9 = load i32, i32* %timeout.addr, align 4, !dbg !4179
  %call = call i32 @rtsx_usb_bulk_transfer_sglist(%struct.rtsx_ucr* %2, i32 %3, %struct.scatterlist* %5, i32 %6, i32 %7, i32* %8, i32 %9) #8, !dbg !4180
  store i32 %call, i32* %retval, align 4, !dbg !4181
  br label %return, !dbg !4181

if.else:                                          ; preds = %if.end
  %10 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4182
  %pusb_dev = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %10, i32 0, i32 9, !dbg !4183
  %11 = load %struct.usb_device*, %struct.usb_device** %pusb_dev, align 8, !dbg !4183
  %12 = load i32, i32* %pipe.addr, align 4, !dbg !4184
  %13 = load i8*, i8** %buf.addr, align 8, !dbg !4185
  %14 = load i32, i32* %len.addr, align 4, !dbg !4186
  %15 = load i32*, i32** %act_len.addr, align 8, !dbg !4187
  %16 = load i32, i32* %timeout.addr, align 4, !dbg !4188
  %call2 = call i32 @usb_bulk_msg(%struct.usb_device* %11, i32 %12, i8* %13, i32 %14, i32* %15, i32 %16) #8, !dbg !4189
  store i32 %call2, i32* %retval, align 4, !dbg !4190
  br label %return, !dbg !4190

return:                                           ; preds = %if.else, %if.then1
  %17 = load i32, i32* %retval, align 4, !dbg !4191
  ret i32 %17, !dbg !4191
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtsx_usb_bulk_transfer_sglist(%struct.rtsx_ucr* %ucr, i32 %pipe, %struct.scatterlist* %sg, i32 %num_sg, i32 %length, i32* %act_len, i32 %timeout) #0 !dbg !4192 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !4195, metadata !DIExpression()), !dbg !4200
  %retval = alloca i32, align 4
  %ucr.addr = alloca %struct.rtsx_ucr*, align 8
  %pipe.addr = alloca i32, align 4
  %sg.addr = alloca %struct.scatterlist*, align 8
  %num_sg.addr = alloca i32, align 4
  %length.addr = alloca i32, align 4
  %act_len.addr = alloca i32*, align 8
  %timeout.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.rtsx_ucr* %ucr, %struct.rtsx_ucr** %ucr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr.addr, metadata !4202, metadata !DIExpression()), !dbg !4203
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !4204, metadata !DIExpression()), !dbg !4205
  store %struct.scatterlist* %sg, %struct.scatterlist** %sg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sg.addr, metadata !4206, metadata !DIExpression()), !dbg !4207
  store i32 %num_sg, i32* %num_sg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_sg.addr, metadata !4208, metadata !DIExpression()), !dbg !4209
  store i32 %length, i32* %length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !4210, metadata !DIExpression()), !dbg !4211
  store i32* %act_len, i32** %act_len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %act_len.addr, metadata !4212, metadata !DIExpression()), !dbg !4213
  store i32 %timeout, i32* %timeout.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %timeout.addr, metadata !4214, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4216, metadata !DIExpression()), !dbg !4217
  %0 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4218
  %current_sg = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %0, i32 0, i32 11, !dbg !4219
  %1 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4220
  %pusb_dev = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %1, i32 0, i32 9, !dbg !4221
  %2 = load %struct.usb_device*, %struct.usb_device** %pusb_dev, align 8, !dbg !4221
  %3 = load i32, i32* %pipe.addr, align 4, !dbg !4222
  %4 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !4223
  %5 = load i32, i32* %num_sg.addr, align 4, !dbg !4224
  %6 = load i32, i32* %length.addr, align 4, !dbg !4225
  %conv = zext i32 %6 to i64, !dbg !4225
  %call = call i32 @usb_sg_init(%struct.usb_sg_request* %current_sg, %struct.usb_device* %2, i32 %3, i32 0, %struct.scatterlist* %4, i32 %5, i64 %conv, i32 3072) #8, !dbg !4226
  store i32 %call, i32* %ret, align 4, !dbg !4227
  %7 = load i32, i32* %ret, align 4, !dbg !4228
  %tobool = icmp ne i32 %7, 0, !dbg !4228
  br i1 %tobool, label %if.then, label %if.end, !dbg !4230

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %ret, align 4, !dbg !4231
  store i32 %8, i32* %retval, align 4, !dbg !4232
  br label %return, !dbg !4232

if.end:                                           ; preds = %entry
  %9 = load volatile i64, i64* @jiffies, align 8, !dbg !4233
  %10 = load i32, i32* %timeout.addr, align 4, !dbg !4234
  store i32 %10, i32* %m.addr.i, align 4
  %11 = load i32, i32* %m.addr.i, align 4, !dbg !4235
  %12 = call i1 @llvm.is.constant.i32(i32 %11) #9, !dbg !4237
  br i1 %12, label %if.then.i, label %if.else.i, !dbg !4238

if.then.i:                                        ; preds = %if.end
  %13 = load i32, i32* %m.addr.i, align 4, !dbg !4239
  %cmp.i = icmp slt i32 %13, 0, !dbg !4242
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4243

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !4244
  br label %msecs_to_jiffies.exit, !dbg !4244

if.end.i:                                         ; preds = %if.then.i
  %14 = load i32, i32* %m.addr.i, align 4, !dbg !4245
  %call.i = call i64 @_msecs_to_jiffies(i32 %14) #10, !dbg !4246
  store i64 %call.i, i64* %retval.i, align 8, !dbg !4247
  br label %msecs_to_jiffies.exit, !dbg !4247

if.else.i:                                        ; preds = %if.end
  %15 = load i32, i32* %m.addr.i, align 4, !dbg !4248
  %call2.i = call i64 @__msecs_to_jiffies(i32 %15) #10, !dbg !4250
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !4251
  br label %msecs_to_jiffies.exit, !dbg !4251

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %16 = load i64, i64* %retval.i, align 8, !dbg !4252
  %add = add i64 %9, %16, !dbg !4253
  %17 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4254
  %sg_timer = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %17, i32 0, i32 14, !dbg !4255
  %expires = getelementptr inbounds %struct.timer_list, %struct.timer_list* %sg_timer, i32 0, i32 1, !dbg !4256
  store i64 %add, i64* %expires, align 8, !dbg !4257
  %18 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4258
  %sg_timer2 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %18, i32 0, i32 14, !dbg !4259
  call void @add_timer(%struct.timer_list* %sg_timer2) #8, !dbg !4260
  %19 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4261
  %current_sg3 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %19, i32 0, i32 11, !dbg !4262
  call void @usb_sg_wait(%struct.usb_sg_request* %current_sg3) #8, !dbg !4263
  %20 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4264
  %sg_timer4 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %20, i32 0, i32 14, !dbg !4264
  %call5 = call i32 @del_timer(%struct.timer_list* %sg_timer4) #8, !dbg !4264
  %tobool6 = icmp ne i32 %call5, 0, !dbg !4264
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !4266

if.then7:                                         ; preds = %msecs_to_jiffies.exit
  store i32 -110, i32* %ret, align 4, !dbg !4267
  br label %if.end9, !dbg !4268

if.else:                                          ; preds = %msecs_to_jiffies.exit
  %21 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4269
  %current_sg8 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %21, i32 0, i32 11, !dbg !4270
  %status = getelementptr inbounds %struct.usb_sg_request, %struct.usb_sg_request* %current_sg8, i32 0, i32 0, !dbg !4271
  %22 = load i32, i32* %status, align 8, !dbg !4271
  store i32 %22, i32* %ret, align 4, !dbg !4272
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  %23 = load i32*, i32** %act_len.addr, align 8, !dbg !4273
  %tobool10 = icmp ne i32* %23, null, !dbg !4273
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !4275

if.then11:                                        ; preds = %if.end9
  %24 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4276
  %current_sg12 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %24, i32 0, i32 11, !dbg !4277
  %bytes = getelementptr inbounds %struct.usb_sg_request, %struct.usb_sg_request* %current_sg12, i32 0, i32 1, !dbg !4278
  %25 = load i64, i64* %bytes, align 8, !dbg !4278
  %conv13 = trunc i64 %25 to i32, !dbg !4276
  %26 = load i32*, i32** %act_len.addr, align 8, !dbg !4279
  store i32 %conv13, i32* %26, align 4, !dbg !4280
  br label %if.end14, !dbg !4281

if.end14:                                         ; preds = %if.then11, %if.end9
  %27 = load i32, i32* %ret, align 4, !dbg !4282
  store i32 %27, i32* %retval, align 4, !dbg !4283
  br label %return, !dbg !4283

return:                                           ; preds = %if.end14, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !4284
  ret i32 %28, !dbg !4284
}

; Function Attrs: noredzone
declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i8*, i32, i32*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @rtsx_usb_read_ppbuf(%struct.rtsx_ucr* %ucr, i8* %buf, i32 %buf_len) #0 !dbg !4285 {
entry:
  %ucr.addr = alloca %struct.rtsx_ucr*, align 8
  %buf.addr = alloca i8*, align 8
  %buf_len.addr = alloca i32, align 4
  store %struct.rtsx_ucr* %ucr, %struct.rtsx_ucr** %ucr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr.addr, metadata !4288, metadata !DIExpression()), !dbg !4289
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4290, metadata !DIExpression()), !dbg !4291
  store i32 %buf_len, i32* %buf_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buf_len.addr, metadata !4292, metadata !DIExpression()), !dbg !4293
  %0 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4294
  %1 = load i32, i32* %buf_len.addr, align 4, !dbg !4295
  %conv = trunc i32 %1 to i16, !dbg !4296
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !4297
  %call = call i32 @rtsx_usb_seq_read_register(%struct.rtsx_ucr* %0, i16 zeroext -1536, i16 zeroext %conv, i8* %2) #8, !dbg !4298
  ret i32 %call, !dbg !4299
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtsx_usb_seq_read_register(%struct.rtsx_ucr* %ucr, i16 zeroext %addr, i16 zeroext %len, i8* %data) #0 !dbg !4300 {
entry:
  %retval = alloca i32, align 4
  %ucr.addr = alloca %struct.rtsx_ucr*, align 8
  %addr.addr = alloca i16, align 2
  %len.addr = alloca i16, align 2
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %rsp_len = alloca i16, align 2
  %res_len = alloca i16, align 2
  store %struct.rtsx_ucr* %ucr, %struct.rtsx_ucr** %ucr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr.addr, metadata !4303, metadata !DIExpression()), !dbg !4304
  store i16 %addr, i16* %addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %addr.addr, metadata !4305, metadata !DIExpression()), !dbg !4306
  store i16 %len, i16* %len.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %len.addr, metadata !4307, metadata !DIExpression()), !dbg !4308
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4309, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4311, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4313, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.declare(metadata i16* %rsp_len, metadata !4315, metadata !DIExpression()), !dbg !4316
  %0 = load i16, i16* %len.addr, align 2, !dbg !4317
  %conv = zext i16 %0 to i32, !dbg !4317
  %and = and i32 %conv, -4, !dbg !4317
  %conv1 = trunc i32 %and to i16, !dbg !4317
  store i16 %conv1, i16* %rsp_len, align 2, !dbg !4316
  call void @llvm.dbg.declare(metadata i16* %res_len, metadata !4318, metadata !DIExpression()), !dbg !4319
  %1 = load i16, i16* %len.addr, align 2, !dbg !4320
  %conv2 = zext i16 %1 to i32, !dbg !4320
  %2 = load i16, i16* %rsp_len, align 2, !dbg !4321
  %conv3 = zext i16 %2 to i32, !dbg !4321
  %sub = sub i32 %conv2, %conv3, !dbg !4322
  %conv4 = trunc i32 %sub to i16, !dbg !4320
  store i16 %conv4, i16* %res_len, align 2, !dbg !4319
  %3 = load i8*, i8** %data.addr, align 8, !dbg !4323
  %tobool = icmp ne i8* %3, null, !dbg !4323
  br i1 %tobool, label %if.end, label %if.then, !dbg !4325

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4326
  br label %return, !dbg !4326

if.end:                                           ; preds = %entry
  %4 = load i16, i16* %rsp_len, align 2, !dbg !4327
  %tobool5 = icmp ne i16 %4, 0, !dbg !4327
  br i1 %tobool5, label %if.then6, label %if.end20, !dbg !4329

if.then6:                                         ; preds = %if.end
  %5 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4330
  %6 = load i16, i16* %addr.addr, align 2, !dbg !4332
  %7 = load i16, i16* %len.addr, align 2, !dbg !4333
  call void @rtsx_usb_seq_cmd_hdr(%struct.rtsx_ucr* %5, i16 zeroext %6, i16 zeroext %7, i8 zeroext 1) #8, !dbg !4334
  %8 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4335
  %9 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4336
  %pusb_dev = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %9, i32 0, i32 9, !dbg !4336
  %10 = load %struct.usb_device*, %struct.usb_device** %pusb_dev, align 8, !dbg !4336
  %call = call i32 @__create_pipe(%struct.usb_device* %10, i32 1) #8, !dbg !4336
  %or = or i32 -1073741824, %call, !dbg !4336
  %11 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4337
  %cmd_buf = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %11, i32 0, i32 6, !dbg !4338
  %12 = load i8*, i8** %cmd_buf, align 8, !dbg !4338
  %call7 = call i32 @rtsx_usb_transfer_data(%struct.rtsx_ucr* %8, i32 %or, i8* %12, i32 12, i32 0, i32* null, i32 100) #8, !dbg !4339
  store i32 %call7, i32* %ret, align 4, !dbg !4340
  %13 = load i32, i32* %ret, align 4, !dbg !4341
  %tobool8 = icmp ne i32 %13, 0, !dbg !4341
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !4343

if.then9:                                         ; preds = %if.then6
  %14 = load i32, i32* %ret, align 4, !dbg !4344
  store i32 %14, i32* %retval, align 4, !dbg !4345
  br label %return, !dbg !4345

if.end10:                                         ; preds = %if.then6
  %15 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4346
  %16 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4347
  %pusb_dev11 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %16, i32 0, i32 9, !dbg !4347
  %17 = load %struct.usb_device*, %struct.usb_device** %pusb_dev11, align 8, !dbg !4347
  %call12 = call i32 @__create_pipe(%struct.usb_device* %17, i32 2) #8, !dbg !4347
  %or13 = or i32 -1073741824, %call12, !dbg !4347
  %or14 = or i32 %or13, 128, !dbg !4347
  %18 = load i8*, i8** %data.addr, align 8, !dbg !4348
  %19 = load i16, i16* %rsp_len, align 2, !dbg !4349
  %conv15 = zext i16 %19 to i32, !dbg !4349
  %call16 = call i32 @rtsx_usb_transfer_data(%struct.rtsx_ucr* %15, i32 %or14, i8* %18, i32 %conv15, i32 0, i32* null, i32 100) #8, !dbg !4350
  store i32 %call16, i32* %ret, align 4, !dbg !4351
  %20 = load i32, i32* %ret, align 4, !dbg !4352
  %tobool17 = icmp ne i32 %20, 0, !dbg !4352
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !4354

if.then18:                                        ; preds = %if.end10
  %21 = load i32, i32* %ret, align 4, !dbg !4355
  store i32 %21, i32* %retval, align 4, !dbg !4356
  br label %return, !dbg !4356

if.end19:                                         ; preds = %if.end10
  br label %if.end20, !dbg !4357

if.end20:                                         ; preds = %if.end19, %if.end
  store i32 0, i32* %i, align 4, !dbg !4358
  br label %for.cond, !dbg !4360

for.cond:                                         ; preds = %for.inc, %if.end20
  %22 = load i32, i32* %i, align 4, !dbg !4361
  %23 = load i16, i16* %res_len, align 2, !dbg !4363
  %conv21 = zext i16 %23 to i32, !dbg !4363
  %cmp = icmp slt i32 %22, %conv21, !dbg !4364
  br i1 %cmp, label %for.body, label %for.end, !dbg !4365

for.body:                                         ; preds = %for.cond
  %24 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4366
  %25 = load i16, i16* %addr.addr, align 2, !dbg !4368
  %conv23 = zext i16 %25 to i32, !dbg !4368
  %26 = load i16, i16* %rsp_len, align 2, !dbg !4369
  %conv24 = zext i16 %26 to i32, !dbg !4369
  %add = add i32 %conv23, %conv24, !dbg !4370
  %27 = load i32, i32* %i, align 4, !dbg !4371
  %add25 = add i32 %add, %27, !dbg !4372
  %conv26 = trunc i32 %add25 to i16, !dbg !4368
  %28 = load i8*, i8** %data.addr, align 8, !dbg !4373
  %29 = load i16, i16* %rsp_len, align 2, !dbg !4374
  %conv27 = zext i16 %29 to i32, !dbg !4374
  %idx.ext = sext i32 %conv27 to i64, !dbg !4375
  %add.ptr = getelementptr i8, i8* %28, i64 %idx.ext, !dbg !4375
  %30 = load i32, i32* %i, align 4, !dbg !4376
  %idx.ext28 = sext i32 %30 to i64, !dbg !4377
  %add.ptr29 = getelementptr i8, i8* %add.ptr, i64 %idx.ext28, !dbg !4377
  %call30 = call i32 @rtsx_usb_read_register(%struct.rtsx_ucr* %24, i16 zeroext %conv26, i8* %add.ptr29) #8, !dbg !4378
  store i32 %call30, i32* %ret, align 4, !dbg !4379
  %31 = load i32, i32* %ret, align 4, !dbg !4380
  %tobool31 = icmp ne i32 %31, 0, !dbg !4380
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !4382

if.then32:                                        ; preds = %for.body
  %32 = load i32, i32* %ret, align 4, !dbg !4383
  store i32 %32, i32* %retval, align 4, !dbg !4384
  br label %return, !dbg !4384

if.end33:                                         ; preds = %for.body
  br label %for.inc, !dbg !4385

for.inc:                                          ; preds = %if.end33
  %33 = load i32, i32* %i, align 4, !dbg !4386
  %inc = add i32 %33, 1, !dbg !4386
  store i32 %inc, i32* %i, align 4, !dbg !4386
  br label %for.cond, !dbg !4387, !llvm.loop !4388

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !4390
  br label %return, !dbg !4390

return:                                           ; preds = %for.end, %if.then32, %if.then18, %if.then9, %if.then
  %34 = load i32, i32* %retval, align 4, !dbg !4391
  ret i32 %34, !dbg !4391
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @rtsx_usb_write_ppbuf(%struct.rtsx_ucr* %ucr, i8* %buf, i32 %buf_len) #0 !dbg !4392 {
entry:
  %ucr.addr = alloca %struct.rtsx_ucr*, align 8
  %buf.addr = alloca i8*, align 8
  %buf_len.addr = alloca i32, align 4
  store %struct.rtsx_ucr* %ucr, %struct.rtsx_ucr** %ucr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr.addr, metadata !4393, metadata !DIExpression()), !dbg !4394
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4395, metadata !DIExpression()), !dbg !4396
  store i32 %buf_len, i32* %buf_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buf_len.addr, metadata !4397, metadata !DIExpression()), !dbg !4398
  %0 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4399
  %1 = load i32, i32* %buf_len.addr, align 4, !dbg !4400
  %conv = trunc i32 %1 to i16, !dbg !4401
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !4402
  %call = call i32 @rtsx_usb_seq_write_register(%struct.rtsx_ucr* %0, i16 zeroext -1536, i16 zeroext %conv, i8* %2) #8, !dbg !4403
  ret i32 %call, !dbg !4404
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtsx_usb_seq_write_register(%struct.rtsx_ucr* %ucr, i16 zeroext %addr, i16 zeroext %len, i8* %data) #0 !dbg !4405 {
entry:
  %retval = alloca i32, align 4
  %ucr.addr = alloca %struct.rtsx_ucr*, align 8
  %addr.addr = alloca i16, align 2
  %len.addr = alloca i16, align 2
  %data.addr = alloca i8*, align 8
  %cmd_len = alloca i16, align 2
  store %struct.rtsx_ucr* %ucr, %struct.rtsx_ucr** %ucr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr.addr, metadata !4406, metadata !DIExpression()), !dbg !4407
  store i16 %addr, i16* %addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %addr.addr, metadata !4408, metadata !DIExpression()), !dbg !4409
  store i16 %len, i16* %len.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %len.addr, metadata !4410, metadata !DIExpression()), !dbg !4411
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4412, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.declare(metadata i16* %cmd_len, metadata !4414, metadata !DIExpression()), !dbg !4415
  %0 = load i16, i16* %len.addr, align 2, !dbg !4416
  %conv = zext i16 %0 to i32, !dbg !4416
  %add = add i32 12, %conv, !dbg !4416
  %add1 = add i32 %add, 3, !dbg !4416
  %and = and i32 %add1, -4, !dbg !4416
  %conv2 = trunc i32 %and to i16, !dbg !4416
  store i16 %conv2, i16* %cmd_len, align 2, !dbg !4415
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4417
  %tobool = icmp ne i8* %1, null, !dbg !4417
  br i1 %tobool, label %if.end, label %if.then, !dbg !4419

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4420
  br label %return, !dbg !4420

if.end:                                           ; preds = %entry
  %2 = load i16, i16* %cmd_len, align 2, !dbg !4421
  %conv3 = zext i16 %2 to i32, !dbg !4421
  %cmp = icmp sgt i32 %conv3, 1024, !dbg !4423
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !4424

if.then5:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !4425
  br label %return, !dbg !4425

if.end6:                                          ; preds = %if.end
  %3 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4426
  %4 = load i16, i16* %addr.addr, align 2, !dbg !4427
  %5 = load i16, i16* %len.addr, align 2, !dbg !4428
  call void @rtsx_usb_seq_cmd_hdr(%struct.rtsx_ucr* %3, i16 zeroext %4, i16 zeroext %5, i8 zeroext 2) #8, !dbg !4429
  %6 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4430
  %cmd_buf = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %6, i32 0, i32 6, !dbg !4431
  %7 = load i8*, i8** %cmd_buf, align 8, !dbg !4431
  %add.ptr = getelementptr i8, i8* %7, i64 12, !dbg !4432
  %8 = load i8*, i8** %data.addr, align 8, !dbg !4433
  %9 = load i16, i16* %len.addr, align 2, !dbg !4434
  %conv7 = zext i16 %9 to i64, !dbg !4434
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %8, i64 %conv7, i1 false), !dbg !4435
  %10 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4436
  %11 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4437
  %pusb_dev = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %11, i32 0, i32 9, !dbg !4437
  %12 = load %struct.usb_device*, %struct.usb_device** %pusb_dev, align 8, !dbg !4437
  %call = call i32 @__create_pipe(%struct.usb_device* %12, i32 1) #8, !dbg !4437
  %or = or i32 -1073741824, %call, !dbg !4437
  %13 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4438
  %cmd_buf8 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %13, i32 0, i32 6, !dbg !4439
  %14 = load i8*, i8** %cmd_buf8, align 8, !dbg !4439
  %15 = load i16, i16* %cmd_len, align 2, !dbg !4440
  %conv9 = zext i16 %15 to i32, !dbg !4440
  %call10 = call i32 @rtsx_usb_transfer_data(%struct.rtsx_ucr* %10, i32 %or, i8* %14, i32 %conv9, i32 0, i32* null, i32 100) #8, !dbg !4441
  store i32 %call10, i32* %retval, align 4, !dbg !4442
  br label %return, !dbg !4442

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !4443
  ret i32 %16, !dbg !4443
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @rtsx_usb_ep0_write_register(%struct.rtsx_ucr* %ucr, i16 zeroext %addr, i8 zeroext %mask, i8 zeroext %data) #0 !dbg !4444 {
entry:
  %ucr.addr = alloca %struct.rtsx_ucr*, align 8
  %addr.addr = alloca i16, align 2
  %mask.addr = alloca i8, align 1
  %data.addr = alloca i8, align 1
  %value = alloca i16, align 2
  %index = alloca i16, align 2
  store %struct.rtsx_ucr* %ucr, %struct.rtsx_ucr** %ucr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr.addr, metadata !4447, metadata !DIExpression()), !dbg !4448
  store i16 %addr, i16* %addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %addr.addr, metadata !4449, metadata !DIExpression()), !dbg !4450
  store i8 %mask, i8* %mask.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %mask.addr, metadata !4451, metadata !DIExpression()), !dbg !4452
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !4453, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.declare(metadata i16* %value, metadata !4455, metadata !DIExpression()), !dbg !4456
  call void @llvm.dbg.declare(metadata i16* %index, metadata !4457, metadata !DIExpression()), !dbg !4458
  %0 = load i16, i16* %addr.addr, align 2, !dbg !4459
  %conv = zext i16 %0 to i32, !dbg !4459
  %or = or i32 %conv, 49152, !dbg !4459
  %conv1 = trunc i32 %or to i16, !dbg !4459
  store i16 %conv1, i16* %addr.addr, align 2, !dbg !4459
  %1 = load i16, i16* %addr.addr, align 2, !dbg !4460
  %2 = call i1 @llvm.is.constant.i16(i16 %1), !dbg !4460
  br i1 %2, label %cond.true, label %cond.false, !dbg !4460

cond.true:                                        ; preds = %entry
  %3 = load i16, i16* %addr.addr, align 2, !dbg !4460
  %conv2 = zext i16 %3 to i32, !dbg !4460
  %and = and i32 %conv2, 255, !dbg !4460
  %shl = shl i32 %and, 8, !dbg !4460
  %4 = load i16, i16* %addr.addr, align 2, !dbg !4460
  %conv3 = zext i16 %4 to i32, !dbg !4460
  %and4 = and i32 %conv3, 65280, !dbg !4460
  %shr = ashr i32 %and4, 8, !dbg !4460
  %or5 = or i32 %shl, %shr, !dbg !4460
  %conv6 = trunc i32 %or5 to i16, !dbg !4460
  %conv7 = zext i16 %conv6 to i32, !dbg !4460
  br label %cond.end, !dbg !4460

cond.false:                                       ; preds = %entry
  %5 = load i16, i16* %addr.addr, align 2, !dbg !4460
  %call = call zeroext i16 @__fswab16(i16 zeroext %5) #11, !dbg !4460
  %conv8 = zext i16 %call to i32, !dbg !4460
  br label %cond.end, !dbg !4460

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv8, %cond.false ], !dbg !4460
  %conv9 = trunc i32 %cond to i16, !dbg !4460
  store i16 %conv9, i16* %value, align 2, !dbg !4461
  %6 = load i8, i8* %mask.addr, align 1, !dbg !4462
  %conv10 = zext i8 %6 to i32, !dbg !4462
  %7 = load i8, i8* %data.addr, align 1, !dbg !4463
  %conv11 = zext i8 %7 to i32, !dbg !4463
  %shl12 = shl i32 %conv11, 8, !dbg !4464
  %or13 = or i32 %conv10, %shl12, !dbg !4465
  %conv14 = trunc i32 %or13 to i16, !dbg !4462
  store i16 %conv14, i16* %index, align 2, !dbg !4466
  %8 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4467
  %pusb_dev = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %8, i32 0, i32 9, !dbg !4468
  %9 = load %struct.usb_device*, %struct.usb_device** %pusb_dev, align 8, !dbg !4468
  %10 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4469
  %pusb_dev15 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %10, i32 0, i32 9, !dbg !4469
  %11 = load %struct.usb_device*, %struct.usb_device** %pusb_dev15, align 8, !dbg !4469
  %call16 = call i32 @__create_pipe(%struct.usb_device* %11, i32 0) #8, !dbg !4469
  %or17 = or i32 -2147483648, %call16, !dbg !4469
  %12 = load i16, i16* %value, align 2, !dbg !4470
  %13 = load i16, i16* %index, align 2, !dbg !4471
  %call18 = call i32 @usb_control_msg(%struct.usb_device* %9, i32 %or17, i8 zeroext 0, i8 zeroext 64, i16 zeroext %12, i16 zeroext %13, i8* null, i16 zeroext 0, i32 100) #8, !dbg !4472
  ret i32 %call18, !dbg !4473
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i16(i16) #3

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal zeroext i16 @__fswab16(i16 zeroext %val) #4 !dbg !4474 {
entry:
  %val.addr = alloca i16, align 2
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !4478, metadata !DIExpression()), !dbg !4479
  %0 = load i16, i16* %val.addr, align 2, !dbg !4480
  %conv = zext i16 %0 to i32, !dbg !4480
  %and = and i32 %conv, 255, !dbg !4480
  %shl = shl i32 %and, 8, !dbg !4480
  %1 = load i16, i16* %val.addr, align 2, !dbg !4480
  %conv1 = zext i16 %1 to i32, !dbg !4480
  %and2 = and i32 %conv1, 65280, !dbg !4480
  %shr = ashr i32 %and2, 8, !dbg !4480
  %or = or i32 %shl, %shr, !dbg !4480
  %conv3 = trunc i32 %or to i16, !dbg !4480
  ret i16 %conv3, !dbg !4481
}

; Function Attrs: noredzone
declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i8 zeroext, i8 zeroext, i16 zeroext, i16 zeroext, i8*, i16 zeroext, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__create_pipe(%struct.usb_device* %dev, i32 %endpoint) #0 !dbg !4482 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !4485, metadata !DIExpression()), !dbg !4486
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !4487, metadata !DIExpression()), !dbg !4488
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4489
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 0, !dbg !4490
  %1 = load i32, i32* %devnum, align 8, !dbg !4490
  %shl = shl i32 %1, 8, !dbg !4491
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !4492
  %shl1 = shl i32 %2, 15, !dbg !4493
  %or = or i32 %shl, %shl1, !dbg !4494
  ret i32 %or, !dbg !4495
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @rtsx_usb_ep0_read_register(%struct.rtsx_ucr* %ucr, i16 zeroext %addr, i8* %data) #0 !dbg !4496 {
entry:
  %retval = alloca i32, align 4
  %ucr.addr = alloca %struct.rtsx_ucr*, align 8
  %addr.addr = alloca i16, align 2
  %data.addr = alloca i8*, align 8
  %value = alloca i16, align 2
  %buf = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.rtsx_ucr* %ucr, %struct.rtsx_ucr** %ucr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr.addr, metadata !4499, metadata !DIExpression()), !dbg !4500
  store i16 %addr, i16* %addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %addr.addr, metadata !4501, metadata !DIExpression()), !dbg !4502
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4503, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.declare(metadata i16* %value, metadata !4505, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !4507, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4509, metadata !DIExpression()), !dbg !4510
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4511
  %tobool = icmp ne i8* %0, null, !dbg !4511
  br i1 %tobool, label %if.end, label %if.then, !dbg !4513

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4514
  br label %return, !dbg !4514

if.end:                                           ; preds = %entry
  %call = call i8* @kzalloc(i64 1, i32 3264) #8, !dbg !4515
  store i8* %call, i8** %buf, align 8, !dbg !4516
  %1 = load i8*, i8** %buf, align 8, !dbg !4517
  %tobool1 = icmp ne i8* %1, null, !dbg !4517
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !4519

if.then2:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4520
  br label %return, !dbg !4520

if.end3:                                          ; preds = %if.end
  %2 = load i16, i16* %addr.addr, align 2, !dbg !4521
  %conv = zext i16 %2 to i32, !dbg !4521
  %or = or i32 %conv, 32768, !dbg !4521
  %conv4 = trunc i32 %or to i16, !dbg !4521
  store i16 %conv4, i16* %addr.addr, align 2, !dbg !4521
  %3 = load i16, i16* %addr.addr, align 2, !dbg !4522
  %4 = call i1 @llvm.is.constant.i16(i16 %3), !dbg !4522
  br i1 %4, label %cond.true, label %cond.false, !dbg !4522

cond.true:                                        ; preds = %if.end3
  %5 = load i16, i16* %addr.addr, align 2, !dbg !4522
  %conv5 = zext i16 %5 to i32, !dbg !4522
  %and = and i32 %conv5, 255, !dbg !4522
  %shl = shl i32 %and, 8, !dbg !4522
  %6 = load i16, i16* %addr.addr, align 2, !dbg !4522
  %conv6 = zext i16 %6 to i32, !dbg !4522
  %and7 = and i32 %conv6, 65280, !dbg !4522
  %shr = ashr i32 %and7, 8, !dbg !4522
  %or8 = or i32 %shl, %shr, !dbg !4522
  %conv9 = trunc i32 %or8 to i16, !dbg !4522
  %conv10 = zext i16 %conv9 to i32, !dbg !4522
  br label %cond.end, !dbg !4522

cond.false:                                       ; preds = %if.end3
  %7 = load i16, i16* %addr.addr, align 2, !dbg !4522
  %call11 = call zeroext i16 @__fswab16(i16 zeroext %7) #11, !dbg !4522
  %conv12 = zext i16 %call11 to i32, !dbg !4522
  br label %cond.end, !dbg !4522

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv10, %cond.true ], [ %conv12, %cond.false ], !dbg !4522
  %conv13 = trunc i32 %cond to i16, !dbg !4522
  store i16 %conv13, i16* %value, align 2, !dbg !4523
  %8 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4524
  %pusb_dev = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %8, i32 0, i32 9, !dbg !4525
  %9 = load %struct.usb_device*, %struct.usb_device** %pusb_dev, align 8, !dbg !4525
  %10 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4526
  %pusb_dev14 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %10, i32 0, i32 9, !dbg !4526
  %11 = load %struct.usb_device*, %struct.usb_device** %pusb_dev14, align 8, !dbg !4526
  %call15 = call i32 @__create_pipe(%struct.usb_device* %11, i32 0) #8, !dbg !4526
  %or16 = or i32 -2147483648, %call15, !dbg !4526
  %or17 = or i32 %or16, 128, !dbg !4526
  %12 = load i16, i16* %value, align 2, !dbg !4527
  %13 = load i8*, i8** %buf, align 8, !dbg !4528
  %call18 = call i32 @usb_control_msg(%struct.usb_device* %9, i32 %or17, i8 zeroext 0, i8 zeroext -64, i16 zeroext %12, i16 zeroext 0, i8* %13, i16 zeroext 1, i32 100) #8, !dbg !4529
  store i32 %call18, i32* %ret, align 4, !dbg !4530
  %14 = load i8*, i8** %buf, align 8, !dbg !4531
  %15 = load i8, i8* %14, align 1, !dbg !4532
  %16 = load i8*, i8** %data.addr, align 8, !dbg !4533
  store i8 %15, i8* %16, align 1, !dbg !4534
  %17 = load i8*, i8** %buf, align 8, !dbg !4535
  call void @kfree(i8* %17) #8, !dbg !4536
  %18 = load i32, i32* %ret, align 4, !dbg !4537
  store i32 %18, i32* %retval, align 4, !dbg !4538
  br label %return, !dbg !4538

return:                                           ; preds = %cond.end, %if.then2, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !4539
  ret i32 %19, !dbg !4539
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4540 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4543, metadata !DIExpression()), !dbg !4547
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4553, metadata !DIExpression()), !dbg !4554
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4555, metadata !DIExpression()), !dbg !4556
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4557, metadata !DIExpression()), !dbg !4558
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4559, metadata !DIExpression()), !dbg !4563
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4565, metadata !DIExpression()), !dbg !4569
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4571, metadata !DIExpression()), !dbg !4575
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4580, metadata !DIExpression()), !dbg !4581
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4582, metadata !DIExpression()), !dbg !4583
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4584, metadata !DIExpression()), !dbg !4585
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4586, metadata !DIExpression()), !dbg !4587
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4588, metadata !DIExpression()), !dbg !4589
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4590, metadata !DIExpression()), !dbg !4591
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4592, metadata !DIExpression()), !dbg !4593
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4594, metadata !DIExpression()), !dbg !4595
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4596, metadata !DIExpression()), !dbg !4597
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4598, metadata !DIExpression()), !dbg !4599
  %0 = load i64, i64* %size.addr, align 8, !dbg !4600
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4601
  %or = or i32 %1, 256, !dbg !4602
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4603
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4604
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4605

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4606
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4607
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4608

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4609
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4610
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4611
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4612
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4589
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4613
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4614
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4615
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4616
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4617
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4618
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !4619
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4619
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4619
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4619
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4619
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4620
  br label %kmalloc.exit, !dbg !4620

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4621
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4622
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4622
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4624

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4625
  br label %kmalloc_index.exit.i, !dbg !4625

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4626
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4628
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4629

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4630
  br label %kmalloc_index.exit.i, !dbg !4630

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4631
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4633
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4634

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4635
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4636
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4637

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4638
  br label %kmalloc_index.exit.i, !dbg !4638

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4639
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4641
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4642

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4643
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4644
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4645

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4646
  br label %kmalloc_index.exit.i, !dbg !4646

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4647
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4649
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4650

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4651
  br label %kmalloc_index.exit.i, !dbg !4651

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4652
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4654
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4655

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4656
  br label %kmalloc_index.exit.i, !dbg !4656

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4657
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4659
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4660

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4661
  br label %kmalloc_index.exit.i, !dbg !4661

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4662
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4664
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4665

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4666
  br label %kmalloc_index.exit.i, !dbg !4666

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4667
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4669
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4670

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4671
  br label %kmalloc_index.exit.i, !dbg !4671

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4672
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4674
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4675

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4676
  br label %kmalloc_index.exit.i, !dbg !4676

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4677
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4679
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4680

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4681
  br label %kmalloc_index.exit.i, !dbg !4681

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4682
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4684
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4685

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4686
  br label %kmalloc_index.exit.i, !dbg !4686

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4687
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4689
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4690

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4691
  br label %kmalloc_index.exit.i, !dbg !4691

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4692
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4694
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4695

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4696
  br label %kmalloc_index.exit.i, !dbg !4696

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4697
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4699
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4700

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4701
  br label %kmalloc_index.exit.i, !dbg !4701

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4702
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4704
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4705

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4706
  br label %kmalloc_index.exit.i, !dbg !4706

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4707
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4709
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4710

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4711
  br label %kmalloc_index.exit.i, !dbg !4711

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4712
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4714
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4715

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4716
  br label %kmalloc_index.exit.i, !dbg !4716

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4717
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4719
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4720

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4721
  br label %kmalloc_index.exit.i, !dbg !4721

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4722
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4724
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4725

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4726
  br label %kmalloc_index.exit.i, !dbg !4726

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4727
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4729
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4730

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4731
  br label %kmalloc_index.exit.i, !dbg !4731

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4732
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4734
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4735

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4736
  br label %kmalloc_index.exit.i, !dbg !4736

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4737
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4739
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4740

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4741
  br label %kmalloc_index.exit.i, !dbg !4741

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4742
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4744
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4745

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4746
  br label %kmalloc_index.exit.i, !dbg !4746

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4747
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4749
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4750

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4751
  br label %kmalloc_index.exit.i, !dbg !4751

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4752
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4754
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4755

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4756
  br label %kmalloc_index.exit.i, !dbg !4756

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4757
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4759
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4760

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4761
  br label %kmalloc_index.exit.i, !dbg !4761

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4762
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4764
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4765

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4766
  br label %kmalloc_index.exit.i, !dbg !4766

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4767, !srcloc !4770
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #9, !dbg !4771, !srcloc !4774
  unreachable, !dbg !4775

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4776
  store i32 %45, i32* %index.i, align 4, !dbg !4777
  %46 = load i32, i32* %index.i, align 4, !dbg !4778
  %tobool.i = icmp ne i32 %46, 0, !dbg !4778
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4780

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4781
  br label %kmalloc.exit, !dbg !4781

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4782
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4783
  %and.i.i = and i32 %48, 17, !dbg !4783
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4783
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4783
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4783
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4783
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4785

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4786
  br label %kmalloc_type.exit.i, !dbg !4786

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4787
  %and2.i.i = and i32 %49, 1, !dbg !4788
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4787
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4787
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4787
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4789
  br label %kmalloc_type.exit.i, !dbg !4789

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4790
  %idxprom.i = zext i32 %51 to i64, !dbg !4791
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4791
  %52 = load i32, i32* %index.i, align 4, !dbg !4792
  %idxprom6.i = zext i32 %52 to i64, !dbg !4791
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4791
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4791
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4793
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4794
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4795
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4796
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !4797
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4797
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4797
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4797
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4797
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4558
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4798
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4799
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4800
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4801
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !4802
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4803
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4804
  store i8* %62, i8** %retval.i, align 8, !dbg !4805
  br label %kmalloc.exit, !dbg !4805

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4806
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4807
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !4808
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4808
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4808
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4808
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4808
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4809
  br label %kmalloc.exit, !dbg !4809

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4810
  ret i8* %65, !dbg !4811
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %ucr, i8 zeroext %cmd_type, i16 zeroext %reg_addr, i8 zeroext %mask, i8 zeroext %data) #0 !dbg !4812 {
entry:
  %ucr.addr = alloca %struct.rtsx_ucr*, align 8
  %cmd_type.addr = alloca i8, align 1
  %reg_addr.addr = alloca i16, align 2
  %mask.addr = alloca i8, align 1
  %data.addr = alloca i8, align 1
  %i = alloca i32, align 4
  store %struct.rtsx_ucr* %ucr, %struct.rtsx_ucr** %ucr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr.addr, metadata !4815, metadata !DIExpression()), !dbg !4816
  store i8 %cmd_type, i8* %cmd_type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %cmd_type.addr, metadata !4817, metadata !DIExpression()), !dbg !4818
  store i16 %reg_addr, i16* %reg_addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %reg_addr.addr, metadata !4819, metadata !DIExpression()), !dbg !4820
  store i8 %mask, i8* %mask.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %mask.addr, metadata !4821, metadata !DIExpression()), !dbg !4822
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !4823, metadata !DIExpression()), !dbg !4824
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4825, metadata !DIExpression()), !dbg !4826
  %0 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4827
  %cmd_idx = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %0, i32 0, i32 7, !dbg !4829
  %1 = load i32, i32* %cmd_idx, align 8, !dbg !4829
  %cmp = icmp ult i32 %1, 254, !dbg !4830
  br i1 %cmp, label %if.then, label %if.end, !dbg !4831

if.then:                                          ; preds = %entry
  %2 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4832
  %cmd_idx1 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %2, i32 0, i32 7, !dbg !4834
  %3 = load i32, i32* %cmd_idx1, align 8, !dbg !4834
  %mul = mul i32 %3, 4, !dbg !4835
  %add = add i32 8, %mul, !dbg !4836
  store i32 %add, i32* %i, align 4, !dbg !4837
  %4 = load i8, i8* %cmd_type.addr, align 1, !dbg !4838
  %conv = zext i8 %4 to i32, !dbg !4838
  %and = and i32 %conv, 3, !dbg !4839
  %shl = shl i32 %and, 6, !dbg !4840
  %5 = load i16, i16* %reg_addr.addr, align 2, !dbg !4841
  %conv2 = zext i16 %5 to i32, !dbg !4841
  %shr = ashr i32 %conv2, 8, !dbg !4842
  %and3 = and i32 %shr, 63, !dbg !4843
  %conv4 = trunc i32 %and3 to i8, !dbg !4844
  %conv5 = zext i8 %conv4 to i32, !dbg !4844
  %or = or i32 %shl, %conv5, !dbg !4845
  %conv6 = trunc i32 %or to i8, !dbg !4846
  %6 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4847
  %cmd_buf = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %6, i32 0, i32 6, !dbg !4848
  %7 = load i8*, i8** %cmd_buf, align 8, !dbg !4848
  %8 = load i32, i32* %i, align 4, !dbg !4849
  %inc = add i32 %8, 1, !dbg !4849
  store i32 %inc, i32* %i, align 4, !dbg !4849
  %idxprom = sext i32 %8 to i64, !dbg !4847
  %arrayidx = getelementptr i8, i8* %7, i64 %idxprom, !dbg !4847
  store i8 %conv6, i8* %arrayidx, align 1, !dbg !4850
  %9 = load i16, i16* %reg_addr.addr, align 2, !dbg !4851
  %conv7 = trunc i16 %9 to i8, !dbg !4852
  %10 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4853
  %cmd_buf8 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %10, i32 0, i32 6, !dbg !4854
  %11 = load i8*, i8** %cmd_buf8, align 8, !dbg !4854
  %12 = load i32, i32* %i, align 4, !dbg !4855
  %inc9 = add i32 %12, 1, !dbg !4855
  store i32 %inc9, i32* %i, align 4, !dbg !4855
  %idxprom10 = sext i32 %12 to i64, !dbg !4853
  %arrayidx11 = getelementptr i8, i8* %11, i64 %idxprom10, !dbg !4853
  store i8 %conv7, i8* %arrayidx11, align 1, !dbg !4856
  %13 = load i8, i8* %mask.addr, align 1, !dbg !4857
  %14 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4858
  %cmd_buf12 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %14, i32 0, i32 6, !dbg !4859
  %15 = load i8*, i8** %cmd_buf12, align 8, !dbg !4859
  %16 = load i32, i32* %i, align 4, !dbg !4860
  %inc13 = add i32 %16, 1, !dbg !4860
  store i32 %inc13, i32* %i, align 4, !dbg !4860
  %idxprom14 = sext i32 %16 to i64, !dbg !4858
  %arrayidx15 = getelementptr i8, i8* %15, i64 %idxprom14, !dbg !4858
  store i8 %13, i8* %arrayidx15, align 1, !dbg !4861
  %17 = load i8, i8* %data.addr, align 1, !dbg !4862
  %18 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4863
  %cmd_buf16 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %18, i32 0, i32 6, !dbg !4864
  %19 = load i8*, i8** %cmd_buf16, align 8, !dbg !4864
  %20 = load i32, i32* %i, align 4, !dbg !4865
  %inc17 = add i32 %20, 1, !dbg !4865
  store i32 %inc17, i32* %i, align 4, !dbg !4865
  %idxprom18 = sext i32 %20 to i64, !dbg !4863
  %arrayidx19 = getelementptr i8, i8* %19, i64 %idxprom18, !dbg !4863
  store i8 %17, i8* %arrayidx19, align 1, !dbg !4866
  %21 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4867
  %cmd_idx20 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %21, i32 0, i32 7, !dbg !4868
  %22 = load i32, i32* %cmd_idx20, align 8, !dbg !4869
  %inc21 = add i32 %22, 1, !dbg !4869
  store i32 %inc21, i32* %cmd_idx20, align 8, !dbg !4869
  br label %if.end, !dbg !4870

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4871
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @rtsx_usb_send_cmd(%struct.rtsx_ucr* %ucr, i8 zeroext %flag, i32 %timeout) #0 !dbg !4872 {
entry:
  %retval = alloca i32, align 4
  %ucr.addr = alloca %struct.rtsx_ucr*, align 8
  %flag.addr = alloca i8, align 1
  %timeout.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.rtsx_ucr* %ucr, %struct.rtsx_ucr** %ucr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr.addr, metadata !4875, metadata !DIExpression()), !dbg !4876
  store i8 %flag, i8* %flag.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %flag.addr, metadata !4877, metadata !DIExpression()), !dbg !4878
  store i32 %timeout, i32* %timeout.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %timeout.addr, metadata !4879, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4881, metadata !DIExpression()), !dbg !4882
  %0 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4883
  %cmd_idx = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %0, i32 0, i32 7, !dbg !4884
  %1 = load i32, i32* %cmd_idx, align 8, !dbg !4884
  %shr = lshr i32 %1, 8, !dbg !4885
  %conv = trunc i32 %shr to i8, !dbg !4886
  %2 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4887
  %cmd_buf = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %2, i32 0, i32 6, !dbg !4888
  %3 = load i8*, i8** %cmd_buf, align 8, !dbg !4888
  %arrayidx = getelementptr i8, i8* %3, i64 5, !dbg !4887
  store i8 %conv, i8* %arrayidx, align 1, !dbg !4889
  %4 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4890
  %cmd_idx1 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %4, i32 0, i32 7, !dbg !4891
  %5 = load i32, i32* %cmd_idx1, align 8, !dbg !4891
  %conv2 = trunc i32 %5 to i8, !dbg !4892
  %6 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4893
  %cmd_buf3 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %6, i32 0, i32 6, !dbg !4894
  %7 = load i8*, i8** %cmd_buf3, align 8, !dbg !4894
  %arrayidx4 = getelementptr i8, i8* %7, i64 6, !dbg !4893
  store i8 %conv2, i8* %arrayidx4, align 1, !dbg !4895
  %8 = load i8, i8* %flag.addr, align 1, !dbg !4896
  %9 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4897
  %cmd_buf5 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %9, i32 0, i32 6, !dbg !4898
  %10 = load i8*, i8** %cmd_buf5, align 8, !dbg !4898
  %arrayidx6 = getelementptr i8, i8* %10, i64 7, !dbg !4897
  store i8 %8, i8* %arrayidx6, align 1, !dbg !4899
  %11 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4900
  %12 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4901
  %pusb_dev = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %12, i32 0, i32 9, !dbg !4901
  %13 = load %struct.usb_device*, %struct.usb_device** %pusb_dev, align 8, !dbg !4901
  %call = call i32 @__create_pipe(%struct.usb_device* %13, i32 1) #8, !dbg !4901
  %or = or i32 -1073741824, %call, !dbg !4901
  %14 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4902
  %cmd_buf7 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %14, i32 0, i32 6, !dbg !4903
  %15 = load i8*, i8** %cmd_buf7, align 8, !dbg !4903
  %16 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4904
  %cmd_idx8 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %16, i32 0, i32 7, !dbg !4905
  %17 = load i32, i32* %cmd_idx8, align 8, !dbg !4905
  %mul = mul i32 %17, 4, !dbg !4906
  %add = add i32 %mul, 8, !dbg !4907
  %18 = load i32, i32* %timeout.addr, align 4, !dbg !4908
  %call9 = call i32 @rtsx_usb_transfer_data(%struct.rtsx_ucr* %11, i32 %or, i8* %15, i32 %add, i32 0, i32* null, i32 %18) #8, !dbg !4909
  store i32 %call9, i32* %ret, align 4, !dbg !4910
  %19 = load i32, i32* %ret, align 4, !dbg !4911
  %tobool = icmp ne i32 %19, 0, !dbg !4911
  br i1 %tobool, label %if.then, label %if.end, !dbg !4913

if.then:                                          ; preds = %entry
  %20 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4914
  call void @rtsx_usb_clear_fsm_err(%struct.rtsx_ucr* %20) #8, !dbg !4916
  %21 = load i32, i32* %ret, align 4, !dbg !4917
  store i32 %21, i32* %retval, align 4, !dbg !4918
  br label %return, !dbg !4918

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4919
  br label %return, !dbg !4919

return:                                           ; preds = %if.end, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !4920
  ret i32 %22, !dbg !4920
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rtsx_usb_clear_fsm_err(%struct.rtsx_ucr* %ucr) #0 !dbg !4921 {
entry:
  %ucr.addr = alloca %struct.rtsx_ucr*, align 8
  store %struct.rtsx_ucr* %ucr, %struct.rtsx_ucr** %ucr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr.addr, metadata !4924, metadata !DIExpression()), !dbg !4925
  %0 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4926
  %call = call i32 @rtsx_usb_ep0_write_register(%struct.rtsx_ucr* %0, i16 zeroext -1020, i8 zeroext -8, i8 zeroext -8) #8, !dbg !4927
  ret void, !dbg !4928
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @rtsx_usb_get_rsp(%struct.rtsx_ucr* %ucr, i32 %rsp_len, i32 %timeout) #0 !dbg !4929 {
entry:
  %retval = alloca i32, align 4
  %ucr.addr = alloca %struct.rtsx_ucr*, align 8
  %rsp_len.addr = alloca i32, align 4
  %timeout.addr = alloca i32, align 4
  store %struct.rtsx_ucr* %ucr, %struct.rtsx_ucr** %ucr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr.addr, metadata !4932, metadata !DIExpression()), !dbg !4933
  store i32 %rsp_len, i32* %rsp_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %rsp_len.addr, metadata !4934, metadata !DIExpression()), !dbg !4935
  store i32 %timeout, i32* %timeout.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %timeout.addr, metadata !4936, metadata !DIExpression()), !dbg !4937
  %0 = load i32, i32* %rsp_len.addr, align 4, !dbg !4938
  %cmp = icmp sle i32 %0, 0, !dbg !4940
  br i1 %cmp, label %if.then, label %if.end, !dbg !4941

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4942
  br label %return, !dbg !4942

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %rsp_len.addr, align 4, !dbg !4943
  %add = add i32 %1, 3, !dbg !4943
  %and = and i32 %add, -4, !dbg !4943
  store i32 %and, i32* %rsp_len.addr, align 4, !dbg !4944
  %2 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4945
  %3 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4946
  %pusb_dev = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %3, i32 0, i32 9, !dbg !4946
  %4 = load %struct.usb_device*, %struct.usb_device** %pusb_dev, align 8, !dbg !4946
  %call = call i32 @__create_pipe(%struct.usb_device* %4, i32 2) #8, !dbg !4946
  %or = or i32 -1073741824, %call, !dbg !4946
  %or1 = or i32 %or, 128, !dbg !4946
  %5 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4947
  %rsp_buf = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %5, i32 0, i32 8, !dbg !4948
  %6 = load i8*, i8** %rsp_buf, align 8, !dbg !4948
  %7 = load i32, i32* %rsp_len.addr, align 4, !dbg !4949
  %8 = load i32, i32* %timeout.addr, align 4, !dbg !4950
  %call2 = call i32 @rtsx_usb_transfer_data(%struct.rtsx_ucr* %2, i32 %or1, i8* %6, i32 %7, i32 0, i32* null, i32 %8) #8, !dbg !4951
  store i32 %call2, i32* %retval, align 4, !dbg !4952
  br label %return, !dbg !4952

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !4953
  ret i32 %9, !dbg !4953
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @rtsx_usb_get_card_status(%struct.rtsx_ucr* %ucr, i16* %status) #0 !dbg !4954 {
entry:
  %retval = alloca i32, align 4
  %ucr.addr = alloca %struct.rtsx_ucr*, align 8
  %status.addr = alloca i16*, align 8
  %ret = alloca i32, align 4
  %buf = alloca i16*, align 8
  store %struct.rtsx_ucr* %ucr, %struct.rtsx_ucr** %ucr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr.addr, metadata !4958, metadata !DIExpression()), !dbg !4959
  store i16* %status, i16** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %status.addr, metadata !4960, metadata !DIExpression()), !dbg !4961
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4962, metadata !DIExpression()), !dbg !4963
  call void @llvm.dbg.declare(metadata i16** %buf, metadata !4964, metadata !DIExpression()), !dbg !4965
  %0 = load i16*, i16** %status.addr, align 8, !dbg !4966
  %tobool = icmp ne i16* %0, null, !dbg !4966
  br i1 %tobool, label %if.end, label %if.then, !dbg !4968

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4969
  br label %return, !dbg !4969

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @polling_pipe, align 4, !dbg !4970
  %cmp = icmp eq i32 %1, 0, !dbg !4972
  br i1 %cmp, label %if.then1, label %if.else, !dbg !4973

if.then1:                                         ; preds = %if.end
  %call = call i8* @kzalloc(i64 2, i32 3264) #8, !dbg !4974
  %2 = bitcast i8* %call to i16*, !dbg !4974
  store i16* %2, i16** %buf, align 8, !dbg !4976
  %3 = load i16*, i16** %buf, align 8, !dbg !4977
  %tobool2 = icmp ne i16* %3, null, !dbg !4977
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4979

if.then3:                                         ; preds = %if.then1
  store i32 -12, i32* %retval, align 4, !dbg !4980
  br label %return, !dbg !4980

if.end4:                                          ; preds = %if.then1
  %4 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4981
  %pusb_dev = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %4, i32 0, i32 9, !dbg !4982
  %5 = load %struct.usb_device*, %struct.usb_device** %pusb_dev, align 8, !dbg !4982
  %6 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4983
  %pusb_dev5 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %6, i32 0, i32 9, !dbg !4983
  %7 = load %struct.usb_device*, %struct.usb_device** %pusb_dev5, align 8, !dbg !4983
  %call6 = call i32 @__create_pipe(%struct.usb_device* %7, i32 0) #8, !dbg !4983
  %or = or i32 -2147483648, %call6, !dbg !4983
  %or7 = or i32 %or, 128, !dbg !4983
  %8 = load i16*, i16** %buf, align 8, !dbg !4984
  %9 = bitcast i16* %8 to i8*, !dbg !4984
  %call8 = call i32 @usb_control_msg(%struct.usb_device* %5, i32 %or7, i8 zeroext 2, i8 zeroext -64, i16 zeroext 0, i16 zeroext 0, i8* %9, i16 zeroext 2, i32 100) #8, !dbg !4985
  store i32 %call8, i32* %ret, align 4, !dbg !4986
  %10 = load i16*, i16** %buf, align 8, !dbg !4987
  %11 = load i16, i16* %10, align 2, !dbg !4988
  %12 = load i16*, i16** %status.addr, align 8, !dbg !4989
  store i16 %11, i16* %12, align 2, !dbg !4990
  %13 = load i16*, i16** %buf, align 8, !dbg !4991
  %14 = bitcast i16* %13 to i8*, !dbg !4991
  call void @kfree(i8* %14) #8, !dbg !4992
  br label %if.end10, !dbg !4993

if.else:                                          ; preds = %if.end
  %15 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !4994
  %16 = load i16*, i16** %status.addr, align 8, !dbg !4996
  %call9 = call i32 @rtsx_usb_get_status_with_bulk(%struct.rtsx_ucr* %15, i16* %16) #8, !dbg !4997
  store i32 %call9, i32* %ret, align 4, !dbg !4998
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end4
  %17 = load i32, i32* %ret, align 4, !dbg !4999
  %cmp11 = icmp slt i32 %17, 0, !dbg !5001
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !5002

if.then12:                                        ; preds = %if.end10
  %18 = load i32, i32* %ret, align 4, !dbg !5003
  store i32 %18, i32* %retval, align 4, !dbg !5004
  br label %return, !dbg !5004

if.end13:                                         ; preds = %if.end10
  store i32 0, i32* %retval, align 4, !dbg !5005
  br label %return, !dbg !5005

return:                                           ; preds = %if.end13, %if.then12, %if.then3, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !5006
  ret i32 %19, !dbg !5006
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtsx_usb_get_status_with_bulk(%struct.rtsx_ucr* %ucr, i16* %status) #0 !dbg !5007 {
entry:
  %retval = alloca i32, align 4
  %ucr.addr = alloca %struct.rtsx_ucr*, align 8
  %status.addr = alloca i16*, align 8
  %ret = alloca i32, align 4
  store %struct.rtsx_ucr* %ucr, %struct.rtsx_ucr** %ucr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr.addr, metadata !5008, metadata !DIExpression()), !dbg !5009
  store i16* %status, i16** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %status.addr, metadata !5010, metadata !DIExpression()), !dbg !5011
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5012, metadata !DIExpression()), !dbg !5013
  %0 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5014
  call void @rtsx_usb_init_cmd(%struct.rtsx_ucr* %0) #8, !dbg !5015
  %1 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5016
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %1, i8 zeroext 0, i16 zeroext -657, i8 zeroext 0, i8 zeroext 0) #8, !dbg !5017
  %2 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5018
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %2, i8 zeroext 0, i16 zeroext -637, i8 zeroext 0, i8 zeroext 0) #8, !dbg !5019
  %3 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5020
  %call = call i32 @rtsx_usb_send_cmd(%struct.rtsx_ucr* %3, i8 zeroext 1, i32 100) #8, !dbg !5021
  store i32 %call, i32* %ret, align 4, !dbg !5022
  %4 = load i32, i32* %ret, align 4, !dbg !5023
  %tobool = icmp ne i32 %4, 0, !dbg !5023
  br i1 %tobool, label %if.then, label %if.end, !dbg !5025

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !5026
  store i32 %5, i32* %retval, align 4, !dbg !5027
  br label %return, !dbg !5027

if.end:                                           ; preds = %entry
  %6 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5028
  %call1 = call i32 @rtsx_usb_get_rsp(%struct.rtsx_ucr* %6, i32 2, i32 100) #8, !dbg !5029
  store i32 %call1, i32* %ret, align 4, !dbg !5030
  %7 = load i32, i32* %ret, align 4, !dbg !5031
  %tobool2 = icmp ne i32 %7, 0, !dbg !5031
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5033

if.then3:                                         ; preds = %if.end
  %8 = load i32, i32* %ret, align 4, !dbg !5034
  store i32 %8, i32* %retval, align 4, !dbg !5035
  br label %return, !dbg !5035

if.end4:                                          ; preds = %if.end
  %9 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5036
  %rsp_buf = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %9, i32 0, i32 8, !dbg !5037
  %10 = load i8*, i8** %rsp_buf, align 8, !dbg !5037
  %arrayidx = getelementptr i8, i8* %10, i64 0, !dbg !5036
  %11 = load i8, i8* %arrayidx, align 1, !dbg !5036
  %conv = zext i8 %11 to i32, !dbg !5036
  %shr = ashr i32 %conv, 2, !dbg !5038
  %and = and i32 %shr, 15, !dbg !5039
  %12 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5040
  %rsp_buf5 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %12, i32 0, i32 8, !dbg !5041
  %13 = load i8*, i8** %rsp_buf5, align 8, !dbg !5041
  %arrayidx6 = getelementptr i8, i8* %13, i64 1, !dbg !5040
  %14 = load i8, i8* %arrayidx6, align 1, !dbg !5040
  %conv7 = zext i8 %14 to i32, !dbg !5040
  %and8 = and i32 %conv7, 3, !dbg !5042
  %shl = shl i32 %and8, 4, !dbg !5043
  %or = or i32 %and, %shl, !dbg !5044
  %conv9 = trunc i32 %or to i16, !dbg !5045
  %15 = load i16*, i16** %status.addr, align 8, !dbg !5046
  store i16 %conv9, i16* %15, align 2, !dbg !5047
  store i32 0, i32* %retval, align 4, !dbg !5048
  br label %return, !dbg !5048

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !5049
  ret i32 %16, !dbg !5049
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @rtsx_usb_write_register(%struct.rtsx_ucr* %ucr, i16 zeroext %addr, i8 zeroext %mask, i8 zeroext %data) #0 !dbg !5050 {
entry:
  %ucr.addr = alloca %struct.rtsx_ucr*, align 8
  %addr.addr = alloca i16, align 2
  %mask.addr = alloca i8, align 1
  %data.addr = alloca i8, align 1
  store %struct.rtsx_ucr* %ucr, %struct.rtsx_ucr** %ucr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr.addr, metadata !5051, metadata !DIExpression()), !dbg !5052
  store i16 %addr, i16* %addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %addr.addr, metadata !5053, metadata !DIExpression()), !dbg !5054
  store i8 %mask, i8* %mask.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %mask.addr, metadata !5055, metadata !DIExpression()), !dbg !5056
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !5057, metadata !DIExpression()), !dbg !5058
  %0 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5059
  call void @rtsx_usb_init_cmd(%struct.rtsx_ucr* %0) #8, !dbg !5060
  %1 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5061
  %2 = load i16, i16* %addr.addr, align 2, !dbg !5062
  %3 = load i8, i8* %mask.addr, align 1, !dbg !5063
  %4 = load i8, i8* %data.addr, align 1, !dbg !5064
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %1, i8 zeroext 1, i16 zeroext %2, i8 zeroext %3, i8 zeroext %4) #8, !dbg !5065
  %5 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5066
  %call = call i32 @rtsx_usb_send_cmd(%struct.rtsx_ucr* %5, i8 zeroext 0, i32 100) #8, !dbg !5067
  ret i32 %call, !dbg !5068
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rtsx_usb_init_cmd(%struct.rtsx_ucr* %ucr) #0 !dbg !5069 {
entry:
  %ucr.addr = alloca %struct.rtsx_ucr*, align 8
  store %struct.rtsx_ucr* %ucr, %struct.rtsx_ucr** %ucr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr.addr, metadata !5070, metadata !DIExpression()), !dbg !5071
  br label %do.body, !dbg !5072

do.body:                                          ; preds = %entry
  %0 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5073
  %cmd_buf = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %0, i32 0, i32 6, !dbg !5073
  %1 = load i8*, i8** %cmd_buf, align 8, !dbg !5073
  %arrayidx = getelementptr i8, i8* %1, i64 0, !dbg !5073
  store i8 82, i8* %arrayidx, align 1, !dbg !5073
  %2 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5073
  %cmd_buf1 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %2, i32 0, i32 6, !dbg !5073
  %3 = load i8*, i8** %cmd_buf1, align 8, !dbg !5073
  %arrayidx2 = getelementptr i8, i8* %3, i64 1, !dbg !5073
  store i8 84, i8* %arrayidx2, align 1, !dbg !5073
  %4 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5073
  %cmd_buf3 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %4, i32 0, i32 6, !dbg !5073
  %5 = load i8*, i8** %cmd_buf3, align 8, !dbg !5073
  %arrayidx4 = getelementptr i8, i8* %5, i64 2, !dbg !5073
  store i8 67, i8* %arrayidx4, align 1, !dbg !5073
  %6 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5073
  %cmd_buf5 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %6, i32 0, i32 6, !dbg !5073
  %7 = load i8*, i8** %cmd_buf5, align 8, !dbg !5073
  %arrayidx6 = getelementptr i8, i8* %7, i64 3, !dbg !5073
  store i8 82, i8* %arrayidx6, align 1, !dbg !5073
  br label %do.end, !dbg !5073

do.end:                                           ; preds = %do.body
  %8 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5075
  %cmd_idx = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %8, i32 0, i32 7, !dbg !5076
  store i32 0, i32* %cmd_idx, align 8, !dbg !5077
  %9 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5078
  %cmd_buf7 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %9, i32 0, i32 6, !dbg !5079
  %10 = load i8*, i8** %cmd_buf7, align 8, !dbg !5079
  %arrayidx8 = getelementptr i8, i8* %10, i64 4, !dbg !5078
  store i8 0, i8* %arrayidx8, align 1, !dbg !5080
  ret void, !dbg !5081
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @rtsx_usb_read_register(%struct.rtsx_ucr* %ucr, i16 zeroext %addr, i8* %data) #0 !dbg !5082 {
entry:
  %retval = alloca i32, align 4
  %ucr.addr = alloca %struct.rtsx_ucr*, align 8
  %addr.addr = alloca i16, align 2
  %data.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.rtsx_ucr* %ucr, %struct.rtsx_ucr** %ucr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr.addr, metadata !5083, metadata !DIExpression()), !dbg !5084
  store i16 %addr, i16* %addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %addr.addr, metadata !5085, metadata !DIExpression()), !dbg !5086
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5087, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5089, metadata !DIExpression()), !dbg !5090
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5091
  %cmp = icmp ne i8* %0, null, !dbg !5093
  br i1 %cmp, label %if.then, label %if.end, !dbg !5094

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5095
  store i8 0, i8* %1, align 1, !dbg !5096
  br label %if.end, !dbg !5097

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5098
  call void @rtsx_usb_init_cmd(%struct.rtsx_ucr* %2) #8, !dbg !5099
  %3 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5100
  %4 = load i16, i16* %addr.addr, align 2, !dbg !5101
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %3, i8 zeroext 0, i16 zeroext %4, i8 zeroext 0, i8 zeroext 0) #8, !dbg !5102
  %5 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5103
  %call = call i32 @rtsx_usb_send_cmd(%struct.rtsx_ucr* %5, i8 zeroext 1, i32 100) #8, !dbg !5104
  store i32 %call, i32* %ret, align 4, !dbg !5105
  %6 = load i32, i32* %ret, align 4, !dbg !5106
  %tobool = icmp ne i32 %6, 0, !dbg !5106
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !5108

if.then1:                                         ; preds = %if.end
  %7 = load i32, i32* %ret, align 4, !dbg !5109
  store i32 %7, i32* %retval, align 4, !dbg !5110
  br label %return, !dbg !5110

if.end2:                                          ; preds = %if.end
  %8 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5111
  %call3 = call i32 @rtsx_usb_get_rsp(%struct.rtsx_ucr* %8, i32 1, i32 100) #8, !dbg !5112
  store i32 %call3, i32* %ret, align 4, !dbg !5113
  %9 = load i32, i32* %ret, align 4, !dbg !5114
  %tobool4 = icmp ne i32 %9, 0, !dbg !5114
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5116

if.then5:                                         ; preds = %if.end2
  %10 = load i32, i32* %ret, align 4, !dbg !5117
  store i32 %10, i32* %retval, align 4, !dbg !5118
  br label %return, !dbg !5118

if.end6:                                          ; preds = %if.end2
  %11 = load i8*, i8** %data.addr, align 8, !dbg !5119
  %cmp7 = icmp ne i8* %11, null, !dbg !5121
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !5122

if.then8:                                         ; preds = %if.end6
  %12 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5123
  %rsp_buf = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %12, i32 0, i32 8, !dbg !5124
  %13 = load i8*, i8** %rsp_buf, align 8, !dbg !5124
  %arrayidx = getelementptr i8, i8* %13, i64 0, !dbg !5123
  %14 = load i8, i8* %arrayidx, align 1, !dbg !5123
  %15 = load i8*, i8** %data.addr, align 8, !dbg !5125
  store i8 %14, i8* %15, align 1, !dbg !5126
  br label %if.end9, !dbg !5127

if.end9:                                          ; preds = %if.then8, %if.end6
  store i32 0, i32* %retval, align 4, !dbg !5128
  br label %return, !dbg !5128

return:                                           ; preds = %if.end9, %if.then5, %if.then1
  %16 = load i32, i32* %retval, align 4, !dbg !5129
  ret i32 %16, !dbg !5129
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @rtsx_usb_switch_clock(%struct.rtsx_ucr* %ucr, i32 %card_clock, i8 zeroext %ssc_depth, i1 zeroext %initial_mode, i1 zeroext %double_clk, i1 zeroext %vpclk) #0 !dbg !5130 {
entry:
  %retval = alloca i32, align 4
  %ucr.addr = alloca %struct.rtsx_ucr*, align 8
  %card_clock.addr = alloca i32, align 4
  %ssc_depth.addr = alloca i8, align 1
  %initial_mode.addr = alloca i8, align 1
  %double_clk.addr = alloca i8, align 1
  %vpclk.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %n = alloca i8, align 1
  %clk_divider = alloca i8, align 1
  %mcu_cnt = alloca i8, align 1
  %div = alloca i8, align 1
  store %struct.rtsx_ucr* %ucr, %struct.rtsx_ucr** %ucr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr.addr, metadata !5133, metadata !DIExpression()), !dbg !5134
  store i32 %card_clock, i32* %card_clock.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %card_clock.addr, metadata !5135, metadata !DIExpression()), !dbg !5136
  store i8 %ssc_depth, i8* %ssc_depth.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %ssc_depth.addr, metadata !5137, metadata !DIExpression()), !dbg !5138
  %frombool = zext i1 %initial_mode to i8
  store i8 %frombool, i8* %initial_mode.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %initial_mode.addr, metadata !5139, metadata !DIExpression()), !dbg !5140
  %frombool1 = zext i1 %double_clk to i8
  store i8 %frombool1, i8* %double_clk.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %double_clk.addr, metadata !5141, metadata !DIExpression()), !dbg !5142
  %frombool2 = zext i1 %vpclk to i8
  store i8 %frombool2, i8* %vpclk.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %vpclk.addr, metadata !5143, metadata !DIExpression()), !dbg !5144
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5145, metadata !DIExpression()), !dbg !5146
  call void @llvm.dbg.declare(metadata i8* %n, metadata !5147, metadata !DIExpression()), !dbg !5148
  call void @llvm.dbg.declare(metadata i8* %clk_divider, metadata !5149, metadata !DIExpression()), !dbg !5150
  call void @llvm.dbg.declare(metadata i8* %mcu_cnt, metadata !5151, metadata !DIExpression()), !dbg !5152
  call void @llvm.dbg.declare(metadata i8* %div, metadata !5153, metadata !DIExpression()), !dbg !5154
  %0 = load i32, i32* %card_clock.addr, align 4, !dbg !5155
  %tobool = icmp ne i32 %0, 0, !dbg !5155
  br i1 %tobool, label %if.end, label %if.then, !dbg !5157

if.then:                                          ; preds = %entry
  %1 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5158
  %cur_clk = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %1, i32 0, i32 5, !dbg !5160
  store i32 0, i32* %cur_clk, align 4, !dbg !5161
  store i32 0, i32* %retval, align 4, !dbg !5162
  br label %return, !dbg !5162

if.end:                                           ; preds = %entry
  %2 = load i8, i8* %initial_mode.addr, align 1, !dbg !5163
  %tobool3 = trunc i8 %2 to i1, !dbg !5163
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !5165

if.then4:                                         ; preds = %if.end
  store i8 -128, i8* %clk_divider, align 1, !dbg !5166
  store i32 30000000, i32* %card_clock.addr, align 4, !dbg !5168
  br label %if.end5, !dbg !5169

if.else:                                          ; preds = %if.end
  store i8 0, i8* %clk_divider, align 1, !dbg !5170
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %3 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5172
  %4 = load i8, i8* %clk_divider, align 1, !dbg !5173
  %call = call i32 @rtsx_usb_write_register(%struct.rtsx_ucr* %3, i16 zeroext -608, i8 zeroext -64, i8 zeroext %4) #8, !dbg !5174
  store i32 %call, i32* %ret, align 4, !dbg !5175
  %5 = load i32, i32* %ret, align 4, !dbg !5176
  %cmp = icmp slt i32 %5, 0, !dbg !5178
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !5179

if.then6:                                         ; preds = %if.end5
  %6 = load i32, i32* %ret, align 4, !dbg !5180
  store i32 %6, i32* %retval, align 4, !dbg !5181
  br label %return, !dbg !5181

if.end7:                                          ; preds = %if.end5
  %7 = load i32, i32* %card_clock.addr, align 4, !dbg !5182
  %div8 = udiv i32 %7, 1000000, !dbg !5182
  store i32 %div8, i32* %card_clock.addr, align 4, !dbg !5182
  %8 = load i8, i8* %initial_mode.addr, align 1, !dbg !5183
  %tobool9 = trunc i8 %8 to i1, !dbg !5183
  br i1 %tobool9, label %if.end12, label %land.lhs.true, !dbg !5185

land.lhs.true:                                    ; preds = %if.end7
  %9 = load i8, i8* %double_clk.addr, align 1, !dbg !5186
  %tobool10 = trunc i8 %9 to i1, !dbg !5186
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5187

if.then11:                                        ; preds = %land.lhs.true
  %10 = load i32, i32* %card_clock.addr, align 4, !dbg !5188
  %mul = mul i32 %10, 2, !dbg !5188
  store i32 %mul, i32* %card_clock.addr, align 4, !dbg !5188
  br label %if.end12, !dbg !5189

if.end12:                                         ; preds = %if.then11, %land.lhs.true, %if.end7
  %11 = load i32, i32* %card_clock.addr, align 4, !dbg !5190
  %12 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5192
  %cur_clk13 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %12, i32 0, i32 5, !dbg !5193
  %13 = load i32, i32* %cur_clk13, align 4, !dbg !5193
  %cmp14 = icmp eq i32 %11, %13, !dbg !5194
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !5195

if.then15:                                        ; preds = %if.end12
  store i32 0, i32* %retval, align 4, !dbg !5196
  br label %return, !dbg !5196

if.end16:                                         ; preds = %if.end12
  %14 = load i32, i32* %card_clock.addr, align 4, !dbg !5197
  %sub = sub i32 %14, 2, !dbg !5198
  %conv = trunc i32 %sub to i8, !dbg !5197
  store i8 %conv, i8* %n, align 1, !dbg !5199
  %15 = load i32, i32* %card_clock.addr, align 4, !dbg !5200
  %cmp17 = icmp ule i32 %15, 2, !dbg !5202
  br i1 %cmp17, label %if.then22, label %lor.lhs.false, !dbg !5203

lor.lhs.false:                                    ; preds = %if.end16
  %16 = load i8, i8* %n, align 1, !dbg !5204
  %conv19 = zext i8 %16 to i32, !dbg !5204
  %cmp20 = icmp sgt i32 %conv19, 120, !dbg !5205
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !5206

if.then22:                                        ; preds = %lor.lhs.false, %if.end16
  store i32 -22, i32* %retval, align 4, !dbg !5207
  br label %return, !dbg !5207

if.end23:                                         ; preds = %lor.lhs.false
  %17 = load i32, i32* %card_clock.addr, align 4, !dbg !5208
  %div24 = udiv i32 60, %17, !dbg !5209
  %add = add i32 %div24, 3, !dbg !5210
  %conv25 = trunc i32 %add to i8, !dbg !5211
  store i8 %conv25, i8* %mcu_cnt, align 1, !dbg !5212
  %18 = load i8, i8* %mcu_cnt, align 1, !dbg !5213
  %conv26 = zext i8 %18 to i32, !dbg !5213
  %cmp27 = icmp sgt i32 %conv26, 15, !dbg !5215
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !5216

if.then29:                                        ; preds = %if.end23
  store i8 15, i8* %mcu_cnt, align 1, !dbg !5217
  br label %if.end30, !dbg !5218

if.end30:                                         ; preds = %if.then29, %if.end23
  store i8 0, i8* %div, align 1, !dbg !5219
  br label %while.cond, !dbg !5220

while.cond:                                       ; preds = %while.body, %if.end30
  %19 = load i8, i8* %n, align 1, !dbg !5221
  %conv31 = zext i8 %19 to i32, !dbg !5221
  %cmp32 = icmp slt i32 %conv31, 60, !dbg !5222
  br i1 %cmp32, label %land.rhs, label %land.end, !dbg !5223

land.rhs:                                         ; preds = %while.cond
  %20 = load i8, i8* %div, align 1, !dbg !5224
  %conv34 = zext i8 %20 to i32, !dbg !5224
  %cmp35 = icmp slt i32 %conv34, 2, !dbg !5225
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %21 = phi i1 [ false, %while.cond ], [ %cmp35, %land.rhs ], !dbg !5226
  br i1 %21, label %while.body, label %while.end, !dbg !5220

while.body:                                       ; preds = %land.end
  %22 = load i8, i8* %n, align 1, !dbg !5227
  %conv37 = zext i8 %22 to i32, !dbg !5227
  %add38 = add i32 %conv37, 2, !dbg !5229
  %mul39 = mul i32 %add38, 2, !dbg !5230
  %sub40 = sub i32 %mul39, 2, !dbg !5231
  %conv41 = trunc i32 %sub40 to i8, !dbg !5232
  store i8 %conv41, i8* %n, align 1, !dbg !5233
  %23 = load i8, i8* %div, align 1, !dbg !5234
  %inc = add i8 %23, 1, !dbg !5234
  store i8 %inc, i8* %div, align 1, !dbg !5234
  br label %while.cond, !dbg !5220, !llvm.loop !5235

while.end:                                        ; preds = %land.end
  %24 = load i8, i8* %double_clk.addr, align 1, !dbg !5237
  %tobool42 = trunc i8 %24 to i1, !dbg !5237
  br i1 %tobool42, label %if.then43, label %if.end45, !dbg !5239

if.then43:                                        ; preds = %while.end
  %25 = load i8, i8* %ssc_depth.addr, align 1, !dbg !5240
  %call44 = call zeroext i8 @double_ssc_depth(i8 zeroext %25) #8, !dbg !5241
  store i8 %call44, i8* %ssc_depth.addr, align 1, !dbg !5242
  br label %if.end45, !dbg !5243

if.end45:                                         ; preds = %if.then43, %while.end
  %26 = load i8, i8* %ssc_depth.addr, align 1, !dbg !5244
  %27 = load i8, i8* %div, align 1, !dbg !5245
  %call46 = call zeroext i8 @revise_ssc_depth(i8 zeroext %26, i8 zeroext %27) #8, !dbg !5246
  store i8 %call46, i8* %ssc_depth.addr, align 1, !dbg !5247
  %28 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5248
  call void @rtsx_usb_init_cmd(%struct.rtsx_ucr* %28) #8, !dbg !5249
  %29 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5250
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %29, i8 zeroext 1, i16 zeroext -1021, i8 zeroext -128, i8 zeroext -128) #8, !dbg !5251
  %30 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5252
  %31 = load i8, i8* %div, align 1, !dbg !5253
  %conv47 = zext i8 %31 to i32, !dbg !5253
  %shl = shl i32 %conv47, 4, !dbg !5254
  %32 = load i8, i8* %mcu_cnt, align 1, !dbg !5255
  %conv48 = zext i8 %32 to i32, !dbg !5255
  %or = or i32 %shl, %conv48, !dbg !5256
  %conv49 = trunc i32 %or to i8, !dbg !5257
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %30, i8 zeroext 1, i16 zeroext -1021, i8 zeroext 63, i8 zeroext %conv49) #8, !dbg !5258
  %33 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5259
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %33, i8 zeroext 1, i16 zeroext -1015, i8 zeroext -128, i8 zeroext 0) #8, !dbg !5260
  %34 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5261
  %35 = load i8, i8* %ssc_depth.addr, align 1, !dbg !5262
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %34, i8 zeroext 1, i16 zeroext -1014, i8 zeroext 3, i8 zeroext %35) #8, !dbg !5263
  %36 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5264
  %37 = load i8, i8* %n, align 1, !dbg !5265
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %36, i8 zeroext 1, i16 zeroext -1017, i8 zeroext -1, i8 zeroext %37) #8, !dbg !5266
  %38 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5267
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %38, i8 zeroext 1, i16 zeroext -1015, i8 zeroext -128, i8 zeroext -128) #8, !dbg !5268
  %39 = load i8, i8* %vpclk.addr, align 1, !dbg !5269
  %tobool50 = trunc i8 %39 to i1, !dbg !5269
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !5271

if.then51:                                        ; preds = %if.end45
  %40 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5272
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %40, i8 zeroext 1, i16 zeroext -982, i8 zeroext 64, i8 zeroext 0) #8, !dbg !5274
  %41 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5275
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %41, i8 zeroext 1, i16 zeroext -982, i8 zeroext 64, i8 zeroext 64) #8, !dbg !5276
  br label %if.end52, !dbg !5277

if.end52:                                         ; preds = %if.then51, %if.end45
  %42 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5278
  %call53 = call i32 @rtsx_usb_send_cmd(%struct.rtsx_ucr* %42, i8 zeroext 0, i32 2000) #8, !dbg !5279
  store i32 %call53, i32* %ret, align 4, !dbg !5280
  %43 = load i32, i32* %ret, align 4, !dbg !5281
  %cmp54 = icmp slt i32 %43, 0, !dbg !5283
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !5284

if.then56:                                        ; preds = %if.end52
  %44 = load i32, i32* %ret, align 4, !dbg !5285
  store i32 %44, i32* %retval, align 4, !dbg !5286
  br label %return, !dbg !5286

if.end57:                                         ; preds = %if.end52
  %45 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5287
  %call58 = call i32 @rtsx_usb_write_register(%struct.rtsx_ucr* %45, i16 zeroext -1015, i8 zeroext -1, i8 zeroext -48) #8, !dbg !5288
  store i32 %call58, i32* %ret, align 4, !dbg !5289
  %46 = load i32, i32* %ret, align 4, !dbg !5290
  %cmp59 = icmp slt i32 %46, 0, !dbg !5292
  br i1 %cmp59, label %if.then61, label %if.end62, !dbg !5293

if.then61:                                        ; preds = %if.end57
  %47 = load i32, i32* %ret, align 4, !dbg !5294
  store i32 %47, i32* %retval, align 4, !dbg !5295
  br label %return, !dbg !5295

if.end62:                                         ; preds = %if.end57
  call void @usleep_range(i64 100, i64 1000) #8, !dbg !5296
  %48 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5297
  %call63 = call i32 @rtsx_usb_write_register(%struct.rtsx_ucr* %48, i16 zeroext -1021, i8 zeroext -128, i8 zeroext 0) #8, !dbg !5298
  store i32 %call63, i32* %ret, align 4, !dbg !5299
  %49 = load i32, i32* %ret, align 4, !dbg !5300
  %cmp64 = icmp slt i32 %49, 0, !dbg !5302
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !5303

if.then66:                                        ; preds = %if.end62
  %50 = load i32, i32* %ret, align 4, !dbg !5304
  store i32 %50, i32* %retval, align 4, !dbg !5305
  br label %return, !dbg !5305

if.end67:                                         ; preds = %if.end62
  %51 = load i32, i32* %card_clock.addr, align 4, !dbg !5306
  %52 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5307
  %cur_clk68 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %52, i32 0, i32 5, !dbg !5308
  store i32 %51, i32* %cur_clk68, align 4, !dbg !5309
  store i32 0, i32* %retval, align 4, !dbg !5310
  br label %return, !dbg !5310

return:                                           ; preds = %if.end67, %if.then66, %if.then61, %if.then56, %if.then22, %if.then15, %if.then6, %if.then
  %53 = load i32, i32* %retval, align 4, !dbg !5311
  ret i32 %53, !dbg !5311
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @double_ssc_depth(i8 zeroext %depth) #0 !dbg !5312 {
entry:
  %depth.addr = alloca i8, align 1
  store i8 %depth, i8* %depth.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %depth.addr, metadata !5315, metadata !DIExpression()), !dbg !5316
  %0 = load i8, i8* %depth.addr, align 1, !dbg !5317
  %conv = zext i8 %0 to i32, !dbg !5317
  %cmp = icmp sgt i32 %conv, 1, !dbg !5318
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5319

cond.true:                                        ; preds = %entry
  %1 = load i8, i8* %depth.addr, align 1, !dbg !5320
  %conv2 = zext i8 %1 to i32, !dbg !5320
  %sub = sub i32 %conv2, 1, !dbg !5321
  br label %cond.end, !dbg !5319

cond.false:                                       ; preds = %entry
  %2 = load i8, i8* %depth.addr, align 1, !dbg !5322
  %conv3 = zext i8 %2 to i32, !dbg !5322
  br label %cond.end, !dbg !5319

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %conv3, %cond.false ], !dbg !5319
  %conv4 = trunc i32 %cond to i8, !dbg !5319
  ret i8 %conv4, !dbg !5323
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @revise_ssc_depth(i8 zeroext %ssc_depth, i8 zeroext %div) #0 !dbg !5324 {
entry:
  %ssc_depth.addr = alloca i8, align 1
  %div.addr = alloca i8, align 1
  store i8 %ssc_depth, i8* %ssc_depth.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %ssc_depth.addr, metadata !5327, metadata !DIExpression()), !dbg !5328
  store i8 %div, i8* %div.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %div.addr, metadata !5329, metadata !DIExpression()), !dbg !5330
  %0 = load i8, i8* %div.addr, align 1, !dbg !5331
  %conv = zext i8 %0 to i32, !dbg !5331
  %cmp = icmp sgt i32 %conv, 0, !dbg !5333
  br i1 %cmp, label %if.then, label %if.end12, !dbg !5334

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %ssc_depth.addr, align 1, !dbg !5335
  %conv2 = zext i8 %1 to i32, !dbg !5335
  %2 = load i8, i8* %div.addr, align 1, !dbg !5338
  %conv3 = zext i8 %2 to i32, !dbg !5338
  %sub = sub i32 %conv3, 1, !dbg !5339
  %cmp4 = icmp sgt i32 %conv2, %sub, !dbg !5340
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !5341

if.then6:                                         ; preds = %if.then
  %3 = load i8, i8* %div.addr, align 1, !dbg !5342
  %conv7 = zext i8 %3 to i32, !dbg !5342
  %sub8 = sub i32 %conv7, 1, !dbg !5343
  %4 = load i8, i8* %ssc_depth.addr, align 1, !dbg !5344
  %conv9 = zext i8 %4 to i32, !dbg !5344
  %sub10 = sub i32 %conv9, %sub8, !dbg !5344
  %conv11 = trunc i32 %sub10 to i8, !dbg !5344
  store i8 %conv11, i8* %ssc_depth.addr, align 1, !dbg !5344
  br label %if.end, !dbg !5345

if.else:                                          ; preds = %if.then
  store i8 1, i8* %ssc_depth.addr, align 1, !dbg !5346
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  br label %if.end12, !dbg !5347

if.end12:                                         ; preds = %if.end, %entry
  %5 = load i8, i8* %ssc_depth.addr, align 1, !dbg !5348
  ret i8 %5, !dbg !5349
}

; Function Attrs: noredzone
declare dso_local void @usleep_range(i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @rtsx_usb_card_exclusive_check(%struct.rtsx_ucr* %ucr, i32 %card) #0 !dbg !5350 {
entry:
  %retval = alloca i32, align 4
  %ucr.addr = alloca %struct.rtsx_ucr*, align 8
  %card.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %val = alloca i16, align 2
  %cd_mask = alloca [2 x i16], align 2
  store %struct.rtsx_ucr* %ucr, %struct.rtsx_ucr** %ucr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr.addr, metadata !5353, metadata !DIExpression()), !dbg !5354
  store i32 %card, i32* %card.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %card.addr, metadata !5355, metadata !DIExpression()), !dbg !5356
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5357, metadata !DIExpression()), !dbg !5358
  call void @llvm.dbg.declare(metadata i16* %val, metadata !5359, metadata !DIExpression()), !dbg !5360
  call void @llvm.dbg.declare(metadata [2 x i16]* %cd_mask, metadata !5361, metadata !DIExpression()), !dbg !5363
  %0 = bitcast [2 x i16]* %cd_mask to i8*, !dbg !5363
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %0, i8* align 2 bitcast ([2 x i16]* @__const.rtsx_usb_card_exclusive_check.cd_mask to i8*), i64 4, i1 false), !dbg !5363
  %1 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5364
  %call = call i32 @rtsx_usb_get_card_status(%struct.rtsx_ucr* %1, i16* %val) #8, !dbg !5365
  store i32 %call, i32* %ret, align 4, !dbg !5366
  %2 = load i32, i32* %ret, align 4, !dbg !5367
  %tobool = icmp ne i32 %2, 0, !dbg !5367
  br i1 %tobool, label %if.then, label %if.end, !dbg !5369

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5370
  br label %return, !dbg !5370

if.end:                                           ; preds = %entry
  %3 = load i16, i16* %val, align 2, !dbg !5371
  %conv = zext i16 %3 to i32, !dbg !5371
  %4 = load i32, i32* %card.addr, align 4, !dbg !5373
  %idxprom = sext i32 %4 to i64, !dbg !5374
  %arrayidx = getelementptr [2 x i16], [2 x i16]* %cd_mask, i64 0, i64 %idxprom, !dbg !5374
  %5 = load i16, i16* %arrayidx, align 2, !dbg !5374
  %conv1 = zext i16 %5 to i32, !dbg !5374
  %and = and i32 %conv, %conv1, !dbg !5375
  %tobool2 = icmp ne i32 %and, 0, !dbg !5375
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5376

if.then3:                                         ; preds = %if.end
  store i32 -5, i32* %retval, align 4, !dbg !5377
  br label %return, !dbg !5377

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5378
  br label %return, !dbg !5378

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !5379
  ret i32 %6, !dbg !5379
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @rtsx_usb_driver_init() #6 section ".init.text" !dbg !5380 {
entry:
  %call = call i32 @usb_register_driver(%struct.usb_driver* @rtsx_usb_driver, %struct.module* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !5383
  ret i32 %call, !dbg !5383
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @rtsx_usb_driver_exit() #6 section ".exit.text" !dbg !5384 {
entry:
  call void @usb_deregister(%struct.usb_driver* @rtsx_usb_driver) #8, !dbg !5385
  ret void, !dbg !5385
}

; Function Attrs: noredzone
declare dso_local void @usb_deregister(%struct.usb_driver*) #2

; Function Attrs: noredzone
declare dso_local i32 @usb_sg_init(%struct.usb_sg_request*, %struct.usb_device*, i32, i32, %struct.scatterlist*, i32, i64, i32) #2

; Function Attrs: noredzone
declare dso_local void @add_timer(%struct.timer_list*) #2

; Function Attrs: noredzone
declare dso_local void @usb_sg_wait(%struct.usb_sg_request*) #2

; Function Attrs: noredzone
declare dso_local i32 @del_timer(%struct.timer_list*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #0 !dbg !5386 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !5387, metadata !DIExpression()), !dbg !5388
  %0 = load i32, i32* %m.addr, align 4, !dbg !5389
  %conv = zext i32 %0 to i64, !dbg !5389
  %add = add i64 %conv, 4, !dbg !5390
  %sub = sub i64 %add, 1, !dbg !5391
  %div = sdiv i64 %sub, 4, !dbg !5392
  ret i64 %div, !dbg !5393
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rtsx_usb_seq_cmd_hdr(%struct.rtsx_ucr* %ucr, i16 zeroext %addr, i16 zeroext %len, i8 zeroext %seq_type) #0 !dbg !5394 {
entry:
  %ucr.addr = alloca %struct.rtsx_ucr*, align 8
  %addr.addr = alloca i16, align 2
  %len.addr = alloca i16, align 2
  %seq_type.addr = alloca i8, align 1
  store %struct.rtsx_ucr* %ucr, %struct.rtsx_ucr** %ucr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr.addr, metadata !5397, metadata !DIExpression()), !dbg !5398
  store i16 %addr, i16* %addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %addr.addr, metadata !5399, metadata !DIExpression()), !dbg !5400
  store i16 %len, i16* %len.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %len.addr, metadata !5401, metadata !DIExpression()), !dbg !5402
  store i8 %seq_type, i8* %seq_type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %seq_type.addr, metadata !5403, metadata !DIExpression()), !dbg !5404
  br label %do.body, !dbg !5405

do.body:                                          ; preds = %entry
  %0 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5406
  %cmd_buf = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %0, i32 0, i32 6, !dbg !5406
  %1 = load i8*, i8** %cmd_buf, align 8, !dbg !5406
  %arrayidx = getelementptr i8, i8* %1, i64 0, !dbg !5406
  store i8 82, i8* %arrayidx, align 1, !dbg !5406
  %2 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5406
  %cmd_buf1 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %2, i32 0, i32 6, !dbg !5406
  %3 = load i8*, i8** %cmd_buf1, align 8, !dbg !5406
  %arrayidx2 = getelementptr i8, i8* %3, i64 1, !dbg !5406
  store i8 84, i8* %arrayidx2, align 1, !dbg !5406
  %4 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5406
  %cmd_buf3 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %4, i32 0, i32 6, !dbg !5406
  %5 = load i8*, i8** %cmd_buf3, align 8, !dbg !5406
  %arrayidx4 = getelementptr i8, i8* %5, i64 2, !dbg !5406
  store i8 67, i8* %arrayidx4, align 1, !dbg !5406
  %6 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5406
  %cmd_buf5 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %6, i32 0, i32 6, !dbg !5406
  %7 = load i8*, i8** %cmd_buf5, align 8, !dbg !5406
  %arrayidx6 = getelementptr i8, i8* %7, i64 3, !dbg !5406
  store i8 82, i8* %arrayidx6, align 1, !dbg !5406
  br label %do.end, !dbg !5406

do.end:                                           ; preds = %do.body
  %8 = load i8, i8* %seq_type.addr, align 1, !dbg !5408
  %9 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5409
  %cmd_buf7 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %9, i32 0, i32 6, !dbg !5410
  %10 = load i8*, i8** %cmd_buf7, align 8, !dbg !5410
  %arrayidx8 = getelementptr i8, i8* %10, i64 4, !dbg !5409
  store i8 %8, i8* %arrayidx8, align 1, !dbg !5411
  %11 = load i16, i16* %len.addr, align 2, !dbg !5412
  %conv = zext i16 %11 to i32, !dbg !5412
  %shr = ashr i32 %conv, 8, !dbg !5413
  %conv9 = trunc i32 %shr to i8, !dbg !5414
  %12 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5415
  %cmd_buf10 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %12, i32 0, i32 6, !dbg !5416
  %13 = load i8*, i8** %cmd_buf10, align 8, !dbg !5416
  %arrayidx11 = getelementptr i8, i8* %13, i64 5, !dbg !5415
  store i8 %conv9, i8* %arrayidx11, align 1, !dbg !5417
  %14 = load i16, i16* %len.addr, align 2, !dbg !5418
  %conv12 = trunc i16 %14 to i8, !dbg !5419
  %15 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5420
  %cmd_buf13 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %15, i32 0, i32 6, !dbg !5421
  %16 = load i8*, i8** %cmd_buf13, align 8, !dbg !5421
  %arrayidx14 = getelementptr i8, i8* %16, i64 6, !dbg !5420
  store i8 %conv12, i8* %arrayidx14, align 1, !dbg !5422
  %17 = load i16, i16* %addr.addr, align 2, !dbg !5423
  %conv15 = zext i16 %17 to i32, !dbg !5423
  %shr16 = ashr i32 %conv15, 8, !dbg !5424
  %conv17 = trunc i32 %shr16 to i8, !dbg !5425
  %18 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5426
  %cmd_buf18 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %18, i32 0, i32 6, !dbg !5427
  %19 = load i8*, i8** %cmd_buf18, align 8, !dbg !5427
  %arrayidx19 = getelementptr i8, i8* %19, i64 8, !dbg !5426
  store i8 %conv17, i8* %arrayidx19, align 1, !dbg !5428
  %20 = load i16, i16* %addr.addr, align 2, !dbg !5429
  %conv20 = trunc i16 %20 to i8, !dbg !5430
  %21 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5431
  %cmd_buf21 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %21, i32 0, i32 6, !dbg !5432
  %22 = load i8*, i8** %cmd_buf21, align 8, !dbg !5432
  %arrayidx22 = getelementptr i8, i8* %22, i64 9, !dbg !5431
  store i8 %conv20, i8* %arrayidx22, align 1, !dbg !5433
  %23 = load i8, i8* %seq_type.addr, align 1, !dbg !5434
  %conv23 = zext i8 %23 to i32, !dbg !5434
  %cmp = icmp eq i32 %conv23, 2, !dbg !5436
  br i1 %cmp, label %if.then, label %if.else, !dbg !5437

if.then:                                          ; preds = %do.end
  %24 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5438
  %cmd_buf25 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %24, i32 0, i32 6, !dbg !5439
  %25 = load i8*, i8** %cmd_buf25, align 8, !dbg !5439
  %arrayidx26 = getelementptr i8, i8* %25, i64 7, !dbg !5438
  store i8 0, i8* %arrayidx26, align 1, !dbg !5440
  br label %if.end, !dbg !5438

if.else:                                          ; preds = %do.end
  %26 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5441
  %cmd_buf27 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %26, i32 0, i32 6, !dbg !5442
  %27 = load i8*, i8** %cmd_buf27, align 8, !dbg !5442
  %arrayidx28 = getelementptr i8, i8* %27, i64 7, !dbg !5441
  store i8 1, i8* %arrayidx28, align 1, !dbg !5443
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5444
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #4 !dbg !5445 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5449, metadata !DIExpression()), !dbg !5454
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5456, metadata !DIExpression()), !dbg !5457
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5458, metadata !DIExpression()), !dbg !5459
  %0 = load i64, i64* %size.addr, align 8, !dbg !5460
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5462
  br i1 %1, label %if.then, label %if.end447, !dbg !5463

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5464
  %tobool = icmp ne i64 %2, 0, !dbg !5464
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5467

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5468
  br label %return, !dbg !5468

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5469
  %cmp = icmp ult i64 %3, 4096, !dbg !5471
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5472

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5473
  br label %return, !dbg !5473

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub = sub i64 %4, 1, !dbg !5474
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5474
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5474

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub4 = sub i64 %6, 1, !dbg !5474
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5474
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5474

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub6 = sub i64 %8, 1, !dbg !5474
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5474
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5474

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5474

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub9 = sub i64 %9, 1, !dbg !5474
  %and = and i64 %sub9, -9223372036854775808, !dbg !5474
  %tobool10 = icmp ne i64 %and, 0, !dbg !5474
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5474

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5474

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub13 = sub i64 %10, 1, !dbg !5474
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5474
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5474
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5474

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5474

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub18 = sub i64 %11, 1, !dbg !5474
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5474
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5474
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5474

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5474

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub23 = sub i64 %12, 1, !dbg !5474
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5474
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5474
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5474

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5474

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub28 = sub i64 %13, 1, !dbg !5474
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5474
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5474
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5474

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5474

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub33 = sub i64 %14, 1, !dbg !5474
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5474
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5474
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5474

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5474

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub38 = sub i64 %15, 1, !dbg !5474
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5474
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5474
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5474

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5474

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub43 = sub i64 %16, 1, !dbg !5474
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5474
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5474
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5474

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5474

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub48 = sub i64 %17, 1, !dbg !5474
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5474
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5474
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5474

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5474

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub53 = sub i64 %18, 1, !dbg !5474
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5474
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5474
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5474

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5474

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub58 = sub i64 %19, 1, !dbg !5474
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5474
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5474
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5474

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5474

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub63 = sub i64 %20, 1, !dbg !5474
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5474
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5474
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5474

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5474

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub68 = sub i64 %21, 1, !dbg !5474
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5474
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5474
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5474

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5474

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub73 = sub i64 %22, 1, !dbg !5474
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5474
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5474
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5474

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5474

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub78 = sub i64 %23, 1, !dbg !5474
  %and79 = and i64 %sub78, 562949953421312, !dbg !5474
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5474
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5474

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5474

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub83 = sub i64 %24, 1, !dbg !5474
  %and84 = and i64 %sub83, 281474976710656, !dbg !5474
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5474
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5474

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5474

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub88 = sub i64 %25, 1, !dbg !5474
  %and89 = and i64 %sub88, 140737488355328, !dbg !5474
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5474
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5474

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5474

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub93 = sub i64 %26, 1, !dbg !5474
  %and94 = and i64 %sub93, 70368744177664, !dbg !5474
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5474
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5474

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5474

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub98 = sub i64 %27, 1, !dbg !5474
  %and99 = and i64 %sub98, 35184372088832, !dbg !5474
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5474
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5474

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5474

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub103 = sub i64 %28, 1, !dbg !5474
  %and104 = and i64 %sub103, 17592186044416, !dbg !5474
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5474
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5474

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5474

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub108 = sub i64 %29, 1, !dbg !5474
  %and109 = and i64 %sub108, 8796093022208, !dbg !5474
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5474
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5474

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5474

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub113 = sub i64 %30, 1, !dbg !5474
  %and114 = and i64 %sub113, 4398046511104, !dbg !5474
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5474
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5474

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5474

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub118 = sub i64 %31, 1, !dbg !5474
  %and119 = and i64 %sub118, 2199023255552, !dbg !5474
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5474
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5474

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5474

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub123 = sub i64 %32, 1, !dbg !5474
  %and124 = and i64 %sub123, 1099511627776, !dbg !5474
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5474
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5474

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5474

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub128 = sub i64 %33, 1, !dbg !5474
  %and129 = and i64 %sub128, 549755813888, !dbg !5474
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5474
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5474

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5474

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub133 = sub i64 %34, 1, !dbg !5474
  %and134 = and i64 %sub133, 274877906944, !dbg !5474
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5474
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5474

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5474

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub138 = sub i64 %35, 1, !dbg !5474
  %and139 = and i64 %sub138, 137438953472, !dbg !5474
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5474
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5474

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5474

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub143 = sub i64 %36, 1, !dbg !5474
  %and144 = and i64 %sub143, 68719476736, !dbg !5474
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5474
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5474

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5474

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub148 = sub i64 %37, 1, !dbg !5474
  %and149 = and i64 %sub148, 34359738368, !dbg !5474
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5474
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5474

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5474

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub153 = sub i64 %38, 1, !dbg !5474
  %and154 = and i64 %sub153, 17179869184, !dbg !5474
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5474
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5474

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5474

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub158 = sub i64 %39, 1, !dbg !5474
  %and159 = and i64 %sub158, 8589934592, !dbg !5474
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5474
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5474

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5474

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub163 = sub i64 %40, 1, !dbg !5474
  %and164 = and i64 %sub163, 4294967296, !dbg !5474
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5474
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5474

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5474

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub168 = sub i64 %41, 1, !dbg !5474
  %and169 = and i64 %sub168, 2147483648, !dbg !5474
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5474
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5474

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5474

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub173 = sub i64 %42, 1, !dbg !5474
  %and174 = and i64 %sub173, 1073741824, !dbg !5474
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5474
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5474

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5474

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub178 = sub i64 %43, 1, !dbg !5474
  %and179 = and i64 %sub178, 536870912, !dbg !5474
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5474
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5474

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5474

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub183 = sub i64 %44, 1, !dbg !5474
  %and184 = and i64 %sub183, 268435456, !dbg !5474
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5474
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5474

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5474

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub188 = sub i64 %45, 1, !dbg !5474
  %and189 = and i64 %sub188, 134217728, !dbg !5474
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5474
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5474

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5474

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub193 = sub i64 %46, 1, !dbg !5474
  %and194 = and i64 %sub193, 67108864, !dbg !5474
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5474
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5474

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5474

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub198 = sub i64 %47, 1, !dbg !5474
  %and199 = and i64 %sub198, 33554432, !dbg !5474
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5474
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5474

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5474

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub203 = sub i64 %48, 1, !dbg !5474
  %and204 = and i64 %sub203, 16777216, !dbg !5474
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5474
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5474

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5474

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub208 = sub i64 %49, 1, !dbg !5474
  %and209 = and i64 %sub208, 8388608, !dbg !5474
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5474
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5474

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5474

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub213 = sub i64 %50, 1, !dbg !5474
  %and214 = and i64 %sub213, 4194304, !dbg !5474
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5474
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5474

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5474

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub218 = sub i64 %51, 1, !dbg !5474
  %and219 = and i64 %sub218, 2097152, !dbg !5474
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5474
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5474

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5474

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub223 = sub i64 %52, 1, !dbg !5474
  %and224 = and i64 %sub223, 1048576, !dbg !5474
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5474
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5474

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5474

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub228 = sub i64 %53, 1, !dbg !5474
  %and229 = and i64 %sub228, 524288, !dbg !5474
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5474
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5474

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5474

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub233 = sub i64 %54, 1, !dbg !5474
  %and234 = and i64 %sub233, 262144, !dbg !5474
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5474
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5474

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5474

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub238 = sub i64 %55, 1, !dbg !5474
  %and239 = and i64 %sub238, 131072, !dbg !5474
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5474
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5474

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5474

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub243 = sub i64 %56, 1, !dbg !5474
  %and244 = and i64 %sub243, 65536, !dbg !5474
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5474
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5474

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5474

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub248 = sub i64 %57, 1, !dbg !5474
  %and249 = and i64 %sub248, 32768, !dbg !5474
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5474
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5474

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5474

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub253 = sub i64 %58, 1, !dbg !5474
  %and254 = and i64 %sub253, 16384, !dbg !5474
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5474
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5474

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5474

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub258 = sub i64 %59, 1, !dbg !5474
  %and259 = and i64 %sub258, 8192, !dbg !5474
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5474
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5474

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5474

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub263 = sub i64 %60, 1, !dbg !5474
  %and264 = and i64 %sub263, 4096, !dbg !5474
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5474
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5474

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5474

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub268 = sub i64 %61, 1, !dbg !5474
  %and269 = and i64 %sub268, 2048, !dbg !5474
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5474
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5474

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5474

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub273 = sub i64 %62, 1, !dbg !5474
  %and274 = and i64 %sub273, 1024, !dbg !5474
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5474
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5474

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5474

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub278 = sub i64 %63, 1, !dbg !5474
  %and279 = and i64 %sub278, 512, !dbg !5474
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5474
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5474

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5474

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub283 = sub i64 %64, 1, !dbg !5474
  %and284 = and i64 %sub283, 256, !dbg !5474
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5474
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5474

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5474

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub288 = sub i64 %65, 1, !dbg !5474
  %and289 = and i64 %sub288, 128, !dbg !5474
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5474
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5474

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5474

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub293 = sub i64 %66, 1, !dbg !5474
  %and294 = and i64 %sub293, 64, !dbg !5474
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5474
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5474

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5474

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub298 = sub i64 %67, 1, !dbg !5474
  %and299 = and i64 %sub298, 32, !dbg !5474
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5474
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5474

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5474

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub303 = sub i64 %68, 1, !dbg !5474
  %and304 = and i64 %sub303, 16, !dbg !5474
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5474
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5474

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5474

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub308 = sub i64 %69, 1, !dbg !5474
  %and309 = and i64 %sub308, 8, !dbg !5474
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5474
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5474

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5474

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub313 = sub i64 %70, 1, !dbg !5474
  %and314 = and i64 %sub313, 4, !dbg !5474
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5474
  %71 = zext i1 %tobool315 to i64, !dbg !5474
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5474
  br label %cond.end, !dbg !5474

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5474
  br label %cond.end317, !dbg !5474

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5474
  br label %cond.end319, !dbg !5474

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5474
  br label %cond.end321, !dbg !5474

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5474
  br label %cond.end323, !dbg !5474

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5474
  br label %cond.end325, !dbg !5474

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5474
  br label %cond.end327, !dbg !5474

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5474
  br label %cond.end329, !dbg !5474

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5474
  br label %cond.end331, !dbg !5474

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5474
  br label %cond.end333, !dbg !5474

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5474
  br label %cond.end335, !dbg !5474

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5474
  br label %cond.end337, !dbg !5474

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5474
  br label %cond.end339, !dbg !5474

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5474
  br label %cond.end341, !dbg !5474

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5474
  br label %cond.end343, !dbg !5474

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5474
  br label %cond.end345, !dbg !5474

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5474
  br label %cond.end347, !dbg !5474

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5474
  br label %cond.end349, !dbg !5474

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5474
  br label %cond.end351, !dbg !5474

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5474
  br label %cond.end353, !dbg !5474

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5474
  br label %cond.end355, !dbg !5474

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5474
  br label %cond.end357, !dbg !5474

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5474
  br label %cond.end359, !dbg !5474

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5474
  br label %cond.end361, !dbg !5474

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5474
  br label %cond.end363, !dbg !5474

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5474
  br label %cond.end365, !dbg !5474

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5474
  br label %cond.end367, !dbg !5474

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5474
  br label %cond.end369, !dbg !5474

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5474
  br label %cond.end371, !dbg !5474

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5474
  br label %cond.end373, !dbg !5474

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5474
  br label %cond.end375, !dbg !5474

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5474
  br label %cond.end377, !dbg !5474

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5474
  br label %cond.end379, !dbg !5474

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5474
  br label %cond.end381, !dbg !5474

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5474
  br label %cond.end383, !dbg !5474

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5474
  br label %cond.end385, !dbg !5474

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5474
  br label %cond.end387, !dbg !5474

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5474
  br label %cond.end389, !dbg !5474

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5474
  br label %cond.end391, !dbg !5474

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5474
  br label %cond.end393, !dbg !5474

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5474
  br label %cond.end395, !dbg !5474

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5474
  br label %cond.end397, !dbg !5474

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5474
  br label %cond.end399, !dbg !5474

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5474
  br label %cond.end401, !dbg !5474

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5474
  br label %cond.end403, !dbg !5474

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5474
  br label %cond.end405, !dbg !5474

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5474
  br label %cond.end407, !dbg !5474

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5474
  br label %cond.end409, !dbg !5474

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5474
  br label %cond.end411, !dbg !5474

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5474
  br label %cond.end413, !dbg !5474

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5474
  br label %cond.end415, !dbg !5474

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5474
  br label %cond.end417, !dbg !5474

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5474
  br label %cond.end419, !dbg !5474

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5474
  br label %cond.end421, !dbg !5474

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5474
  br label %cond.end423, !dbg !5474

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5474
  br label %cond.end425, !dbg !5474

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5474
  br label %cond.end427, !dbg !5474

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5474
  br label %cond.end429, !dbg !5474

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5474
  br label %cond.end431, !dbg !5474

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5474
  br label %cond.end433, !dbg !5474

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5474
  br label %cond.end435, !dbg !5474

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5474
  br label %cond.end437, !dbg !5474

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5474
  br label %cond.end440, !dbg !5474

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5474

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5474
  br label %cond.end444, !dbg !5474

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5474
  %sub443 = sub i64 %72, 1, !dbg !5474
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5474
  br label %cond.end444, !dbg !5474

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5474
  %sub446 = sub i32 %cond445, 12, !dbg !5475
  %add = add i32 %sub446, 1, !dbg !5476
  store i32 %add, i32* %retval, align 4, !dbg !5477
  br label %return, !dbg !5477

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5478
  %dec = add i64 %73, -1, !dbg !5478
  store i64 %dec, i64* %size.addr, align 8, !dbg !5478
  %74 = load i64, i64* %size.addr, align 8, !dbg !5479
  %shr = lshr i64 %74, 12, !dbg !5479
  store i64 %shr, i64* %size.addr, align 8, !dbg !5479
  %75 = load i64, i64* %size.addr, align 8, !dbg !5480
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5457
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5481
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5482
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !5481, !srcloc !5483
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5481
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5484
  %add.i = add i32 %79, 1, !dbg !5485
  store i32 %add.i, i32* %retval, align 4, !dbg !5486
  br label %return, !dbg !5486

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5487
  ret i32 %80, !dbg !5487
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #4 !dbg !5488 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5449, metadata !DIExpression()), !dbg !5492
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5456, metadata !DIExpression()), !dbg !5494
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5495, metadata !DIExpression()), !dbg !5496
  %0 = load i64, i64* %n.addr, align 8, !dbg !5497
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5494
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5498
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5499
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !5498, !srcloc !5483
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5498
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5500
  %add.i = add i32 %4, 1, !dbg !5501
  %sub = sub i32 %add.i, 1, !dbg !5502
  ret i32 %sub, !dbg !5503
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5504 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5507, metadata !DIExpression()), !dbg !5508
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5509, metadata !DIExpression()), !dbg !5510
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5511, metadata !DIExpression()), !dbg !5512
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5513, metadata !DIExpression()), !dbg !5514
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5515
  ret i8* %0, !dbg !5516
}

; Function Attrs: noredzone
declare dso_local i32 @usb_register_driver(%struct.usb_driver*, %struct.module*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtsx_usb_probe(%struct.usb_interface* %intf, %struct.usb_device_id* %id) #0 !dbg !4050 {
entry:
  %retval = alloca i32, align 4
  %intf.addr = alloca %struct.usb_interface*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  %usb_dev = alloca %struct.usb_device*, align 8
  %ucr = alloca %struct.rtsx_ucr*, align 8
  %ret = alloca i32, align 4
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5517, metadata !DIExpression()), !dbg !5518
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !5519, metadata !DIExpression()), !dbg !5520
  call void @llvm.dbg.declare(metadata %struct.usb_device** %usb_dev, metadata !5521, metadata !DIExpression()), !dbg !5522
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5523
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %0) #8, !dbg !5524
  store %struct.usb_device* %call, %struct.usb_device** %usb_dev, align 8, !dbg !5522
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr, metadata !5525, metadata !DIExpression()), !dbg !5526
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5527, metadata !DIExpression()), !dbg !5528
  %1 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5529
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %1, i32 0, i32 7, !dbg !5530
  %call1 = call i8* @devm_kzalloc(%struct.device* %dev, i64 208, i32 3264) #8, !dbg !5531
  %2 = bitcast i8* %call1 to %struct.rtsx_ucr*, !dbg !5531
  store %struct.rtsx_ucr* %2, %struct.rtsx_ucr** %ucr, align 8, !dbg !5532
  %3 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5533
  %tobool = icmp ne %struct.rtsx_ucr* %3, null, !dbg !5533
  br i1 %tobool, label %if.end, label %if.then, !dbg !5535

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !5536
  br label %return, !dbg !5536

if.end:                                           ; preds = %entry
  %4 = load %struct.usb_device*, %struct.usb_device** %usb_dev, align 8, !dbg !5537
  %5 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5538
  %pusb_dev = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %5, i32 0, i32 9, !dbg !5539
  store %struct.usb_device* %4, %struct.usb_device** %pusb_dev, align 8, !dbg !5540
  %6 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5541
  %pusb_dev2 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %6, i32 0, i32 9, !dbg !5542
  %7 = load %struct.usb_device*, %struct.usb_device** %pusb_dev2, align 8, !dbg !5542
  %8 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5543
  %iobuf_dma = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %8, i32 0, i32 13, !dbg !5544
  %call3 = call i8* @usb_alloc_coherent(%struct.usb_device* %7, i64 1024, i32 3264, i64* %iobuf_dma) #8, !dbg !5545
  %9 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5546
  %iobuf = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %9, i32 0, i32 12, !dbg !5547
  store i8* %call3, i8** %iobuf, align 8, !dbg !5548
  %10 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5549
  %iobuf4 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %10, i32 0, i32 12, !dbg !5551
  %11 = load i8*, i8** %iobuf4, align 8, !dbg !5551
  %tobool5 = icmp ne i8* %11, null, !dbg !5549
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !5552

if.then6:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !5553
  br label %return, !dbg !5553

if.end7:                                          ; preds = %if.end
  %12 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5554
  %13 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5555
  %14 = bitcast %struct.rtsx_ucr* %13 to i8*, !dbg !5555
  call void @usb_set_intfdata(%struct.usb_interface* %12, i8* %14) #8, !dbg !5556
  %15 = load %struct.usb_device_id*, %struct.usb_device_id** %id.addr, align 8, !dbg !5557
  %idVendor = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %15, i32 0, i32 1, !dbg !5558
  %16 = load i16, i16* %idVendor, align 2, !dbg !5558
  %17 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5559
  %vendor_id = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %17, i32 0, i32 0, !dbg !5560
  store i16 %16, i16* %vendor_id, align 8, !dbg !5561
  %18 = load %struct.usb_device_id*, %struct.usb_device_id** %id.addr, align 8, !dbg !5562
  %idProduct = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %18, i32 0, i32 2, !dbg !5563
  %19 = load i16, i16* %idProduct, align 4, !dbg !5563
  %20 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5564
  %product_id = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %20, i32 0, i32 1, !dbg !5565
  store i16 %19, i16* %product_id, align 2, !dbg !5566
  %21 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5567
  %iobuf8 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %21, i32 0, i32 12, !dbg !5568
  %22 = load i8*, i8** %iobuf8, align 8, !dbg !5568
  %23 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5569
  %rsp_buf = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %23, i32 0, i32 8, !dbg !5570
  store i8* %22, i8** %rsp_buf, align 8, !dbg !5571
  %24 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5572
  %cmd_buf = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %24, i32 0, i32 6, !dbg !5573
  store i8* %22, i8** %cmd_buf, align 8, !dbg !5574
  br label %do.body, !dbg !5575

do.body:                                          ; preds = %if.end7
  %25 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5576
  %dev_mutex = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %25, i32 0, i32 15, !dbg !5576
  call void @__mutex_init(%struct.mutex* %dev_mutex, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* @rtsx_usb_probe.__key) #8, !dbg !5576
  br label %do.end, !dbg !5576

do.end:                                           ; preds = %do.body
  %26 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5578
  %27 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5579
  %pusb_intf = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %27, i32 0, i32 10, !dbg !5580
  store %struct.usb_interface* %26, %struct.usb_interface** %pusb_intf, align 8, !dbg !5581
  %28 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5582
  %call9 = call i32 @rtsx_usb_init_chip(%struct.rtsx_ucr* %28) #8, !dbg !5583
  store i32 %call9, i32* %ret, align 4, !dbg !5584
  %29 = load i32, i32* %ret, align 4, !dbg !5585
  %tobool10 = icmp ne i32 %29, 0, !dbg !5585
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5587

if.then11:                                        ; preds = %do.end
  br label %out_init_fail, !dbg !5588

if.end12:                                         ; preds = %do.end
  %30 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5589
  %sg_timer = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %30, i32 0, i32 14, !dbg !5589
  call void @init_timer_key(%struct.timer_list* %sg_timer, void (%struct.timer_list*)* @rtsx_usb_sg_timed_out, i32 0, i8* null, %struct.lock_class_key* null) #8, !dbg !5589
  %31 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5590
  %dev13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %31, i32 0, i32 7, !dbg !5591
  %call14 = call i32 @mfd_add_hotplug_devices(%struct.device* %dev13, %struct.mfd_cell* getelementptr inbounds ([2 x %struct.mfd_cell], [2 x %struct.mfd_cell]* @rtsx_usb_cells, i64 0, i64 0), i32 2) #8, !dbg !5592
  store i32 %call14, i32* %ret, align 4, !dbg !5593
  %32 = load i32, i32* %ret, align 4, !dbg !5594
  %tobool15 = icmp ne i32 %32, 0, !dbg !5594
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5596

if.then16:                                        ; preds = %if.end12
  br label %out_init_fail, !dbg !5597

if.end17:                                         ; preds = %if.end12
  %33 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5598
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %33, i32 0, i32 6, !dbg !5599
  %bf.load = load i8, i8* %needs_remote_wakeup, align 8, !dbg !5600
  %bf.clear = and i8 %bf.load, -9, !dbg !5600
  %bf.set = or i8 %bf.clear, 8, !dbg !5600
  store i8 %bf.set, i8* %needs_remote_wakeup, align 8, !dbg !5600
  %34 = load %struct.usb_device*, %struct.usb_device** %usb_dev, align 8, !dbg !5601
  call void @usb_enable_autosuspend(%struct.usb_device* %34) #8, !dbg !5602
  store i32 0, i32* %retval, align 4, !dbg !5603
  br label %return, !dbg !5603

out_init_fail:                                    ; preds = %if.then16, %if.then11
  call void @llvm.dbg.label(metadata !5604), !dbg !5605
  %35 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5606
  %pusb_dev18 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %35, i32 0, i32 9, !dbg !5607
  %36 = load %struct.usb_device*, %struct.usb_device** %pusb_dev18, align 8, !dbg !5607
  %37 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5608
  %iobuf19 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %37, i32 0, i32 12, !dbg !5609
  %38 = load i8*, i8** %iobuf19, align 8, !dbg !5609
  %39 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5610
  %iobuf_dma20 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %39, i32 0, i32 13, !dbg !5611
  %40 = load i64, i64* %iobuf_dma20, align 8, !dbg !5611
  call void @usb_free_coherent(%struct.usb_device* %36, i64 1024, i8* %38, i64 %40) #8, !dbg !5612
  %41 = load i32, i32* %ret, align 4, !dbg !5613
  store i32 %41, i32* %retval, align 4, !dbg !5614
  br label %return, !dbg !5614

return:                                           ; preds = %out_init_fail, %if.end17, %if.then6, %if.then
  %42 = load i32, i32* %retval, align 4, !dbg !5615
  ret i32 %42, !dbg !5615
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rtsx_usb_disconnect(%struct.usb_interface* %intf) #0 !dbg !5616 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %ucr = alloca %struct.rtsx_ucr*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5617, metadata !DIExpression()), !dbg !5618
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr, metadata !5619, metadata !DIExpression()), !dbg !5620
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5621
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #8, !dbg !5622
  %1 = bitcast i8* %call to %struct.rtsx_ucr*, !dbg !5623
  store %struct.rtsx_ucr* %1, %struct.rtsx_ucr** %ucr, align 8, !dbg !5620
  %2 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5624
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %2, i32 0, i32 7, !dbg !5625
  call void @mfd_remove_devices(%struct.device* %dev) #8, !dbg !5626
  %3 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5627
  %pusb_intf = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %3, i32 0, i32 10, !dbg !5628
  %4 = load %struct.usb_interface*, %struct.usb_interface** %pusb_intf, align 8, !dbg !5628
  call void @usb_set_intfdata(%struct.usb_interface* %4, i8* null) #8, !dbg !5629
  %5 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5630
  %pusb_dev = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %5, i32 0, i32 9, !dbg !5631
  %6 = load %struct.usb_device*, %struct.usb_device** %pusb_dev, align 8, !dbg !5631
  %7 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5632
  %iobuf = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %7, i32 0, i32 12, !dbg !5633
  %8 = load i8*, i8** %iobuf, align 8, !dbg !5633
  %9 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5634
  %iobuf_dma = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %9, i32 0, i32 13, !dbg !5635
  %10 = load i64, i64* %iobuf_dma, align 8, !dbg !5635
  call void @usb_free_coherent(%struct.usb_device* %6, i64 1024, i8* %8, i64 %10) #8, !dbg !5636
  ret void, !dbg !5637
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtsx_usb_suspend(%struct.usb_interface* %intf, i32 %message.coerce) #0 !dbg !5638 {
entry:
  %retval = alloca i32, align 4
  %message = alloca %struct.pm_message, align 4
  %intf.addr = alloca %struct.usb_interface*, align 8
  %ucr = alloca %struct.rtsx_ucr*, align 8
  %val = alloca i16, align 2
  %coerce.dive = getelementptr inbounds %struct.pm_message, %struct.pm_message* %message, i32 0, i32 0
  store i32 %message.coerce, i32* %coerce.dive, align 4
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5639, metadata !DIExpression()), !dbg !5640
  call void @llvm.dbg.declare(metadata %struct.pm_message* %message, metadata !5641, metadata !DIExpression()), !dbg !5642
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr, metadata !5643, metadata !DIExpression()), !dbg !5644
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5645
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #8, !dbg !5646
  %1 = bitcast i8* %call to %struct.rtsx_ucr*, !dbg !5647
  store %struct.rtsx_ucr* %1, %struct.rtsx_ucr** %ucr, align 8, !dbg !5644
  call void @llvm.dbg.declare(metadata i16* %val, metadata !5648, metadata !DIExpression()), !dbg !5649
  store i16 0, i16* %val, align 2, !dbg !5649
  %event = getelementptr inbounds %struct.pm_message, %struct.pm_message* %message, i32 0, i32 0, !dbg !5650
  %2 = load i32, i32* %event, align 4, !dbg !5650
  %and = and i32 %2, 1024, !dbg !5650
  %cmp = icmp ne i32 %and, 0, !dbg !5650
  br i1 %cmp, label %if.then, label %if.end9, !dbg !5652

if.then:                                          ; preds = %entry
  %3 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5653
  %dev_mutex = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %3, i32 0, i32 15, !dbg !5656
  %call1 = call i32 @mutex_trylock(%struct.mutex* %dev_mutex) #8, !dbg !5657
  %tobool = icmp ne i32 %call1, 0, !dbg !5657
  br i1 %tobool, label %if.then2, label %if.else, !dbg !5658

if.then2:                                         ; preds = %if.then
  %4 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5659
  %call3 = call i32 @rtsx_usb_get_card_status(%struct.rtsx_ucr* %4, i16* %val) #8, !dbg !5661
  %5 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5662
  %dev_mutex4 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %5, i32 0, i32 15, !dbg !5663
  call void @mutex_unlock(%struct.mutex* %dev_mutex4) #8, !dbg !5664
  %6 = load i16, i16* %val, align 2, !dbg !5665
  %conv = zext i16 %6 to i32, !dbg !5665
  %and5 = and i32 %conv, 3, !dbg !5667
  %tobool6 = icmp ne i32 %and5, 0, !dbg !5667
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !5668

if.then7:                                         ; preds = %if.then2
  store i32 -11, i32* %retval, align 4, !dbg !5669
  br label %return, !dbg !5669

if.end:                                           ; preds = %if.then2
  br label %if.end8, !dbg !5670

if.else:                                          ; preds = %if.then
  store i32 -11, i32* %retval, align 4, !dbg !5671
  br label %return, !dbg !5671

if.end8:                                          ; preds = %if.end
  br label %if.end9, !dbg !5673

if.end9:                                          ; preds = %if.end8, %entry
  store i32 0, i32* %retval, align 4, !dbg !5674
  br label %return, !dbg !5674

return:                                           ; preds = %if.end9, %if.else, %if.then7
  %7 = load i32, i32* %retval, align 4, !dbg !5675
  ret i32 %7, !dbg !5675
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtsx_usb_resume(%struct.usb_interface* %intf) #0 !dbg !5676 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5677, metadata !DIExpression()), !dbg !5678
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5679
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5680
  %call = call i32 @device_for_each_child(%struct.device* %dev, i8* null, i32 (%struct.device*, i8*)* @rtsx_usb_resume_child) #8, !dbg !5681
  ret i32 0, !dbg !5682
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtsx_usb_reset_resume(%struct.usb_interface* %intf) #0 !dbg !5683 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %ucr = alloca %struct.rtsx_ucr*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5684, metadata !DIExpression()), !dbg !5685
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr, metadata !5686, metadata !DIExpression()), !dbg !5687
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5688
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #8, !dbg !5689
  %1 = bitcast i8* %call to %struct.rtsx_ucr*, !dbg !5690
  store %struct.rtsx_ucr* %1, %struct.rtsx_ucr** %ucr, align 8, !dbg !5687
  %2 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5691
  %call1 = call i32 @rtsx_usb_reset_chip(%struct.rtsx_ucr* %2) #8, !dbg !5692
  %3 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5693
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %3, i32 0, i32 7, !dbg !5694
  %call2 = call i32 @device_for_each_child(%struct.device* %dev, i8* null, i32 (%struct.device*, i8*)* @rtsx_usb_resume_child) #8, !dbg !5695
  ret i32 0, !dbg !5696
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtsx_usb_pre_reset(%struct.usb_interface* %intf) #0 !dbg !5697 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %ucr = alloca %struct.rtsx_ucr*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5698, metadata !DIExpression()), !dbg !5699
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr, metadata !5700, metadata !DIExpression()), !dbg !5701
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5702
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #8, !dbg !5703
  %1 = bitcast i8* %call to %struct.rtsx_ucr*, !dbg !5704
  store %struct.rtsx_ucr* %1, %struct.rtsx_ucr** %ucr, align 8, !dbg !5701
  %2 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5705
  %dev_mutex = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %2, i32 0, i32 15, !dbg !5706
  call void @mutex_lock(%struct.mutex* %dev_mutex) #8, !dbg !5707
  ret i32 0, !dbg !5708
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtsx_usb_post_reset(%struct.usb_interface* %intf) #0 !dbg !5709 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %ucr = alloca %struct.rtsx_ucr*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5710, metadata !DIExpression()), !dbg !5711
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr, metadata !5712, metadata !DIExpression()), !dbg !5713
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5714
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #8, !dbg !5715
  %1 = bitcast i8* %call to %struct.rtsx_ucr*, !dbg !5716
  store %struct.rtsx_ucr* %1, %struct.rtsx_ucr** %ucr, align 8, !dbg !5713
  %2 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5717
  %dev_mutex = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %2, i32 0, i32 15, !dbg !5718
  call void @mutex_unlock(%struct.mutex* %dev_mutex) #8, !dbg !5719
  ret i32 0, !dbg !5720
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %intf) #0 !dbg !5721 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5724, metadata !DIExpression()), !dbg !5725
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5726, metadata !DIExpression()), !dbg !5728
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5728
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5728
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !5728
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5728
  %2 = bitcast %struct.device* %1 to i8*, !dbg !5728
  store i8* %2, i8** %__mptr, align 8, !dbg !5728
  br label %do.body, !dbg !5728

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5729

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5728
  %add.ptr = getelementptr i8, i8* %3, i64 -160, !dbg !5728
  %4 = bitcast i8* %add.ptr to %struct.usb_device*, !dbg !5728
  store %struct.usb_device* %4, %struct.usb_device** %tmp, align 8, !dbg !5729
  %5 = load %struct.usb_device*, %struct.usb_device** %tmp, align 8, !dbg !5728
  ret %struct.usb_device* %5, !dbg !5731
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #0 !dbg !5732 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5735, metadata !DIExpression()), !dbg !5736
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5737, metadata !DIExpression()), !dbg !5738
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !5739, metadata !DIExpression()), !dbg !5740
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5741
  %1 = load i64, i64* %size.addr, align 8, !dbg !5742
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !5743
  %or = or i32 %2, 256, !dbg !5744
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #8, !dbg !5745
  ret i8* %call, !dbg !5746
}

; Function Attrs: noredzone
declare dso_local i8* @usb_alloc_coherent(%struct.usb_device*, i64, i32, i64*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_set_intfdata(%struct.usb_interface* %intf, i8* %data) #0 !dbg !5747 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5750, metadata !DIExpression()), !dbg !5751
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5752, metadata !DIExpression()), !dbg !5753
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5754
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5755
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5756
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #8, !dbg !5757
  ret void, !dbg !5758
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtsx_usb_init_chip(%struct.rtsx_ucr* %ucr) #0 !dbg !5759 {
entry:
  %retval = alloca i32, align 4
  %ucr.addr = alloca %struct.rtsx_ucr*, align 8
  %ret = alloca i32, align 4
  %val = alloca i8, align 1
  store %struct.rtsx_ucr* %ucr, %struct.rtsx_ucr** %ucr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr.addr, metadata !5762, metadata !DIExpression()), !dbg !5763
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5764, metadata !DIExpression()), !dbg !5765
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5766, metadata !DIExpression()), !dbg !5767
  %0 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5768
  call void @rtsx_usb_clear_fsm_err(%struct.rtsx_ucr* %0) #8, !dbg !5769
  %1 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5770
  %call = call i32 @rtsx_usb_write_register(%struct.rtsx_ucr* %1, i16 zeroext -1024, i8 zeroext 1, i8 zeroext 0) #8, !dbg !5771
  store i32 %call, i32* %ret, align 4, !dbg !5772
  %2 = load i32, i32* %ret, align 4, !dbg !5773
  %tobool = icmp ne i32 %2, 0, !dbg !5773
  br i1 %tobool, label %if.then, label %if.end, !dbg !5775

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !5776
  store i32 %3, i32* %retval, align 4, !dbg !5777
  br label %return, !dbg !5777

if.end:                                           ; preds = %entry
  call void @usleep_range(i64 100, i64 1000) #8, !dbg !5778
  %4 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5779
  %call1 = call i32 @rtsx_usb_write_register(%struct.rtsx_ucr* %4, i16 zeroext -1021, i8 zeroext -128, i8 zeroext 0) #8, !dbg !5780
  store i32 %call1, i32* %ret, align 4, !dbg !5781
  %5 = load i32, i32* %ret, align 4, !dbg !5782
  %tobool2 = icmp ne i32 %5, 0, !dbg !5782
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5784

if.then3:                                         ; preds = %if.end
  %6 = load i32, i32* %ret, align 4, !dbg !5785
  store i32 %6, i32* %retval, align 4, !dbg !5786
  br label %return, !dbg !5786

if.end4:                                          ; preds = %if.end
  %7 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5787
  %call5 = call i32 @rtsx_usb_read_register(%struct.rtsx_ucr* %7, i16 zeroext -1023, i8* %val) #8, !dbg !5788
  store i32 %call5, i32* %ret, align 4, !dbg !5789
  %8 = load i32, i32* %ret, align 4, !dbg !5790
  %tobool6 = icmp ne i32 %8, 0, !dbg !5790
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5792

if.then7:                                         ; preds = %if.end4
  %9 = load i32, i32* %ret, align 4, !dbg !5793
  store i32 %9, i32* %retval, align 4, !dbg !5794
  br label %return, !dbg !5794

if.end8:                                          ; preds = %if.end4
  %10 = load i8, i8* %val, align 1, !dbg !5795
  %conv = zext i8 %10 to i32, !dbg !5795
  %and = and i32 %conv, 15, !dbg !5796
  %conv9 = trunc i32 %and to i8, !dbg !5795
  %11 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5797
  %ic_version = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %11, i32 0, i32 3, !dbg !5798
  store i8 %conv9, i8* %ic_version, align 8, !dbg !5799
  %12 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5800
  %call10 = call i32 @rtsx_usb_read_register(%struct.rtsx_ucr* %12, i16 zeroext -687, i8* %val) #8, !dbg !5801
  store i32 %call10, i32* %ret, align 4, !dbg !5802
  %13 = load i32, i32* %ret, align 4, !dbg !5803
  %tobool11 = icmp ne i32 %13, 0, !dbg !5803
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !5805

if.then12:                                        ; preds = %if.end8
  %14 = load i32, i32* %ret, align 4, !dbg !5806
  store i32 %14, i32* %retval, align 4, !dbg !5807
  br label %return, !dbg !5807

if.end13:                                         ; preds = %if.end8
  %15 = load i8, i8* %val, align 1, !dbg !5808
  %conv14 = zext i8 %15 to i32, !dbg !5808
  %and15 = and i32 %conv14, 4, !dbg !5810
  %tobool16 = icmp ne i32 %and15, 0, !dbg !5810
  br i1 %tobool16, label %if.then17, label %if.else, !dbg !5811

if.then17:                                        ; preds = %if.end13
  %16 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5812
  %package = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %16, i32 0, i32 2, !dbg !5814
  store i32 1, i32* %package, align 4, !dbg !5815
  br label %if.end19, !dbg !5816

if.else:                                          ; preds = %if.end13
  %17 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5817
  %package18 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %17, i32 0, i32 2, !dbg !5819
  store i32 0, i32* %package18, align 4, !dbg !5820
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then17
  %18 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5821
  %call20 = call i32 @rtsx_usb_read_register(%struct.rtsx_ucr* %18, i16 zeroext -1009, i8* %val) #8, !dbg !5822
  %19 = load i8, i8* %val, align 1, !dbg !5823
  %conv21 = zext i8 %19 to i32, !dbg !5823
  %and22 = and i32 %conv21, 2, !dbg !5825
  %tobool23 = icmp ne i32 %and22, 0, !dbg !5825
  br i1 %tobool23, label %if.then24, label %if.else25, !dbg !5826

if.then24:                                        ; preds = %if.end19
  %20 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5827
  %is_rts5179 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %20, i32 0, i32 4, !dbg !5829
  store i8 1, i8* %is_rts5179, align 1, !dbg !5830
  br label %if.end27, !dbg !5831

if.else25:                                        ; preds = %if.end19
  %21 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5832
  %is_rts517926 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %21, i32 0, i32 4, !dbg !5834
  store i8 0, i8* %is_rts517926, align 1, !dbg !5835
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %if.then24
  %22 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5836
  %call28 = call i32 @rtsx_usb_reset_chip(%struct.rtsx_ucr* %22) #8, !dbg !5837
  store i32 %call28, i32* %retval, align 4, !dbg !5838
  br label %return, !dbg !5838

return:                                           ; preds = %if.end27, %if.then12, %if.then7, %if.then3, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !5839
  ret i32 %23, !dbg !5839
}

; Function Attrs: noredzone
declare dso_local void @init_timer_key(%struct.timer_list*, void (%struct.timer_list*)*, i32, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rtsx_usb_sg_timed_out(%struct.timer_list* %t) #0 !dbg !5840 {
entry:
  %t.addr = alloca %struct.timer_list*, align 8
  %ucr = alloca %struct.rtsx_ucr*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.rtsx_ucr*, align 8
  store %struct.timer_list* %t, %struct.timer_list** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timer_list** %t.addr, metadata !5841, metadata !DIExpression()), !dbg !5842
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr, metadata !5843, metadata !DIExpression()), !dbg !5844
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5845, metadata !DIExpression()), !dbg !5847
  %0 = load %struct.timer_list*, %struct.timer_list** %t.addr, align 8, !dbg !5847
  %1 = bitcast %struct.timer_list* %0 to i8*, !dbg !5847
  store i8* %1, i8** %__mptr, align 8, !dbg !5847
  br label %do.body, !dbg !5847

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5848

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5847
  %add.ptr = getelementptr i8, i8* %2, i64 -144, !dbg !5847
  %3 = bitcast i8* %add.ptr to %struct.rtsx_ucr*, !dbg !5847
  store %struct.rtsx_ucr* %3, %struct.rtsx_ucr** %tmp, align 8, !dbg !5848
  %4 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %tmp, align 8, !dbg !5847
  store %struct.rtsx_ucr* %4, %struct.rtsx_ucr** %ucr, align 8, !dbg !5844
  %5 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr, align 8, !dbg !5850
  %current_sg = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %5, i32 0, i32 11, !dbg !5851
  call void @usb_sg_cancel(%struct.usb_sg_request* %current_sg) #8, !dbg !5852
  ret void, !dbg !5853
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mfd_add_hotplug_devices(%struct.device* %parent, %struct.mfd_cell* %cells, i32 %n_devs) #0 !dbg !5854 {
entry:
  %parent.addr = alloca %struct.device*, align 8
  %cells.addr = alloca %struct.mfd_cell*, align 8
  %n_devs.addr = alloca i32, align 4
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !5858, metadata !DIExpression()), !dbg !5859
  store %struct.mfd_cell* %cells, %struct.mfd_cell** %cells.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mfd_cell** %cells.addr, metadata !5860, metadata !DIExpression()), !dbg !5861
  store i32 %n_devs, i32* %n_devs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n_devs.addr, metadata !5862, metadata !DIExpression()), !dbg !5863
  %0 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !5864
  %1 = load %struct.mfd_cell*, %struct.mfd_cell** %cells.addr, align 8, !dbg !5865
  %2 = load i32, i32* %n_devs.addr, align 4, !dbg !5866
  %call = call i32 @mfd_add_devices(%struct.device* %0, i32 -2, %struct.mfd_cell* %1, i32 %2, %struct.resource* null, i32 0, %struct.irq_domain* null) #8, !dbg !5867
  ret i32 %call, !dbg !5868
}

; Function Attrs: noredzone
declare dso_local void @usb_enable_autosuspend(%struct.usb_device*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @usb_free_coherent(%struct.usb_device*, i64, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !5869 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5872, metadata !DIExpression()), !dbg !5873
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5874, metadata !DIExpression()), !dbg !5875
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5876
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5877
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5878
  store i8* %0, i8** %driver_data, align 8, !dbg !5879
  ret void, !dbg !5880
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtsx_usb_reset_chip(%struct.rtsx_ucr* %ucr) #0 !dbg !5881 {
entry:
  %retval = alloca i32, align 4
  %ucr.addr = alloca %struct.rtsx_ucr*, align 8
  %ret = alloca i32, align 4
  %val = alloca i8, align 1
  store %struct.rtsx_ucr* %ucr, %struct.rtsx_ucr** %ucr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr.addr, metadata !5882, metadata !DIExpression()), !dbg !5883
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5884, metadata !DIExpression()), !dbg !5885
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5886, metadata !DIExpression()), !dbg !5887
  %0 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5888
  call void @rtsx_usb_init_cmd(%struct.rtsx_ucr* %0) #8, !dbg !5889
  %1 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5890
  %package = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %1, i32 0, i32 2, !dbg !5890
  %2 = load i32, i32* %package, align 4, !dbg !5890
  %cmp = icmp eq i32 %2, 1, !dbg !5890
  br i1 %cmp, label %if.then, label %if.end, !dbg !5892

if.then:                                          ; preds = %entry
  %3 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5893
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %3, i8 zeroext 1, i16 zeroext -646, i8 zeroext 12, i8 zeroext 8) #8, !dbg !5895
  %4 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5896
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %4, i8 zeroext 1, i16 zeroext -646, i8 zeroext 96, i8 zeroext 96) #8, !dbg !5897
  %5 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5898
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %5, i8 zeroext 1, i16 zeroext -672, i8 zeroext 48, i8 zeroext 16) #8, !dbg !5899
  %6 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5900
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %6, i8 zeroext 1, i16 zeroext -668, i8 zeroext 3, i8 zeroext 1) #8, !dbg !5901
  %7 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5902
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %7, i8 zeroext 1, i16 zeroext -667, i8 zeroext 12, i8 zeroext 4) #8, !dbg !5903
  br label %if.end, !dbg !5904

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5905
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %8, i8 zeroext 1, i16 zeroext -976, i8 zeroext 1, i8 zeroext 1) #8, !dbg !5906
  %9 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5907
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %9, i8 zeroext 1, i16 zeroext -992, i8 zeroext -1, i8 zeroext 8) #8, !dbg !5908
  %10 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5909
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %10, i8 zeroext 1, i16 zeroext -991, i8 zeroext 4, i8 zeroext 0) #8, !dbg !5910
  %11 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5911
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %11, i8 zeroext 1, i16 zeroext -681, i8 zeroext 7, i8 zeroext 1) #8, !dbg !5912
  %12 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5913
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %12, i8 zeroext 1, i16 zeroext -686, i8 zeroext 3, i8 zeroext 0) #8, !dbg !5914
  %13 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5915
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %13, i8 zeroext 1, i16 zeroext -645, i8 zeroext -32, i8 zeroext 0) #8, !dbg !5916
  %14 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5917
  %is_rts5179 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %14, i32 0, i32 4, !dbg !5919
  %15 = load i8, i8* %is_rts5179, align 1, !dbg !5919
  %tobool = trunc i8 %15 to i1, !dbg !5919
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !5920

if.then1:                                         ; preds = %if.end
  %16 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5921
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %16, i8 zeroext 1, i16 zeroext -668, i8 zeroext 3, i8 zeroext 1) #8, !dbg !5922
  br label %if.end2, !dbg !5922

if.end2:                                          ; preds = %if.then1, %if.end
  %17 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5923
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %17, i8 zeroext 1, i16 zeroext -676, i8 zeroext 2, i8 zeroext 2) #8, !dbg !5924
  %18 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5925
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %18, i8 zeroext 1, i16 zeroext -655, i8 zeroext 28, i8 zeroext 28) #8, !dbg !5926
  %19 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5927
  %call = call i32 @rtsx_usb_send_cmd(%struct.rtsx_ucr* %19, i8 zeroext 0, i32 100) #8, !dbg !5928
  store i32 %call, i32* %ret, align 4, !dbg !5929
  %20 = load i32, i32* %ret, align 4, !dbg !5930
  %tobool3 = icmp ne i32 %20, 0, !dbg !5930
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5932

if.then4:                                         ; preds = %if.end2
  %21 = load i32, i32* %ret, align 4, !dbg !5933
  store i32 %21, i32* %retval, align 4, !dbg !5934
  br label %return, !dbg !5934

if.end5:                                          ; preds = %if.end2
  %22 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5935
  %call6 = call i32 @rtsx_usb_read_register(%struct.rtsx_ucr* %22, i16 zeroext -1010, i8* %val) #8, !dbg !5936
  %23 = load i8, i8* %val, align 1, !dbg !5937
  %conv = zext i8 %23 to i32, !dbg !5937
  %and = and i32 %conv, 128, !dbg !5939
  %tobool7 = icmp ne i32 %and, 0, !dbg !5939
  br i1 %tobool7, label %if.then12, label %lor.lhs.false, !dbg !5940

lor.lhs.false:                                    ; preds = %if.end5
  %24 = load i8, i8* %val, align 1, !dbg !5941
  %conv8 = zext i8 %24 to i32, !dbg !5941
  %and9 = and i32 %conv8, 3, !dbg !5942
  %cmp10 = icmp eq i32 %and9, 1, !dbg !5943
  br i1 %cmp10, label %if.then12, label %if.end17, !dbg !5944

if.then12:                                        ; preds = %lor.lhs.false, %if.end5
  %25 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5945
  %call13 = call i32 @rtsx_usb_write_phy_register(%struct.rtsx_ucr* %25, i8 zeroext -62, i8 zeroext 124) #8, !dbg !5947
  store i32 %call13, i32* %ret, align 4, !dbg !5948
  %26 = load i32, i32* %ret, align 4, !dbg !5949
  %tobool14 = icmp ne i32 %26, 0, !dbg !5949
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5951

if.then15:                                        ; preds = %if.then12
  %27 = load i32, i32* %ret, align 4, !dbg !5952
  store i32 %27, i32* %retval, align 4, !dbg !5953
  br label %return, !dbg !5953

if.end16:                                         ; preds = %if.then12
  br label %if.end17, !dbg !5954

if.end17:                                         ; preds = %if.end16, %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !5955
  br label %return, !dbg !5955

return:                                           ; preds = %if.end17, %if.then15, %if.then4
  %28 = load i32, i32* %retval, align 4, !dbg !5956
  ret i32 %28, !dbg !5956
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtsx_usb_write_phy_register(%struct.rtsx_ucr* %ucr, i8 zeroext %addr, i8 zeroext %val) #0 !dbg !5957 {
entry:
  %ucr.addr = alloca %struct.rtsx_ucr*, align 8
  %addr.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  store %struct.rtsx_ucr* %ucr, %struct.rtsx_ucr** %ucr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtsx_ucr** %ucr.addr, metadata !5960, metadata !DIExpression()), !dbg !5961
  store i8 %addr, i8* %addr.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %addr.addr, metadata !5962, metadata !DIExpression()), !dbg !5963
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !5964, metadata !DIExpression()), !dbg !5965
  %0 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5966
  call void @rtsx_usb_init_cmd(%struct.rtsx_ucr* %0) #8, !dbg !5967
  %1 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5968
  %2 = load i8, i8* %val.addr, align 1, !dbg !5969
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %1, i8 zeroext 1, i16 zeroext -473, i8 zeroext -1, i8 zeroext %2) #8, !dbg !5970
  %3 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5971
  %4 = load i8, i8* %addr.addr, align 1, !dbg !5972
  %conv = zext i8 %4 to i32, !dbg !5972
  %and = and i32 %conv, 15, !dbg !5973
  %conv1 = trunc i32 %and to i8, !dbg !5972
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %3, i8 zeroext 1, i16 zeroext -474, i8 zeroext -1, i8 zeroext %conv1) #8, !dbg !5974
  %5 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5975
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %5, i8 zeroext 1, i16 zeroext -472, i8 zeroext -1, i8 zeroext 0) #8, !dbg !5976
  %6 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5977
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %6, i8 zeroext 1, i16 zeroext -472, i8 zeroext -1, i8 zeroext 0) #8, !dbg !5978
  %7 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5979
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %7, i8 zeroext 1, i16 zeroext -472, i8 zeroext -1, i8 zeroext 1) #8, !dbg !5980
  %8 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5981
  %9 = load i8, i8* %addr.addr, align 1, !dbg !5982
  %conv2 = zext i8 %9 to i32, !dbg !5982
  %shr = ashr i32 %conv2, 4, !dbg !5983
  %and3 = and i32 %shr, 15, !dbg !5984
  %conv4 = trunc i32 %and3 to i8, !dbg !5985
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %8, i8 zeroext 1, i16 zeroext -474, i8 zeroext -1, i8 zeroext %conv4) #8, !dbg !5986
  %10 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5987
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %10, i8 zeroext 1, i16 zeroext -472, i8 zeroext -1, i8 zeroext 0) #8, !dbg !5988
  %11 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5989
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %11, i8 zeroext 1, i16 zeroext -472, i8 zeroext -1, i8 zeroext 0) #8, !dbg !5990
  %12 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5991
  call void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %12, i8 zeroext 1, i16 zeroext -472, i8 zeroext -1, i8 zeroext 1) #8, !dbg !5992
  %13 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %ucr.addr, align 8, !dbg !5993
  %call = call i32 @rtsx_usb_send_cmd(%struct.rtsx_ucr* %13, i8 zeroext 0, i32 100) #8, !dbg !5994
  ret i32 %call, !dbg !5995
}

; Function Attrs: noredzone
declare dso_local void @usb_sg_cancel(%struct.usb_sg_request*) #2

; Function Attrs: noredzone
declare dso_local i32 @mfd_add_devices(%struct.device*, i32, %struct.mfd_cell*, i32, %struct.resource*, i32, %struct.irq_domain*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_get_intfdata(%struct.usb_interface* %intf) #0 !dbg !5996 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5999, metadata !DIExpression()), !dbg !6000
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !6001
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !6002
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #8, !dbg !6003
  ret i8* %call, !dbg !6004
}

; Function Attrs: noredzone
declare dso_local void @mfd_remove_devices(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !6005 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6010, metadata !DIExpression()), !dbg !6011
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6012
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !6013
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6013
  ret i8* %1, !dbg !6014
}

; Function Attrs: noredzone
declare dso_local i32 @mutex_trylock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local i32 @device_for_each_child(%struct.device*, i8*, i32 (%struct.device*, i8*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtsx_usb_resume_child(%struct.device* %dev, i8* %data) #0 !dbg !6015 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6018, metadata !DIExpression()), !dbg !6019
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6020, metadata !DIExpression()), !dbg !6021
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6022
  %call = call i32 @pm_request_resume(%struct.device* %0) #8, !dbg !6023
  ret i32 0, !dbg !6024
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_request_resume(%struct.device* %dev) #0 !dbg !6025 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6027, metadata !DIExpression()), !dbg !6028
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6029
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 1) #8, !dbg !6030
  ret i32 %call, !dbg !6031
}

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_resume(%struct.device*, i32) #2

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind willreturn }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4141, !4142, !4143, !4144}
!llvm.ident = !{!4145}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_polling_pipe", scope: !2, file: !3, line: 18, type: !4138, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !125, globals: !3898, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/misc/cardreader/rtsx_usb.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !18, !27, !34, !39, !45, !51, !60, !68, !74, !80, !87, !95, !101, !108, !113, !120}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !6, line: 1156, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17}
!9 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !6, line: 1146, baseType: !7, size: 32, elements: !19)
!19 = !{!20, !21, !22, !23, !24, !25, !26}
!20 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2, isUnsigned: true)
!23 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3, isUnsigned: true)
!24 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4, isUnsigned: true)
!25 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5, isUnsigned: true)
!26 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6, isUnsigned: true)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !28, line: 15, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!29 = !{!30, !31, !32, !33}
!30 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!31 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !35, line: 65, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!38 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !40, line: 16, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!41 = !{!42, !43, !44}
!42 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!43 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!44 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !46, line: 54, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!47 = !{!48, !49, !50}
!48 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!49 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!50 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !52, line: 296, baseType: !7, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!53 = !{!54, !55, !56, !57, !58, !59}
!54 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!55 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!56 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!57 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!58 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!59 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !61, line: 9, baseType: !7, size: 32, elements: !62)
!61 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!62 = !{!63, !64, !65, !66, !67}
!63 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!64 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!65 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!66 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!67 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !69, line: 26, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!70 = !{!71, !72, !73}
!71 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!72 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!73 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !75, line: 44, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!78 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!79 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !81, line: 343, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!86 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !88, line: 524, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!89 = !{!90, !91, !92, !93, !94}
!90 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!91 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!92 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!93 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!94 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !88, line: 502, baseType: !7, size: 32, elements: !96)
!96 = !{!97, !98, !99, !100}
!97 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!98 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!99 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!100 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_interface_condition", file: !102, line: 96, baseType: !7, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/linux/usb.h", directory: "/home/lizy2001/genbc/linux")
!103 = !{!104, !105, !106, !107}
!104 = !DIEnumerator(name: "USB_INTERFACE_UNBOUND", value: 0, isUnsigned: true)
!105 = !DIEnumerator(name: "USB_INTERFACE_BINDING", value: 1, isUnsigned: true)
!106 = !DIEnumerator(name: "USB_INTERFACE_BOUND", value: 2, isUnsigned: true)
!107 = !DIEnumerator(name: "USB_INTERFACE_UNBINDING", value: 3, isUnsigned: true)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_removable", file: !102, line: 476, baseType: !7, size: 32, elements: !109)
!109 = !{!110, !111, !112}
!110 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE_UNKNOWN", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "USB_DEVICE_FIXED", value: 2, isUnsigned: true)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !114, line: 305, baseType: !7, size: 32, elements: !115)
!114 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!115 = !{!116, !117, !118, !119}
!116 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!117 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!118 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!119 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !121, line: 10, baseType: !7, size: 32, elements: !122)
!121 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!122 = !{!123, !124}
!123 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!124 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!125 = !{!126, !128, !130, !133, !134, !136, !139, !140, !141, !144, !3813}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !102, line: 1582, flags: DIFlagFwdDecl)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !129, line: 19, baseType: !130)
!129 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !131, line: 24, baseType: !132)
!131 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!132 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !135, line: 148, baseType: !7)
!135 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !129, line: 17, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !131, line: 21, baseType: !138)
!138 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!139 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!140 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !143, line: 76, flags: DIFlagFwdDecl)
!143 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !102, line: 631, size: 10624, elements: !146)
!146 = !{!147, !148, !153, !156, !157, !158, !159, !160, !163, !164, !168, !169, !3554, !3595, !3596, !3613, !3674, !3756, !3757, !3759, !3760, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3795, !3796, !3797, !3802, !3809, !3810, !3811, !3812}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !145, file: !102, line: 632, baseType: !139, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !145, file: !102, line: 633, baseType: !149, size: 128, offset: 32)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 128, elements: !151)
!150 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!151 = !{!152}
!152 = !DISubrange(count: 16)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !145, file: !102, line: 634, baseType: !154, size: 32, offset: 160)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !129, line: 21, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !131, line: 27, baseType: !7)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !145, file: !102, line: 635, baseType: !5, size: 32, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !145, file: !102, line: 636, baseType: !18, size: 32, offset: 224)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !145, file: !102, line: 637, baseType: !7, size: 32, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !145, file: !102, line: 638, baseType: !7, size: 32, offset: 288)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !145, file: !102, line: 640, baseType: !161, size: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !102, line: 474, flags: DIFlagFwdDecl)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !145, file: !102, line: 641, baseType: !139, size: 32, offset: 384)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !145, file: !102, line: 643, baseType: !165, size: 64, offset: 416)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 2)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !145, file: !102, line: 645, baseType: !144, size: 64, offset: 512)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !145, file: !102, line: 646, baseType: !170, size: 64, offset: 576)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !102, line: 424, size: 960, elements: !172)
!172 = !{!173, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3548, !3549, !3550, !3551, !3552, !3553}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !171, file: !102, line: 425, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !81, line: 461, size: 5568, elements: !176)
!176 = !{!177, !3172, !3173, !3176, !3177, !3228, !3319, !3320, !3321, !3322, !3323, !3332, !3437, !3450, !3453, !3454, !3458, !3460, !3461, !3462, !3466, !3472, !3473, !3476, !3480, !3483, !3484, !3485, !3486, !3487, !3519, !3520, !3521, !3524, !3527, !3528, !3529, !3530}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !175, file: !81, line: 462, baseType: !178, size: 512)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !179, line: 64, size: 512, elements: !180)
!179 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!180 = !{!181, !184, !190, !192, !252, !3023, !3162, !3167, !3168, !3169, !3170, !3171}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !178, file: !179, line: 65, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !178, file: !179, line: 66, baseType: !185, size: 128, offset: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !135, line: 178, size: 128, elements: !186)
!186 = !{!187, !189}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !185, file: !135, line: 179, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !185, file: !135, line: 179, baseType: !188, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !178, file: !179, line: 67, baseType: !191, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !178, file: !179, line: 68, baseType: !193, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !179, line: 192, size: 704, elements: !195)
!195 = !{!196, !197, !213, !214}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !194, file: !179, line: 193, baseType: !185, size: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !194, file: !179, line: 194, baseType: !198, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !199, line: 83, baseType: !200)
!199 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !199, line: 71, elements: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, scope: !200, file: !199, line: 72, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !200, file: !199, line: 72, elements: !204)
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !203, file: !199, line: 73, baseType: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !199, line: 20, elements: !207)
!207 = !{!208}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !206, file: !199, line: 21, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !210, line: 25, baseType: !211)
!210 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 25, elements: !212)
!212 = !{}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !194, file: !179, line: 195, baseType: !178, size: 512, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !194, file: !179, line: 196, baseType: !215, size: 64, offset: 640)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !179, line: 156, size: 192, elements: !218)
!218 = !{!219, !224, !229}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !217, file: !179, line: 157, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!139, !193, !191}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !217, file: !179, line: 158, baseType: !225, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!182, !193, !191}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !217, file: !179, line: 159, baseType: !230, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!139, !193, !191, !234}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !179, line: 148, size: 20736, elements: !236)
!236 = !{!237, !242, !246, !247, !251}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !235, file: !179, line: 149, baseType: !238, size: 192)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 192, elements: !240)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!240 = !{!241}
!241 = !DISubrange(count: 3)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !235, file: !179, line: 150, baseType: !243, size: 4096, offset: 192)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 4096, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !235, file: !179, line: 151, baseType: !139, size: 32, offset: 4288)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !235, file: !179, line: 152, baseType: !248, size: 16384, offset: 4320)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 16384, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 2048)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !235, file: !179, line: 153, baseType: !139, size: 32, offset: 20704)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !178, file: !179, line: 69, baseType: !253, size: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !179, line: 138, size: 448, elements: !255)
!255 = !{!256, !260, !288, !290, !2983, !3013, !3017}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !254, file: !179, line: 139, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !191}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !254, file: !179, line: 140, baseType: !261, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !264, line: 230, size: 128, elements: !265)
!264 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!265 = !{!266, !280}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !263, file: !264, line: 231, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!270, !191, !274, !239}
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !135, line: 60, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !272, line: 73, baseType: !273)
!272 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !272, line: 15, baseType: !140)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !264, line: 30, size: 128, elements: !276)
!276 = !{!277, !278}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !275, file: !264, line: 31, baseType: !182, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !275, file: !264, line: 32, baseType: !279, size: 16, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !135, line: 19, baseType: !132)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !263, file: !264, line: 232, baseType: !281, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!270, !191, !274, !182, !284}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !135, line: 55, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !272, line: 72, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !272, line: 16, baseType: !287)
!287 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !254, file: !179, line: 141, baseType: !289, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !254, file: !179, line: 142, baseType: !291, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !264, line: 84, size: 320, elements: !295)
!295 = !{!296, !297, !301, !2980, !2981}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !294, file: !264, line: 85, baseType: !182, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !294, file: !264, line: 86, baseType: !298, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!279, !191, !274, !139}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !294, file: !264, line: 88, baseType: !302, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!279, !191, !305, !139}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !264, line: 168, size: 448, elements: !307)
!307 = !{!308, !309, !310, !311, !2975, !2976}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !306, file: !264, line: 169, baseType: !275, size: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !306, file: !264, line: 170, baseType: !284, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !306, file: !264, line: 171, baseType: !133, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !306, file: !264, line: 172, baseType: !312, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!270, !315, !191, !305, !239, !489, !284}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !52, line: 916, size: 1856, align: 32, elements: !317)
!317 = !{!318, !336, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2958, !2959, !2968, !2969, !2970, !2971, !2972, !2973, !2974}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !316, file: !52, line: 920, baseType: !319, size: 128)
!319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !316, file: !52, line: 917, size: 128, elements: !320)
!320 = !{!321, !327}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !319, file: !52, line: 918, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !323, line: 58, size: 64, elements: !324)
!323 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !322, file: !323, line: 59, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !319, file: !52, line: 919, baseType: !328, size: 128, align: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !135, line: 216, size: 128, align: 64, elements: !329)
!329 = !{!330, !332}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !328, file: !135, line: 217, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !328, file: !135, line: 218, baseType: !333, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !331}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !316, file: !52, line: 921, baseType: !337, size: 128, offset: 128)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !338, line: 8, size: 128, elements: !339)
!338 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!339 = !{!340, !344}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !337, file: !338, line: 9, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !343, line: 18, flags: DIFlagFwdDecl)
!343 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!344 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !337, file: !338, line: 10, baseType: !345, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !343, line: 89, size: 1536, elements: !347)
!347 = !{!348, !349, !359, !367, !368, !386, !2908, !2910, !2922, !2923, !2924, !2925, !2926, !2932, !2933, !2934}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !346, file: !343, line: 91, baseType: !7, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !346, file: !343, line: 92, baseType: !350, size: 32, offset: 32)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !351, line: 277, baseType: !352)
!351 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !351, line: 277, size: 32, elements: !353)
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !352, file: !351, line: 277, baseType: !355, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !351, line: 70, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !351, line: 65, size: 32, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !356, file: !351, line: 66, baseType: !7, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !346, file: !343, line: 93, baseType: !360, size: 128, offset: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !361, line: 38, size: 128, elements: !362)
!361 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!362 = !{!363, !365}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !360, file: !361, line: 39, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !360, file: !361, line: 39, baseType: !366, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !346, file: !343, line: 94, baseType: !345, size: 64, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !346, file: !343, line: 95, baseType: !369, size: 128, offset: 256)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !343, line: 47, size: 128, elements: !370)
!370 = !{!371, !383}
!371 = !DIDerivedType(tag: DW_TAG_member, scope: !369, file: !343, line: 48, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !343, line: 48, size: 64, elements: !373)
!373 = !{!374, !379}
!374 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !343, line: 49, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !372, file: !343, line: 49, size: 64, elements: !376)
!376 = !{!377, !378}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !375, file: !343, line: 50, baseType: !154, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !375, file: !343, line: 50, baseType: !154, size: 32, offset: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !372, file: !343, line: 52, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !129, line: 23, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !131, line: 31, baseType: !382)
!382 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !369, file: !343, line: 54, baseType: !384, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !346, file: !343, line: 96, baseType: !387, size: 64, offset: 384)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !52, line: 610, size: 4224, elements: !389)
!389 = !{!390, !391, !392, !400, !407, !408, !556, !2619, !2620, !2621, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2884, !2892, !2893, !2894, !2904, !2905, !2906, !2907}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !388, file: !52, line: 611, baseType: !279, size: 16)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !388, file: !52, line: 612, baseType: !132, size: 16, offset: 16)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !388, file: !52, line: 613, baseType: !393, size: 32, offset: 32)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !394, line: 23, baseType: !395)
!394 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !394, line: 21, size: 32, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !395, file: !394, line: 22, baseType: !398, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !135, line: 32, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !272, line: 49, baseType: !7)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !388, file: !52, line: 614, baseType: !401, size: 32, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !394, line: 28, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !394, line: 26, size: 32, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !402, file: !394, line: 27, baseType: !405, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !135, line: 33, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !272, line: 50, baseType: !7)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !388, file: !52, line: 615, baseType: !7, size: 32, offset: 96)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !388, file: !52, line: 622, baseType: !409, size: 64, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !52, line: 1864, size: 1536, align: 512, elements: !412)
!412 = !{!413, !417, !430, !434, !440, !444, !450, !454, !458, !462, !466, !467, !473, !477, !503, !532, !536, !542, !547, !551, !552}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !411, file: !52, line: 1865, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!345, !387, !345, !7}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !411, file: !52, line: 1866, baseType: !418, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!182, !345, !387, !421}
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !423, line: 10, size: 128, elements: !424)
!423 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!424 = !{!425, !429}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !422, file: !423, line: 11, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !133}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !422, file: !423, line: 12, baseType: !133, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !411, file: !52, line: 1867, baseType: !431, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!139, !387, !139}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !411, file: !52, line: 1868, baseType: !435, size: 64, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!438, !387, !139}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !52, line: 581, flags: DIFlagFwdDecl)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !411, file: !52, line: 1870, baseType: !441, size: 64, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!139, !345, !239, !139}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !411, file: !52, line: 1872, baseType: !445, size: 64, offset: 320)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!139, !387, !345, !279, !448}
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !135, line: 30, baseType: !449)
!449 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !411, file: !52, line: 1873, baseType: !451, size: 64, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!139, !345, !387, !345}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !411, file: !52, line: 1874, baseType: !455, size: 64, offset: 448)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!139, !387, !345}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !411, file: !52, line: 1875, baseType: !459, size: 64, offset: 512)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!139, !387, !345, !182}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !411, file: !52, line: 1876, baseType: !463, size: 64, offset: 576)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!139, !387, !345, !279}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !411, file: !52, line: 1877, baseType: !455, size: 64, offset: 640)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !411, file: !52, line: 1878, baseType: !468, size: 64, offset: 704)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!139, !387, !345, !279, !471}
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !135, line: 16, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !135, line: 13, baseType: !154)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !411, file: !52, line: 1879, baseType: !474, size: 64, offset: 768)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!139, !387, !345, !387, !345, !7}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !411, file: !52, line: 1881, baseType: !478, size: 64, offset: 832)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!139, !345, !481}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !52, line: 219, size: 640, elements: !483)
!483 = !{!484, !485, !486, !487, !488, !492, !500, !501, !502}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !482, file: !52, line: 220, baseType: !7, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !482, file: !52, line: 221, baseType: !279, size: 16, offset: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !482, file: !52, line: 222, baseType: !393, size: 32, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !482, file: !52, line: 223, baseType: !401, size: 32, offset: 96)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !482, file: !52, line: 224, baseType: !489, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !135, line: 46, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !272, line: 88, baseType: !491)
!491 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !482, file: !52, line: 225, baseType: !493, size: 128, offset: 192)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !494, line: 13, size: 128, elements: !495)
!494 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!495 = !{!496, !499}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !493, file: !494, line: 14, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !494, line: 8, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !131, line: 30, baseType: !491)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !493, file: !494, line: 15, baseType: !140, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !482, file: !52, line: 226, baseType: !493, size: 128, offset: 320)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !482, file: !52, line: 227, baseType: !493, size: 128, offset: 448)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !482, file: !52, line: 234, baseType: !315, size: 64, offset: 576)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !411, file: !52, line: 1882, baseType: !504, size: 64, offset: 896)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!139, !507, !509, !154, !7}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !511, line: 22, size: 1152, elements: !512)
!511 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!512 = !{!513, !514, !515, !516, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !510, file: !511, line: 23, baseType: !154, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !510, file: !511, line: 24, baseType: !279, size: 16, offset: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !510, file: !511, line: 25, baseType: !7, size: 32, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !510, file: !511, line: 26, baseType: !517, size: 32, offset: 96)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !135, line: 104, baseType: !154)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !510, file: !511, line: 27, baseType: !380, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !510, file: !511, line: 28, baseType: !380, size: 64, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !510, file: !511, line: 37, baseType: !380, size: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !510, file: !511, line: 38, baseType: !471, size: 32, offset: 320)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !510, file: !511, line: 39, baseType: !471, size: 32, offset: 352)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !510, file: !511, line: 40, baseType: !393, size: 32, offset: 384)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !510, file: !511, line: 41, baseType: !401, size: 32, offset: 416)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !510, file: !511, line: 42, baseType: !489, size: 64, offset: 448)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !510, file: !511, line: 43, baseType: !493, size: 128, offset: 512)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !510, file: !511, line: 44, baseType: !493, size: 128, offset: 640)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !510, file: !511, line: 45, baseType: !493, size: 128, offset: 768)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !510, file: !511, line: 46, baseType: !493, size: 128, offset: 896)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !510, file: !511, line: 47, baseType: !380, size: 64, offset: 1024)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !510, file: !511, line: 48, baseType: !380, size: 64, offset: 1088)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !411, file: !52, line: 1883, baseType: !533, size: 64, offset: 960)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!270, !345, !239, !284}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !411, file: !52, line: 1884, baseType: !537, size: 64, offset: 1024)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!139, !387, !540, !380, !380}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !52, line: 50, flags: DIFlagFwdDecl)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !411, file: !52, line: 1886, baseType: !543, size: 64, offset: 1088)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!139, !387, !546, !139}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !411, file: !52, line: 1887, baseType: !548, size: 64, offset: 1152)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!139, !387, !345, !315, !7, !279}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !411, file: !52, line: 1890, baseType: !463, size: 64, offset: 1216)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !411, file: !52, line: 1891, baseType: !553, size: 64, offset: 1280)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!139, !387, !438, !139}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !388, file: !52, line: 623, baseType: !557, size: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !52, line: 1416, size: 9472, elements: !559)
!559 = !{!560, !561, !562, !563, !564, !565, !612, !2226, !2308, !2391, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2407, !2411, !2412, !2415, !2416, !2419, !2420, !2421, !2462, !2489, !2490, !2491, !2492, !2493, !2494, !2497, !2499, !2506, !2507, !2509, !2510, !2511, !2570, !2571, !2586, !2587, !2588, !2589, !2590, !2593, !2594, !2595, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !558, file: !52, line: 1417, baseType: !185, size: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !558, file: !52, line: 1418, baseType: !471, size: 32, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !558, file: !52, line: 1419, baseType: !138, size: 8, offset: 160)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !558, file: !52, line: 1420, baseType: !287, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !558, file: !52, line: 1421, baseType: !489, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !558, file: !52, line: 1422, baseType: !566, size: 64, offset: 320)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !52, line: 2228, size: 576, elements: !568)
!568 = !{!569, !570, !571, !578, !582, !586, !590, !591, !592, !602, !605, !606, !607, !609, !610, !611}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !567, file: !52, line: 2229, baseType: !182, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !567, file: !52, line: 2230, baseType: !139, size: 32, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !567, file: !52, line: 2238, baseType: !572, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!139, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !577, line: 28, flags: DIFlagFwdDecl)
!577 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!578 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !567, file: !52, line: 2239, baseType: !579, size: 64, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !581)
!581 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !52, line: 70, flags: DIFlagFwdDecl)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !567, file: !52, line: 2240, baseType: !583, size: 64, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!345, !566, !139, !182, !133}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !567, file: !52, line: 2242, baseType: !587, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !557}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !567, file: !52, line: 2243, baseType: !141, size: 64, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !567, file: !52, line: 2244, baseType: !566, size: 64, offset: 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !567, file: !52, line: 2245, baseType: !593, size: 64, offset: 512)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !135, line: 182, size: 64, elements: !594)
!594 = !{!595}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !593, file: !135, line: 183, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !135, line: 186, size: 128, elements: !598)
!598 = !{!599, !600}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !597, file: !135, line: 187, baseType: !596, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !597, file: !135, line: 187, baseType: !601, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !567, file: !52, line: 2247, baseType: !603, offset: 576)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !604, line: 187, elements: !212)
!604 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!605 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !567, file: !52, line: 2248, baseType: !603, offset: 576)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !567, file: !52, line: 2249, baseType: !603, offset: 576)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !567, file: !52, line: 2250, baseType: !608, offset: 576)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, elements: !240)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !567, file: !52, line: 2252, baseType: !603, offset: 576)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !567, file: !52, line: 2253, baseType: !603, offset: 576)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !567, file: !52, line: 2254, baseType: !603, offset: 576)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !558, file: !52, line: 1423, baseType: !613, size: 64, offset: 384)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !615)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !52, line: 1935, size: 1472, elements: !616)
!616 = !{!617, !621, !625, !626, !630, !636, !640, !641, !642, !646, !650, !651, !652, !653, !659, !664, !665, !672, !673, !674, !675, !2210, !2225}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !615, file: !52, line: 1936, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!387, !557}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !615, file: !52, line: 1937, baseType: !622, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{null, !387}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !615, file: !52, line: 1938, baseType: !622, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !615, file: !52, line: 1940, baseType: !627, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !387, !139}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !615, file: !52, line: 1941, baseType: !631, size: 64, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!139, !387, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !52, line: 289, flags: DIFlagFwdDecl)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !615, file: !52, line: 1942, baseType: !637, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!139, !387}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !615, file: !52, line: 1943, baseType: !622, size: 64, offset: 384)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !615, file: !52, line: 1944, baseType: !587, size: 64, offset: 448)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !615, file: !52, line: 1945, baseType: !643, size: 64, offset: 512)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!139, !557, !139}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !615, file: !52, line: 1946, baseType: !647, size: 64, offset: 576)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!139, !557}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !615, file: !52, line: 1947, baseType: !647, size: 64, offset: 640)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !615, file: !52, line: 1948, baseType: !647, size: 64, offset: 704)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !615, file: !52, line: 1949, baseType: !647, size: 64, offset: 768)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !615, file: !52, line: 1950, baseType: !654, size: 64, offset: 832)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!139, !345, !657}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !52, line: 57, flags: DIFlagFwdDecl)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !615, file: !52, line: 1951, baseType: !660, size: 64, offset: 896)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!139, !557, !663, !239}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !615, file: !52, line: 1952, baseType: !587, size: 64, offset: 960)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !615, file: !52, line: 1954, baseType: !666, size: 64, offset: 1024)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!139, !669, !345}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !671, line: 539, flags: DIFlagFwdDecl)
!671 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!672 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !615, file: !52, line: 1955, baseType: !666, size: 64, offset: 1088)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !615, file: !52, line: 1956, baseType: !666, size: 64, offset: 1152)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !615, file: !52, line: 1957, baseType: !666, size: 64, offset: 1216)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !615, file: !52, line: 1963, baseType: !676, size: 64, offset: 1280)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!139, !557, !679, !134}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !681, line: 68, size: 512, align: 128, elements: !682)
!681 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!682 = !{!683, !684, !2202, !2209}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !680, file: !681, line: 69, baseType: !287, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, scope: !680, file: !681, line: 77, baseType: !685, size: 320, offset: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !680, file: !681, line: 77, size: 320, elements: !686)
!686 = !{!687, !872, !877, !905, !913, !919, !2194, !2201}
!687 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !681, line: 78, baseType: !688, size: 320)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !685, file: !681, line: 78, size: 320, elements: !689)
!689 = !{!690, !691, !870, !871}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !688, file: !681, line: 84, baseType: !185, size: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !688, file: !681, line: 86, baseType: !692, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !52, line: 451, size: 1216, align: 64, elements: !694)
!694 = !{!695, !696, !703, !704, !709, !724, !740, !741, !742, !743, !863, !864, !867, !868, !869}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !693, file: !52, line: 452, baseType: !387, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !693, file: !52, line: 453, baseType: !697, size: 128, offset: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !698, line: 292, size: 128, elements: !699)
!698 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!699 = !{!700, !701, !702}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !697, file: !698, line: 293, baseType: !198)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !697, file: !698, line: 295, baseType: !134, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !697, file: !698, line: 296, baseType: !133, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !693, file: !52, line: 454, baseType: !134, size: 32, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !693, file: !52, line: 455, baseType: !705, size: 32, offset: 224)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !135, line: 168, baseType: !706)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 166, size: 32, elements: !707)
!707 = !{!708}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !706, file: !135, line: 167, baseType: !139, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !693, file: !52, line: 460, baseType: !710, size: 128, offset: 256)
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
!720 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !718, file: !711, line: 25, baseType: !287, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !718, file: !711, line: 26, baseType: !717, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !718, file: !711, line: 27, baseType: !717, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !710, file: !711, line: 127, baseType: !717, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !693, file: !52, line: 461, baseType: !725, size: 256, offset: 384)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !726, line: 35, size: 256, elements: !727)
!726 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!727 = !{!728, !736, !737, !739}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !725, file: !726, line: 36, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !730, line: 13, baseType: !731)
!730 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !135, line: 175, baseType: !732)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 173, size: 64, elements: !733)
!733 = !{!734}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !732, file: !135, line: 174, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !129, line: 22, baseType: !498)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !725, file: !726, line: 42, baseType: !729, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !725, file: !726, line: 46, baseType: !738, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !199, line: 29, baseType: !206)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !725, file: !726, line: 47, baseType: !185, size: 128, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !693, file: !52, line: 462, baseType: !287, size: 64, offset: 640)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !693, file: !52, line: 463, baseType: !287, size: 64, offset: 704)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !693, file: !52, line: 464, baseType: !287, size: 64, offset: 768)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !693, file: !52, line: 465, baseType: !744, size: 64, offset: 832)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !746)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !52, line: 367, size: 1408, elements: !747)
!747 = !{!748, !752, !756, !760, !764, !768, !774, !780, !784, !789, !793, !797, !801, !827, !831, !837, !838, !839, !843, !848, !852, !859}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !746, file: !52, line: 368, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!139, !679, !634}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !746, file: !52, line: 369, baseType: !753, size: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!139, !315, !679}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !746, file: !52, line: 372, baseType: !757, size: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!139, !692, !634}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !746, file: !52, line: 375, baseType: !761, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!139, !679}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !746, file: !52, line: 381, baseType: !765, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!139, !315, !692, !188, !7}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !746, file: !52, line: 383, baseType: !769, size: 64, offset: 320)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !772}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !52, line: 290, flags: DIFlagFwdDecl)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !746, file: !52, line: 385, baseType: !775, size: 64, offset: 384)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!139, !315, !692, !489, !7, !7, !778, !779}
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !746, file: !52, line: 388, baseType: !781, size: 64, offset: 448)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!139, !315, !692, !489, !7, !7, !679, !133}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !746, file: !52, line: 393, baseType: !785, size: 64, offset: 512)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!788, !692, !788}
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !135, line: 125, baseType: !380)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !746, file: !52, line: 394, baseType: !790, size: 64, offset: 576)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !679, !7, !7}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !746, file: !52, line: 395, baseType: !794, size: 64, offset: 640)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!139, !679, !134}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !746, file: !52, line: 396, baseType: !798, size: 64, offset: 704)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{null, !679}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !746, file: !52, line: 397, baseType: !802, size: 64, offset: 768)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!270, !805, !825}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !52, line: 320, size: 384, elements: !807)
!807 = !{!808, !809, !810, !814, !815, !816, !817, !818}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !806, file: !52, line: 321, baseType: !315, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !806, file: !52, line: 326, baseType: !489, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !806, file: !52, line: 327, baseType: !811, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !805, !140, !140}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !806, file: !52, line: 328, baseType: !133, size: 64, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !806, file: !52, line: 329, baseType: !139, size: 32, offset: 256)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !806, file: !52, line: 330, baseType: !128, size: 16, offset: 288)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !806, file: !52, line: 331, baseType: !128, size: 16, offset: 304)
!818 = !DIDerivedType(tag: DW_TAG_member, scope: !806, file: !52, line: 332, baseType: !819, size: 64, offset: 320)
!819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !806, file: !52, line: 332, size: 64, elements: !820)
!820 = !{!821, !822}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !819, file: !52, line: 333, baseType: !7, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !819, file: !52, line: 334, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !52, line: 334, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !52, line: 64, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !746, file: !52, line: 402, baseType: !828, size: 64, offset: 832)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!139, !692, !679, !679, !27}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !746, file: !52, line: 404, baseType: !832, size: 64, offset: 896)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!448, !679, !835}
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !836, line: 305, baseType: !7)
!836 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!837 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !746, file: !52, line: 405, baseType: !798, size: 64, offset: 960)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !746, file: !52, line: 406, baseType: !761, size: 64, offset: 1024)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !746, file: !52, line: 407, baseType: !840, size: 64, offset: 1088)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!139, !679, !287, !287}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !746, file: !52, line: 409, baseType: !844, size: 64, offset: 1152)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{null, !679, !847, !847}
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !746, file: !52, line: 410, baseType: !849, size: 64, offset: 1216)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!139, !692, !679}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !746, file: !52, line: 413, baseType: !853, size: 64, offset: 1280)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!139, !856, !315, !858}
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !52, line: 61, flags: DIFlagFwdDecl)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !746, file: !52, line: 415, baseType: !860, size: 64, offset: 1344)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !315}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !693, file: !52, line: 466, baseType: !287, size: 64, offset: 896)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !693, file: !52, line: 467, baseType: !865, size: 32, offset: 960)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !866, line: 8, baseType: !154)
!866 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!867 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !693, file: !52, line: 468, baseType: !198, offset: 992)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !693, file: !52, line: 469, baseType: !185, size: 128, offset: 1024)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !693, file: !52, line: 470, baseType: !133, size: 64, offset: 1152)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !688, file: !681, line: 87, baseType: !287, size: 64, offset: 192)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !688, file: !681, line: 94, baseType: !287, size: 64, offset: 256)
!872 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !681, line: 96, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !685, file: !681, line: 96, size: 64, elements: !874)
!874 = !{!875}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !873, file: !681, line: 101, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !135, line: 143, baseType: !380)
!877 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !681, line: 103, baseType: !878, size: 320)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !685, file: !681, line: 103, size: 320, elements: !879)
!879 = !{!880, !890, !893, !894}
!880 = !DIDerivedType(tag: DW_TAG_member, scope: !878, file: !681, line: 104, baseType: !881, size: 128)
!881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !878, file: !681, line: 104, size: 128, elements: !882)
!882 = !{!883, !884}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !881, file: !681, line: 105, baseType: !185, size: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, scope: !881, file: !681, line: 106, baseType: !885, size: 128)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !881, file: !681, line: 106, size: 128, elements: !886)
!886 = !{!887, !888, !889}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !885, file: !681, line: 107, baseType: !679, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !885, file: !681, line: 109, baseType: !139, size: 32, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !885, file: !681, line: 110, baseType: !139, size: 32, offset: 96)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !878, file: !681, line: 117, baseType: !891, size: 64, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !681, line: 117, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !878, file: !681, line: 119, baseType: !133, size: 64, offset: 192)
!894 = !DIDerivedType(tag: DW_TAG_member, scope: !878, file: !681, line: 120, baseType: !895, size: 64, offset: 256)
!895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !878, file: !681, line: 120, size: 64, elements: !896)
!896 = !{!897, !898, !899}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !895, file: !681, line: 121, baseType: !133, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !895, file: !681, line: 122, baseType: !287, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, scope: !895, file: !681, line: 123, baseType: !900, size: 32)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !895, file: !681, line: 123, size: 32, elements: !901)
!901 = !{!902, !903, !904}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !900, file: !681, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !900, file: !681, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !900, file: !681, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!905 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !681, line: 130, baseType: !906, size: 192)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !685, file: !681, line: 130, size: 192, elements: !907)
!907 = !{!908, !909, !910, !911, !912}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !906, file: !681, line: 131, baseType: !287, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !906, file: !681, line: 134, baseType: !138, size: 8, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !906, file: !681, line: 135, baseType: !138, size: 8, offset: 72)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !906, file: !681, line: 136, baseType: !705, size: 32, offset: 96)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !906, file: !681, line: 137, baseType: !7, size: 32, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !681, line: 139, baseType: !914, size: 256)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !685, file: !681, line: 139, size: 256, elements: !915)
!915 = !{!916, !917, !918}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !914, file: !681, line: 140, baseType: !287, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !914, file: !681, line: 141, baseType: !705, size: 32, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !914, file: !681, line: 143, baseType: !185, size: 128, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !681, line: 145, baseType: !920, size: 256)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !685, file: !681, line: 145, size: 256, elements: !921)
!921 = !{!922, !923, !925, !926, !2193}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !920, file: !681, line: 146, baseType: !287, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !920, file: !681, line: 147, baseType: !924, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !671, line: 509, baseType: !679)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !920, file: !681, line: 148, baseType: !287, size: 64, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_member, scope: !920, file: !681, line: 149, baseType: !927, size: 64, offset: 192)
!927 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !920, file: !681, line: 149, size: 64, elements: !928)
!928 = !{!929, !2192}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !927, file: !681, line: 150, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !681, line: 388, size: 7296, elements: !932)
!932 = !{!933, !2188}
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !931, file: !681, line: 389, baseType: !934, size: 7296)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !931, file: !681, line: 389, size: 7296, elements: !935)
!935 = !{!936, !974, !975, !976, !980, !981, !982, !983, !984, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1025, !1033, !1036, !1082, !1083, !2172, !2173, !2176, !2177, !2178, !2181, !2182, !2183, !2186, !2187}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !934, file: !681, line: 390, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !681, line: 305, size: 1472, elements: !939)
!939 = !{!940, !941, !942, !943, !944, !945, !946, !947, !954, !955, !960, !961, !964, !968, !969, !970, !971, !972}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !938, file: !681, line: 308, baseType: !287, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !938, file: !681, line: 309, baseType: !287, size: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !938, file: !681, line: 313, baseType: !937, size: 64, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !938, file: !681, line: 313, baseType: !937, size: 64, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !938, file: !681, line: 315, baseType: !718, size: 192, align: 64, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !938, file: !681, line: 323, baseType: !287, size: 64, offset: 448)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !938, file: !681, line: 327, baseType: !930, size: 64, offset: 512)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !938, file: !681, line: 333, baseType: !948, size: 64, offset: 576)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !671, line: 284, baseType: !949)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !671, line: 284, size: 64, elements: !950)
!950 = !{!951}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !949, file: !671, line: 284, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !953, line: 19, baseType: !287)
!953 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!954 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !938, file: !681, line: 334, baseType: !287, size: 64, offset: 640)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !938, file: !681, line: 343, baseType: !956, size: 256, offset: 704)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !938, file: !681, line: 340, size: 256, elements: !957)
!957 = !{!958, !959}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !956, file: !681, line: 341, baseType: !718, size: 192, align: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !956, file: !681, line: 342, baseType: !287, size: 64, offset: 192)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !938, file: !681, line: 351, baseType: !185, size: 128, offset: 960)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !938, file: !681, line: 353, baseType: !962, size: 64, offset: 1088)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !681, line: 353, flags: DIFlagFwdDecl)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !938, file: !681, line: 356, baseType: !965, size: 64, offset: 1152)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !967)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !681, line: 356, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !938, file: !681, line: 359, baseType: !287, size: 64, offset: 1216)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !938, file: !681, line: 361, baseType: !315, size: 64, offset: 1280)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !938, file: !681, line: 362, baseType: !133, size: 64, offset: 1344)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !938, file: !681, line: 365, baseType: !729, size: 64, offset: 1408)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !938, file: !681, line: 373, baseType: !973, offset: 1472)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !681, line: 296, elements: !212)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !934, file: !681, line: 391, baseType: !714, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !934, file: !681, line: 392, baseType: !380, size: 64, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !934, file: !681, line: 394, baseType: !977, size: 64, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{!287, !315, !287, !287, !287, !287}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !934, file: !681, line: 398, baseType: !287, size: 64, offset: 256)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !934, file: !681, line: 399, baseType: !287, size: 64, offset: 320)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !934, file: !681, line: 405, baseType: !287, size: 64, offset: 384)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !934, file: !681, line: 406, baseType: !287, size: 64, offset: 448)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !934, file: !681, line: 407, baseType: !985, size: 64, offset: 512)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !671, line: 286, baseType: !987)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !671, line: 286, size: 64, elements: !988)
!988 = !{!989}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !987, file: !671, line: 286, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !953, line: 18, baseType: !287)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !934, file: !681, line: 416, baseType: !705, size: 32, offset: 576)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !934, file: !681, line: 428, baseType: !705, size: 32, offset: 608)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !934, file: !681, line: 437, baseType: !705, size: 32, offset: 640)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !934, file: !681, line: 447, baseType: !705, size: 32, offset: 672)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !934, file: !681, line: 450, baseType: !729, size: 64, offset: 704)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !934, file: !681, line: 452, baseType: !139, size: 32, offset: 768)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !934, file: !681, line: 454, baseType: !198, offset: 800)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !934, file: !681, line: 457, baseType: !725, size: 256, offset: 832)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !934, file: !681, line: 459, baseType: !185, size: 128, offset: 1088)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !934, file: !681, line: 466, baseType: !287, size: 64, offset: 1216)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !934, file: !681, line: 467, baseType: !287, size: 64, offset: 1280)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !934, file: !681, line: 469, baseType: !287, size: 64, offset: 1344)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !934, file: !681, line: 470, baseType: !287, size: 64, offset: 1408)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !934, file: !681, line: 471, baseType: !731, size: 64, offset: 1472)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !934, file: !681, line: 472, baseType: !287, size: 64, offset: 1536)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !934, file: !681, line: 473, baseType: !287, size: 64, offset: 1600)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !934, file: !681, line: 474, baseType: !287, size: 64, offset: 1664)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !934, file: !681, line: 475, baseType: !287, size: 64, offset: 1728)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !934, file: !681, line: 477, baseType: !198, offset: 1792)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !934, file: !681, line: 478, baseType: !287, size: 64, offset: 1792)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !934, file: !681, line: 478, baseType: !287, size: 64, offset: 1856)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !934, file: !681, line: 478, baseType: !287, size: 64, offset: 1920)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !934, file: !681, line: 478, baseType: !287, size: 64, offset: 1984)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !934, file: !681, line: 479, baseType: !287, size: 64, offset: 2048)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !934, file: !681, line: 479, baseType: !287, size: 64, offset: 2112)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !934, file: !681, line: 479, baseType: !287, size: 64, offset: 2176)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !934, file: !681, line: 480, baseType: !287, size: 64, offset: 2240)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !934, file: !681, line: 480, baseType: !287, size: 64, offset: 2304)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !934, file: !681, line: 480, baseType: !287, size: 64, offset: 2368)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !934, file: !681, line: 480, baseType: !287, size: 64, offset: 2432)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !934, file: !681, line: 482, baseType: !1022, size: 2816, offset: 2496)
!1022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 2816, elements: !1023)
!1023 = !{!1024}
!1024 = !DISubrange(count: 44)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !934, file: !681, line: 488, baseType: !1026, size: 256, offset: 5312)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1027, line: 60, size: 256, elements: !1028)
!1027 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1028 = !{!1029}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1026, file: !1027, line: 61, baseType: !1030, size: 256)
!1030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !729, size: 256, elements: !1031)
!1031 = !{!1032}
!1032 = !DISubrange(count: 4)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !934, file: !681, line: 490, baseType: !1034, size: 64, offset: 5568)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !681, line: 490, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !934, file: !681, line: 493, baseType: !1037, size: 896, offset: 5632)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1038, line: 53, baseType: !1039)
!1038 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1038, line: 13, size: 896, elements: !1040)
!1040 = !{!1041, !1042, !1043, !1044, !1047, !1048, !1055, !1056, !1076, !1077, !1078}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1039, file: !1038, line: 18, baseType: !380, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1039, file: !1038, line: 28, baseType: !731, size: 64, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1039, file: !1038, line: 31, baseType: !725, size: 256, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1039, file: !1038, line: 32, baseType: !1045, size: 64, offset: 384)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1038, line: 32, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1039, file: !1038, line: 37, baseType: !132, size: 16, offset: 448)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1039, file: !1038, line: 40, baseType: !1049, size: 192, offset: 512)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1050, line: 53, size: 192, elements: !1051)
!1050 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1051 = !{!1052, !1053, !1054}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1049, file: !1050, line: 54, baseType: !729, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1049, file: !1050, line: 55, baseType: !198, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1049, file: !1050, line: 59, baseType: !185, size: 128, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1039, file: !1038, line: 41, baseType: !133, size: 64, offset: 704)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1039, file: !1038, line: 42, baseType: !1057, size: 64, offset: 768)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1059)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1060, line: 13, size: 896, elements: !1061)
!1060 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1061 = !{!1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1059, file: !1060, line: 14, baseType: !133, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1059, file: !1060, line: 15, baseType: !287, size: 64, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1059, file: !1060, line: 17, baseType: !287, size: 64, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1059, file: !1060, line: 17, baseType: !287, size: 64, offset: 192)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1059, file: !1060, line: 19, baseType: !140, size: 64, offset: 256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1059, file: !1060, line: 21, baseType: !140, size: 64, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1059, file: !1060, line: 22, baseType: !140, size: 64, offset: 384)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1059, file: !1060, line: 23, baseType: !140, size: 64, offset: 448)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1059, file: !1060, line: 24, baseType: !140, size: 64, offset: 512)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1059, file: !1060, line: 25, baseType: !140, size: 64, offset: 576)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1059, file: !1060, line: 26, baseType: !140, size: 64, offset: 640)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1059, file: !1060, line: 27, baseType: !140, size: 64, offset: 704)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1059, file: !1060, line: 28, baseType: !140, size: 64, offset: 768)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1059, file: !1060, line: 29, baseType: !140, size: 64, offset: 832)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1039, file: !1038, line: 44, baseType: !705, size: 32, offset: 832)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1039, file: !1038, line: 50, baseType: !128, size: 16, offset: 864)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1039, file: !1038, line: 51, baseType: !1079, size: 16, offset: 880)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !129, line: 18, baseType: !1080)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !131, line: 23, baseType: !1081)
!1081 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !934, file: !681, line: 495, baseType: !287, size: 64, offset: 6528)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !934, file: !681, line: 497, baseType: !1084, size: 64, offset: 6592)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !681, line: 381, size: 384, elements: !1086)
!1086 = !{!1087, !1088, !2171}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1085, file: !681, line: 382, baseType: !705, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1085, file: !681, line: 383, baseType: !1089, size: 128, offset: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !681, line: 376, size: 128, elements: !1090)
!1090 = !{!1091, !2169}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1089, file: !681, line: 377, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1094, line: 640, size: 48640, elements: !1095)
!1094 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1095 = !{!1096, !1102, !1104, !1105, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1122, !1140, !1151, !1234, !1235, !1236, !1247, !1248, !1250, !1251, !1252, !1253, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1332, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1370, !1372, !1373, !1374, !1386, !1387, !1388, !1389, !1390, !1391, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1415, !1420, !1602, !1603, !1604, !1605, !1606, !1609, !1612, !1615, !1618, !1622, !1723, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1769, !1770, !1771, !1772, !1773, !1778, !1779, !1780, !1783, !1784, !1787, !1790, !1793, !1796, !1839, !1842, !1843, !1922, !1923, !1926, !1927, !1930, !1931, !1932, !1936, !1937, !1938, !1951, !1952, !1953, !1963, !1968, !1971, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1093, file: !1094, line: 646, baseType: !1097, size: 128)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1098, line: 56, size: 128, elements: !1099)
!1098 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1099 = !{!1100, !1101}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1097, file: !1098, line: 57, baseType: !287, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1097, file: !1098, line: 58, baseType: !154, size: 32, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1093, file: !1094, line: 649, baseType: !1103, size: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !140)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1093, file: !1094, line: 657, baseType: !133, size: 64, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1093, file: !1094, line: 658, baseType: !1106, size: 32, offset: 256)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1107, line: 113, baseType: !1108)
!1107 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1107, line: 111, size: 32, elements: !1109)
!1109 = !{!1110}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1108, file: !1107, line: 112, baseType: !705, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1093, file: !1094, line: 660, baseType: !7, size: 32, offset: 288)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1093, file: !1094, line: 661, baseType: !7, size: 32, offset: 320)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1093, file: !1094, line: 684, baseType: !139, size: 32, offset: 352)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1093, file: !1094, line: 686, baseType: !139, size: 32, offset: 384)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1093, file: !1094, line: 687, baseType: !139, size: 32, offset: 416)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1093, file: !1094, line: 688, baseType: !139, size: 32, offset: 448)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1093, file: !1094, line: 689, baseType: !7, size: 32, offset: 480)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1093, file: !1094, line: 691, baseType: !1119, size: 64, offset: 512)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1121)
!1121 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1094, line: 691, flags: DIFlagFwdDecl)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1093, file: !1094, line: 692, baseType: !1123, size: 832, offset: 576)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1094, line: 451, size: 832, elements: !1124)
!1124 = !{!1125, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1123, file: !1094, line: 453, baseType: !1126, size: 128)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1094, line: 325, size: 128, elements: !1127)
!1127 = !{!1128, !1129}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1126, file: !1094, line: 326, baseType: !287, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1126, file: !1094, line: 327, baseType: !154, size: 32, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1123, file: !1094, line: 454, baseType: !718, size: 192, align: 64, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1123, file: !1094, line: 455, baseType: !185, size: 128, offset: 320)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1123, file: !1094, line: 456, baseType: !7, size: 32, offset: 448)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1123, file: !1094, line: 458, baseType: !380, size: 64, offset: 512)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1123, file: !1094, line: 459, baseType: !380, size: 64, offset: 576)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1123, file: !1094, line: 460, baseType: !380, size: 64, offset: 640)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1123, file: !1094, line: 461, baseType: !380, size: 64, offset: 704)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1123, file: !1094, line: 463, baseType: !380, size: 64, offset: 768)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1123, file: !1094, line: 465, baseType: !1139, offset: 832)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1094, line: 415, elements: !212)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1093, file: !1094, line: 693, baseType: !1141, size: 384, offset: 1408)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1094, line: 489, size: 384, elements: !1142)
!1142 = !{!1143, !1144, !1145, !1146, !1147, !1148, !1149}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1141, file: !1094, line: 490, baseType: !185, size: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1141, file: !1094, line: 491, baseType: !287, size: 64, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1141, file: !1094, line: 492, baseType: !287, size: 64, offset: 192)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1141, file: !1094, line: 493, baseType: !7, size: 32, offset: 256)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1141, file: !1094, line: 494, baseType: !132, size: 16, offset: 288)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1141, file: !1094, line: 495, baseType: !132, size: 16, offset: 304)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1141, file: !1094, line: 497, baseType: !1150, size: 64, offset: 320)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1093, file: !1094, line: 697, baseType: !1152, size: 1792, offset: 1792)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1094, line: 507, size: 1792, elements: !1153)
!1153 = !{!1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1231, !1232}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1152, file: !1094, line: 508, baseType: !718, size: 192, align: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1152, file: !1094, line: 515, baseType: !380, size: 64, offset: 192)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1152, file: !1094, line: 516, baseType: !380, size: 64, offset: 256)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1152, file: !1094, line: 517, baseType: !380, size: 64, offset: 320)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1152, file: !1094, line: 518, baseType: !380, size: 64, offset: 384)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1152, file: !1094, line: 519, baseType: !380, size: 64, offset: 448)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1152, file: !1094, line: 526, baseType: !735, size: 64, offset: 512)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1152, file: !1094, line: 527, baseType: !380, size: 64, offset: 576)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1152, file: !1094, line: 528, baseType: !7, size: 32, offset: 640)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1152, file: !1094, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1152, file: !1094, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1152, file: !1094, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1152, file: !1094, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1152, file: !1094, line: 563, baseType: !1168, size: 512, offset: 704)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !35, line: 118, size: 512, elements: !1169)
!1169 = !{!1170, !1178, !1179, !1184, !1227, !1228, !1229, !1230}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1168, file: !35, line: 119, baseType: !1171, size: 256)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1172, line: 9, size: 256, elements: !1173)
!1172 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1173 = !{!1174, !1175}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1171, file: !1172, line: 10, baseType: !718, size: 192, align: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1171, file: !1172, line: 11, baseType: !1176, size: 64, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1177, line: 29, baseType: !735)
!1177 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1168, file: !35, line: 120, baseType: !1176, size: 64, offset: 256)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1168, file: !35, line: 121, baseType: !1180, size: 64, offset: 320)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!34, !1183}
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1168, file: !35, line: 122, baseType: !1185, size: 64, offset: 384)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !35, line: 159, size: 512, align: 512, elements: !1187)
!1187 = !{!1188, !1208, !1209, !1212, !1217, !1218, !1222, !1226}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1186, file: !35, line: 160, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !35, line: 214, size: 4608, align: 512, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1190, file: !35, line: 215, baseType: !738)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1190, file: !35, line: 216, baseType: !7, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1190, file: !35, line: 217, baseType: !7, size: 32, offset: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1190, file: !35, line: 218, baseType: !7, size: 32, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1190, file: !35, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1190, file: !35, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1190, file: !35, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1190, file: !35, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1190, file: !35, line: 233, baseType: !1176, size: 64, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1190, file: !35, line: 234, baseType: !1183, size: 64, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1190, file: !35, line: 235, baseType: !1176, size: 64, offset: 256)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1190, file: !35, line: 236, baseType: !1183, size: 64, offset: 320)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1190, file: !35, line: 237, baseType: !1205, size: 4096, offset: 512)
!1205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1186, size: 4096, elements: !1206)
!1206 = !{!1207}
!1207 = !DISubrange(count: 8)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1186, file: !35, line: 161, baseType: !7, size: 32, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1186, file: !35, line: 162, baseType: !1210, size: 32, offset: 96)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !135, line: 27, baseType: !1211)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !272, line: 96, baseType: !139)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1186, file: !35, line: 163, baseType: !1213, size: 32, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !351, line: 276, baseType: !1214)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !351, line: 276, size: 32, elements: !1215)
!1215 = !{!1216}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1214, file: !351, line: 276, baseType: !355, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1186, file: !35, line: 164, baseType: !1183, size: 64, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1186, file: !35, line: 165, baseType: !1219, size: 128, offset: 256)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1172, line: 14, size: 128, elements: !1220)
!1220 = !{!1221}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1219, file: !1172, line: 15, baseType: !710, size: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1186, file: !35, line: 166, baseType: !1223, size: 64, offset: 384)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!1176}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1186, file: !35, line: 167, baseType: !1176, size: 64, offset: 448)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1168, file: !35, line: 123, baseType: !136, size: 8, offset: 448)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1168, file: !35, line: 124, baseType: !136, size: 8, offset: 456)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1168, file: !35, line: 125, baseType: !136, size: 8, offset: 464)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1168, file: !35, line: 126, baseType: !136, size: 8, offset: 472)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1152, file: !1094, line: 572, baseType: !1168, size: 512, offset: 1216)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1152, file: !1094, line: 580, baseType: !1233, size: 64, offset: 1728)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1093, file: !1094, line: 721, baseType: !7, size: 32, offset: 3584)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1093, file: !1094, line: 722, baseType: !139, size: 32, offset: 3616)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1093, file: !1094, line: 723, baseType: !1237, size: 64, offset: 3648)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1239)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1240, line: 17, baseType: !1241)
!1240 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1240, line: 17, size: 64, elements: !1242)
!1242 = !{!1243}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1241, file: !1240, line: 17, baseType: !1244, size: 64)
!1244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 64, elements: !1245)
!1245 = !{!1246}
!1246 = !DISubrange(count: 1)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1093, file: !1094, line: 724, baseType: !1239, size: 64, offset: 3712)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1093, file: !1094, line: 749, baseType: !1249, offset: 3776)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1094, line: 290, elements: !212)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1093, file: !1094, line: 751, baseType: !185, size: 128, offset: 3776)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1093, file: !1094, line: 757, baseType: !930, size: 64, offset: 3904)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1093, file: !1094, line: 758, baseType: !930, size: 64, offset: 3968)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1093, file: !1094, line: 761, baseType: !1254, size: 320, offset: 4032)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1027, line: 34, size: 320, elements: !1255)
!1255 = !{!1256, !1257}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1254, file: !1027, line: 35, baseType: !380, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1254, file: !1027, line: 36, baseType: !1258, size: 256, offset: 64)
!1258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !937, size: 256, elements: !1031)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1093, file: !1094, line: 766, baseType: !139, size: 32, offset: 4352)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1093, file: !1094, line: 767, baseType: !139, size: 32, offset: 4384)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1093, file: !1094, line: 768, baseType: !139, size: 32, offset: 4416)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1093, file: !1094, line: 770, baseType: !139, size: 32, offset: 4448)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1093, file: !1094, line: 772, baseType: !287, size: 64, offset: 4480)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1093, file: !1094, line: 775, baseType: !7, size: 32, offset: 4544)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1093, file: !1094, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1093, file: !1094, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1093, file: !1094, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1093, file: !1094, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1093, file: !1094, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1093, file: !1094, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1093, file: !1094, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1093, file: !1094, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1093, file: !1094, line: 831, baseType: !287, size: 64, offset: 4672)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1093, file: !1094, line: 833, baseType: !1275, size: 384, offset: 4736)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !40, line: 25, size: 384, elements: !1276)
!1276 = !{!1277, !1282}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1275, file: !40, line: 26, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!140, !1281}
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, scope: !1275, file: !40, line: 27, baseType: !1283, size: 320, offset: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1275, file: !40, line: 27, size: 320, elements: !1284)
!1284 = !{!1285, !1295, !1322}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1283, file: !40, line: 36, baseType: !1286, size: 320)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1283, file: !40, line: 29, size: 320, elements: !1287)
!1287 = !{!1288, !1290, !1291, !1292, !1293, !1294}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1286, file: !40, line: 30, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1286, file: !40, line: 31, baseType: !154, size: 32, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1286, file: !40, line: 32, baseType: !154, size: 32, offset: 96)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1286, file: !40, line: 33, baseType: !154, size: 32, offset: 128)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1286, file: !40, line: 34, baseType: !380, size: 64, offset: 192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1286, file: !40, line: 35, baseType: !1289, size: 64, offset: 256)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1283, file: !40, line: 46, baseType: !1296, size: 192)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1283, file: !40, line: 38, size: 192, elements: !1297)
!1297 = !{!1298, !1299, !1300, !1321}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1296, file: !40, line: 39, baseType: !1210, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1296, file: !40, line: 40, baseType: !39, size: 32, offset: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, scope: !1296, file: !40, line: 41, baseType: !1301, size: 64, offset: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1296, file: !40, line: 41, size: 64, elements: !1302)
!1302 = !{!1303, !1311}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1301, file: !40, line: 42, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1306, line: 7, size: 128, elements: !1307)
!1306 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1307 = !{!1308, !1310}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1305, file: !1306, line: 8, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !272, line: 93, baseType: !491)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1305, file: !1306, line: 9, baseType: !491, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1301, file: !40, line: 43, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1314, line: 7, size: 64, elements: !1315)
!1314 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1315 = !{!1316, !1320}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1313, file: !1314, line: 8, baseType: !1317, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1314, line: 5, baseType: !1318)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !129, line: 20, baseType: !1319)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !131, line: 26, baseType: !139)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1313, file: !1314, line: 9, baseType: !1318, size: 32, offset: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1296, file: !40, line: 45, baseType: !380, size: 64, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1283, file: !40, line: 54, baseType: !1323, size: 256)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1283, file: !40, line: 48, size: 256, elements: !1324)
!1324 = !{!1325, !1328, !1329, !1330, !1331}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1323, file: !40, line: 49, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !40, line: 14, flags: DIFlagFwdDecl)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1323, file: !40, line: 50, baseType: !139, size: 32, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1323, file: !40, line: 51, baseType: !139, size: 32, offset: 96)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1323, file: !40, line: 52, baseType: !287, size: 64, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1323, file: !40, line: 53, baseType: !287, size: 64, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1093, file: !1094, line: 835, baseType: !1333, size: 32, offset: 5120)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !135, line: 22, baseType: !1334)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !272, line: 28, baseType: !139)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1093, file: !1094, line: 836, baseType: !1333, size: 32, offset: 5152)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1093, file: !1094, line: 840, baseType: !287, size: 64, offset: 5184)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1093, file: !1094, line: 849, baseType: !1092, size: 64, offset: 5248)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1093, file: !1094, line: 852, baseType: !1092, size: 64, offset: 5312)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1093, file: !1094, line: 857, baseType: !185, size: 128, offset: 5376)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1093, file: !1094, line: 858, baseType: !185, size: 128, offset: 5504)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1093, file: !1094, line: 859, baseType: !1092, size: 64, offset: 5632)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1093, file: !1094, line: 867, baseType: !185, size: 128, offset: 5696)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1093, file: !1094, line: 868, baseType: !185, size: 128, offset: 5824)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1093, file: !1094, line: 871, baseType: !1345, size: 64, offset: 5952)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !61, line: 59, size: 768, elements: !1347)
!1347 = !{!1348, !1349, !1350, !1351, !1353, !1354, !1361, !1362}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1346, file: !61, line: 61, baseType: !1106, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1346, file: !61, line: 62, baseType: !7, size: 32, offset: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1346, file: !61, line: 63, baseType: !198, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1346, file: !61, line: 65, baseType: !1352, size: 256, offset: 64)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !593, size: 256, elements: !1031)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1346, file: !61, line: 66, baseType: !593, size: 64, offset: 320)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1346, file: !61, line: 68, baseType: !1355, size: 128, offset: 384)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1356, line: 40, baseType: !1357)
!1356 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1356, line: 36, size: 128, elements: !1358)
!1358 = !{!1359, !1360}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1357, file: !1356, line: 37, baseType: !198)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1357, file: !1356, line: 38, baseType: !185, size: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1346, file: !61, line: 69, baseType: !328, size: 128, align: 64, offset: 512)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1346, file: !61, line: 70, baseType: !1363, size: 128, offset: 640)
!1363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1364, size: 128, elements: !1245)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !61, line: 54, size: 128, elements: !1365)
!1365 = !{!1366, !1367}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1364, file: !61, line: 55, baseType: !139, size: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1364, file: !61, line: 56, baseType: !1368, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !61, line: 56, flags: DIFlagFwdDecl)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1093, file: !1094, line: 872, baseType: !1371, size: 512, offset: 6016)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !597, size: 512, elements: !1031)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1093, file: !1094, line: 873, baseType: !185, size: 128, offset: 6528)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1093, file: !1094, line: 874, baseType: !185, size: 128, offset: 6656)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1093, file: !1094, line: 876, baseType: !1375, size: 64, offset: 6784)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1377, line: 26, size: 192, elements: !1378)
!1377 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1378 = !{!1379, !1380}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1376, file: !1377, line: 27, baseType: !7, size: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1376, file: !1377, line: 28, baseType: !1381, size: 128, offset: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1382, line: 43, size: 128, elements: !1383)
!1382 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1383 = !{!1384, !1385}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1381, file: !1382, line: 44, baseType: !738)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1381, file: !1382, line: 45, baseType: !185, size: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1093, file: !1094, line: 879, baseType: !663, size: 64, offset: 6848)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1093, file: !1094, line: 882, baseType: !663, size: 64, offset: 6912)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1093, file: !1094, line: 884, baseType: !380, size: 64, offset: 6976)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1093, file: !1094, line: 885, baseType: !380, size: 64, offset: 7040)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1093, file: !1094, line: 890, baseType: !380, size: 64, offset: 7104)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1093, file: !1094, line: 891, baseType: !1392, size: 128, offset: 7168)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1094, line: 242, size: 128, elements: !1393)
!1393 = !{!1394, !1395, !1396}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1392, file: !1094, line: 244, baseType: !380, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1392, file: !1094, line: 245, baseType: !380, size: 64, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1392, file: !1094, line: 246, baseType: !738, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1093, file: !1094, line: 900, baseType: !287, size: 64, offset: 7296)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1093, file: !1094, line: 901, baseType: !287, size: 64, offset: 7360)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1093, file: !1094, line: 904, baseType: !380, size: 64, offset: 7424)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1093, file: !1094, line: 907, baseType: !380, size: 64, offset: 7488)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1093, file: !1094, line: 910, baseType: !287, size: 64, offset: 7552)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1093, file: !1094, line: 911, baseType: !287, size: 64, offset: 7616)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1093, file: !1094, line: 914, baseType: !1404, size: 640, offset: 7680)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1405, line: 123, size: 640, elements: !1406)
!1405 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1406 = !{!1407, !1413, !1414}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1404, file: !1405, line: 124, baseType: !1408, size: 576)
!1408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1409, size: 576, elements: !240)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1405, line: 108, size: 192, elements: !1410)
!1410 = !{!1411, !1412}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1409, file: !1405, line: 109, baseType: !380, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1409, file: !1405, line: 110, baseType: !1219, size: 128, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1404, file: !1405, line: 125, baseType: !7, size: 32, offset: 576)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1404, file: !1405, line: 126, baseType: !7, size: 32, offset: 608)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1093, file: !1094, line: 917, baseType: !1416, size: 192, offset: 8320)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1405, line: 134, size: 192, elements: !1417)
!1417 = !{!1418, !1419}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1416, file: !1405, line: 135, baseType: !328, size: 128, align: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1416, file: !1405, line: 136, baseType: !7, size: 32, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1093, file: !1094, line: 923, baseType: !1421, size: 64, offset: 8512)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1423)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1424, line: 111, size: 1280, elements: !1425)
!1424 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1425 = !{!1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1443, !1444, !1445, !1446, !1447, !1448, !1555, !1556, !1557, !1558, !1584, !1587, !1597}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1423, file: !1424, line: 112, baseType: !705, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1423, file: !1424, line: 120, baseType: !393, size: 32, offset: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1423, file: !1424, line: 121, baseType: !401, size: 32, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1423, file: !1424, line: 122, baseType: !393, size: 32, offset: 96)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1423, file: !1424, line: 123, baseType: !401, size: 32, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1423, file: !1424, line: 124, baseType: !393, size: 32, offset: 160)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1423, file: !1424, line: 125, baseType: !401, size: 32, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1423, file: !1424, line: 126, baseType: !393, size: 32, offset: 224)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1423, file: !1424, line: 127, baseType: !401, size: 32, offset: 256)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1423, file: !1424, line: 128, baseType: !7, size: 32, offset: 288)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1423, file: !1424, line: 129, baseType: !1437, size: 64, offset: 320)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1438, line: 26, baseType: !1439)
!1438 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1438, line: 24, size: 64, elements: !1440)
!1440 = !{!1441}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1439, file: !1438, line: 25, baseType: !1442, size: 64)
!1442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 64, elements: !166)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1423, file: !1424, line: 130, baseType: !1437, size: 64, offset: 384)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1423, file: !1424, line: 131, baseType: !1437, size: 64, offset: 448)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1423, file: !1424, line: 132, baseType: !1437, size: 64, offset: 512)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1423, file: !1424, line: 133, baseType: !1437, size: 64, offset: 576)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1423, file: !1424, line: 135, baseType: !138, size: 8, offset: 640)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1423, file: !1424, line: 137, baseType: !1449, size: 64, offset: 704)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1451, line: 189, size: 1664, elements: !1452)
!1451 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1452 = !{!1453, !1454, !1457, !1462, !1463, !1466, !1467, !1472, !1473, !1474, !1475, !1477, !1478, !1479, !1480, !1481, !1519, !1540}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1450, file: !1451, line: 190, baseType: !1106, size: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1450, file: !1451, line: 191, baseType: !1455, size: 32, offset: 32)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1451, line: 28, baseType: !1456)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !135, line: 98, baseType: !1318)
!1457 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !1451, line: 192, baseType: !1458, size: 192, offset: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1450, file: !1451, line: 192, size: 192, elements: !1459)
!1459 = !{!1460, !1461}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1458, file: !1451, line: 193, baseType: !185, size: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1458, file: !1451, line: 194, baseType: !718, size: 192, align: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1450, file: !1451, line: 199, baseType: !725, size: 256, offset: 256)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1450, file: !1451, line: 200, baseType: !1464, size: 64, offset: 512)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1451, line: 200, flags: DIFlagFwdDecl)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1450, file: !1451, line: 201, baseType: !133, size: 64, offset: 576)
!1467 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !1451, line: 202, baseType: !1468, size: 64, offset: 640)
!1468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1450, file: !1451, line: 202, size: 64, elements: !1469)
!1469 = !{!1470, !1471}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1468, file: !1451, line: 203, baseType: !497, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1468, file: !1451, line: 204, baseType: !497, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1450, file: !1451, line: 206, baseType: !497, size: 64, offset: 704)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1450, file: !1451, line: 207, baseType: !393, size: 32, offset: 768)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1450, file: !1451, line: 208, baseType: !401, size: 32, offset: 800)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1450, file: !1451, line: 209, baseType: !1476, size: 32, offset: 832)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1451, line: 31, baseType: !517)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1450, file: !1451, line: 210, baseType: !132, size: 16, offset: 864)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1450, file: !1451, line: 211, baseType: !132, size: 16, offset: 880)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1450, file: !1451, line: 215, baseType: !1081, size: 16, offset: 896)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1450, file: !1451, line: 222, baseType: !287, size: 64, offset: 960)
!1481 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !1451, line: 239, baseType: !1482, size: 320, offset: 1024)
!1482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1450, file: !1451, line: 239, size: 320, elements: !1483)
!1483 = !{!1484, !1511}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1482, file: !1451, line: 240, baseType: !1485, size: 320)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1451, line: 108, size: 320, elements: !1486)
!1486 = !{!1487, !1488, !1500, !1503, !1510}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1485, file: !1451, line: 110, baseType: !287, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, scope: !1485, file: !1451, line: 111, baseType: !1489, size: 64, offset: 64)
!1489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1485, file: !1451, line: 111, size: 64, elements: !1490)
!1490 = !{!1491, !1499}
!1491 = !DIDerivedType(tag: DW_TAG_member, scope: !1489, file: !1451, line: 112, baseType: !1492, size: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1489, file: !1451, line: 112, size: 64, elements: !1493)
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1492, file: !1451, line: 114, baseType: !128, size: 16)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1492, file: !1451, line: 115, baseType: !1496, size: 48, offset: 16)
!1496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 48, elements: !1497)
!1497 = !{!1498}
!1498 = !DISubrange(count: 6)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1489, file: !1451, line: 121, baseType: !287, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1485, file: !1451, line: 123, baseType: !1501, size: 64, offset: 128)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1451, line: 96, flags: DIFlagFwdDecl)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1485, file: !1451, line: 124, baseType: !1504, size: 64, offset: 192)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1451, line: 102, size: 192, elements: !1506)
!1506 = !{!1507, !1508, !1509}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1505, file: !1451, line: 103, baseType: !328, size: 128, align: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1505, file: !1451, line: 104, baseType: !1106, size: 32, offset: 128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1505, file: !1451, line: 105, baseType: !448, size: 8, offset: 160)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1485, file: !1451, line: 125, baseType: !182, size: 64, offset: 256)
!1511 = !DIDerivedType(tag: DW_TAG_member, scope: !1482, file: !1451, line: 241, baseType: !1512, size: 320)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1482, file: !1451, line: 241, size: 320, elements: !1513)
!1513 = !{!1514, !1515, !1516, !1517, !1518}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1512, file: !1451, line: 242, baseType: !287, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1512, file: !1451, line: 243, baseType: !287, size: 64, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1512, file: !1451, line: 244, baseType: !1501, size: 64, offset: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1512, file: !1451, line: 245, baseType: !1504, size: 64, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1512, file: !1451, line: 246, baseType: !239, size: 64, offset: 256)
!1519 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !1451, line: 254, baseType: !1520, size: 256, offset: 1344)
!1520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1450, file: !1451, line: 254, size: 256, elements: !1521)
!1521 = !{!1522, !1528}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1520, file: !1451, line: 255, baseType: !1523, size: 256)
!1523 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1451, line: 128, size: 256, elements: !1524)
!1524 = !{!1525, !1526}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1523, file: !1451, line: 129, baseType: !133, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1523, file: !1451, line: 130, baseType: !1527, size: 256)
!1527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 256, elements: !1031)
!1528 = !DIDerivedType(tag: DW_TAG_member, scope: !1520, file: !1451, line: 256, baseType: !1529, size: 256)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1520, file: !1451, line: 256, size: 256, elements: !1530)
!1530 = !{!1531, !1532}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1529, file: !1451, line: 258, baseType: !185, size: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1529, file: !1451, line: 259, baseType: !1533, size: 128, offset: 128)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1534, line: 22, size: 128, elements: !1535)
!1534 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1535 = !{!1536, !1539}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1533, file: !1534, line: 23, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1534, line: 23, flags: DIFlagFwdDecl)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1533, file: !1534, line: 24, baseType: !287, size: 64, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1450, file: !1451, line: 274, baseType: !1541, size: 64, offset: 1600)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1451, line: 170, size: 192, elements: !1543)
!1543 = !{!1544, !1553, !1554}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1542, file: !1451, line: 171, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1451, line: 165, baseType: !1546)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!139, !1449, !1549, !1551, !1449}
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1502)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1523)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1542, file: !1451, line: 172, baseType: !1449, size: 64, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1542, file: !1451, line: 173, baseType: !1501, size: 64, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1423, file: !1424, line: 138, baseType: !1449, size: 64, offset: 768)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1423, file: !1424, line: 139, baseType: !1449, size: 64, offset: 832)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1423, file: !1424, line: 140, baseType: !1449, size: 64, offset: 896)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1423, file: !1424, line: 145, baseType: !1559, size: 64, offset: 960)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1561, line: 13, size: 896, elements: !1562)
!1561 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1562 = !{!1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1560, file: !1561, line: 14, baseType: !1106, size: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1560, file: !1561, line: 15, baseType: !705, size: 32, offset: 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1560, file: !1561, line: 16, baseType: !705, size: 32, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1560, file: !1561, line: 21, baseType: !729, size: 64, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1560, file: !1561, line: 27, baseType: !287, size: 64, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1560, file: !1561, line: 28, baseType: !287, size: 64, offset: 256)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1560, file: !1561, line: 29, baseType: !729, size: 64, offset: 320)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1560, file: !1561, line: 32, baseType: !597, size: 128, offset: 384)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1560, file: !1561, line: 33, baseType: !393, size: 32, offset: 512)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1560, file: !1561, line: 37, baseType: !729, size: 64, offset: 576)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1560, file: !1561, line: 44, baseType: !1574, size: 256, offset: 640)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1575, line: 15, size: 256, elements: !1576)
!1575 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1576 = !{!1577, !1578, !1579, !1580, !1581, !1582, !1583}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1574, file: !1575, line: 16, baseType: !738)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1574, file: !1575, line: 18, baseType: !139, size: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1574, file: !1575, line: 19, baseType: !139, size: 32, offset: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1574, file: !1575, line: 20, baseType: !139, size: 32, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1574, file: !1575, line: 21, baseType: !139, size: 32, offset: 96)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1574, file: !1575, line: 22, baseType: !287, size: 64, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1574, file: !1575, line: 23, baseType: !287, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1423, file: !1424, line: 146, baseType: !1585, size: 64, offset: 1024)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !394, line: 18, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1423, file: !1424, line: 147, baseType: !1588, size: 64, offset: 1088)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1424, line: 25, size: 64, elements: !1590)
!1590 = !{!1591, !1592, !1593}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1589, file: !1424, line: 26, baseType: !705, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1589, file: !1424, line: 27, baseType: !139, size: 32, offset: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1589, file: !1424, line: 28, baseType: !1594, offset: 64)
!1594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, elements: !1595)
!1595 = !{!1596}
!1596 = !DISubrange(count: 0)
!1597 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !1424, line: 149, baseType: !1598, size: 128, offset: 1152)
!1598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1423, file: !1424, line: 149, size: 128, elements: !1599)
!1599 = !{!1600, !1601}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1598, file: !1424, line: 150, baseType: !139, size: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1598, file: !1424, line: 151, baseType: !328, size: 128, align: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1093, file: !1094, line: 926, baseType: !1421, size: 64, offset: 8576)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1093, file: !1094, line: 929, baseType: !1421, size: 64, offset: 8640)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1093, file: !1094, line: 933, baseType: !1449, size: 64, offset: 8704)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1093, file: !1094, line: 943, baseType: !149, size: 128, offset: 8768)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1093, file: !1094, line: 945, baseType: !1607, size: 64, offset: 8896)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1094, line: 49, flags: DIFlagFwdDecl)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1093, file: !1094, line: 956, baseType: !1610, size: 64, offset: 8960)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1094, line: 45, flags: DIFlagFwdDecl)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1093, file: !1094, line: 959, baseType: !1613, size: 64, offset: 9024)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1094, line: 959, flags: DIFlagFwdDecl)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1093, file: !1094, line: 962, baseType: !1616, size: 64, offset: 9088)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1094, line: 66, flags: DIFlagFwdDecl)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1093, file: !1094, line: 966, baseType: !1619, size: 64, offset: 9152)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1621, line: 35, flags: DIFlagFwdDecl)
!1621 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1093, file: !1094, line: 969, baseType: !1623, size: 64, offset: 9216)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1625, line: 82, size: 7296, elements: !1626)
!1625 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1626 = !{!1627, !1628, !1629, !1630, !1631, !1632, !1633, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1662, !1671, !1672, !1674, !1675, !1676, !1679, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1709, !1710, !1717, !1718, !1719, !1720, !1721, !1722}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1624, file: !1625, line: 83, baseType: !1106, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1624, file: !1625, line: 84, baseType: !705, size: 32, offset: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1624, file: !1625, line: 85, baseType: !139, size: 32, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1624, file: !1625, line: 86, baseType: !185, size: 128, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1624, file: !1625, line: 88, baseType: !1355, size: 128, offset: 256)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1624, file: !1625, line: 91, baseType: !1092, size: 64, offset: 384)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1624, file: !1625, line: 94, baseType: !1634, size: 192, offset: 448)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1635, line: 30, size: 192, elements: !1636)
!1635 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1636 = !{!1637, !1638}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1634, file: !1635, line: 31, baseType: !185, size: 128)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1634, file: !1635, line: 32, baseType: !1639, size: 64, offset: 128)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1640, line: 25, baseType: !1641)
!1640 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1640, line: 23, size: 64, elements: !1642)
!1642 = !{!1643}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1641, file: !1640, line: 24, baseType: !1244, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1624, file: !1625, line: 97, baseType: !593, size: 64, offset: 640)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1624, file: !1625, line: 100, baseType: !139, size: 32, offset: 704)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1624, file: !1625, line: 106, baseType: !139, size: 32, offset: 736)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1624, file: !1625, line: 107, baseType: !1092, size: 64, offset: 768)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1624, file: !1625, line: 110, baseType: !139, size: 32, offset: 832)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1624, file: !1625, line: 111, baseType: !7, size: 32, offset: 864)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1624, file: !1625, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1624, file: !1625, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1624, file: !1625, line: 128, baseType: !139, size: 32, offset: 928)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1624, file: !1625, line: 129, baseType: !185, size: 128, offset: 960)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1624, file: !1625, line: 132, baseType: !1168, size: 512, offset: 1088)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1624, file: !1625, line: 133, baseType: !1176, size: 64, offset: 1600)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1624, file: !1625, line: 140, baseType: !1657, size: 256, offset: 1664)
!1657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1658, size: 256, elements: !166)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1625, line: 38, size: 128, elements: !1659)
!1659 = !{!1660, !1661}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1658, file: !1625, line: 39, baseType: !380, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1658, file: !1625, line: 40, baseType: !380, size: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1624, file: !1625, line: 146, baseType: !1663, size: 192, offset: 1920)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1625, line: 66, size: 192, elements: !1664)
!1664 = !{!1665}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1663, file: !1625, line: 67, baseType: !1666, size: 192)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1625, line: 47, size: 192, elements: !1667)
!1667 = !{!1668, !1669, !1670}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1666, file: !1625, line: 48, baseType: !731, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1666, file: !1625, line: 49, baseType: !731, size: 64, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1666, file: !1625, line: 50, baseType: !731, size: 64, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1624, file: !1625, line: 150, baseType: !1404, size: 640, offset: 2112)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1624, file: !1625, line: 153, baseType: !1673, size: 256, offset: 2752)
!1673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1345, size: 256, elements: !1031)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1624, file: !1625, line: 159, baseType: !1345, size: 64, offset: 3008)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1624, file: !1625, line: 162, baseType: !139, size: 32, offset: 3072)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1624, file: !1625, line: 164, baseType: !1677, size: 64, offset: 3136)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1625, line: 164, flags: DIFlagFwdDecl)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1624, file: !1625, line: 175, baseType: !1680, size: 32, offset: 3200)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !351, line: 805, baseType: !1681)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !351, line: 798, size: 32, elements: !1682)
!1682 = !{!1683, !1684}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1681, file: !351, line: 803, baseType: !350, size: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1681, file: !351, line: 804, baseType: !198, offset: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1624, file: !1625, line: 176, baseType: !380, size: 64, offset: 3264)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1624, file: !1625, line: 176, baseType: !380, size: 64, offset: 3328)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1624, file: !1625, line: 176, baseType: !380, size: 64, offset: 3392)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1624, file: !1625, line: 176, baseType: !380, size: 64, offset: 3456)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1624, file: !1625, line: 177, baseType: !380, size: 64, offset: 3520)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1624, file: !1625, line: 178, baseType: !380, size: 64, offset: 3584)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1624, file: !1625, line: 179, baseType: !1392, size: 128, offset: 3648)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1624, file: !1625, line: 180, baseType: !287, size: 64, offset: 3776)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1624, file: !1625, line: 180, baseType: !287, size: 64, offset: 3840)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1624, file: !1625, line: 180, baseType: !287, size: 64, offset: 3904)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1624, file: !1625, line: 180, baseType: !287, size: 64, offset: 3968)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1624, file: !1625, line: 181, baseType: !287, size: 64, offset: 4032)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1624, file: !1625, line: 181, baseType: !287, size: 64, offset: 4096)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1624, file: !1625, line: 181, baseType: !287, size: 64, offset: 4160)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1624, file: !1625, line: 181, baseType: !287, size: 64, offset: 4224)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1624, file: !1625, line: 182, baseType: !287, size: 64, offset: 4288)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1624, file: !1625, line: 182, baseType: !287, size: 64, offset: 4352)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1624, file: !1625, line: 182, baseType: !287, size: 64, offset: 4416)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1624, file: !1625, line: 182, baseType: !287, size: 64, offset: 4480)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1624, file: !1625, line: 183, baseType: !287, size: 64, offset: 4544)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1624, file: !1625, line: 183, baseType: !287, size: 64, offset: 4608)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1624, file: !1625, line: 184, baseType: !1707, offset: 4672)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1708, line: 12, elements: !212)
!1708 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1624, file: !1625, line: 192, baseType: !382, size: 64, offset: 4672)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1624, file: !1625, line: 203, baseType: !1711, size: 2048, offset: 4736)
!1711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1712, size: 2048, elements: !151)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1713, line: 43, size: 128, elements: !1714)
!1713 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1714 = !{!1715, !1716}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1712, file: !1713, line: 44, baseType: !286, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1712, file: !1713, line: 45, baseType: !286, size: 64, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1624, file: !1625, line: 220, baseType: !448, size: 8, offset: 6784)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1624, file: !1625, line: 221, baseType: !1081, size: 16, offset: 6800)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1624, file: !1625, line: 222, baseType: !1081, size: 16, offset: 6816)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1624, file: !1625, line: 224, baseType: !930, size: 64, offset: 6848)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1624, file: !1625, line: 227, baseType: !1049, size: 192, offset: 6912)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1624, file: !1625, line: 233, baseType: !1049, size: 192, offset: 7104)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1093, file: !1094, line: 970, baseType: !1724, size: 64, offset: 9280)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1625, line: 20, size: 16576, elements: !1726)
!1726 = !{!1727, !1728, !1729, !1730}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1725, file: !1625, line: 21, baseType: !198)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1725, file: !1625, line: 22, baseType: !1106, size: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1725, file: !1625, line: 23, baseType: !1355, size: 128, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1725, file: !1625, line: 24, baseType: !1731, size: 16384, offset: 192)
!1731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1732, size: 16384, elements: !244)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1635, line: 49, size: 256, elements: !1733)
!1733 = !{!1734}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1732, file: !1635, line: 50, baseType: !1735, size: 256)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1635, line: 35, size: 256, elements: !1736)
!1736 = !{!1737, !1744, !1745, !1751}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1735, file: !1635, line: 37, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1739, line: 19, baseType: !1740)
!1739 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1739, line: 18, baseType: !1742)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null, !139}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1735, file: !1635, line: 38, baseType: !287, size: 64, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1735, file: !1635, line: 44, baseType: !1746, size: 64, offset: 128)
!1746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1739, line: 22, baseType: !1747)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1739, line: 21, baseType: !1749)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{null}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1735, file: !1635, line: 46, baseType: !1639, size: 64, offset: 192)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1093, file: !1094, line: 971, baseType: !1639, size: 64, offset: 9344)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1093, file: !1094, line: 972, baseType: !1639, size: 64, offset: 9408)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1093, file: !1094, line: 974, baseType: !1639, size: 64, offset: 9472)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1093, file: !1094, line: 975, baseType: !1634, size: 192, offset: 9536)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1093, file: !1094, line: 976, baseType: !287, size: 64, offset: 9728)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1093, file: !1094, line: 977, baseType: !284, size: 64, offset: 9792)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1093, file: !1094, line: 978, baseType: !7, size: 32, offset: 9856)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1093, file: !1094, line: 980, baseType: !331, size: 64, offset: 9920)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1093, file: !1094, line: 989, baseType: !1761, size: 128, offset: 9984)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1762, line: 35, size: 128, elements: !1763)
!1762 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1763 = !{!1764, !1765, !1766}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1761, file: !1762, line: 36, baseType: !139, size: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1761, file: !1762, line: 37, baseType: !705, size: 32, offset: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1761, file: !1762, line: 38, baseType: !1767, size: 64, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1762, line: 23, flags: DIFlagFwdDecl)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1093, file: !1094, line: 992, baseType: !380, size: 64, offset: 10112)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1093, file: !1094, line: 993, baseType: !380, size: 64, offset: 10176)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1093, file: !1094, line: 996, baseType: !198, offset: 10240)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1093, file: !1094, line: 999, baseType: !738, offset: 10240)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1093, file: !1094, line: 1001, baseType: !1774, size: 64, offset: 10240)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1094, line: 636, size: 64, elements: !1775)
!1775 = !{!1776}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1774, file: !1094, line: 637, baseType: !1777, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1093, file: !1094, line: 1005, baseType: !710, size: 128, offset: 10304)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1093, file: !1094, line: 1007, baseType: !1092, size: 64, offset: 10432)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1093, file: !1094, line: 1009, baseType: !1781, size: 64, offset: 10496)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1094, line: 1009, flags: DIFlagFwdDecl)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1093, file: !1094, line: 1043, baseType: !133, size: 64, offset: 10560)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1093, file: !1094, line: 1046, baseType: !1785, size: 64, offset: 10624)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1094, line: 41, flags: DIFlagFwdDecl)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1093, file: !1094, line: 1050, baseType: !1788, size: 64, offset: 10688)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1094, line: 42, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1093, file: !1094, line: 1054, baseType: !1791, size: 64, offset: 10752)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1094, line: 55, flags: DIFlagFwdDecl)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1093, file: !1094, line: 1056, baseType: !1794, size: 64, offset: 10816)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1094, line: 40, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1093, file: !1094, line: 1058, baseType: !1797, size: 64, offset: 10880)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1799, line: 99, size: 704, elements: !1800)
!1799 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1800 = !{!1801, !1802, !1803, !1804, !1805, !1806, !1807, !1826, !1827}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1798, file: !1799, line: 100, baseType: !729, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1798, file: !1799, line: 101, baseType: !705, size: 32, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1798, file: !1799, line: 102, baseType: !705, size: 32, offset: 96)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1798, file: !1799, line: 105, baseType: !198, offset: 128)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1798, file: !1799, line: 107, baseType: !132, size: 16, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1798, file: !1799, line: 109, baseType: !697, size: 128, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1798, file: !1799, line: 110, baseType: !1808, size: 64, offset: 320)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1799, line: 73, size: 448, elements: !1810)
!1810 = !{!1811, !1814, !1815, !1820, !1825}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1809, file: !1799, line: 74, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1799, line: 74, flags: DIFlagFwdDecl)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1809, file: !1799, line: 75, baseType: !1797, size: 64, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, scope: !1809, file: !1799, line: 83, baseType: !1816, size: 128, offset: 128)
!1816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1809, file: !1799, line: 83, size: 128, elements: !1817)
!1817 = !{!1818, !1819}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1816, file: !1799, line: 84, baseType: !185, size: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1816, file: !1799, line: 85, baseType: !891, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, scope: !1809, file: !1799, line: 87, baseType: !1821, size: 128, offset: 256)
!1821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1809, file: !1799, line: 87, size: 128, elements: !1822)
!1822 = !{!1823, !1824}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1821, file: !1799, line: 88, baseType: !597, size: 128)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1821, file: !1799, line: 89, baseType: !328, size: 128, align: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1809, file: !1799, line: 92, baseType: !7, size: 32, offset: 384)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1798, file: !1799, line: 111, baseType: !593, size: 64, offset: 384)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1798, file: !1799, line: 113, baseType: !1828, size: 256, offset: 448)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1829, line: 102, size: 256, elements: !1830)
!1829 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1830 = !{!1831, !1832, !1833}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1828, file: !1829, line: 103, baseType: !729, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1828, file: !1829, line: 104, baseType: !185, size: 128, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1828, file: !1829, line: 105, baseType: !1834, size: 64, offset: 192)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1829, line: 21, baseType: !1835)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{null, !1838}
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1093, file: !1094, line: 1061, baseType: !1840, size: 64, offset: 10944)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1094, line: 43, flags: DIFlagFwdDecl)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1093, file: !1094, line: 1064, baseType: !287, size: 64, offset: 11008)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1093, file: !1094, line: 1065, baseType: !1844, size: 64, offset: 11072)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1635, line: 14, baseType: !1846)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1635, line: 12, size: 384, elements: !1847)
!1847 = !{!1848}
!1848 = !DIDerivedType(tag: DW_TAG_member, scope: !1846, file: !1635, line: 13, baseType: !1849, size: 384)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1846, file: !1635, line: 13, size: 384, elements: !1850)
!1850 = !{!1851, !1852, !1853, !1854}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1849, file: !1635, line: 13, baseType: !139, size: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1849, file: !1635, line: 13, baseType: !139, size: 32, offset: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1849, file: !1635, line: 13, baseType: !139, size: 32, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1849, file: !1635, line: 13, baseType: !1855, size: 256, offset: 128)
!1855 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1856, line: 32, size: 256, elements: !1857)
!1856 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1857 = !{!1858, !1863, !1876, !1882, !1891, !1911, !1916}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1855, file: !1856, line: 37, baseType: !1859, size: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !1856, line: 34, size: 64, elements: !1860)
!1860 = !{!1861, !1862}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1859, file: !1856, line: 35, baseType: !1334, size: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1859, file: !1856, line: 36, baseType: !399, size: 32, offset: 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1855, file: !1856, line: 45, baseType: !1864, size: 192)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !1856, line: 40, size: 192, elements: !1865)
!1865 = !{!1866, !1868, !1869, !1875}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1864, file: !1856, line: 41, baseType: !1867, size: 32)
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !272, line: 95, baseType: !139)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1864, file: !1856, line: 42, baseType: !139, size: 32, offset: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1864, file: !1856, line: 43, baseType: !1870, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1856, line: 11, baseType: !1871)
!1871 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1856, line: 8, size: 64, elements: !1872)
!1872 = !{!1873, !1874}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1871, file: !1856, line: 9, baseType: !139, size: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1871, file: !1856, line: 10, baseType: !133, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1864, file: !1856, line: 44, baseType: !139, size: 32, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1855, file: !1856, line: 52, baseType: !1877, size: 128)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !1856, line: 48, size: 128, elements: !1878)
!1878 = !{!1879, !1880, !1881}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1877, file: !1856, line: 49, baseType: !1334, size: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1877, file: !1856, line: 50, baseType: !399, size: 32, offset: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1877, file: !1856, line: 51, baseType: !1870, size: 64, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1855, file: !1856, line: 61, baseType: !1883, size: 256)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !1856, line: 55, size: 256, elements: !1884)
!1884 = !{!1885, !1886, !1887, !1888, !1890}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1883, file: !1856, line: 56, baseType: !1334, size: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1883, file: !1856, line: 57, baseType: !399, size: 32, offset: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1883, file: !1856, line: 58, baseType: !139, size: 32, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1883, file: !1856, line: 59, baseType: !1889, size: 64, offset: 128)
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !272, line: 94, baseType: !273)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1883, file: !1856, line: 60, baseType: !1889, size: 64, offset: 192)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1855, file: !1856, line: 95, baseType: !1892, size: 256)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !1856, line: 64, size: 256, elements: !1893)
!1893 = !{!1894, !1895}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1892, file: !1856, line: 65, baseType: !133, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, scope: !1892, file: !1856, line: 77, baseType: !1896, size: 192, offset: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1892, file: !1856, line: 77, size: 192, elements: !1897)
!1897 = !{!1898, !1899, !1906}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1896, file: !1856, line: 82, baseType: !1081, size: 16)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1896, file: !1856, line: 88, baseType: !1900, size: 192)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !1856, line: 84, size: 192, elements: !1901)
!1901 = !{!1902, !1904, !1905}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1900, file: !1856, line: 85, baseType: !1903, size: 64)
!1903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 64, elements: !1206)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1900, file: !1856, line: 86, baseType: !133, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1900, file: !1856, line: 87, baseType: !133, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1896, file: !1856, line: 93, baseType: !1907, size: 96)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !1856, line: 90, size: 96, elements: !1908)
!1908 = !{!1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1907, file: !1856, line: 91, baseType: !1903, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1907, file: !1856, line: 92, baseType: !155, size: 32, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1855, file: !1856, line: 101, baseType: !1912, size: 128)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !1856, line: 98, size: 128, elements: !1913)
!1913 = !{!1914, !1915}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1912, file: !1856, line: 99, baseType: !140, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1912, file: !1856, line: 100, baseType: !139, size: 32, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1855, file: !1856, line: 108, baseType: !1917, size: 128)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !1856, line: 104, size: 128, elements: !1918)
!1918 = !{!1919, !1920, !1921}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1917, file: !1856, line: 105, baseType: !133, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1917, file: !1856, line: 106, baseType: !139, size: 32, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1917, file: !1856, line: 107, baseType: !7, size: 32, offset: 96)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1093, file: !1094, line: 1067, baseType: !1707, offset: 11136)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1093, file: !1094, line: 1099, baseType: !1924, size: 64, offset: 11136)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1094, line: 56, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1093, file: !1094, line: 1103, baseType: !185, size: 128, offset: 11200)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1093, file: !1094, line: 1104, baseType: !1928, size: 64, offset: 11328)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1094, line: 46, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1093, file: !1094, line: 1105, baseType: !1049, size: 192, offset: 11392)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1093, file: !1094, line: 1106, baseType: !7, size: 32, offset: 11584)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1093, file: !1094, line: 1109, baseType: !1933, size: 128, offset: 11648)
!1933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1934, size: 128, elements: !166)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1094, line: 51, flags: DIFlagFwdDecl)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1093, file: !1094, line: 1110, baseType: !1049, size: 192, offset: 11776)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1093, file: !1094, line: 1111, baseType: !185, size: 128, offset: 11968)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1093, file: !1094, line: 1173, baseType: !1939, size: 64, offset: 12096)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1941, line: 62, size: 256, align: 256, elements: !1942)
!1941 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1942 = !{!1943, !1944, !1945, !1950}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1940, file: !1941, line: 75, baseType: !155, size: 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1940, file: !1941, line: 90, baseType: !155, size: 32, offset: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1940, file: !1941, line: 124, baseType: !1946, size: 64, offset: 64)
!1946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1940, file: !1941, line: 109, size: 64, elements: !1947)
!1947 = !{!1948, !1949}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1946, file: !1941, line: 110, baseType: !381, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1946, file: !1941, line: 112, baseType: !381, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1940, file: !1941, line: 144, baseType: !155, size: 32, offset: 128)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1093, file: !1094, line: 1174, baseType: !154, size: 32, offset: 12160)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1093, file: !1094, line: 1179, baseType: !287, size: 64, offset: 12224)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1093, file: !1094, line: 1182, baseType: !1954, size: 128, offset: 12288)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1027, line: 76, size: 128, elements: !1955)
!1955 = !{!1956, !1961, !1962}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1954, file: !1027, line: 85, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1958, line: 7, size: 64, elements: !1959)
!1958 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1959 = !{!1960}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1957, file: !1958, line: 12, baseType: !1241, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1954, file: !1027, line: 88, baseType: !448, size: 8, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1954, file: !1027, line: 95, baseType: !448, size: 8, offset: 72)
!1963 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !1094, line: 1184, baseType: !1964, size: 128, offset: 12416)
!1964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1093, file: !1094, line: 1184, size: 128, elements: !1965)
!1965 = !{!1966, !1967}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1964, file: !1094, line: 1185, baseType: !1106, size: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1964, file: !1094, line: 1186, baseType: !328, size: 128, align: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1093, file: !1094, line: 1190, baseType: !1969, size: 64, offset: 12544)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1094, line: 53, flags: DIFlagFwdDecl)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1093, file: !1094, line: 1192, baseType: !1972, size: 128, offset: 12608)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1027, line: 64, size: 128, elements: !1973)
!1973 = !{!1974, !1975, !1976}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1972, file: !1027, line: 65, baseType: !679, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1972, file: !1027, line: 67, baseType: !155, size: 32, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1972, file: !1027, line: 68, baseType: !155, size: 32, offset: 96)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1093, file: !1094, line: 1206, baseType: !139, size: 32, offset: 12736)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1093, file: !1094, line: 1207, baseType: !139, size: 32, offset: 12768)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1093, file: !1094, line: 1209, baseType: !287, size: 64, offset: 12800)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1093, file: !1094, line: 1219, baseType: !380, size: 64, offset: 12864)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1093, file: !1094, line: 1220, baseType: !380, size: 64, offset: 12928)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1093, file: !1094, line: 1317, baseType: !139, size: 32, offset: 12992)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1093, file: !1094, line: 1319, baseType: !1092, size: 64, offset: 13056)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1093, file: !1094, line: 1322, baseType: !1985, size: 64, offset: 13120)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1987, line: 9, flags: DIFlagFwdDecl)
!1987 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1093, file: !1094, line: 1326, baseType: !1106, size: 32, offset: 13184)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1093, file: !1094, line: 1342, baseType: !133, size: 64, offset: 13248)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1093, file: !1094, line: 1343, baseType: !381, size: 64, offset: 13312)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1093, file: !1094, line: 1344, baseType: !380, size: 64, offset: 13376)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1093, file: !1094, line: 1345, baseType: !381, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1093, file: !1094, line: 1346, baseType: !381, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1093, file: !1094, line: 1347, baseType: !381, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1093, file: !1094, line: 1348, baseType: !328, size: 128, align: 64, offset: 13504)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1093, file: !1094, line: 1358, baseType: !1997, size: 34816, offset: 13824)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1998, line: 485, size: 34816, elements: !1999)
!1998 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1999 = !{!2000, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2029, !2030, !2031, !2032, !2033, !2034, !2037, !2038, !2039}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1997, file: !1998, line: 487, baseType: !2001, size: 192)
!2001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2002, size: 192, elements: !240)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2003, line: 16, size: 64, elements: !2004)
!2003 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2004 = !{!2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2002, file: !2003, line: 17, baseType: !128, size: 16)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2002, file: !2003, line: 18, baseType: !128, size: 16, offset: 16)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2002, file: !2003, line: 19, baseType: !128, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2002, file: !2003, line: 19, baseType: !128, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2002, file: !2003, line: 19, baseType: !128, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2002, file: !2003, line: 19, baseType: !128, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2002, file: !2003, line: 19, baseType: !128, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2002, file: !2003, line: 20, baseType: !128, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2002, file: !2003, line: 20, baseType: !128, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2002, file: !2003, line: 20, baseType: !128, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2002, file: !2003, line: 20, baseType: !128, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2002, file: !2003, line: 20, baseType: !128, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2002, file: !2003, line: 20, baseType: !128, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1997, file: !1998, line: 491, baseType: !287, size: 64, offset: 192)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1997, file: !1998, line: 495, baseType: !132, size: 16, offset: 256)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1997, file: !1998, line: 496, baseType: !132, size: 16, offset: 272)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1997, file: !1998, line: 497, baseType: !132, size: 16, offset: 288)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1997, file: !1998, line: 498, baseType: !132, size: 16, offset: 304)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1997, file: !1998, line: 502, baseType: !287, size: 64, offset: 320)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1997, file: !1998, line: 503, baseType: !287, size: 64, offset: 384)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1997, file: !1998, line: 514, baseType: !2026, size: 256, offset: 448)
!2026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2027, size: 256, elements: !1031)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1998, line: 483, flags: DIFlagFwdDecl)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1997, file: !1998, line: 516, baseType: !287, size: 64, offset: 704)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1997, file: !1998, line: 518, baseType: !287, size: 64, offset: 768)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1997, file: !1998, line: 520, baseType: !287, size: 64, offset: 832)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1997, file: !1998, line: 521, baseType: !287, size: 64, offset: 896)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1997, file: !1998, line: 522, baseType: !287, size: 64, offset: 960)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1997, file: !1998, line: 528, baseType: !2035, size: 64, offset: 1024)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1998, line: 10, flags: DIFlagFwdDecl)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1997, file: !1998, line: 535, baseType: !287, size: 64, offset: 1088)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1997, file: !1998, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1997, file: !1998, line: 540, baseType: !2040, size: 33280, offset: 1536)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2041, line: 317, size: 33280, elements: !2042)
!2041 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2042 = !{!2043, !2044, !2045}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2040, file: !2041, line: 330, baseType: !7, size: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2040, file: !2041, line: 337, baseType: !287, size: 64, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2040, file: !2041, line: 348, baseType: !2046, size: 32768, offset: 512)
!2046 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2041, line: 304, size: 32768, elements: !2047)
!2047 = !{!2048, !2063, !2102, !2152, !2165}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2046, file: !2041, line: 305, baseType: !2049, size: 896)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2041, line: 12, size: 896, elements: !2050)
!2050 = !{!2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2062}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2049, file: !2041, line: 13, baseType: !154, size: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2049, file: !2041, line: 14, baseType: !154, size: 32, offset: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2049, file: !2041, line: 15, baseType: !154, size: 32, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2049, file: !2041, line: 16, baseType: !154, size: 32, offset: 96)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2049, file: !2041, line: 17, baseType: !154, size: 32, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2049, file: !2041, line: 18, baseType: !154, size: 32, offset: 160)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2049, file: !2041, line: 19, baseType: !154, size: 32, offset: 192)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2049, file: !2041, line: 22, baseType: !2059, size: 640, offset: 224)
!2059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 640, elements: !2060)
!2060 = !{!2061}
!2061 = !DISubrange(count: 20)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2049, file: !2041, line: 25, baseType: !154, size: 32, offset: 864)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2046, file: !2041, line: 306, baseType: !2064, size: 4096, align: 128)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2041, line: 34, size: 4096, align: 128, elements: !2065)
!2065 = !{!2066, !2067, !2068, !2069, !2070, !2085, !2086, !2087, !2091, !2093, !2097}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2064, file: !2041, line: 35, baseType: !128, size: 16)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2064, file: !2041, line: 36, baseType: !128, size: 16, offset: 16)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2064, file: !2041, line: 37, baseType: !128, size: 16, offset: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2064, file: !2041, line: 38, baseType: !128, size: 16, offset: 48)
!2070 = !DIDerivedType(tag: DW_TAG_member, scope: !2064, file: !2041, line: 39, baseType: !2071, size: 128, offset: 64)
!2071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2064, file: !2041, line: 39, size: 128, elements: !2072)
!2072 = !{!2073, !2078}
!2073 = !DIDerivedType(tag: DW_TAG_member, scope: !2071, file: !2041, line: 40, baseType: !2074, size: 128)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2071, file: !2041, line: 40, size: 128, elements: !2075)
!2075 = !{!2076, !2077}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2074, file: !2041, line: 41, baseType: !380, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2074, file: !2041, line: 42, baseType: !380, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, scope: !2071, file: !2041, line: 44, baseType: !2079, size: 128)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2071, file: !2041, line: 44, size: 128, elements: !2080)
!2080 = !{!2081, !2082, !2083, !2084}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2079, file: !2041, line: 45, baseType: !154, size: 32)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2079, file: !2041, line: 46, baseType: !154, size: 32, offset: 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2079, file: !2041, line: 47, baseType: !154, size: 32, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2079, file: !2041, line: 48, baseType: !154, size: 32, offset: 96)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2064, file: !2041, line: 51, baseType: !154, size: 32, offset: 192)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2064, file: !2041, line: 52, baseType: !154, size: 32, offset: 224)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2064, file: !2041, line: 55, baseType: !2088, size: 1024, offset: 256)
!2088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 1024, elements: !2089)
!2089 = !{!2090}
!2090 = !DISubrange(count: 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2064, file: !2041, line: 58, baseType: !2092, size: 2048, offset: 1280)
!2092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 2048, elements: !244)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2064, file: !2041, line: 60, baseType: !2094, size: 384, offset: 3328)
!2094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 384, elements: !2095)
!2095 = !{!2096}
!2096 = !DISubrange(count: 12)
!2097 = !DIDerivedType(tag: DW_TAG_member, scope: !2064, file: !2041, line: 62, baseType: !2098, size: 384, offset: 3712)
!2098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2064, file: !2041, line: 62, size: 384, elements: !2099)
!2099 = !{!2100, !2101}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2098, file: !2041, line: 63, baseType: !2094, size: 384)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2098, file: !2041, line: 64, baseType: !2094, size: 384)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2046, file: !2041, line: 307, baseType: !2103, size: 1088)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2041, line: 79, size: 1088, elements: !2104)
!2104 = !{!2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2151}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2103, file: !2041, line: 80, baseType: !154, size: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2103, file: !2041, line: 81, baseType: !154, size: 32, offset: 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2103, file: !2041, line: 82, baseType: !154, size: 32, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2103, file: !2041, line: 83, baseType: !154, size: 32, offset: 96)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2103, file: !2041, line: 84, baseType: !154, size: 32, offset: 128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2103, file: !2041, line: 85, baseType: !154, size: 32, offset: 160)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2103, file: !2041, line: 86, baseType: !154, size: 32, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2103, file: !2041, line: 88, baseType: !2059, size: 640, offset: 224)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2103, file: !2041, line: 89, baseType: !136, size: 8, offset: 864)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2103, file: !2041, line: 90, baseType: !136, size: 8, offset: 872)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2103, file: !2041, line: 91, baseType: !136, size: 8, offset: 880)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2103, file: !2041, line: 92, baseType: !136, size: 8, offset: 888)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2103, file: !2041, line: 93, baseType: !136, size: 8, offset: 896)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2103, file: !2041, line: 94, baseType: !136, size: 8, offset: 904)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2103, file: !2041, line: 95, baseType: !2120, size: 64, offset: 960)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2122, line: 11, size: 128, elements: !2123)
!2122 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2123 = !{!2124, !2125}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2121, file: !2122, line: 12, baseType: !140, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2121, file: !2122, line: 13, baseType: !2126, size: 64, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2128, line: 56, size: 1344, elements: !2129)
!2128 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2129 = !{!2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2127, file: !2128, line: 61, baseType: !287, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2127, file: !2128, line: 62, baseType: !287, size: 64, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2127, file: !2128, line: 63, baseType: !287, size: 64, offset: 128)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2127, file: !2128, line: 64, baseType: !287, size: 64, offset: 192)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2127, file: !2128, line: 65, baseType: !287, size: 64, offset: 256)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2127, file: !2128, line: 66, baseType: !287, size: 64, offset: 320)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2127, file: !2128, line: 68, baseType: !287, size: 64, offset: 384)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2127, file: !2128, line: 69, baseType: !287, size: 64, offset: 448)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2127, file: !2128, line: 70, baseType: !287, size: 64, offset: 512)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2127, file: !2128, line: 71, baseType: !287, size: 64, offset: 576)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2127, file: !2128, line: 72, baseType: !287, size: 64, offset: 640)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2127, file: !2128, line: 73, baseType: !287, size: 64, offset: 704)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2127, file: !2128, line: 74, baseType: !287, size: 64, offset: 768)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2127, file: !2128, line: 75, baseType: !287, size: 64, offset: 832)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2127, file: !2128, line: 76, baseType: !287, size: 64, offset: 896)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2127, file: !2128, line: 81, baseType: !287, size: 64, offset: 960)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2127, file: !2128, line: 83, baseType: !287, size: 64, offset: 1024)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2127, file: !2128, line: 84, baseType: !287, size: 64, offset: 1088)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2127, file: !2128, line: 85, baseType: !287, size: 64, offset: 1152)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2127, file: !2128, line: 86, baseType: !287, size: 64, offset: 1216)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2127, file: !2128, line: 87, baseType: !287, size: 64, offset: 1280)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2103, file: !2041, line: 96, baseType: !154, size: 32, offset: 1024)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2046, file: !2041, line: 308, baseType: !2153, size: 4608, align: 512)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2041, line: 289, size: 4608, align: 512, elements: !2154)
!2154 = !{!2155, !2156, !2163}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2153, file: !2041, line: 290, baseType: !2064, size: 4096, align: 128)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2153, file: !2041, line: 291, baseType: !2157, size: 512, offset: 4096)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2041, line: 268, size: 512, elements: !2158)
!2158 = !{!2159, !2160, !2161}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2157, file: !2041, line: 269, baseType: !380, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2157, file: !2041, line: 270, baseType: !380, size: 64, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2157, file: !2041, line: 271, baseType: !2162, size: 384, offset: 128)
!2162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 384, elements: !1497)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2153, file: !2041, line: 292, baseType: !2164, offset: 4608)
!2164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, elements: !1595)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2046, file: !2041, line: 309, baseType: !2166, size: 32768)
!2166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 32768, elements: !2167)
!2167 = !{!2168}
!2168 = !DISubrange(count: 4096)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1089, file: !681, line: 378, baseType: !2170, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1085, file: !681, line: 384, baseType: !1376, size: 192, offset: 192)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !934, file: !681, line: 500, baseType: !198, offset: 6656)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !934, file: !681, line: 501, baseType: !2174, size: 64, offset: 6656)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !681, line: 387, flags: DIFlagFwdDecl)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !934, file: !681, line: 516, baseType: !1585, size: 64, offset: 6720)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !934, file: !681, line: 519, baseType: !315, size: 64, offset: 6784)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !934, file: !681, line: 521, baseType: !2179, size: 64, offset: 6848)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !681, line: 521, flags: DIFlagFwdDecl)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !934, file: !681, line: 545, baseType: !705, size: 32, offset: 6912)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !934, file: !681, line: 548, baseType: !448, size: 8, offset: 6944)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !934, file: !681, line: 550, baseType: !2184, offset: 6952)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2185, line: 142, elements: !212)
!2185 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !934, file: !681, line: 554, baseType: !1828, size: 256, offset: 6976)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !934, file: !681, line: 557, baseType: !154, size: 32, offset: 7232)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !931, file: !681, line: 565, baseType: !2189, offset: 7296)
!2189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, elements: !2190)
!2190 = !{!2191}
!2191 = !DISubrange(count: -1)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !927, file: !681, line: 151, baseType: !705, size: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !920, file: !681, line: 156, baseType: !198, offset: 256)
!2194 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !681, line: 159, baseType: !2195, size: 128)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !685, file: !681, line: 159, size: 128, elements: !2196)
!2196 = !{!2197, !2200}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2195, file: !681, line: 161, baseType: !2198, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !681, line: 161, flags: DIFlagFwdDecl)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2195, file: !681, line: 162, baseType: !133, size: 64, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !685, file: !681, line: 176, baseType: !328, size: 128, align: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, scope: !680, file: !681, line: 179, baseType: !2203, size: 32, offset: 384)
!2203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !680, file: !681, line: 179, size: 32, elements: !2204)
!2204 = !{!2205, !2206, !2207, !2208}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2203, file: !681, line: 184, baseType: !705, size: 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2203, file: !681, line: 192, baseType: !7, size: 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2203, file: !681, line: 194, baseType: !7, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2203, file: !681, line: 195, baseType: !139, size: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !680, file: !681, line: 199, baseType: !705, size: 32, offset: 416)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !615, file: !52, line: 1964, baseType: !2211, size: 64, offset: 1344)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!140, !557, !2214}
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2216, line: 12, size: 256, elements: !2217)
!2216 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2217 = !{!2218, !2219, !2220, !2221, !2222}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2215, file: !2216, line: 13, baseType: !134, size: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2215, file: !2216, line: 16, baseType: !139, size: 32, offset: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2215, file: !2216, line: 23, baseType: !287, size: 64, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2215, file: !2216, line: 30, baseType: !287, size: 64, offset: 128)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2215, file: !2216, line: 33, baseType: !2223, size: 64, offset: 192)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !681, line: 27, flags: DIFlagFwdDecl)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !615, file: !52, line: 1966, baseType: !2211, size: 64, offset: 1408)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !558, file: !52, line: 1424, baseType: !2227, size: 64, offset: 448)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2229)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !46, line: 322, size: 704, elements: !2230)
!2230 = !{!2231, !2277, !2281, !2285, !2286, !2287, !2288, !2289, !2294, !2299, !2303}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2229, file: !46, line: 323, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!139, !2235}
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !46, line: 294, size: 1600, elements: !2237)
!2237 = !{!2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2262, !2263, !2264}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2236, file: !46, line: 295, baseType: !597, size: 128)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2236, file: !46, line: 296, baseType: !185, size: 128, offset: 128)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2236, file: !46, line: 297, baseType: !185, size: 128, offset: 256)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2236, file: !46, line: 298, baseType: !185, size: 128, offset: 384)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2236, file: !46, line: 299, baseType: !1049, size: 192, offset: 512)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2236, file: !46, line: 300, baseType: !198, offset: 704)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2236, file: !46, line: 301, baseType: !705, size: 32, offset: 704)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2236, file: !46, line: 302, baseType: !557, size: 64, offset: 768)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2236, file: !46, line: 303, baseType: !2247, size: 64, offset: 832)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !46, line: 68, size: 64, elements: !2248)
!2248 = !{!2249, !2261}
!2249 = !DIDerivedType(tag: DW_TAG_member, scope: !2247, file: !46, line: 69, baseType: !2250, size: 32)
!2250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2247, file: !46, line: 69, size: 32, elements: !2251)
!2251 = !{!2252, !2253, !2254}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2250, file: !46, line: 70, baseType: !393, size: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2250, file: !46, line: 71, baseType: !401, size: 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2250, file: !46, line: 72, baseType: !2255, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2256, line: 24, baseType: !2257)
!2256 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2256, line: 22, size: 32, elements: !2258)
!2258 = !{!2259}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2257, file: !2256, line: 23, baseType: !2260, size: 32)
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2256, line: 20, baseType: !399)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2247, file: !46, line: 74, baseType: !45, size: 32, offset: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2236, file: !46, line: 304, baseType: !489, size: 64, offset: 896)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2236, file: !46, line: 305, baseType: !287, size: 64, offset: 960)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2236, file: !46, line: 306, baseType: !2265, size: 576, offset: 1024)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !46, line: 205, size: 576, elements: !2266)
!2266 = !{!2267, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2265, file: !46, line: 206, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !46, line: 66, baseType: !491)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2265, file: !46, line: 207, baseType: !2268, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2265, file: !46, line: 208, baseType: !2268, size: 64, offset: 128)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2265, file: !46, line: 209, baseType: !2268, size: 64, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2265, file: !46, line: 210, baseType: !2268, size: 64, offset: 256)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2265, file: !46, line: 211, baseType: !2268, size: 64, offset: 320)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2265, file: !46, line: 212, baseType: !2268, size: 64, offset: 384)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2265, file: !46, line: 213, baseType: !497, size: 64, offset: 448)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2265, file: !46, line: 214, baseType: !497, size: 64, offset: 512)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2229, file: !46, line: 324, baseType: !2278, size: 64, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!2235, !557, !139}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2229, file: !46, line: 325, baseType: !2282, size: 64, offset: 128)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{null, !2235}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2229, file: !46, line: 326, baseType: !2232, size: 64, offset: 192)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2229, file: !46, line: 327, baseType: !2232, size: 64, offset: 256)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2229, file: !46, line: 328, baseType: !2232, size: 64, offset: 320)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2229, file: !46, line: 329, baseType: !643, size: 64, offset: 384)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2229, file: !46, line: 332, baseType: !2290, size: 64, offset: 448)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!2293, !387}
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2229, file: !46, line: 333, baseType: !2295, size: 64, offset: 512)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!139, !387, !2298}
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2229, file: !46, line: 335, baseType: !2300, size: 64, offset: 576)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!139, !387, !2293}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2229, file: !46, line: 337, baseType: !2304, size: 64, offset: 640)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!139, !557, !2307}
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !558, file: !52, line: 1425, baseType: !2309, size: 64, offset: 512)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2311)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !46, line: 428, size: 704, elements: !2312)
!2312 = !{!2313, !2317, !2318, !2322, !2323, !2324, !2339, !2362, !2366, !2367, !2390}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2311, file: !46, line: 429, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!139, !557, !139, !139, !507}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2311, file: !46, line: 430, baseType: !643, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2311, file: !46, line: 431, baseType: !2319, size: 64, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!139, !557, !7}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2311, file: !46, line: 432, baseType: !2319, size: 64, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2311, file: !46, line: 433, baseType: !643, size: 64, offset: 256)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2311, file: !46, line: 434, baseType: !2325, size: 64, offset: 320)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!139, !557, !139, !2328}
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !46, line: 415, size: 256, elements: !2330)
!2330 = !{!2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2329, file: !46, line: 416, baseType: !139, size: 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2329, file: !46, line: 417, baseType: !7, size: 32, offset: 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2329, file: !46, line: 418, baseType: !7, size: 32, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2329, file: !46, line: 420, baseType: !7, size: 32, offset: 96)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2329, file: !46, line: 421, baseType: !7, size: 32, offset: 128)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2329, file: !46, line: 422, baseType: !7, size: 32, offset: 160)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2329, file: !46, line: 423, baseType: !7, size: 32, offset: 192)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2329, file: !46, line: 424, baseType: !7, size: 32, offset: 224)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2311, file: !46, line: 435, baseType: !2340, size: 64, offset: 384)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!139, !557, !2247, !2343}
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !46, line: 343, size: 960, elements: !2345)
!2345 = !{!2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2344, file: !46, line: 344, baseType: !139, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2344, file: !46, line: 345, baseType: !380, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2344, file: !46, line: 346, baseType: !380, size: 64, offset: 128)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2344, file: !46, line: 347, baseType: !380, size: 64, offset: 192)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2344, file: !46, line: 348, baseType: !380, size: 64, offset: 256)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2344, file: !46, line: 349, baseType: !380, size: 64, offset: 320)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2344, file: !46, line: 350, baseType: !380, size: 64, offset: 384)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2344, file: !46, line: 351, baseType: !735, size: 64, offset: 448)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2344, file: !46, line: 353, baseType: !735, size: 64, offset: 512)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2344, file: !46, line: 354, baseType: !139, size: 32, offset: 576)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2344, file: !46, line: 355, baseType: !139, size: 32, offset: 608)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2344, file: !46, line: 356, baseType: !380, size: 64, offset: 640)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2344, file: !46, line: 357, baseType: !380, size: 64, offset: 704)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2344, file: !46, line: 358, baseType: !380, size: 64, offset: 768)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2344, file: !46, line: 359, baseType: !735, size: 64, offset: 832)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2344, file: !46, line: 360, baseType: !139, size: 32, offset: 896)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2311, file: !46, line: 436, baseType: !2363, size: 64, offset: 448)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!139, !557, !2307, !2343}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2311, file: !46, line: 438, baseType: !2340, size: 64, offset: 512)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2311, file: !46, line: 439, baseType: !2368, size: 64, offset: 576)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!139, !557, !2371}
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !46, line: 409, size: 1408, elements: !2373)
!2373 = !{!2374, !2375}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2372, file: !46, line: 410, baseType: !7, size: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2372, file: !46, line: 411, baseType: !2376, size: 1344, offset: 64)
!2376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2377, size: 1344, elements: !240)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !46, line: 395, size: 448, elements: !2378)
!2378 = !{!2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2389}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2377, file: !46, line: 396, baseType: !7, size: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2377, file: !46, line: 397, baseType: !7, size: 32, offset: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2377, file: !46, line: 399, baseType: !7, size: 32, offset: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2377, file: !46, line: 400, baseType: !7, size: 32, offset: 96)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2377, file: !46, line: 401, baseType: !7, size: 32, offset: 128)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2377, file: !46, line: 402, baseType: !7, size: 32, offset: 160)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2377, file: !46, line: 403, baseType: !7, size: 32, offset: 192)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2377, file: !46, line: 404, baseType: !382, size: 64, offset: 256)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2377, file: !46, line: 405, baseType: !2388, size: 64, offset: 320)
!2388 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !135, line: 126, baseType: !380)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2377, file: !46, line: 406, baseType: !2388, size: 64, offset: 384)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2311, file: !46, line: 440, baseType: !2319, size: 64, offset: 640)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !558, file: !52, line: 1426, baseType: !2392, size: 64, offset: 576)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2394)
!2394 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !52, line: 49, flags: DIFlagFwdDecl)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !558, file: !52, line: 1427, baseType: !287, size: 64, offset: 640)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !558, file: !52, line: 1428, baseType: !287, size: 64, offset: 704)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !558, file: !52, line: 1429, baseType: !287, size: 64, offset: 768)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !558, file: !52, line: 1430, baseType: !345, size: 64, offset: 832)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !558, file: !52, line: 1431, baseType: !725, size: 256, offset: 896)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !558, file: !52, line: 1432, baseType: !139, size: 32, offset: 1152)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !558, file: !52, line: 1433, baseType: !705, size: 32, offset: 1184)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !558, file: !52, line: 1437, baseType: !2403, size: 64, offset: 1216)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2406)
!2406 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !52, line: 1437, flags: DIFlagFwdDecl)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !558, file: !52, line: 1449, baseType: !2408, size: 64, offset: 1280)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !361, line: 34, size: 64, elements: !2409)
!2409 = !{!2410}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2408, file: !361, line: 35, baseType: !364, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !558, file: !52, line: 1450, baseType: !185, size: 128, offset: 1344)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !558, file: !52, line: 1451, baseType: !2413, size: 64, offset: 1472)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !52, line: 699, flags: DIFlagFwdDecl)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !558, file: !52, line: 1452, baseType: !1794, size: 64, offset: 1536)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !558, file: !52, line: 1453, baseType: !2417, size: 64, offset: 1600)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !52, line: 1453, flags: DIFlagFwdDecl)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !558, file: !52, line: 1454, baseType: !597, size: 128, offset: 1664)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !558, file: !52, line: 1455, baseType: !7, size: 32, offset: 1792)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !558, file: !52, line: 1456, baseType: !2422, size: 2432, offset: 1856)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !46, line: 518, size: 2432, elements: !2423)
!2423 = !{!2424, !2425, !2426, !2428, !2460}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2422, file: !46, line: 519, baseType: !7, size: 32)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2422, file: !46, line: 520, baseType: !725, size: 256, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2422, file: !46, line: 521, baseType: !2427, size: 192, offset: 320)
!2427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 192, elements: !240)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2422, file: !46, line: 522, baseType: !2429, size: 1728, offset: 512)
!2429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2430, size: 1728, elements: !240)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !46, line: 222, size: 576, elements: !2431)
!2431 = !{!2432, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2430, file: !46, line: 223, baseType: !2433, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !46, line: 443, size: 256, elements: !2435)
!2435 = !{!2436, !2437, !2450, !2451}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2434, file: !46, line: 444, baseType: !139, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2434, file: !46, line: 445, baseType: !2438, size: 64, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2440)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !46, line: 310, size: 512, elements: !2441)
!2441 = !{!2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2440, file: !46, line: 311, baseType: !643, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2440, file: !46, line: 312, baseType: !643, size: 64, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2440, file: !46, line: 313, baseType: !643, size: 64, offset: 128)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2440, file: !46, line: 314, baseType: !643, size: 64, offset: 192)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2440, file: !46, line: 315, baseType: !2232, size: 64, offset: 256)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2440, file: !46, line: 316, baseType: !2232, size: 64, offset: 320)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2440, file: !46, line: 317, baseType: !2232, size: 64, offset: 384)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2440, file: !46, line: 318, baseType: !2304, size: 64, offset: 448)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2434, file: !46, line: 446, baseType: !141, size: 64, offset: 128)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2434, file: !46, line: 447, baseType: !2433, size: 64, offset: 192)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2430, file: !46, line: 224, baseType: !139, size: 32, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2430, file: !46, line: 226, baseType: !185, size: 128, offset: 128)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2430, file: !46, line: 227, baseType: !287, size: 64, offset: 256)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2430, file: !46, line: 228, baseType: !7, size: 32, offset: 320)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2430, file: !46, line: 229, baseType: !7, size: 32, offset: 352)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2430, file: !46, line: 230, baseType: !2268, size: 64, offset: 384)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2430, file: !46, line: 231, baseType: !2268, size: 64, offset: 448)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2430, file: !46, line: 232, baseType: !133, size: 64, offset: 512)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2422, file: !46, line: 523, baseType: !2461, size: 192, offset: 2240)
!2461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2438, size: 192, elements: !240)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !558, file: !52, line: 1458, baseType: !2463, size: 2112, offset: 4288)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !52, line: 1410, size: 2112, elements: !2464)
!2464 = !{!2465, !2466, !2467}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2463, file: !52, line: 1411, baseType: !139, size: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2463, file: !52, line: 1412, baseType: !1355, size: 128, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2463, file: !52, line: 1413, baseType: !2468, size: 1920, offset: 192)
!2468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2469, size: 1920, elements: !240)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2470, line: 12, size: 640, elements: !2471)
!2470 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2471 = !{!2472, !2480, !2482, !2487, !2488}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2469, file: !2470, line: 13, baseType: !2473, size: 320)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2474, line: 17, size: 320, elements: !2475)
!2474 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2475 = !{!2476, !2477, !2478, !2479}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2473, file: !2474, line: 18, baseType: !139, size: 32)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2473, file: !2474, line: 19, baseType: !139, size: 32, offset: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2473, file: !2474, line: 20, baseType: !1355, size: 128, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2473, file: !2474, line: 22, baseType: !328, size: 128, align: 64, offset: 192)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2469, file: !2470, line: 14, baseType: !2481, size: 64, offset: 320)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2469, file: !2470, line: 15, baseType: !2483, size: 64, offset: 384)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2484, line: 16, size: 64, elements: !2485)
!2484 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2485 = !{!2486}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2483, file: !2484, line: 17, baseType: !1092, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2469, file: !2470, line: 16, baseType: !1355, size: 128, offset: 448)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2469, file: !2470, line: 17, baseType: !705, size: 32, offset: 576)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !558, file: !52, line: 1465, baseType: !133, size: 64, offset: 6400)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !558, file: !52, line: 1468, baseType: !154, size: 32, offset: 6464)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !558, file: !52, line: 1470, baseType: !497, size: 64, offset: 6528)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !558, file: !52, line: 1471, baseType: !497, size: 64, offset: 6592)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !558, file: !52, line: 1473, baseType: !155, size: 32, offset: 6656)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !558, file: !52, line: 1474, baseType: !2495, size: 64, offset: 6720)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !52, line: 603, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !558, file: !52, line: 1477, baseType: !2498, size: 256, offset: 6784)
!2498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 256, elements: !2089)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !558, file: !52, line: 1478, baseType: !2500, size: 128, offset: 7040)
!2500 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2501, line: 18, baseType: !2502)
!2501 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2501, line: 16, size: 128, elements: !2503)
!2503 = !{!2504}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2502, file: !2501, line: 17, baseType: !2505, size: 128)
!2505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 128, elements: !151)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !558, file: !52, line: 1480, baseType: !7, size: 32, offset: 7168)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !558, file: !52, line: 1481, baseType: !2508, size: 32, offset: 7200)
!2508 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !135, line: 150, baseType: !7)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !558, file: !52, line: 1487, baseType: !1049, size: 192, offset: 7232)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !558, file: !52, line: 1493, baseType: !182, size: 64, offset: 7424)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !558, file: !52, line: 1495, baseType: !2512, size: 64, offset: 7488)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2514)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !343, line: 135, size: 1024, align: 512, elements: !2515)
!2515 = !{!2516, !2520, !2521, !2528, !2534, !2538, !2542, !2546, !2547, !2551, !2555, !2560, !2564}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2514, file: !343, line: 136, baseType: !2517, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!139, !345, !7}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2514, file: !343, line: 137, baseType: !2517, size: 64, offset: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2514, file: !343, line: 138, baseType: !2522, size: 64, offset: 128)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!139, !2525, !2527}
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2514, file: !343, line: 139, baseType: !2529, size: 64, offset: 192)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!139, !2525, !7, !182, !2532}
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2514, file: !343, line: 141, baseType: !2535, size: 64, offset: 256)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!139, !2525}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2514, file: !343, line: 142, baseType: !2539, size: 64, offset: 320)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!139, !345}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2514, file: !343, line: 143, baseType: !2543, size: 64, offset: 384)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{null, !345}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2514, file: !343, line: 144, baseType: !2543, size: 64, offset: 448)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2514, file: !343, line: 145, baseType: !2548, size: 64, offset: 512)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{null, !345, !387}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2514, file: !343, line: 146, baseType: !2552, size: 64, offset: 576)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!239, !345, !239, !139}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2514, file: !343, line: 147, baseType: !2556, size: 64, offset: 640)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!341, !2559}
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2514, file: !343, line: 148, baseType: !2561, size: 64, offset: 704)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!139, !507, !448}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2514, file: !343, line: 149, baseType: !2565, size: 64, offset: 768)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!345, !345, !2568}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !558, file: !52, line: 1500, baseType: !139, size: 32, offset: 7552)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !558, file: !52, line: 1502, baseType: !2572, size: 448, offset: 7616)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2216, line: 60, size: 448, elements: !2573)
!2573 = !{!2574, !2579, !2580, !2581, !2582, !2583, !2584}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2572, file: !2216, line: 61, baseType: !2575, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!287, !2578, !2214}
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2572, file: !2216, line: 63, baseType: !2575, size: 64, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2572, file: !2216, line: 66, baseType: !140, size: 64, offset: 128)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2572, file: !2216, line: 67, baseType: !139, size: 32, offset: 192)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2572, file: !2216, line: 68, baseType: !7, size: 32, offset: 224)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2572, file: !2216, line: 71, baseType: !185, size: 128, offset: 256)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2572, file: !2216, line: 77, baseType: !2585, size: 64, offset: 384)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !558, file: !52, line: 1505, baseType: !729, size: 64, offset: 8064)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !558, file: !52, line: 1508, baseType: !729, size: 64, offset: 8128)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !558, file: !52, line: 1511, baseType: !139, size: 32, offset: 8192)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !558, file: !52, line: 1514, baseType: !865, size: 32, offset: 8224)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !558, file: !52, line: 1517, baseType: !2591, size: 64, offset: 8256)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1829, line: 18, flags: DIFlagFwdDecl)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !558, file: !52, line: 1518, baseType: !593, size: 64, offset: 8320)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !558, file: !52, line: 1525, baseType: !1585, size: 64, offset: 8384)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !558, file: !52, line: 1532, baseType: !2596, size: 64, offset: 8448)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2597, line: 52, size: 64, elements: !2598)
!2597 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2598 = !{!2599}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2596, file: !2597, line: 53, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2597, line: 40, size: 256, elements: !2602)
!2602 = !{!2603, !2604, !2609}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2601, file: !2597, line: 42, baseType: !198)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2601, file: !2597, line: 44, baseType: !2605, size: 192)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2597, line: 28, size: 192, elements: !2606)
!2606 = !{!2607, !2608}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2605, file: !2597, line: 29, baseType: !185, size: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2605, file: !2597, line: 31, baseType: !140, size: 64, offset: 128)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2601, file: !2597, line: 49, baseType: !140, size: 64, offset: 192)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !558, file: !52, line: 1533, baseType: !2596, size: 64, offset: 8512)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !558, file: !52, line: 1534, baseType: !328, size: 128, align: 64, offset: 8576)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !558, file: !52, line: 1535, baseType: !1828, size: 256, offset: 8704)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !558, file: !52, line: 1537, baseType: !1049, size: 192, offset: 8960)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !558, file: !52, line: 1542, baseType: !139, size: 32, offset: 9152)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !558, file: !52, line: 1545, baseType: !198, offset: 9184)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !558, file: !52, line: 1546, baseType: !185, size: 128, offset: 9216)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !558, file: !52, line: 1548, baseType: !198, offset: 9344)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !558, file: !52, line: 1549, baseType: !185, size: 128, offset: 9344)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !388, file: !52, line: 624, baseType: !692, size: 64, offset: 256)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !388, file: !52, line: 631, baseType: !287, size: 64, offset: 320)
!2621 = !DIDerivedType(tag: DW_TAG_member, scope: !388, file: !52, line: 639, baseType: !2622, size: 32, offset: 384)
!2622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !388, file: !52, line: 639, size: 32, elements: !2623)
!2623 = !{!2624, !2626}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2622, file: !52, line: 640, baseType: !2625, size: 32)
!2625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2622, file: !52, line: 641, baseType: !7, size: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !388, file: !52, line: 643, baseType: !471, size: 32, offset: 416)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !388, file: !52, line: 644, baseType: !489, size: 64, offset: 448)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !388, file: !52, line: 645, baseType: !493, size: 128, offset: 512)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !388, file: !52, line: 646, baseType: !493, size: 128, offset: 640)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !388, file: !52, line: 647, baseType: !493, size: 128, offset: 768)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !388, file: !52, line: 648, baseType: !198, offset: 896)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !388, file: !52, line: 649, baseType: !132, size: 16, offset: 896)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !388, file: !52, line: 650, baseType: !136, size: 8, offset: 912)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !388, file: !52, line: 651, baseType: !136, size: 8, offset: 920)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !388, file: !52, line: 652, baseType: !2388, size: 64, offset: 960)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !388, file: !52, line: 659, baseType: !287, size: 64, offset: 1024)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !388, file: !52, line: 660, baseType: !725, size: 256, offset: 1088)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !388, file: !52, line: 662, baseType: !287, size: 64, offset: 1344)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !388, file: !52, line: 663, baseType: !287, size: 64, offset: 1408)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !388, file: !52, line: 665, baseType: !597, size: 128, offset: 1472)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !388, file: !52, line: 666, baseType: !185, size: 128, offset: 1600)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !388, file: !52, line: 675, baseType: !185, size: 128, offset: 1728)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !388, file: !52, line: 676, baseType: !185, size: 128, offset: 1856)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !388, file: !52, line: 677, baseType: !185, size: 128, offset: 1984)
!2646 = !DIDerivedType(tag: DW_TAG_member, scope: !388, file: !52, line: 678, baseType: !2647, size: 128, offset: 2112)
!2647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !388, file: !52, line: 678, size: 128, elements: !2648)
!2648 = !{!2649, !2650}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2647, file: !52, line: 679, baseType: !593, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2647, file: !52, line: 680, baseType: !328, size: 128, align: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !388, file: !52, line: 682, baseType: !731, size: 64, offset: 2240)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !388, file: !52, line: 683, baseType: !731, size: 64, offset: 2304)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !388, file: !52, line: 684, baseType: !705, size: 32, offset: 2368)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !388, file: !52, line: 685, baseType: !705, size: 32, offset: 2400)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !388, file: !52, line: 686, baseType: !705, size: 32, offset: 2432)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !388, file: !52, line: 688, baseType: !705, size: 32, offset: 2464)
!2657 = !DIDerivedType(tag: DW_TAG_member, scope: !388, file: !52, line: 690, baseType: !2658, size: 64, offset: 2496)
!2658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !388, file: !52, line: 690, size: 64, elements: !2659)
!2659 = !{!2660, !2883}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2658, file: !52, line: 691, baseType: !2661, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2663)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !52, line: 1822, size: 2048, elements: !2664)
!2664 = !{!2665, !2666, !2670, !2675, !2679, !2680, !2681, !2685, !2698, !2699, !2707, !2711, !2712, !2716, !2717, !2721, !2726, !2727, !2731, !2735, !2843, !2847, !2848, !2852, !2853, !2857, !2861, !2866, !2870, !2874, !2878, !2882}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2663, file: !52, line: 1823, baseType: !141, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2663, file: !52, line: 1824, baseType: !2667, size: 64, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!489, !315, !489, !139}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2663, file: !52, line: 1825, baseType: !2671, size: 64, offset: 128)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!270, !315, !239, !284, !2674}
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2663, file: !52, line: 1826, baseType: !2676, size: 64, offset: 192)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!270, !315, !182, !284, !2674}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2663, file: !52, line: 1827, baseType: !802, size: 64, offset: 256)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2663, file: !52, line: 1828, baseType: !802, size: 64, offset: 320)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2663, file: !52, line: 1829, baseType: !2682, size: 64, offset: 384)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!139, !805, !448}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2663, file: !52, line: 1830, baseType: !2686, size: 64, offset: 448)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!139, !315, !2689}
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !52, line: 1776, size: 128, elements: !2691)
!2691 = !{!2692, !2697}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2690, file: !52, line: 1777, baseType: !2693, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !52, line: 1773, baseType: !2694)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!139, !2689, !182, !139, !489, !380, !7}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2690, file: !52, line: 1778, baseType: !489, size: 64, offset: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2663, file: !52, line: 1831, baseType: !2686, size: 64, offset: 512)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2663, file: !52, line: 1832, baseType: !2700, size: 64, offset: 576)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!2703, !315, !2705}
!2703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2704, line: 52, baseType: !7)
!2704 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !577, line: 27, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2663, file: !52, line: 1833, baseType: !2708, size: 64, offset: 640)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!140, !315, !7, !287}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2663, file: !52, line: 1834, baseType: !2708, size: 64, offset: 704)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2663, file: !52, line: 1835, baseType: !2713, size: 64, offset: 768)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!139, !315, !937}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2663, file: !52, line: 1836, baseType: !287, size: 64, offset: 832)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2663, file: !52, line: 1837, baseType: !2718, size: 64, offset: 896)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!139, !387, !315}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2663, file: !52, line: 1838, baseType: !2722, size: 64, offset: 960)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!139, !315, !2725}
!2725 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !52, line: 1007, baseType: !133)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2663, file: !52, line: 1839, baseType: !2718, size: 64, offset: 1024)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2663, file: !52, line: 1840, baseType: !2728, size: 64, offset: 1088)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!139, !315, !489, !489, !139}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2663, file: !52, line: 1841, baseType: !2732, size: 64, offset: 1152)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!139, !139, !315, !139}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2663, file: !52, line: 1842, baseType: !2736, size: 64, offset: 1216)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!139, !315, !139, !2739}
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !52, line: 1062, size: 1664, elements: !2741)
!2741 = !{!2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2773, !2774, !2775, !2788, !2819}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2740, file: !52, line: 1063, baseType: !2739, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2740, file: !52, line: 1064, baseType: !185, size: 128, offset: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2740, file: !52, line: 1065, baseType: !597, size: 128, offset: 192)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2740, file: !52, line: 1066, baseType: !185, size: 128, offset: 320)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2740, file: !52, line: 1069, baseType: !185, size: 128, offset: 448)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2740, file: !52, line: 1072, baseType: !2725, size: 64, offset: 576)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2740, file: !52, line: 1073, baseType: !7, size: 32, offset: 640)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2740, file: !52, line: 1074, baseType: !138, size: 8, offset: 672)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2740, file: !52, line: 1075, baseType: !7, size: 32, offset: 704)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2740, file: !52, line: 1076, baseType: !139, size: 32, offset: 736)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2740, file: !52, line: 1077, baseType: !1355, size: 128, offset: 768)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2740, file: !52, line: 1078, baseType: !315, size: 64, offset: 896)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2740, file: !52, line: 1079, baseType: !489, size: 64, offset: 960)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2740, file: !52, line: 1080, baseType: !489, size: 64, offset: 1024)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2740, file: !52, line: 1082, baseType: !2757, size: 64, offset: 1088)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !52, line: 1314, size: 320, elements: !2759)
!2759 = !{!2760, !2768, !2769, !2770, !2771, !2772}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2758, file: !52, line: 1315, baseType: !2761)
!2761 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2762, line: 20, baseType: !2763)
!2762 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2762, line: 11, elements: !2764)
!2764 = !{!2765}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2763, file: !2762, line: 12, baseType: !2766)
!2766 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !210, line: 33, baseType: !2767)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 31, elements: !212)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2758, file: !52, line: 1316, baseType: !139, size: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2758, file: !52, line: 1317, baseType: !139, size: 32, offset: 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2758, file: !52, line: 1318, baseType: !2757, size: 64, offset: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2758, file: !52, line: 1319, baseType: !315, size: 64, offset: 128)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2758, file: !52, line: 1320, baseType: !328, size: 128, align: 64, offset: 192)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2740, file: !52, line: 1084, baseType: !287, size: 64, offset: 1152)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2740, file: !52, line: 1085, baseType: !287, size: 64, offset: 1216)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2740, file: !52, line: 1087, baseType: !2776, size: 64, offset: 1280)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2778)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !52, line: 1011, size: 128, elements: !2779)
!2779 = !{!2780, !2784}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2778, file: !52, line: 1012, baseType: !2781, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{null, !2739, !2739}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2778, file: !52, line: 1013, baseType: !2785, size: 64, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{null, !2739}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2740, file: !52, line: 1088, baseType: !2789, size: 64, offset: 1344)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2791)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !52, line: 1016, size: 512, elements: !2792)
!2792 = !{!2793, !2797, !2801, !2802, !2806, !2810, !2814, !2818}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2791, file: !52, line: 1017, baseType: !2794, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!2725, !2725}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2791, file: !52, line: 1018, baseType: !2798, size: 64, offset: 64)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{null, !2725}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2791, file: !52, line: 1019, baseType: !2785, size: 64, offset: 128)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2791, file: !52, line: 1020, baseType: !2803, size: 64, offset: 192)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!139, !2739, !139}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2791, file: !52, line: 1021, baseType: !2807, size: 64, offset: 256)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!448, !2739}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2791, file: !52, line: 1022, baseType: !2811, size: 64, offset: 320)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!139, !2739, !139, !188}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2791, file: !52, line: 1023, baseType: !2815, size: 64, offset: 384)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{null, !2739, !779}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2791, file: !52, line: 1024, baseType: !2807, size: 64, offset: 448)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2740, file: !52, line: 1097, baseType: !2820, size: 256, offset: 1408)
!2820 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2740, file: !52, line: 1089, size: 256, elements: !2821)
!2821 = !{!2822, !2831, !2837}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2820, file: !52, line: 1090, baseType: !2823, size: 256)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2824, line: 10, size: 256, elements: !2825)
!2824 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2825 = !{!2826, !2827, !2830}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2823, file: !2824, line: 11, baseType: !154, size: 32)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2823, file: !2824, line: 12, baseType: !2828, size: 64, offset: 64)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2824, line: 5, flags: DIFlagFwdDecl)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2823, file: !2824, line: 13, baseType: !185, size: 128, offset: 128)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2820, file: !52, line: 1091, baseType: !2832, size: 64)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2824, line: 17, size: 64, elements: !2833)
!2833 = !{!2834}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2832, file: !2824, line: 18, baseType: !2835, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2824, line: 16, flags: DIFlagFwdDecl)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2820, file: !52, line: 1096, baseType: !2838, size: 192)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2820, file: !52, line: 1092, size: 192, elements: !2839)
!2839 = !{!2840, !2841, !2842}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2838, file: !52, line: 1093, baseType: !185, size: 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2838, file: !52, line: 1094, baseType: !139, size: 32, offset: 128)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2838, file: !52, line: 1095, baseType: !7, size: 32, offset: 160)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2663, file: !52, line: 1843, baseType: !2844, size: 64, offset: 1280)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!270, !315, !679, !139, !284, !2674, !139}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2663, file: !52, line: 1844, baseType: !977, size: 64, offset: 1344)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2663, file: !52, line: 1845, baseType: !2849, size: 64, offset: 1408)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!139, !139}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2663, file: !52, line: 1846, baseType: !2736, size: 64, offset: 1472)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2663, file: !52, line: 1847, baseType: !2854, size: 64, offset: 1536)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!270, !1969, !315, !2674, !284, !7}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2663, file: !52, line: 1848, baseType: !2858, size: 64, offset: 1600)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!270, !315, !2674, !1969, !284, !7}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2663, file: !52, line: 1849, baseType: !2862, size: 64, offset: 1664)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!139, !315, !140, !2865, !779}
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2663, file: !52, line: 1850, baseType: !2867, size: 64, offset: 1728)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!140, !315, !139, !489, !489}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2663, file: !52, line: 1852, baseType: !2871, size: 64, offset: 1792)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{null, !669, !315}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2663, file: !52, line: 1856, baseType: !2875, size: 64, offset: 1856)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!270, !315, !489, !315, !489, !284, !7}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2663, file: !52, line: 1858, baseType: !2879, size: 64, offset: 1920)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!489, !315, !489, !315, !489, !489, !7}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2663, file: !52, line: 1861, baseType: !2728, size: 64, offset: 1984)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2658, file: !52, line: 692, baseType: !622, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !388, file: !52, line: 694, baseType: !2885, size: 64, offset: 2560)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !52, line: 1100, size: 384, elements: !2887)
!2887 = !{!2888, !2889, !2890, !2891}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2886, file: !52, line: 1101, baseType: !198)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2886, file: !52, line: 1102, baseType: !185, size: 128)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2886, file: !52, line: 1103, baseType: !185, size: 128, offset: 128)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2886, file: !52, line: 1104, baseType: !185, size: 128, offset: 256)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !388, file: !52, line: 695, baseType: !693, size: 1216, align: 64, offset: 2624)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !388, file: !52, line: 696, baseType: !185, size: 128, offset: 3840)
!2894 = !DIDerivedType(tag: DW_TAG_member, scope: !388, file: !52, line: 697, baseType: !2895, size: 64, offset: 3968)
!2895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !388, file: !52, line: 697, size: 64, elements: !2896)
!2896 = !{!2897, !2898, !2899, !2902, !2903}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2895, file: !52, line: 698, baseType: !1969, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2895, file: !52, line: 699, baseType: !2413, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2895, file: !52, line: 700, baseType: !2900, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !52, line: 700, flags: DIFlagFwdDecl)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2895, file: !52, line: 701, baseType: !239, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2895, file: !52, line: 702, baseType: !7, size: 32)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !388, file: !52, line: 705, baseType: !155, size: 32, offset: 4032)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !388, file: !52, line: 708, baseType: !155, size: 32, offset: 4064)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !388, file: !52, line: 709, baseType: !2495, size: 64, offset: 4096)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !388, file: !52, line: 720, baseType: !133, size: 64, offset: 4160)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !346, file: !343, line: 98, baseType: !2909, size: 256, offset: 448)
!2909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 256, elements: !2089)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !346, file: !343, line: 101, baseType: !2911, size: 32, offset: 704)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2912, line: 25, size: 32, elements: !2913)
!2912 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2913 = !{!2914}
!2914 = !DIDerivedType(tag: DW_TAG_member, scope: !2911, file: !2912, line: 26, baseType: !2915, size: 32)
!2915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2911, file: !2912, line: 26, size: 32, elements: !2916)
!2916 = !{!2917}
!2917 = !DIDerivedType(tag: DW_TAG_member, scope: !2915, file: !2912, line: 30, baseType: !2918, size: 32)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2915, file: !2912, line: 30, size: 32, elements: !2919)
!2919 = !{!2920, !2921}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2918, file: !2912, line: 31, baseType: !198)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2918, file: !2912, line: 32, baseType: !139, size: 32)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !346, file: !343, line: 102, baseType: !2512, size: 64, offset: 768)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !346, file: !343, line: 103, baseType: !557, size: 64, offset: 832)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !346, file: !343, line: 104, baseType: !287, size: 64, offset: 896)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !346, file: !343, line: 105, baseType: !133, size: 64, offset: 960)
!2926 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !343, line: 107, baseType: !2927, size: 128, offset: 1024)
!2927 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !343, line: 107, size: 128, elements: !2928)
!2928 = !{!2929, !2930}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2927, file: !343, line: 108, baseType: !185, size: 128)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2927, file: !343, line: 109, baseType: !2931, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !346, file: !343, line: 111, baseType: !185, size: 128, offset: 1152)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !346, file: !343, line: 112, baseType: !185, size: 128, offset: 1280)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !346, file: !343, line: 120, baseType: !2935, size: 128, offset: 1408)
!2935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !343, line: 116, size: 128, elements: !2936)
!2936 = !{!2937, !2938, !2939}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2935, file: !343, line: 117, baseType: !597, size: 128)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2935, file: !343, line: 118, baseType: !360, size: 128)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2935, file: !343, line: 119, baseType: !328, size: 128, align: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !316, file: !52, line: 922, baseType: !387, size: 64, offset: 256)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !316, file: !52, line: 923, baseType: !2661, size: 64, offset: 320)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !316, file: !52, line: 929, baseType: !198, offset: 384)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !316, file: !52, line: 930, baseType: !51, size: 32, offset: 384)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !316, file: !52, line: 931, baseType: !729, size: 64, offset: 448)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !316, file: !52, line: 932, baseType: !7, size: 32, offset: 512)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !316, file: !52, line: 933, baseType: !2508, size: 32, offset: 544)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !316, file: !52, line: 934, baseType: !1049, size: 192, offset: 576)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !316, file: !52, line: 935, baseType: !489, size: 64, offset: 768)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !316, file: !52, line: 936, baseType: !2950, size: 192, offset: 832)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !52, line: 885, size: 192, elements: !2951)
!2951 = !{!2952, !2953, !2954, !2955, !2956, !2957}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2950, file: !52, line: 886, baseType: !2761)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2950, file: !52, line: 887, baseType: !1345, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2950, file: !52, line: 888, baseType: !60, size: 32, offset: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2950, file: !52, line: 889, baseType: !393, size: 32, offset: 96)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2950, file: !52, line: 889, baseType: !393, size: 32, offset: 128)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2950, file: !52, line: 890, baseType: !139, size: 32, offset: 160)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !316, file: !52, line: 937, baseType: !1421, size: 64, offset: 1024)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !316, file: !52, line: 938, baseType: !2960, size: 256, offset: 1088)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !52, line: 896, size: 256, elements: !2961)
!2961 = !{!2962, !2963, !2964, !2965, !2966, !2967}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2960, file: !52, line: 897, baseType: !287, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2960, file: !52, line: 898, baseType: !7, size: 32, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2960, file: !52, line: 899, baseType: !7, size: 32, offset: 96)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2960, file: !52, line: 902, baseType: !7, size: 32, offset: 128)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2960, file: !52, line: 903, baseType: !7, size: 32, offset: 160)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2960, file: !52, line: 904, baseType: !489, size: 64, offset: 192)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !316, file: !52, line: 940, baseType: !380, size: 64, offset: 1344)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !316, file: !52, line: 945, baseType: !133, size: 64, offset: 1408)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !316, file: !52, line: 949, baseType: !185, size: 128, offset: 1472)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !316, file: !52, line: 950, baseType: !185, size: 128, offset: 1600)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !316, file: !52, line: 952, baseType: !692, size: 64, offset: 1728)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !316, file: !52, line: 953, baseType: !865, size: 32, offset: 1792)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !316, file: !52, line: 954, baseType: !865, size: 32, offset: 1824)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !306, file: !264, line: 174, baseType: !312, size: 64, offset: 320)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !306, file: !264, line: 176, baseType: !2977, size: 64, offset: 384)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!139, !315, !191, !305, !937}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !294, file: !264, line: 90, baseType: !289, size: 64, offset: 192)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !294, file: !264, line: 91, baseType: !2982, size: 64, offset: 256)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !254, file: !179, line: 143, baseType: !2984, size: 64, offset: 256)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!2987, !191}
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2989)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !69, line: 39, size: 384, elements: !2990)
!2990 = !{!2991, !2992, !2996, !3000, !3008, !3012}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2989, file: !69, line: 40, baseType: !68, size: 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2989, file: !69, line: 41, baseType: !2993, size: 64, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!448}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2989, file: !69, line: 42, baseType: !2997, size: 64, offset: 128)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!133}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2989, file: !69, line: 43, baseType: !3001, size: 64, offset: 192)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!3004, !3006}
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !69, line: 19, flags: DIFlagFwdDecl)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2989, file: !69, line: 44, baseType: !3009, size: 64, offset: 256)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!3004}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2989, file: !69, line: 45, baseType: !426, size: 64, offset: 320)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !254, file: !179, line: 144, baseType: !3014, size: 64, offset: 320)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!3004, !191}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !254, file: !179, line: 145, baseType: !3018, size: 64, offset: 384)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{null, !191, !3021, !3022}
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !178, file: !179, line: 70, baseType: !3024, size: 64, offset: 384)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !577, line: 123, size: 1024, elements: !3026)
!3026 = !{!3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3155, !3156, !3157, !3158, !3159}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3025, file: !577, line: 124, baseType: !705, size: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3025, file: !577, line: 125, baseType: !705, size: 32, offset: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3025, file: !577, line: 135, baseType: !3024, size: 64, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3025, file: !577, line: 136, baseType: !182, size: 64, offset: 128)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3025, file: !577, line: 138, baseType: !718, size: 192, align: 64, offset: 192)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3025, file: !577, line: 140, baseType: !3004, size: 64, offset: 384)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3025, file: !577, line: 141, baseType: !7, size: 32, offset: 448)
!3034 = !DIDerivedType(tag: DW_TAG_member, scope: !3025, file: !577, line: 142, baseType: !3035, size: 256, offset: 512)
!3035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3025, file: !577, line: 142, size: 256, elements: !3036)
!3036 = !{!3037, !3083, !3087}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3035, file: !577, line: 143, baseType: !3038, size: 192)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !577, line: 91, size: 192, elements: !3039)
!3039 = !{!3040, !3041, !3042}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3038, file: !577, line: 92, baseType: !287, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3038, file: !577, line: 94, baseType: !714, size: 64, offset: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3038, file: !577, line: 100, baseType: !3043, size: 64, offset: 128)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !577, line: 180, size: 704, elements: !3045)
!3045 = !{!3046, !3047, !3048, !3055, !3056, !3057, !3081, !3082}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3044, file: !577, line: 182, baseType: !3024, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3044, file: !577, line: 183, baseType: !7, size: 32, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3044, file: !577, line: 186, baseType: !3049, size: 192, offset: 128)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3050, line: 19, size: 192, elements: !3051)
!3050 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3051 = !{!3052, !3053, !3054}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3049, file: !3050, line: 20, baseType: !697, size: 128)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3049, file: !3050, line: 21, baseType: !7, size: 32, offset: 128)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3049, file: !3050, line: 22, baseType: !7, size: 32, offset: 160)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3044, file: !577, line: 187, baseType: !154, size: 32, offset: 320)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3044, file: !577, line: 188, baseType: !154, size: 32, offset: 352)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3044, file: !577, line: 189, baseType: !3058, size: 64, offset: 384)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !577, line: 168, size: 320, elements: !3060)
!3060 = !{!3061, !3065, !3069, !3073, !3077}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3059, file: !577, line: 169, baseType: !3062, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!139, !669, !3043}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3059, file: !577, line: 171, baseType: !3066, size: 64, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!139, !3024, !182, !279}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3059, file: !577, line: 173, baseType: !3070, size: 64, offset: 128)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!139, !3024}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3059, file: !577, line: 174, baseType: !3074, size: 64, offset: 192)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!139, !3024, !3024, !182}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3059, file: !577, line: 176, baseType: !3078, size: 64, offset: 256)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!139, !669, !3024, !3043}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3044, file: !577, line: 192, baseType: !185, size: 128, offset: 448)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3044, file: !577, line: 194, baseType: !1355, size: 128, offset: 576)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3035, file: !577, line: 144, baseType: !3084, size: 64)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !577, line: 103, size: 64, elements: !3085)
!3085 = !{!3086}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3084, file: !577, line: 104, baseType: !3024, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3035, file: !577, line: 145, baseType: !3088, size: 256)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !577, line: 107, size: 256, elements: !3089)
!3089 = !{!3090, !3150, !3153, !3154}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3088, file: !577, line: 108, baseType: !3091, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3093)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !577, line: 217, size: 768, elements: !3094)
!3094 = !{!3095, !3115, !3119, !3123, !3127, !3131, !3135, !3139, !3140, !3141, !3142, !3146}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3093, file: !577, line: 222, baseType: !3096, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!139, !3099}
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !577, line: 197, size: 1088, elements: !3101)
!3101 = !{!3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3100, file: !577, line: 199, baseType: !3024, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3100, file: !577, line: 200, baseType: !315, size: 64, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3100, file: !577, line: 201, baseType: !669, size: 64, offset: 128)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3100, file: !577, line: 202, baseType: !133, size: 64, offset: 192)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3100, file: !577, line: 205, baseType: !1049, size: 192, offset: 256)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3100, file: !577, line: 206, baseType: !1049, size: 192, offset: 448)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3100, file: !577, line: 207, baseType: !139, size: 32, offset: 640)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3100, file: !577, line: 208, baseType: !185, size: 128, offset: 704)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3100, file: !577, line: 209, baseType: !239, size: 64, offset: 832)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3100, file: !577, line: 211, baseType: !284, size: 64, offset: 896)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3100, file: !577, line: 212, baseType: !448, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3100, file: !577, line: 213, baseType: !448, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3100, file: !577, line: 214, baseType: !965, size: 64, offset: 1024)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3093, file: !577, line: 223, baseType: !3116, size: 64, offset: 64)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{null, !3099}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3093, file: !577, line: 236, baseType: !3120, size: 64, offset: 128)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!139, !669, !133}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3093, file: !577, line: 238, baseType: !3124, size: 64, offset: 192)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!133, !669, !2674}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3093, file: !577, line: 239, baseType: !3128, size: 64, offset: 256)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!133, !669, !133, !2674}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3093, file: !577, line: 240, baseType: !3132, size: 64, offset: 320)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{null, !669, !133}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3093, file: !577, line: 242, baseType: !3136, size: 64, offset: 384)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!270, !3099, !239, !284, !489}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3093, file: !577, line: 252, baseType: !284, size: 64, offset: 448)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3093, file: !577, line: 259, baseType: !448, size: 8, offset: 512)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3093, file: !577, line: 260, baseType: !3136, size: 64, offset: 576)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3093, file: !577, line: 263, baseType: !3143, size: 64, offset: 640)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!2703, !3099, !2705}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3093, file: !577, line: 266, baseType: !3147, size: 64, offset: 704)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!139, !3099, !937}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3088, file: !577, line: 109, baseType: !3151, size: 64, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !577, line: 31, flags: DIFlagFwdDecl)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3088, file: !577, line: 110, baseType: !489, size: 64, offset: 128)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3088, file: !577, line: 111, baseType: !3024, size: 64, offset: 192)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3025, file: !577, line: 148, baseType: !133, size: 64, offset: 768)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3025, file: !577, line: 154, baseType: !380, size: 64, offset: 832)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3025, file: !577, line: 156, baseType: !132, size: 16, offset: 896)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3025, file: !577, line: 157, baseType: !279, size: 16, offset: 912)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3025, file: !577, line: 158, baseType: !3160, size: 64, offset: 960)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !577, line: 32, flags: DIFlagFwdDecl)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !178, file: !179, line: 71, baseType: !3163, size: 32, offset: 448)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3164, line: 19, size: 32, elements: !3165)
!3164 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3165 = !{!3166}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3163, file: !3164, line: 20, baseType: !1106, size: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !178, file: !179, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !178, file: !179, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !178, file: !179, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !178, file: !179, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !178, file: !179, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !175, file: !81, line: 463, baseType: !174, size: 64, offset: 512)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !175, file: !81, line: 465, baseType: !3174, size: 64, offset: 576)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !81, line: 36, flags: DIFlagFwdDecl)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !175, file: !81, line: 467, baseType: !182, size: 64, offset: 640)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !175, file: !81, line: 468, baseType: !3178, size: 64, offset: 704)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3180)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !81, line: 87, size: 384, elements: !3181)
!3181 = !{!3182, !3183, !3184, !3188, !3193, !3197}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3180, file: !81, line: 88, baseType: !182, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3180, file: !81, line: 89, baseType: !291, size: 64, offset: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3180, file: !81, line: 90, baseType: !3185, size: 64, offset: 128)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!139, !174, !234}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3180, file: !81, line: 91, baseType: !3189, size: 64, offset: 192)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!239, !174, !3192, !3021, !3022}
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3180, file: !81, line: 93, baseType: !3194, size: 64, offset: 256)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{null, !174}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3180, file: !81, line: 95, baseType: !3198, size: 64, offset: 320)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3200)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !88, line: 278, size: 1472, elements: !3201)
!3201 = !{!3202, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3200, file: !88, line: 279, baseType: !3203, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!139, !174}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3200, file: !88, line: 280, baseType: !3194, size: 64, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3200, file: !88, line: 281, baseType: !3203, size: 64, offset: 128)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3200, file: !88, line: 282, baseType: !3203, size: 64, offset: 192)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3200, file: !88, line: 283, baseType: !3203, size: 64, offset: 256)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3200, file: !88, line: 284, baseType: !3203, size: 64, offset: 320)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3200, file: !88, line: 285, baseType: !3203, size: 64, offset: 384)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3200, file: !88, line: 286, baseType: !3203, size: 64, offset: 448)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3200, file: !88, line: 287, baseType: !3203, size: 64, offset: 512)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3200, file: !88, line: 288, baseType: !3203, size: 64, offset: 576)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3200, file: !88, line: 289, baseType: !3203, size: 64, offset: 640)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3200, file: !88, line: 290, baseType: !3203, size: 64, offset: 704)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3200, file: !88, line: 291, baseType: !3203, size: 64, offset: 768)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3200, file: !88, line: 292, baseType: !3203, size: 64, offset: 832)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3200, file: !88, line: 293, baseType: !3203, size: 64, offset: 896)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3200, file: !88, line: 294, baseType: !3203, size: 64, offset: 960)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3200, file: !88, line: 295, baseType: !3203, size: 64, offset: 1024)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3200, file: !88, line: 296, baseType: !3203, size: 64, offset: 1088)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3200, file: !88, line: 297, baseType: !3203, size: 64, offset: 1152)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3200, file: !88, line: 298, baseType: !3203, size: 64, offset: 1216)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3200, file: !88, line: 299, baseType: !3203, size: 64, offset: 1280)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3200, file: !88, line: 300, baseType: !3203, size: 64, offset: 1344)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3200, file: !88, line: 301, baseType: !3203, size: 64, offset: 1408)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !175, file: !81, line: 470, baseType: !3229, size: 64, offset: 768)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3231, line: 82, size: 1408, elements: !3232)
!3231 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3232 = !{!3233, !3234, !3235, !3236, !3237, !3238, !3239, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3314, !3317, !3318}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3230, file: !3231, line: 83, baseType: !182, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3230, file: !3231, line: 84, baseType: !182, size: 64, offset: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3230, file: !3231, line: 85, baseType: !174, size: 64, offset: 128)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3230, file: !3231, line: 86, baseType: !291, size: 64, offset: 192)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3230, file: !3231, line: 87, baseType: !291, size: 64, offset: 256)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3230, file: !3231, line: 88, baseType: !291, size: 64, offset: 320)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3230, file: !3231, line: 90, baseType: !3240, size: 64, offset: 384)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!139, !174, !3243}
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !75, line: 95, size: 1152, elements: !3245)
!3245 = !{!3246, !3247, !3248, !3249, !3250, !3251, !3252, !3265, !3278, !3279, !3280, !3281, !3282, !3290, !3291, !3292, !3293, !3294, !3295}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3244, file: !75, line: 96, baseType: !182, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3244, file: !75, line: 97, baseType: !3229, size: 64, offset: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3244, file: !75, line: 99, baseType: !141, size: 64, offset: 128)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3244, file: !75, line: 100, baseType: !182, size: 64, offset: 192)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3244, file: !75, line: 102, baseType: !448, size: 8, offset: 256)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3244, file: !75, line: 103, baseType: !74, size: 32, offset: 288)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3244, file: !75, line: 105, baseType: !3253, size: 64, offset: 320)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3255)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3256, line: 262, size: 1600, elements: !3257)
!3256 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3257 = !{!3258, !3259, !3260, !3264}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3255, file: !3256, line: 263, baseType: !2498, size: 256)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3255, file: !3256, line: 264, baseType: !2498, size: 256, offset: 256)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3255, file: !3256, line: 265, baseType: !3261, size: 1024, offset: 512)
!3261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 1024, elements: !3262)
!3262 = !{!3263}
!3263 = !DISubrange(count: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3255, file: !3256, line: 266, baseType: !3004, size: 64, offset: 1536)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3244, file: !75, line: 106, baseType: !3266, size: 64, offset: 384)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3268)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3256, line: 210, size: 256, elements: !3269)
!3269 = !{!3270, !3274, !3276, !3277}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3268, file: !3256, line: 211, baseType: !3271, size: 72)
!3271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 72, elements: !3272)
!3272 = !{!3273}
!3273 = !DISubrange(count: 9)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3268, file: !3256, line: 212, baseType: !3275, size: 64, offset: 128)
!3275 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3256, line: 14, baseType: !287)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3268, file: !3256, line: 213, baseType: !155, size: 32, offset: 192)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3268, file: !3256, line: 214, baseType: !155, size: 32, offset: 224)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3244, file: !75, line: 108, baseType: !3203, size: 64, offset: 448)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3244, file: !75, line: 109, baseType: !3194, size: 64, offset: 512)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3244, file: !75, line: 110, baseType: !3203, size: 64, offset: 576)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3244, file: !75, line: 111, baseType: !3194, size: 64, offset: 640)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3244, file: !75, line: 112, baseType: !3283, size: 64, offset: 704)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!139, !174, !3286}
!3286 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !88, line: 52, baseType: !3287)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !88, line: 50, size: 32, elements: !3288)
!3288 = !{!3289}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3287, file: !88, line: 51, baseType: !139, size: 32)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3244, file: !75, line: 113, baseType: !3203, size: 64, offset: 768)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3244, file: !75, line: 114, baseType: !291, size: 64, offset: 832)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3244, file: !75, line: 115, baseType: !291, size: 64, offset: 896)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3244, file: !75, line: 117, baseType: !3198, size: 64, offset: 960)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3244, file: !75, line: 118, baseType: !3194, size: 64, offset: 1024)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3244, file: !75, line: 120, baseType: !3296, size: 64, offset: 1088)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !75, line: 120, flags: DIFlagFwdDecl)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3230, file: !3231, line: 91, baseType: !3185, size: 64, offset: 448)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3230, file: !3231, line: 92, baseType: !3203, size: 64, offset: 512)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3230, file: !3231, line: 93, baseType: !3194, size: 64, offset: 576)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3230, file: !3231, line: 94, baseType: !3203, size: 64, offset: 640)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3230, file: !3231, line: 95, baseType: !3194, size: 64, offset: 704)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3230, file: !3231, line: 97, baseType: !3203, size: 64, offset: 768)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3230, file: !3231, line: 98, baseType: !3203, size: 64, offset: 832)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3230, file: !3231, line: 100, baseType: !3283, size: 64, offset: 896)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3230, file: !3231, line: 101, baseType: !3203, size: 64, offset: 960)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3230, file: !3231, line: 103, baseType: !3203, size: 64, offset: 1024)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3230, file: !3231, line: 105, baseType: !3203, size: 64, offset: 1088)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3230, file: !3231, line: 107, baseType: !3198, size: 64, offset: 1152)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3230, file: !3231, line: 109, baseType: !3311, size: 64, offset: 1216)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3313)
!3313 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3231, line: 109, flags: DIFlagFwdDecl)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3230, file: !3231, line: 111, baseType: !3315, size: 64, offset: 1280)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3231, line: 111, flags: DIFlagFwdDecl)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3230, file: !3231, line: 112, baseType: !603, offset: 1344)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3230, file: !3231, line: 114, baseType: !448, size: 8, offset: 1344)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !175, file: !81, line: 471, baseType: !3243, size: 64, offset: 832)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !175, file: !81, line: 473, baseType: !133, size: 64, offset: 896)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !175, file: !81, line: 475, baseType: !133, size: 64, offset: 960)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !175, file: !81, line: 480, baseType: !1049, size: 192, offset: 1024)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !175, file: !81, line: 484, baseType: !3324, size: 576, offset: 1216)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !81, line: 361, size: 576, elements: !3325)
!3325 = !{!3326, !3327, !3328, !3329, !3330, !3331}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3324, file: !81, line: 362, baseType: !185, size: 128)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3324, file: !81, line: 363, baseType: !185, size: 128, offset: 128)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3324, file: !81, line: 364, baseType: !185, size: 128, offset: 256)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3324, file: !81, line: 365, baseType: !185, size: 128, offset: 384)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3324, file: !81, line: 366, baseType: !448, size: 8, offset: 512)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3324, file: !81, line: 367, baseType: !80, size: 32, offset: 544)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !175, file: !81, line: 485, baseType: !3333, size: 2304, offset: 1792)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !88, line: 565, size: 2304, elements: !3334)
!3334 = !{!3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3430, !3434}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3333, file: !88, line: 566, baseType: !3286, size: 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3333, file: !88, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3333, file: !88, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3333, file: !88, line: 569, baseType: !448, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3333, file: !88, line: 570, baseType: !448, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3333, file: !88, line: 571, baseType: !448, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3333, file: !88, line: 572, baseType: !448, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3333, file: !88, line: 573, baseType: !448, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3333, file: !88, line: 574, baseType: !448, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3333, file: !88, line: 575, baseType: !448, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3333, file: !88, line: 576, baseType: !448, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3333, file: !88, line: 577, baseType: !154, size: 32, offset: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3333, file: !88, line: 578, baseType: !198, offset: 96)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3333, file: !88, line: 580, baseType: !185, size: 128, offset: 128)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3333, file: !88, line: 581, baseType: !1376, size: 192, offset: 256)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3333, file: !88, line: 582, baseType: !3351, size: 64, offset: 448)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3353, line: 43, size: 1472, elements: !3354)
!3353 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3354 = !{!3355, !3356, !3357, !3358, !3359, !3362, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3352, file: !3353, line: 44, baseType: !182, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3352, file: !3353, line: 45, baseType: !139, size: 32, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3352, file: !3353, line: 46, baseType: !185, size: 128, offset: 128)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3352, file: !3353, line: 47, baseType: !198, offset: 256)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3352, file: !3353, line: 48, baseType: !3360, size: 64, offset: 256)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !88, line: 533, flags: DIFlagFwdDecl)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3352, file: !3353, line: 49, baseType: !3363, size: 320, offset: 320)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3364, line: 11, size: 320, elements: !3365)
!3364 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3365 = !{!3366, !3367, !3368, !3373}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3363, file: !3364, line: 16, baseType: !597, size: 128)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3363, file: !3364, line: 17, baseType: !287, size: 64, offset: 128)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3363, file: !3364, line: 18, baseType: !3369, size: 64, offset: 192)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{null, !3372}
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3363, file: !3364, line: 19, baseType: !154, size: 32, offset: 256)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3352, file: !3353, line: 50, baseType: !287, size: 64, offset: 640)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3352, file: !3353, line: 51, baseType: !1176, size: 64, offset: 704)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3352, file: !3353, line: 52, baseType: !1176, size: 64, offset: 768)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3352, file: !3353, line: 53, baseType: !1176, size: 64, offset: 832)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3352, file: !3353, line: 54, baseType: !1176, size: 64, offset: 896)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3352, file: !3353, line: 55, baseType: !1176, size: 64, offset: 960)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3352, file: !3353, line: 56, baseType: !287, size: 64, offset: 1024)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3352, file: !3353, line: 57, baseType: !287, size: 64, offset: 1088)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3352, file: !3353, line: 58, baseType: !287, size: 64, offset: 1152)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3352, file: !3353, line: 59, baseType: !287, size: 64, offset: 1216)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3352, file: !3353, line: 60, baseType: !287, size: 64, offset: 1280)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3352, file: !3353, line: 61, baseType: !174, size: 64, offset: 1344)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3352, file: !3353, line: 62, baseType: !448, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3352, file: !3353, line: 63, baseType: !448, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3333, file: !88, line: 583, baseType: !448, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3333, file: !88, line: 584, baseType: !448, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3333, file: !88, line: 585, baseType: !448, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3333, file: !88, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3333, file: !88, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3333, file: !88, line: 592, baseType: !1168, size: 512, offset: 576)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3333, file: !88, line: 593, baseType: !380, size: 64, offset: 1088)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3333, file: !88, line: 594, baseType: !1828, size: 256, offset: 1152)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3333, file: !88, line: 595, baseType: !1355, size: 128, offset: 1408)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3333, file: !88, line: 596, baseType: !3360, size: 64, offset: 1536)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3333, file: !88, line: 597, baseType: !705, size: 32, offset: 1600)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3333, file: !88, line: 598, baseType: !705, size: 32, offset: 1632)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3333, file: !88, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3333, file: !88, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3333, file: !88, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3333, file: !88, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3333, file: !88, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3333, file: !88, line: 604, baseType: !448, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3333, file: !88, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3333, file: !88, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3333, file: !88, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3333, file: !88, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3333, file: !88, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3333, file: !88, line: 610, baseType: !7, size: 32, offset: 1696)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3333, file: !88, line: 611, baseType: !87, size: 32, offset: 1728)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3333, file: !88, line: 612, baseType: !95, size: 32, offset: 1760)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3333, file: !88, line: 613, baseType: !139, size: 32, offset: 1792)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3333, file: !88, line: 614, baseType: !139, size: 32, offset: 1824)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3333, file: !88, line: 615, baseType: !380, size: 64, offset: 1856)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3333, file: !88, line: 616, baseType: !380, size: 64, offset: 1920)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3333, file: !88, line: 617, baseType: !380, size: 64, offset: 1984)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3333, file: !88, line: 618, baseType: !380, size: 64, offset: 2048)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3333, file: !88, line: 620, baseType: !3421, size: 64, offset: 2112)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !88, line: 536, size: 256, elements: !3423)
!3423 = !{!3424, !3425, !3426, !3427}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3422, file: !88, line: 537, baseType: !198)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3422, file: !88, line: 538, baseType: !7, size: 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3422, file: !88, line: 540, baseType: !185, size: 128, offset: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3422, file: !88, line: 543, baseType: !3428, size: 64, offset: 192)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !88, line: 534, flags: DIFlagFwdDecl)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3333, file: !88, line: 621, baseType: !3431, size: 64, offset: 2176)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{null, !174, !1318}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3333, file: !88, line: 622, baseType: !3435, size: 64, offset: 2240)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !88, line: 622, flags: DIFlagFwdDecl)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !175, file: !81, line: 486, baseType: !3438, size: 64, offset: 4096)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !88, line: 642, size: 1792, elements: !3440)
!3440 = !{!3441, !3442, !3443, !3447, !3448, !3449}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3439, file: !88, line: 643, baseType: !3200, size: 1472)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3439, file: !88, line: 644, baseType: !3203, size: 64, offset: 1472)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3439, file: !88, line: 645, baseType: !3444, size: 64, offset: 1536)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{null, !174, !448}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3439, file: !88, line: 646, baseType: !3203, size: 64, offset: 1600)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3439, file: !88, line: 647, baseType: !3194, size: 64, offset: 1664)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3439, file: !88, line: 648, baseType: !3194, size: 64, offset: 1728)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !175, file: !81, line: 493, baseType: !3451, size: 64, offset: 4160)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !81, line: 493, flags: DIFlagFwdDecl)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !175, file: !81, line: 499, baseType: !185, size: 128, offset: 4224)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !175, file: !81, line: 502, baseType: !3455, size: 64, offset: 4352)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3457)
!3457 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !81, line: 502, flags: DIFlagFwdDecl)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !175, file: !81, line: 504, baseType: !3459, size: 64, offset: 4416)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !175, file: !81, line: 505, baseType: !380, size: 64, offset: 4480)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !175, file: !81, line: 510, baseType: !380, size: 64, offset: 4544)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !175, file: !81, line: 511, baseType: !3463, size: 64, offset: 4608)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3465)
!3465 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !81, line: 511, flags: DIFlagFwdDecl)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !175, file: !81, line: 513, baseType: !3467, size: 64, offset: 4672)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !81, line: 288, size: 128, elements: !3469)
!3469 = !{!3470, !3471}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3468, file: !81, line: 293, baseType: !7, size: 32)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3468, file: !81, line: 294, baseType: !287, size: 64, offset: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !175, file: !81, line: 515, baseType: !185, size: 128, offset: 4736)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !175, file: !81, line: 526, baseType: !3474, offset: 4864)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3475, line: 5, elements: !212)
!3475 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !175, file: !81, line: 528, baseType: !3477, size: 64, offset: 4864)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3479, line: 14, flags: DIFlagFwdDecl)
!3479 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !175, file: !81, line: 529, baseType: !3481, size: 64, offset: 4928)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3231, line: 22, flags: DIFlagFwdDecl)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !175, file: !81, line: 534, baseType: !471, size: 32, offset: 4992)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !175, file: !81, line: 535, baseType: !154, size: 32, offset: 5024)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !175, file: !81, line: 537, baseType: !198, offset: 5056)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !175, file: !81, line: 538, baseType: !185, size: 128, offset: 5056)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !175, file: !81, line: 540, baseType: !3488, size: 64, offset: 5184)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3490, line: 54, size: 960, elements: !3491)
!3490 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3491 = !{!3492, !3493, !3494, !3495, !3496, !3497, !3498, !3502, !3506, !3507, !3508, !3509, !3513, !3517, !3518}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3489, file: !3490, line: 55, baseType: !182, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3489, file: !3490, line: 56, baseType: !141, size: 64, offset: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3489, file: !3490, line: 58, baseType: !291, size: 64, offset: 128)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3489, file: !3490, line: 59, baseType: !291, size: 64, offset: 192)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3489, file: !3490, line: 60, baseType: !191, size: 64, offset: 256)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3489, file: !3490, line: 62, baseType: !3185, size: 64, offset: 320)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3489, file: !3490, line: 63, baseType: !3499, size: 64, offset: 384)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!239, !174, !3192}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3489, file: !3490, line: 65, baseType: !3503, size: 64, offset: 448)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{null, !3488}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3489, file: !3490, line: 66, baseType: !3194, size: 64, offset: 512)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3489, file: !3490, line: 68, baseType: !3203, size: 64, offset: 576)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3489, file: !3490, line: 70, baseType: !2987, size: 64, offset: 640)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3489, file: !3490, line: 71, baseType: !3510, size: 64, offset: 704)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!3004, !174}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3489, file: !3490, line: 73, baseType: !3514, size: 64, offset: 768)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{null, !174, !3021, !3022}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3489, file: !3490, line: 75, baseType: !3198, size: 64, offset: 832)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3489, file: !3490, line: 77, baseType: !3315, size: 64, offset: 896)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !175, file: !81, line: 541, baseType: !291, size: 64, offset: 5248)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !175, file: !81, line: 543, baseType: !3194, size: 64, offset: 5312)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !175, file: !81, line: 544, baseType: !3522, size: 64, offset: 5376)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !81, line: 45, flags: DIFlagFwdDecl)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !175, file: !81, line: 545, baseType: !3525, size: 64, offset: 5440)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !81, line: 47, flags: DIFlagFwdDecl)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !175, file: !81, line: 547, baseType: !448, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !175, file: !81, line: 548, baseType: !448, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !175, file: !81, line: 549, baseType: !448, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !175, file: !81, line: 550, baseType: !448, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !171, file: !102, line: 426, baseType: !174, size: 64, offset: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !171, file: !102, line: 427, baseType: !139, size: 32, offset: 128)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !171, file: !102, line: 428, baseType: !182, size: 64, offset: 192)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !171, file: !102, line: 429, baseType: !136, size: 8, offset: 256)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !171, file: !102, line: 433, baseType: !136, size: 8, offset: 264)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !171, file: !102, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !171, file: !102, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !171, file: !102, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !171, file: !102, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !171, file: !102, line: 442, baseType: !7, size: 32, offset: 288)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !171, file: !102, line: 444, baseType: !139, size: 32, offset: 320)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !171, file: !102, line: 446, baseType: !1049, size: 192, offset: 384)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !171, file: !102, line: 448, baseType: !3544, size: 128, offset: 576)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !102, line: 417, size: 128, elements: !3545)
!3545 = !{!3546}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !3544, file: !102, line: 418, baseType: !3547, size: 128)
!3547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 128, elements: !166)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !171, file: !102, line: 449, baseType: !144, size: 64, offset: 704)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !171, file: !102, line: 450, baseType: !170, size: 64, offset: 768)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !171, file: !102, line: 452, baseType: !139, size: 32, offset: 832)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !171, file: !102, line: 459, baseType: !139, size: 32, offset: 864)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !171, file: !102, line: 460, baseType: !139, size: 32, offset: 896)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !171, file: !102, line: 462, baseType: !7, size: 32, offset: 928)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !145, file: !102, line: 647, baseType: !3555, size: 640, offset: 640)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !102, line: 67, size: 640, elements: !3556)
!3556 = !{!3557, !3569, !3577, !3585, !3586, !3587, !3590, !3592, !3593, !3594}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3555, file: !102, line: 68, baseType: !3558, size: 72)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !6, line: 407, size: 72, elements: !3559)
!3559 = !{!3560, !3561, !3562, !3563, !3564, !3566, !3567, !3568}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3558, file: !6, line: 408, baseType: !137, size: 8)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3558, file: !6, line: 409, baseType: !137, size: 8, offset: 8)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !3558, file: !6, line: 411, baseType: !137, size: 8, offset: 16)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3558, file: !6, line: 412, baseType: !137, size: 8, offset: 24)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !3558, file: !6, line: 413, baseType: !3565, size: 16, offset: 32)
!3565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !2704, line: 29, baseType: !130)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !3558, file: !6, line: 414, baseType: !137, size: 8, offset: 48)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !3558, file: !6, line: 418, baseType: !137, size: 8, offset: 56)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !3558, file: !6, line: 419, baseType: !137, size: 8, offset: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !3555, file: !102, line: 69, baseType: !3570, size: 48, offset: 72)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !6, line: 689, size: 48, elements: !3571)
!3571 = !{!3572, !3573, !3574, !3575, !3576}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3570, file: !6, line: 690, baseType: !137, size: 8)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3570, file: !6, line: 691, baseType: !137, size: 8, offset: 8)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !3570, file: !6, line: 693, baseType: !137, size: 8, offset: 16)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3570, file: !6, line: 694, baseType: !137, size: 8, offset: 24)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !3570, file: !6, line: 695, baseType: !3565, size: 16, offset: 32)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !3555, file: !102, line: 70, baseType: !3578, size: 64, offset: 120)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !6, line: 677, size: 64, elements: !3579)
!3579 = !{!3580, !3581, !3582, !3583}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3578, file: !6, line: 678, baseType: !137, size: 8)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3578, file: !6, line: 679, baseType: !137, size: 8, offset: 8)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !3578, file: !6, line: 680, baseType: !3565, size: 16, offset: 16)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !3578, file: !6, line: 681, baseType: !3584, size: 32, offset: 32)
!3584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2704, line: 31, baseType: !155)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3555, file: !102, line: 71, baseType: !185, size: 128, offset: 192)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3555, file: !102, line: 72, baseType: !133, size: 64, offset: 320)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !3555, file: !102, line: 73, baseType: !3588, size: 64, offset: 384)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !102, line: 48, flags: DIFlagFwdDecl)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3555, file: !102, line: 75, baseType: !3591, size: 64, offset: 448)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3555, file: !102, line: 76, baseType: !139, size: 32, offset: 512)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3555, file: !102, line: 77, baseType: !139, size: 32, offset: 544)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3555, file: !102, line: 78, baseType: !139, size: 32, offset: 576)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !145, file: !102, line: 649, baseType: !175, size: 5568, offset: 1280)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !145, file: !102, line: 651, baseType: !3597, size: 144, offset: 6848)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !6, line: 289, size: 144, elements: !3598)
!3598 = !{!3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3597, file: !6, line: 290, baseType: !137, size: 8)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3597, file: !6, line: 291, baseType: !137, size: 8, offset: 8)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !3597, file: !6, line: 293, baseType: !3565, size: 16, offset: 16)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3597, file: !6, line: 294, baseType: !137, size: 8, offset: 32)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3597, file: !6, line: 295, baseType: !137, size: 8, offset: 40)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3597, file: !6, line: 296, baseType: !137, size: 8, offset: 48)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !3597, file: !6, line: 297, baseType: !137, size: 8, offset: 56)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3597, file: !6, line: 298, baseType: !3565, size: 16, offset: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3597, file: !6, line: 299, baseType: !3565, size: 16, offset: 80)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !3597, file: !6, line: 300, baseType: !3565, size: 16, offset: 96)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !3597, file: !6, line: 301, baseType: !137, size: 8, offset: 112)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !3597, file: !6, line: 302, baseType: !137, size: 8, offset: 120)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !3597, file: !6, line: 303, baseType: !137, size: 8, offset: 128)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !3597, file: !6, line: 304, baseType: !137, size: 8, offset: 136)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !145, file: !102, line: 652, baseType: !3614, size: 64, offset: 7040)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !102, line: 396, size: 384, elements: !3616)
!3616 = !{!3617, !3625, !3633, !3645, !3658, !3667}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3615, file: !102, line: 397, baseType: !3618, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !6, line: 844, size: 40, elements: !3620)
!3620 = !{!3621, !3622, !3623, !3624}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3619, file: !6, line: 845, baseType: !137, size: 8)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3619, file: !6, line: 846, baseType: !137, size: 8, offset: 8)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3619, file: !6, line: 848, baseType: !3565, size: 16, offset: 16)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !3619, file: !6, line: 849, baseType: !137, size: 8, offset: 32)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !3615, file: !102, line: 400, baseType: !3626, size: 64, offset: 64)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !6, line: 895, size: 56, elements: !3628)
!3628 = !{!3629, !3630, !3631, !3632}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3627, file: !6, line: 896, baseType: !137, size: 8)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3627, file: !6, line: 897, baseType: !137, size: 8, offset: 8)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3627, file: !6, line: 898, baseType: !137, size: 8, offset: 16)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3627, file: !6, line: 899, baseType: !3584, size: 32, offset: 24)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !3615, file: !102, line: 401, baseType: !3634, size: 64, offset: 128)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !6, line: 917, size: 80, elements: !3636)
!3636 = !{!3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3635, file: !6, line: 918, baseType: !137, size: 8)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3635, file: !6, line: 919, baseType: !137, size: 8, offset: 8)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3635, file: !6, line: 920, baseType: !137, size: 8, offset: 16)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3635, file: !6, line: 921, baseType: !137, size: 8, offset: 24)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !3635, file: !6, line: 923, baseType: !3565, size: 16, offset: 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !3635, file: !6, line: 928, baseType: !137, size: 8, offset: 48)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !3635, file: !6, line: 929, baseType: !137, size: 8, offset: 56)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !3635, file: !6, line: 930, baseType: !3565, size: 16, offset: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !3615, file: !102, line: 402, baseType: !3646, size: 64, offset: 192)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !6, line: 955, size: 128, elements: !3648)
!3648 = !{!3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3647, file: !6, line: 956, baseType: !137, size: 8)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3647, file: !6, line: 957, baseType: !137, size: 8, offset: 8)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3647, file: !6, line: 958, baseType: !137, size: 8, offset: 16)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3647, file: !6, line: 959, baseType: !137, size: 8, offset: 24)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3647, file: !6, line: 960, baseType: !3584, size: 32, offset: 32)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !3647, file: !6, line: 963, baseType: !3565, size: 16, offset: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !3647, file: !6, line: 967, baseType: !3565, size: 16, offset: 80)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !3647, file: !6, line: 968, baseType: !3657, size: 32, offset: 96)
!3657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3584, size: 32, elements: !1245)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !3615, file: !102, line: 403, baseType: !3659, size: 64, offset: 256)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !6, line: 940, size: 160, elements: !3661)
!3661 = !{!3662, !3663, !3664, !3665, !3666}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3660, file: !6, line: 941, baseType: !137, size: 8)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3660, file: !6, line: 942, baseType: !137, size: 8, offset: 8)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3660, file: !6, line: 943, baseType: !137, size: 8, offset: 16)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3660, file: !6, line: 944, baseType: !137, size: 8, offset: 24)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !3660, file: !6, line: 945, baseType: !2505, size: 128, offset: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !3615, file: !102, line: 404, baseType: !3668, size: 64, offset: 320)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !6, line: 1080, size: 24, elements: !3670)
!3670 = !{!3671, !3672, !3673}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3669, file: !6, line: 1081, baseType: !137, size: 8)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3669, file: !6, line: 1082, baseType: !137, size: 8, offset: 8)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3669, file: !6, line: 1083, baseType: !137, size: 8, offset: 16)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !145, file: !102, line: 653, baseType: !3675, size: 64, offset: 7104)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !102, line: 374, size: 5440, elements: !3677)
!3677 = !{!3678, !3689, !3690, !3703, !3745, !3754, !3755}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3676, file: !102, line: 375, baseType: !3679, size: 72)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !6, line: 349, size: 72, elements: !3680)
!3680 = !{!3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3679, file: !6, line: 350, baseType: !137, size: 8)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3679, file: !6, line: 351, baseType: !137, size: 8, offset: 8)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3679, file: !6, line: 353, baseType: !3565, size: 16, offset: 16)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !3679, file: !6, line: 354, baseType: !137, size: 8, offset: 32)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !3679, file: !6, line: 355, baseType: !137, size: 8, offset: 40)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !3679, file: !6, line: 356, baseType: !137, size: 8, offset: 48)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3679, file: !6, line: 357, baseType: !137, size: 8, offset: 56)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !3679, file: !6, line: 358, baseType: !137, size: 8, offset: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3676, file: !102, line: 377, baseType: !239, size: 64, offset: 128)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3676, file: !102, line: 381, baseType: !3691, size: 1024, offset: 192)
!3691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3692, size: 1024, elements: !151)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !6, line: 783, size: 64, elements: !3694)
!3694 = !{!3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3693, file: !6, line: 784, baseType: !137, size: 8)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3693, file: !6, line: 785, baseType: !137, size: 8, offset: 8)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !3693, file: !6, line: 787, baseType: !137, size: 8, offset: 16)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !3693, file: !6, line: 788, baseType: !137, size: 8, offset: 24)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !3693, file: !6, line: 789, baseType: !137, size: 8, offset: 32)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !3693, file: !6, line: 790, baseType: !137, size: 8, offset: 40)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !3693, file: !6, line: 791, baseType: !137, size: 8, offset: 48)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !3693, file: !6, line: 792, baseType: !137, size: 8, offset: 56)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !3676, file: !102, line: 385, baseType: !3704, size: 2048, offset: 1216)
!3704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3705, size: 2048, elements: !2089)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !102, line: 232, size: 6272, elements: !3707)
!3707 = !{!3708, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3706, file: !102, line: 235, baseType: !3709, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !102, line: 82, size: 320, elements: !3711)
!3711 = !{!3712, !3724, !3725, !3726, !3728}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3710, file: !102, line: 83, baseType: !3713, size: 72)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !6, line: 389, size: 72, elements: !3714)
!3714 = !{!3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3713, file: !6, line: 390, baseType: !137, size: 8)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3713, file: !6, line: 391, baseType: !137, size: 8, offset: 8)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3713, file: !6, line: 393, baseType: !137, size: 8, offset: 16)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !3713, file: !6, line: 394, baseType: !137, size: 8, offset: 24)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !3713, file: !6, line: 395, baseType: !137, size: 8, offset: 32)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3713, file: !6, line: 396, baseType: !137, size: 8, offset: 40)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3713, file: !6, line: 397, baseType: !137, size: 8, offset: 48)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3713, file: !6, line: 398, baseType: !137, size: 8, offset: 56)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !3713, file: !6, line: 399, baseType: !137, size: 8, offset: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3710, file: !102, line: 85, baseType: !139, size: 32, offset: 96)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3710, file: !102, line: 86, baseType: !3591, size: 64, offset: 128)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !3710, file: !102, line: 91, baseType: !3727, size: 64, offset: 192)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3710, file: !102, line: 93, baseType: !239, size: 64, offset: 256)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !3706, file: !102, line: 237, baseType: !3709, size: 64, offset: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3706, file: !102, line: 239, baseType: !7, size: 32, offset: 128)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3706, file: !102, line: 243, baseType: !3692, size: 64, offset: 192)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3706, file: !102, line: 245, baseType: !139, size: 32, offset: 256)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !3706, file: !102, line: 247, baseType: !101, size: 32, offset: 288)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !3706, file: !102, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !3706, file: !102, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !3706, file: !102, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !3706, file: !102, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !3706, file: !102, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !3706, file: !102, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !3706, file: !102, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !3706, file: !102, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3706, file: !102, line: 257, baseType: !175, size: 5568, offset: 384)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !3706, file: !102, line: 258, baseType: !174, size: 64, offset: 5952)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !3706, file: !102, line: 259, baseType: !1828, size: 256, offset: 6016)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !3676, file: !102, line: 389, baseType: !3746, size: 2048, offset: 3264)
!3746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3747, size: 2048, elements: !2089)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !102, line: 322, size: 64, elements: !3749)
!3749 = !{!3750, !3751, !3752}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3748, file: !102, line: 323, baseType: !7, size: 32)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3748, file: !102, line: 324, baseType: !3163, size: 32, offset: 32)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3748, file: !102, line: 328, baseType: !3753, offset: 64)
!3753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3710, elements: !2190)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3676, file: !102, line: 391, baseType: !3591, size: 64, offset: 5312)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3676, file: !102, line: 392, baseType: !139, size: 32, offset: 5376)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !145, file: !102, line: 655, baseType: !3675, size: 64, offset: 7168)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !145, file: !102, line: 656, baseType: !3758, size: 1024, offset: 7232)
!3758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3727, size: 1024, elements: !151)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !145, file: !102, line: 657, baseType: !3758, size: 1024, offset: 8256)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !145, file: !102, line: 659, baseType: !3761, size: 64, offset: 9280)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !145, file: !102, line: 661, baseType: !132, size: 16, offset: 9344)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !145, file: !102, line: 662, baseType: !136, size: 8, offset: 9360)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !145, file: !102, line: 663, baseType: !136, size: 8, offset: 9368)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !145, file: !102, line: 664, baseType: !136, size: 8, offset: 9376)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !145, file: !102, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !145, file: !102, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !145, file: !102, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !145, file: !102, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !145, file: !102, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !145, file: !102, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !145, file: !102, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !145, file: !102, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !145, file: !102, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !145, file: !102, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !145, file: !102, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !145, file: !102, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !145, file: !102, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !145, file: !102, line: 679, baseType: !139, size: 32, offset: 9408)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !145, file: !102, line: 682, baseType: !239, size: 64, offset: 9472)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !145, file: !102, line: 683, baseType: !239, size: 64, offset: 9536)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !145, file: !102, line: 684, baseType: !239, size: 64, offset: 9600)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !145, file: !102, line: 686, baseType: !185, size: 128, offset: 9664)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !145, file: !102, line: 688, baseType: !139, size: 32, offset: 9792)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !145, file: !102, line: 690, baseType: !154, size: 32, offset: 9824)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !145, file: !102, line: 691, baseType: !705, size: 32, offset: 9856)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !145, file: !102, line: 693, baseType: !287, size: 64, offset: 9920)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !145, file: !102, line: 696, baseType: !287, size: 64, offset: 9984)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !145, file: !102, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !145, file: !102, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !145, file: !102, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !145, file: !102, line: 702, baseType: !3793, size: 64, offset: 10112)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !102, line: 28, flags: DIFlagFwdDecl)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !145, file: !102, line: 703, baseType: !139, size: 32, offset: 10176)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !145, file: !102, line: 704, baseType: !108, size: 32, offset: 10208)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !145, file: !102, line: 705, baseType: !3798, size: 64, offset: 10240)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !102, line: 502, size: 64, elements: !3799)
!3799 = !{!3800, !3801}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !3798, file: !102, line: 506, baseType: !7, size: 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3798, file: !102, line: 512, baseType: !139, size: 32, offset: 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !145, file: !102, line: 706, baseType: !3803, size: 128, offset: 10304)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !102, line: 522, size: 128, elements: !3804)
!3804 = !{!3805, !3806, !3807, !3808}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !3803, file: !102, line: 529, baseType: !7, size: 32)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !3803, file: !102, line: 535, baseType: !7, size: 32, offset: 32)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !3803, file: !102, line: 545, baseType: !7, size: 32, offset: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3803, file: !102, line: 551, baseType: !139, size: 32, offset: 96)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !145, file: !102, line: 707, baseType: !3803, size: 128, offset: 10432)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !145, file: !102, line: 708, baseType: !7, size: 32, offset: 10560)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !145, file: !102, line: 710, baseType: !128, size: 16, offset: 10592)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !145, file: !102, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtsx_ucr", file: !3815, line: 40, size: 1664, elements: !3816)
!3815 = !DIFile(filename: "./include/linux/rtsx_usb.h", directory: "/home/lizy2001/genbc/linux")
!3816 = !{!3817, !3818, !3819, !3820, !3821, !3822, !3823, !3825, !3826, !3827, !3828, !3829, !3894, !3895, !3896, !3897}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !3814, file: !3815, line: 41, baseType: !128, size: 16)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "product_id", scope: !3814, file: !3815, line: 42, baseType: !128, size: 16, offset: 16)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !3814, file: !3815, line: 44, baseType: !139, size: 32, offset: 32)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "ic_version", scope: !3814, file: !3815, line: 45, baseType: !136, size: 8, offset: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "is_rts5179", scope: !3814, file: !3815, line: 46, baseType: !448, size: 8, offset: 72)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "cur_clk", scope: !3814, file: !3815, line: 48, baseType: !7, size: 32, offset: 96)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_buf", scope: !3814, file: !3815, line: 50, baseType: !3824, size: 64, offset: 128)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_idx", scope: !3814, file: !3815, line: 51, baseType: !7, size: 32, offset: 192)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "rsp_buf", scope: !3814, file: !3815, line: 52, baseType: !3824, size: 64, offset: 256)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "pusb_dev", scope: !3814, file: !3815, line: 54, baseType: !144, size: 64, offset: 320)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "pusb_intf", scope: !3814, file: !3815, line: 55, baseType: !3705, size: 64, offset: 384)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "current_sg", scope: !3814, file: !3815, line: 56, baseType: !3830, size: 576, offset: 448)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_sg_request", file: !102, line: 1873, size: 576, elements: !3831)
!3831 = !{!3832, !3833, !3834, !3835, !3836, !3837, !3838, !3892, !3893}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3830, file: !102, line: 1874, baseType: !139, size: 32)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !3830, file: !102, line: 1875, baseType: !284, size: 64, offset: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3830, file: !102, line: 1881, baseType: !198, offset: 128)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3830, file: !102, line: 1883, baseType: !144, size: 64, offset: 128)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !3830, file: !102, line: 1884, baseType: !139, size: 32, offset: 192)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3830, file: !102, line: 1886, baseType: !139, size: 32, offset: 224)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "urbs", scope: !3830, file: !102, line: 1887, baseType: !3839, size: 64, offset: 256)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !102, line: 1561, size: 1472, elements: !3842)
!3842 = !{!3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3884}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3841, file: !102, line: 1563, baseType: !3163, size: 32)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !3841, file: !102, line: 1564, baseType: !139, size: 32, offset: 32)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3841, file: !102, line: 1565, baseType: !133, size: 64, offset: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !3841, file: !102, line: 1566, baseType: !705, size: 32, offset: 128)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !3841, file: !102, line: 1567, baseType: !705, size: 32, offset: 160)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3841, file: !102, line: 1570, baseType: !185, size: 128, offset: 192)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !3841, file: !102, line: 1572, baseType: !185, size: 128, offset: 320)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !3841, file: !102, line: 1573, baseType: !3851, size: 64, offset: 448)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !102, line: 1360, size: 320, elements: !3853)
!3853 = !{!3854, !3855, !3856, !3857, !3858}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3852, file: !102, line: 1361, baseType: !185, size: 128)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3852, file: !102, line: 1362, baseType: !1355, size: 128, offset: 128)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3852, file: !102, line: 1363, baseType: !198, offset: 256)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !3852, file: !102, line: 1364, baseType: !705, size: 32, offset: 256)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !3852, file: !102, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3841, file: !102, line: 1574, baseType: !144, size: 64, offset: 512)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !3841, file: !102, line: 1575, baseType: !3727, size: 64, offset: 576)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !3841, file: !102, line: 1576, baseType: !7, size: 32, offset: 640)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3841, file: !102, line: 1577, baseType: !7, size: 32, offset: 672)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3841, file: !102, line: 1578, baseType: !139, size: 32, offset: 704)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !3841, file: !102, line: 1579, baseType: !7, size: 32, offset: 736)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !3841, file: !102, line: 1580, baseType: !133, size: 64, offset: 768)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !3841, file: !102, line: 1581, baseType: !876, size: 64, offset: 832)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !3841, file: !102, line: 1582, baseType: !126, size: 64, offset: 896)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !3841, file: !102, line: 1583, baseType: !139, size: 32, offset: 960)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !3841, file: !102, line: 1584, baseType: !139, size: 32, offset: 992)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !3841, file: !102, line: 1585, baseType: !154, size: 32, offset: 1024)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !3841, file: !102, line: 1586, baseType: !154, size: 32, offset: 1056)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !3841, file: !102, line: 1587, baseType: !3591, size: 64, offset: 1088)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !3841, file: !102, line: 1588, baseType: !876, size: 64, offset: 1152)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !3841, file: !102, line: 1589, baseType: !139, size: 32, offset: 1216)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !3841, file: !102, line: 1590, baseType: !139, size: 32, offset: 1248)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !3841, file: !102, line: 1591, baseType: !139, size: 32, offset: 1280)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !3841, file: !102, line: 1593, baseType: !139, size: 32, offset: 1312)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !3841, file: !102, line: 1594, baseType: !133, size: 64, offset: 1344)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3841, file: !102, line: 1595, baseType: !3880, size: 64, offset: 1408)
!3880 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !102, line: 1376, baseType: !3881)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{null, !3840}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !3841, file: !102, line: 1596, baseType: !3885, offset: 1472)
!3885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3886, elements: !2190)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !102, line: 1351, size: 128, elements: !3887)
!3887 = !{!3888, !3889, !3890, !3891}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3886, file: !102, line: 1352, baseType: !7, size: 32)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3886, file: !102, line: 1353, baseType: !7, size: 32, offset: 32)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !3886, file: !102, line: 1354, baseType: !7, size: 32, offset: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3886, file: !102, line: 1355, baseType: !139, size: 32, offset: 96)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3830, file: !102, line: 1889, baseType: !139, size: 32, offset: 320)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3830, file: !102, line: 1890, baseType: !1376, size: 192, offset: 384)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "iobuf", scope: !3814, file: !3815, line: 57, baseType: !3591, size: 64, offset: 1024)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "iobuf_dma", scope: !3814, file: !3815, line: 58, baseType: !876, size: 64, offset: 1088)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "sg_timer", scope: !3814, file: !3815, line: 60, baseType: !3363, size: 320, offset: 1152)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "dev_mutex", scope: !3814, file: !3815, line: 61, baseType: !1049, size: 192, offset: 1472)
!3898 = !{!3899, !3951, !3956, !3961, !3963, !3968, !3973, !3978, !3983, !0, !3985, !3987, !4048, !4051, !4135}
!3899 = !DIGlobalVariableExpression(var: !3900, expr: !DIExpression())
!3900 = distinct !DIGlobalVariable(name: "__param_polling_pipe", scope: !2, file: !3, line: 18, type: !3901, isLocal: true, isDefinition: true, align: 64)
!3901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3902)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3903, line: 69, size: 320, elements: !3904)
!3903 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!3904 = !{!3905, !3906, !3907, !3923, !3925, !3929, !3930}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3902, file: !3903, line: 70, baseType: !182, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3902, file: !3903, line: 71, baseType: !141, size: 64, offset: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3902, file: !3903, line: 72, baseType: !3908, size: 64, offset: 128)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3910)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3903, line: 47, size: 256, elements: !3911)
!3911 = !{!3912, !3913, !3918, !3922}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3910, file: !3903, line: 49, baseType: !7, size: 32)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3910, file: !3903, line: 51, baseType: !3914, size: 64, offset: 64)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!139, !182, !3917}
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3910, file: !3903, line: 53, baseType: !3919, size: 64, offset: 128)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!139, !239, !3917}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3910, file: !3903, line: 55, baseType: !426, size: 64, offset: 192)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3902, file: !3903, line: 73, baseType: !3924, size: 16, offset: 192)
!3924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3902, file: !3903, line: 74, baseType: !3926, size: 8, offset: 208)
!3926 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !129, line: 16, baseType: !3927)
!3927 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !131, line: 20, baseType: !3928)
!3928 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3902, file: !3903, line: 75, baseType: !136, size: 8, offset: 216)
!3930 = !DIDerivedType(tag: DW_TAG_member, scope: !3902, file: !3903, line: 76, baseType: !3931, size: 64, offset: 256)
!3931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3902, file: !3903, line: 76, size: 64, elements: !3932)
!3932 = !{!3933, !3934, !3941}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3931, file: !3903, line: 77, baseType: !133, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3931, file: !3903, line: 78, baseType: !3935, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3937)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3903, line: 86, size: 128, elements: !3938)
!3938 = !{!3939, !3940}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3937, file: !3903, line: 87, baseType: !7, size: 32)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3937, file: !3903, line: 88, baseType: !239, size: 64, offset: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3931, file: !3903, line: 79, baseType: !3942, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3944)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3903, line: 92, size: 256, elements: !3945)
!3945 = !{!3946, !3947, !3948, !3949, !3950}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3944, file: !3903, line: 94, baseType: !7, size: 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3944, file: !3903, line: 95, baseType: !7, size: 32, offset: 32)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3944, file: !3903, line: 96, baseType: !2481, size: 64, offset: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3944, file: !3903, line: 97, baseType: !3908, size: 64, offset: 128)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3944, file: !3903, line: 98, baseType: !133, size: 64, offset: 192)
!3951 = !DIGlobalVariableExpression(var: !3952, expr: !DIExpression())
!3952 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_polling_pipetype211", scope: !2, file: !3, line: 18, type: !3953, isLocal: true, isDefinition: true, align: 8)
!3953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 280, elements: !3954)
!3954 = !{!3955}
!3955 = !DISubrange(count: 35)
!3956 = !DIGlobalVariableExpression(var: !3957, expr: !DIExpression())
!3957 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_polling_pipe212", scope: !2, file: !3, line: 19, type: !3958, isLocal: true, isDefinition: true, align: 8)
!3958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 464, elements: !3959)
!3959 = !{!3960}
!3960 = !DISubrange(count: 58)
!3961 = !DIGlobalVariableExpression(var: !3962, expr: !DIExpression())
!3962 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rtsx_usb_driver_init214", scope: !2, file: !3, line: 784, type: !133, isLocal: true, isDefinition: true)
!3963 = !DIGlobalVariableExpression(var: !3964, expr: !DIExpression())
!3964 = distinct !DIGlobalVariable(name: "__exitcall_rtsx_usb_driver_exit", scope: !2, file: !3, line: 784, type: !3965, isLocal: true, isDefinition: true)
!3965 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3966, line: 117, baseType: !3967)
!3966 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!3968 = !DIGlobalVariableExpression(var: !3969, expr: !DIExpression())
!3969 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file215", scope: !2, file: !3, line: 786, type: !3970, isLocal: true, isDefinition: true, align: 8)
!3970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 376, elements: !3971)
!3971 = !{!3972}
!3972 = !DISubrange(count: 47)
!3973 = !DIGlobalVariableExpression(var: !3974, expr: !DIExpression())
!3974 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license216", scope: !2, file: !3, line: 786, type: !3975, isLocal: true, isDefinition: true, align: 8)
!3975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 192, elements: !3976)
!3976 = !{!3977}
!3977 = !DISubrange(count: 24)
!3978 = !DIGlobalVariableExpression(var: !3979, expr: !DIExpression())
!3979 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author217", scope: !2, file: !3, line: 787, type: !3980, isLocal: true, isDefinition: true, align: 8)
!3980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 416, elements: !3981)
!3981 = !{!3982}
!3982 = !DISubrange(count: 52)
!3983 = !DIGlobalVariableExpression(var: !3984, expr: !DIExpression())
!3984 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description218", scope: !2, file: !3, line: 788, type: !3980, isLocal: true, isDefinition: true, align: 8)
!3985 = !DIGlobalVariableExpression(var: !3986, expr: !DIExpression())
!3986 = distinct !DIGlobalVariable(name: "polling_pipe", scope: !2, file: !3, line: 17, type: !139, isLocal: true, isDefinition: true)
!3987 = !DIGlobalVariableExpression(var: !3988, expr: !DIExpression())
!3988 = distinct !DIGlobalVariable(name: "rtsx_usb_driver", scope: !2, file: !3, line: 770, type: !3989, isLocal: true, isDefinition: true)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !102, line: 1184, size: 2112, elements: !3990)
!3990 = !{!3991, !3992, !4013, !4017, !4021, !4025, !4029, !4030, !4031, !4032, !4033, !4034, !4039, !4044, !4045, !4046, !4047}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3989, file: !102, line: 1185, baseType: !182, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3989, file: !102, line: 1187, baseType: !3993, size: 64, offset: 64)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!139, !3705, !3996}
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3998)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3256, line: 121, size: 256, elements: !3999)
!3999 = !{!4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !3998, file: !3256, line: 123, baseType: !130, size: 16)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3998, file: !3256, line: 126, baseType: !130, size: 16, offset: 16)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3998, file: !3256, line: 127, baseType: !130, size: 16, offset: 32)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !3998, file: !3256, line: 128, baseType: !130, size: 16, offset: 48)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !3998, file: !3256, line: 129, baseType: !130, size: 16, offset: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3998, file: !3256, line: 132, baseType: !137, size: 8, offset: 80)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3998, file: !3256, line: 133, baseType: !137, size: 8, offset: 88)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3998, file: !3256, line: 134, baseType: !137, size: 8, offset: 96)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3998, file: !3256, line: 137, baseType: !137, size: 8, offset: 104)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3998, file: !3256, line: 138, baseType: !137, size: 8, offset: 112)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3998, file: !3256, line: 139, baseType: !137, size: 8, offset: 120)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3998, file: !3256, line: 142, baseType: !137, size: 8, offset: 128)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3998, file: !3256, line: 145, baseType: !3275, size: 64, align: 64, offset: 192)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3989, file: !102, line: 1190, baseType: !4014, size: 64, offset: 128)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{null, !3705}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3989, file: !102, line: 1192, baseType: !4018, size: 64, offset: 192)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!139, !3705, !7, !133}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3989, file: !102, line: 1195, baseType: !4022, size: 64, offset: 256)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!139, !3705, !3286}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3989, file: !102, line: 1196, baseType: !4026, size: 64, offset: 320)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!139, !3705}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !3989, file: !102, line: 1197, baseType: !4026, size: 64, offset: 384)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !3989, file: !102, line: 1199, baseType: !4026, size: 64, offset: 448)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !3989, file: !102, line: 1200, baseType: !4026, size: 64, offset: 512)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3989, file: !102, line: 1202, baseType: !3996, size: 64, offset: 576)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3989, file: !102, line: 1203, baseType: !291, size: 64, offset: 640)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3989, file: !102, line: 1205, baseType: !4035, size: 128, offset: 704)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !102, line: 1091, size: 128, elements: !4036)
!4036 = !{!4037, !4038}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4035, file: !102, line: 1092, baseType: !198)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4035, file: !102, line: 1093, baseType: !185, size: 128)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !3989, file: !102, line: 1206, baseType: !4040, size: 1216, offset: 832)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !102, line: 1113, size: 1216, elements: !4041)
!4041 = !{!4042, !4043}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4040, file: !102, line: 1114, baseType: !3244, size: 1152)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !4040, file: !102, line: 1115, baseType: !139, size: 32, offset: 1152)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !3989, file: !102, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !3989, file: !102, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !3989, file: !102, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !3989, file: !102, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!4048 = !DIGlobalVariableExpression(var: !4049, expr: !DIExpression())
!4049 = distinct !DIGlobalVariable(name: "__key", scope: !4050, file: !3, line: 645, type: !603, isLocal: true, isDefinition: true)
!4050 = distinct !DISubprogram(name: "rtsx_usb_probe", scope: !3, file: !3, line: 617, type: !3994, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4051 = !DIGlobalVariableExpression(var: !4052, expr: !DIExpression())
!4052 = distinct !DIGlobalVariable(name: "rtsx_usb_cells", scope: !2, file: !3, line: 21, type: !4053, isLocal: true, isDefinition: true)
!4053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4054, size: 2304, elements: !166)
!4054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4055)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !4056, line: 66, size: 1152, elements: !4057)
!4056 = !DIFile(filename: "./include/linux/mfd/core.h", directory: "/home/lizy2001/genbc/linux")
!4057 = !{!4058, !4059, !4060, !4061, !4104, !4105, !4106, !4107, !4108, !4109, !4113, !4114, !4116, !4117, !4125, !4126, !4129, !4130, !4131, !4134}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4055, file: !4056, line: 67, baseType: !182, size: 64)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4055, file: !4056, line: 68, baseType: !139, size: 32, offset: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4055, file: !4056, line: 69, baseType: !139, size: 32, offset: 96)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4055, file: !4056, line: 71, baseType: !4062, size: 64, offset: 128)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!139, !4065}
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !4067, line: 22, size: 6208, elements: !4068)
!4067 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!4068 = !{!4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4091, !4099, !4100, !4102}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4066, file: !4067, line: 23, baseType: !182, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4066, file: !4067, line: 24, baseType: !139, size: 32, offset: 64)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !4066, file: !4067, line: 25, baseType: !448, size: 8, offset: 96)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4066, file: !4067, line: 26, baseType: !175, size: 5568, offset: 128)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !4066, file: !4067, line: 27, baseType: !380, size: 64, offset: 5696)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4066, file: !4067, line: 28, baseType: !3468, size: 128, offset: 5760)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !4066, file: !4067, line: 29, baseType: !154, size: 32, offset: 5888)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4066, file: !4067, line: 30, baseType: !4077, size: 64, offset: 5952)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4079, line: 20, size: 512, elements: !4080)
!4079 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4080 = !{!4081, !4084, !4085, !4086, !4087, !4088, !4089, !4090}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4078, file: !4079, line: 21, baseType: !4082, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !135, line: 158, baseType: !4083)
!4083 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !135, line: 153, baseType: !380)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4078, file: !4079, line: 22, baseType: !4082, size: 64, offset: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4078, file: !4079, line: 23, baseType: !182, size: 64, offset: 128)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4078, file: !4079, line: 24, baseType: !287, size: 64, offset: 192)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4078, file: !4079, line: 25, baseType: !287, size: 64, offset: 256)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4078, file: !4079, line: 26, baseType: !4077, size: 64, offset: 320)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4078, file: !4079, line: 26, baseType: !4077, size: 64, offset: 384)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4078, file: !4079, line: 26, baseType: !4077, size: 64, offset: 448)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !4066, file: !4067, line: 32, baseType: !4092, size: 64, offset: 6016)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4094)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !3256, line: 586, size: 256, elements: !4095)
!4095 = !{!4096, !4098}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4094, file: !3256, line: 587, baseType: !4097, size: 160)
!4097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 160, elements: !2060)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4094, file: !3256, line: 588, baseType: !3275, size: 64, offset: 192)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4066, file: !4067, line: 33, baseType: !239, size: 64, offset: 6080)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !4066, file: !4067, line: 36, baseType: !4101, size: 64, offset: 6144)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4066, file: !4067, line: 39, baseType: !4103, offset: 6208)
!4103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !3475, line: 8, elements: !212)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !4055, file: !4056, line: 72, baseType: !4062, size: 64, offset: 192)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4055, file: !4056, line: 74, baseType: !4062, size: 64, offset: 256)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4055, file: !4056, line: 75, baseType: !4062, size: 64, offset: 320)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4055, file: !4056, line: 78, baseType: !133, size: 64, offset: 384)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "pdata_size", scope: !4055, file: !4056, line: 79, baseType: !284, size: 64, offset: 448)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4055, file: !4056, line: 82, baseType: !4110, size: 64, offset: 512)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4112)
!4112 = !DICompositeType(tag: DW_TAG_structure_type, name: "property_entry", file: !4067, line: 19, flags: DIFlagFwdDecl)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !4055, file: !4056, line: 88, baseType: !182, size: 64, offset: 576)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "of_reg", scope: !4055, file: !4056, line: 95, baseType: !4115, size: 64, offset: 640)
!4115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "use_of_reg", scope: !4055, file: !4056, line: 98, baseType: !448, size: 8, offset: 704)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match", scope: !4055, file: !4056, line: 101, baseType: !4118, size: 64, offset: 768)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4120)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell_acpi_match", file: !4056, line: 56, size: 128, elements: !4121)
!4121 = !{!4122, !4123}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "pnpid", scope: !4120, file: !4056, line: 57, baseType: !182, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "adr", scope: !4120, file: !4056, line: 58, baseType: !4124, size: 64, offset: 64)
!4124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !4055, file: !4056, line: 107, baseType: !139, size: 32, offset: 832)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4055, file: !4056, line: 108, baseType: !4127, size: 64, offset: 896)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4078)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_resource_conflicts", scope: !4055, file: !4056, line: 111, baseType: !448, size: 8, offset: 960)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "pm_runtime_no_callbacks", scope: !4055, file: !4056, line: 117, baseType: !448, size: 8, offset: 968)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "parent_supplies", scope: !4055, file: !4056, line: 122, baseType: !4132, size: 64, offset: 1024)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "num_parent_supplies", scope: !4055, file: !4056, line: 123, baseType: !139, size: 32, offset: 1088)
!4135 = !DIGlobalVariableExpression(var: !4136, expr: !DIExpression())
!4136 = distinct !DIGlobalVariable(name: "rtsx_usb_usb_ids", scope: !2, file: !3, line: 762, type: !4137, isLocal: true, isDefinition: true)
!4137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3997, size: 1024, elements: !1031)
!4138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 176, elements: !4139)
!4139 = !{!4140}
!4140 = !DISubrange(count: 22)
!4141 = !{i32 7, !"Dwarf Version", i32 4}
!4142 = !{i32 2, !"Debug Info Version", i32 3}
!4143 = !{i32 1, !"wchar_size", i32 2}
!4144 = !{i32 1, !"Code Model", i32 2}
!4145 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4146 = distinct !DISubprogram(name: "rtsx_usb_transfer_data", scope: !3, file: !3, line: 67, type: !4147, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!139, !3813, !7, !133, !7, !139, !2481, !139}
!4149 = !DILocalVariable(name: "ucr", arg: 1, scope: !4146, file: !3, line: 67, type: !3813)
!4150 = !DILocation(line: 67, column: 45, scope: !4146)
!4151 = !DILocalVariable(name: "pipe", arg: 2, scope: !4146, file: !3, line: 67, type: !7)
!4152 = !DILocation(line: 67, column: 63, scope: !4146)
!4153 = !DILocalVariable(name: "buf", arg: 3, scope: !4146, file: !3, line: 68, type: !133)
!4154 = !DILocation(line: 68, column: 16, scope: !4146)
!4155 = !DILocalVariable(name: "len", arg: 4, scope: !4146, file: !3, line: 68, type: !7)
!4156 = !DILocation(line: 68, column: 34, scope: !4146)
!4157 = !DILocalVariable(name: "num_sg", arg: 5, scope: !4146, file: !3, line: 68, type: !139)
!4158 = !DILocation(line: 68, column: 43, scope: !4146)
!4159 = !DILocalVariable(name: "act_len", arg: 6, scope: !4146, file: !3, line: 69, type: !2481)
!4160 = !DILocation(line: 69, column: 24, scope: !4146)
!4161 = !DILocalVariable(name: "timeout", arg: 7, scope: !4146, file: !3, line: 69, type: !139)
!4162 = !DILocation(line: 69, column: 37, scope: !4146)
!4163 = !DILocation(line: 71, column: 6, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4146, file: !3, line: 71, column: 6)
!4165 = !DILocation(line: 71, column: 14, scope: !4164)
!4166 = !DILocation(line: 71, column: 6, scope: !4146)
!4167 = !DILocation(line: 72, column: 11, scope: !4164)
!4168 = !DILocation(line: 72, column: 3, scope: !4164)
!4169 = !DILocation(line: 74, column: 6, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4146, file: !3, line: 74, column: 6)
!4171 = !DILocation(line: 74, column: 6, scope: !4146)
!4172 = !DILocation(line: 75, column: 40, scope: !4170)
!4173 = !DILocation(line: 75, column: 45, scope: !4170)
!4174 = !DILocation(line: 76, column: 27, scope: !4170)
!4175 = !DILocation(line: 76, column: 5, scope: !4170)
!4176 = !DILocation(line: 76, column: 32, scope: !4170)
!4177 = !DILocation(line: 76, column: 40, scope: !4170)
!4178 = !DILocation(line: 76, column: 45, scope: !4170)
!4179 = !DILocation(line: 77, column: 5, scope: !4170)
!4180 = !DILocation(line: 75, column: 10, scope: !4170)
!4181 = !DILocation(line: 75, column: 3, scope: !4170)
!4182 = !DILocation(line: 79, column: 23, scope: !4170)
!4183 = !DILocation(line: 79, column: 28, scope: !4170)
!4184 = !DILocation(line: 79, column: 38, scope: !4170)
!4185 = !DILocation(line: 79, column: 44, scope: !4170)
!4186 = !DILocation(line: 79, column: 49, scope: !4170)
!4187 = !DILocation(line: 79, column: 54, scope: !4170)
!4188 = !DILocation(line: 80, column: 5, scope: !4170)
!4189 = !DILocation(line: 79, column: 10, scope: !4170)
!4190 = !DILocation(line: 79, column: 3, scope: !4170)
!4191 = !DILocation(line: 81, column: 1, scope: !4146)
!4192 = distinct !DISubprogram(name: "rtsx_usb_bulk_transfer_sglist", scope: !3, file: !3, line: 40, type: !4193, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!139, !3813, !7, !126, !139, !7, !2481, !139}
!4195 = !DILocalVariable(name: "m", arg: 1, scope: !4196, file: !4197, line: 363, type: !2625)
!4196 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !4197, file: !4197, line: 363, type: !4198, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4197 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!287, !2625}
!4200 = !DILocation(line: 363, column: 74, scope: !4196, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 53, column: 36, scope: !4192)
!4202 = !DILocalVariable(name: "ucr", arg: 1, scope: !4192, file: !3, line: 40, type: !3813)
!4203 = !DILocation(line: 40, column: 59, scope: !4192)
!4204 = !DILocalVariable(name: "pipe", arg: 2, scope: !4192, file: !3, line: 41, type: !7)
!4205 = !DILocation(line: 41, column: 16, scope: !4192)
!4206 = !DILocalVariable(name: "sg", arg: 3, scope: !4192, file: !3, line: 41, type: !126)
!4207 = !DILocation(line: 41, column: 42, scope: !4192)
!4208 = !DILocalVariable(name: "num_sg", arg: 4, scope: !4192, file: !3, line: 41, type: !139)
!4209 = !DILocation(line: 41, column: 50, scope: !4192)
!4210 = !DILocalVariable(name: "length", arg: 5, scope: !4192, file: !3, line: 42, type: !7)
!4211 = !DILocation(line: 42, column: 16, scope: !4192)
!4212 = !DILocalVariable(name: "act_len", arg: 6, scope: !4192, file: !3, line: 42, type: !2481)
!4213 = !DILocation(line: 42, column: 38, scope: !4192)
!4214 = !DILocalVariable(name: "timeout", arg: 7, scope: !4192, file: !3, line: 42, type: !139)
!4215 = !DILocation(line: 42, column: 51, scope: !4192)
!4216 = !DILocalVariable(name: "ret", scope: !4192, file: !3, line: 44, type: !139)
!4217 = !DILocation(line: 44, column: 6, scope: !4192)
!4218 = !DILocation(line: 48, column: 21, scope: !4192)
!4219 = !DILocation(line: 48, column: 26, scope: !4192)
!4220 = !DILocation(line: 48, column: 38, scope: !4192)
!4221 = !DILocation(line: 48, column: 43, scope: !4192)
!4222 = !DILocation(line: 48, column: 53, scope: !4192)
!4223 = !DILocation(line: 49, column: 4, scope: !4192)
!4224 = !DILocation(line: 49, column: 8, scope: !4192)
!4225 = !DILocation(line: 49, column: 16, scope: !4192)
!4226 = !DILocation(line: 48, column: 8, scope: !4192)
!4227 = !DILocation(line: 48, column: 6, scope: !4192)
!4228 = !DILocation(line: 50, column: 6, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4192, file: !3, line: 50, column: 6)
!4230 = !DILocation(line: 50, column: 6, scope: !4192)
!4231 = !DILocation(line: 51, column: 10, scope: !4229)
!4232 = !DILocation(line: 51, column: 3, scope: !4229)
!4233 = !DILocation(line: 53, column: 26, scope: !4192)
!4234 = !DILocation(line: 53, column: 53, scope: !4192)
!4235 = !DILocation(line: 365, column: 27, scope: !4236, inlinedAt: !4201)
!4236 = distinct !DILexicalBlock(scope: !4196, file: !4197, line: 365, column: 6)
!4237 = !DILocation(line: 365, column: 6, scope: !4236, inlinedAt: !4201)
!4238 = !DILocation(line: 365, column: 6, scope: !4196, inlinedAt: !4201)
!4239 = !DILocation(line: 366, column: 12, scope: !4240, inlinedAt: !4201)
!4240 = distinct !DILexicalBlock(scope: !4241, file: !4197, line: 366, column: 7)
!4241 = distinct !DILexicalBlock(scope: !4236, file: !4197, line: 365, column: 31)
!4242 = !DILocation(line: 366, column: 14, scope: !4240, inlinedAt: !4201)
!4243 = !DILocation(line: 366, column: 7, scope: !4241, inlinedAt: !4201)
!4244 = !DILocation(line: 367, column: 4, scope: !4240, inlinedAt: !4201)
!4245 = !DILocation(line: 368, column: 28, scope: !4241, inlinedAt: !4201)
!4246 = !DILocation(line: 368, column: 10, scope: !4241, inlinedAt: !4201)
!4247 = !DILocation(line: 368, column: 3, scope: !4241, inlinedAt: !4201)
!4248 = !DILocation(line: 370, column: 29, scope: !4249, inlinedAt: !4201)
!4249 = distinct !DILexicalBlock(scope: !4236, file: !4197, line: 369, column: 9)
!4250 = !DILocation(line: 370, column: 10, scope: !4249, inlinedAt: !4201)
!4251 = !DILocation(line: 370, column: 3, scope: !4249, inlinedAt: !4201)
!4252 = !DILocation(line: 372, column: 1, scope: !4196, inlinedAt: !4201)
!4253 = !DILocation(line: 53, column: 34, scope: !4192)
!4254 = !DILocation(line: 53, column: 2, scope: !4192)
!4255 = !DILocation(line: 53, column: 7, scope: !4192)
!4256 = !DILocation(line: 53, column: 16, scope: !4192)
!4257 = !DILocation(line: 53, column: 24, scope: !4192)
!4258 = !DILocation(line: 54, column: 13, scope: !4192)
!4259 = !DILocation(line: 54, column: 18, scope: !4192)
!4260 = !DILocation(line: 54, column: 2, scope: !4192)
!4261 = !DILocation(line: 55, column: 15, scope: !4192)
!4262 = !DILocation(line: 55, column: 20, scope: !4192)
!4263 = !DILocation(line: 55, column: 2, scope: !4192)
!4264 = !DILocation(line: 56, column: 7, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4192, file: !3, line: 56, column: 6)
!4266 = !DILocation(line: 56, column: 6, scope: !4192)
!4267 = !DILocation(line: 57, column: 7, scope: !4265)
!4268 = !DILocation(line: 57, column: 3, scope: !4265)
!4269 = !DILocation(line: 59, column: 9, scope: !4265)
!4270 = !DILocation(line: 59, column: 14, scope: !4265)
!4271 = !DILocation(line: 59, column: 25, scope: !4265)
!4272 = !DILocation(line: 59, column: 7, scope: !4265)
!4273 = !DILocation(line: 61, column: 6, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4192, file: !3, line: 61, column: 6)
!4275 = !DILocation(line: 61, column: 6, scope: !4192)
!4276 = !DILocation(line: 62, column: 14, scope: !4274)
!4277 = !DILocation(line: 62, column: 19, scope: !4274)
!4278 = !DILocation(line: 62, column: 30, scope: !4274)
!4279 = !DILocation(line: 62, column: 4, scope: !4274)
!4280 = !DILocation(line: 62, column: 12, scope: !4274)
!4281 = !DILocation(line: 62, column: 3, scope: !4274)
!4282 = !DILocation(line: 64, column: 9, scope: !4192)
!4283 = !DILocation(line: 64, column: 2, scope: !4192)
!4284 = !DILocation(line: 65, column: 1, scope: !4192)
!4285 = distinct !DISubprogram(name: "rtsx_usb_read_ppbuf", scope: !3, file: !3, line: 157, type: !4286, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!139, !3813, !3824, !139}
!4288 = !DILocalVariable(name: "ucr", arg: 1, scope: !4285, file: !3, line: 157, type: !3813)
!4289 = !DILocation(line: 157, column: 42, scope: !4285)
!4290 = !DILocalVariable(name: "buf", arg: 2, scope: !4285, file: !3, line: 157, type: !3824)
!4291 = !DILocation(line: 157, column: 51, scope: !4285)
!4292 = !DILocalVariable(name: "buf_len", arg: 3, scope: !4285, file: !3, line: 157, type: !139)
!4293 = !DILocation(line: 157, column: 60, scope: !4285)
!4294 = !DILocation(line: 159, column: 36, scope: !4285)
!4295 = !DILocation(line: 159, column: 59, scope: !4285)
!4296 = !DILocation(line: 159, column: 54, scope: !4285)
!4297 = !DILocation(line: 159, column: 68, scope: !4285)
!4298 = !DILocation(line: 159, column: 9, scope: !4285)
!4299 = !DILocation(line: 159, column: 2, scope: !4285)
!4300 = distinct !DISubprogram(name: "rtsx_usb_seq_read_register", scope: !3, file: !3, line: 120, type: !4301, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!139, !3813, !128, !128, !3824}
!4303 = !DILocalVariable(name: "ucr", arg: 1, scope: !4300, file: !3, line: 120, type: !3813)
!4304 = !DILocation(line: 120, column: 56, scope: !4300)
!4305 = !DILocalVariable(name: "addr", arg: 2, scope: !4300, file: !3, line: 121, type: !128)
!4306 = !DILocation(line: 121, column: 7, scope: !4300)
!4307 = !DILocalVariable(name: "len", arg: 3, scope: !4300, file: !3, line: 121, type: !128)
!4308 = !DILocation(line: 121, column: 17, scope: !4300)
!4309 = !DILocalVariable(name: "data", arg: 4, scope: !4300, file: !3, line: 121, type: !3824)
!4310 = !DILocation(line: 121, column: 26, scope: !4300)
!4311 = !DILocalVariable(name: "i", scope: !4300, file: !3, line: 123, type: !139)
!4312 = !DILocation(line: 123, column: 6, scope: !4300)
!4313 = !DILocalVariable(name: "ret", scope: !4300, file: !3, line: 123, type: !139)
!4314 = !DILocation(line: 123, column: 9, scope: !4300)
!4315 = !DILocalVariable(name: "rsp_len", scope: !4300, file: !3, line: 124, type: !128)
!4316 = !DILocation(line: 124, column: 6, scope: !4300)
!4317 = !DILocation(line: 124, column: 16, scope: !4300)
!4318 = !DILocalVariable(name: "res_len", scope: !4300, file: !3, line: 125, type: !128)
!4319 = !DILocation(line: 125, column: 6, scope: !4300)
!4320 = !DILocation(line: 125, column: 16, scope: !4300)
!4321 = !DILocation(line: 125, column: 22, scope: !4300)
!4322 = !DILocation(line: 125, column: 20, scope: !4300)
!4323 = !DILocation(line: 127, column: 7, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 127, column: 6)
!4325 = !DILocation(line: 127, column: 6, scope: !4300)
!4326 = !DILocation(line: 128, column: 3, scope: !4324)
!4327 = !DILocation(line: 131, column: 6, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 131, column: 6)
!4329 = !DILocation(line: 131, column: 6, scope: !4300)
!4330 = !DILocation(line: 132, column: 24, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4328, file: !3, line: 131, column: 15)
!4332 = !DILocation(line: 132, column: 29, scope: !4331)
!4333 = !DILocation(line: 132, column: 35, scope: !4331)
!4334 = !DILocation(line: 132, column: 3, scope: !4331)
!4335 = !DILocation(line: 133, column: 32, scope: !4331)
!4336 = !DILocation(line: 134, column: 5, scope: !4331)
!4337 = !DILocation(line: 135, column: 5, scope: !4331)
!4338 = !DILocation(line: 135, column: 10, scope: !4331)
!4339 = !DILocation(line: 133, column: 9, scope: !4331)
!4340 = !DILocation(line: 133, column: 7, scope: !4331)
!4341 = !DILocation(line: 136, column: 7, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4331, file: !3, line: 136, column: 7)
!4343 = !DILocation(line: 136, column: 7, scope: !4331)
!4344 = !DILocation(line: 137, column: 11, scope: !4342)
!4345 = !DILocation(line: 137, column: 4, scope: !4342)
!4346 = !DILocation(line: 139, column: 32, scope: !4331)
!4347 = !DILocation(line: 140, column: 5, scope: !4331)
!4348 = !DILocation(line: 141, column: 5, scope: !4331)
!4349 = !DILocation(line: 141, column: 11, scope: !4331)
!4350 = !DILocation(line: 139, column: 9, scope: !4331)
!4351 = !DILocation(line: 139, column: 7, scope: !4331)
!4352 = !DILocation(line: 142, column: 7, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4331, file: !3, line: 142, column: 7)
!4354 = !DILocation(line: 142, column: 7, scope: !4331)
!4355 = !DILocation(line: 143, column: 11, scope: !4353)
!4356 = !DILocation(line: 143, column: 4, scope: !4353)
!4357 = !DILocation(line: 144, column: 2, scope: !4331)
!4358 = !DILocation(line: 147, column: 9, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 147, column: 2)
!4360 = !DILocation(line: 147, column: 7, scope: !4359)
!4361 = !DILocation(line: 147, column: 14, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4359, file: !3, line: 147, column: 2)
!4363 = !DILocation(line: 147, column: 18, scope: !4362)
!4364 = !DILocation(line: 147, column: 16, scope: !4362)
!4365 = !DILocation(line: 147, column: 2, scope: !4359)
!4366 = !DILocation(line: 148, column: 32, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4362, file: !3, line: 147, column: 32)
!4368 = !DILocation(line: 148, column: 37, scope: !4367)
!4369 = !DILocation(line: 148, column: 44, scope: !4367)
!4370 = !DILocation(line: 148, column: 42, scope: !4367)
!4371 = !DILocation(line: 148, column: 54, scope: !4367)
!4372 = !DILocation(line: 148, column: 52, scope: !4367)
!4373 = !DILocation(line: 149, column: 5, scope: !4367)
!4374 = !DILocation(line: 149, column: 12, scope: !4367)
!4375 = !DILocation(line: 149, column: 10, scope: !4367)
!4376 = !DILocation(line: 149, column: 22, scope: !4367)
!4377 = !DILocation(line: 149, column: 20, scope: !4367)
!4378 = !DILocation(line: 148, column: 9, scope: !4367)
!4379 = !DILocation(line: 148, column: 7, scope: !4367)
!4380 = !DILocation(line: 150, column: 7, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4367, file: !3, line: 150, column: 7)
!4382 = !DILocation(line: 150, column: 7, scope: !4367)
!4383 = !DILocation(line: 151, column: 11, scope: !4381)
!4384 = !DILocation(line: 151, column: 4, scope: !4381)
!4385 = !DILocation(line: 152, column: 2, scope: !4367)
!4386 = !DILocation(line: 147, column: 28, scope: !4362)
!4387 = !DILocation(line: 147, column: 2, scope: !4362)
!4388 = distinct !{!4388, !4365, !4389}
!4389 = !DILocation(line: 152, column: 2, scope: !4359)
!4390 = !DILocation(line: 154, column: 2, scope: !4300)
!4391 = !DILocation(line: 155, column: 1, scope: !4300)
!4392 = distinct !DISubprogram(name: "rtsx_usb_write_ppbuf", scope: !3, file: !3, line: 163, type: !4286, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4393 = !DILocalVariable(name: "ucr", arg: 1, scope: !4392, file: !3, line: 163, type: !3813)
!4394 = !DILocation(line: 163, column: 43, scope: !4392)
!4395 = !DILocalVariable(name: "buf", arg: 2, scope: !4392, file: !3, line: 163, type: !3824)
!4396 = !DILocation(line: 163, column: 52, scope: !4392)
!4397 = !DILocalVariable(name: "buf_len", arg: 3, scope: !4392, file: !3, line: 163, type: !139)
!4398 = !DILocation(line: 163, column: 61, scope: !4392)
!4399 = !DILocation(line: 165, column: 37, scope: !4392)
!4400 = !DILocation(line: 165, column: 60, scope: !4392)
!4401 = !DILocation(line: 165, column: 55, scope: !4392)
!4402 = !DILocation(line: 165, column: 69, scope: !4392)
!4403 = !DILocation(line: 165, column: 9, scope: !4392)
!4404 = !DILocation(line: 165, column: 2, scope: !4392)
!4405 = distinct !DISubprogram(name: "rtsx_usb_seq_write_register", scope: !3, file: !3, line: 101, type: !4301, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4406 = !DILocalVariable(name: "ucr", arg: 1, scope: !4405, file: !3, line: 101, type: !3813)
!4407 = !DILocation(line: 101, column: 57, scope: !4405)
!4408 = !DILocalVariable(name: "addr", arg: 2, scope: !4405, file: !3, line: 102, type: !128)
!4409 = !DILocation(line: 102, column: 7, scope: !4405)
!4410 = !DILocalVariable(name: "len", arg: 3, scope: !4405, file: !3, line: 102, type: !128)
!4411 = !DILocation(line: 102, column: 17, scope: !4405)
!4412 = !DILocalVariable(name: "data", arg: 4, scope: !4405, file: !3, line: 102, type: !3824)
!4413 = !DILocation(line: 102, column: 26, scope: !4405)
!4414 = !DILocalVariable(name: "cmd_len", scope: !4405, file: !3, line: 104, type: !128)
!4415 = !DILocation(line: 104, column: 6, scope: !4405)
!4416 = !DILocation(line: 104, column: 16, scope: !4405)
!4417 = !DILocation(line: 106, column: 7, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4405, file: !3, line: 106, column: 6)
!4419 = !DILocation(line: 106, column: 6, scope: !4405)
!4420 = !DILocation(line: 107, column: 3, scope: !4418)
!4421 = !DILocation(line: 109, column: 6, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4405, file: !3, line: 109, column: 6)
!4423 = !DILocation(line: 109, column: 14, scope: !4422)
!4424 = !DILocation(line: 109, column: 6, scope: !4405)
!4425 = !DILocation(line: 110, column: 3, scope: !4422)
!4426 = !DILocation(line: 112, column: 23, scope: !4405)
!4427 = !DILocation(line: 112, column: 28, scope: !4405)
!4428 = !DILocation(line: 112, column: 34, scope: !4405)
!4429 = !DILocation(line: 112, column: 2, scope: !4405)
!4430 = !DILocation(line: 113, column: 9, scope: !4405)
!4431 = !DILocation(line: 113, column: 14, scope: !4405)
!4432 = !DILocation(line: 113, column: 22, scope: !4405)
!4433 = !DILocation(line: 113, column: 47, scope: !4405)
!4434 = !DILocation(line: 113, column: 53, scope: !4405)
!4435 = !DILocation(line: 113, column: 2, scope: !4405)
!4436 = !DILocation(line: 115, column: 32, scope: !4405)
!4437 = !DILocation(line: 116, column: 4, scope: !4405)
!4438 = !DILocation(line: 117, column: 4, scope: !4405)
!4439 = !DILocation(line: 117, column: 9, scope: !4405)
!4440 = !DILocation(line: 117, column: 18, scope: !4405)
!4441 = !DILocation(line: 115, column: 9, scope: !4405)
!4442 = !DILocation(line: 115, column: 2, scope: !4405)
!4443 = !DILocation(line: 118, column: 1, scope: !4405)
!4444 = distinct !DISubprogram(name: "rtsx_usb_ep0_write_register", scope: !3, file: !3, line: 169, type: !4445, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!139, !3813, !128, !136, !136}
!4447 = !DILocalVariable(name: "ucr", arg: 1, scope: !4444, file: !3, line: 169, type: !3813)
!4448 = !DILocation(line: 169, column: 50, scope: !4444)
!4449 = !DILocalVariable(name: "addr", arg: 2, scope: !4444, file: !3, line: 169, type: !128)
!4450 = !DILocation(line: 169, column: 59, scope: !4444)
!4451 = !DILocalVariable(name: "mask", arg: 3, scope: !4444, file: !3, line: 170, type: !136)
!4452 = !DILocation(line: 170, column: 6, scope: !4444)
!4453 = !DILocalVariable(name: "data", arg: 4, scope: !4444, file: !3, line: 170, type: !136)
!4454 = !DILocation(line: 170, column: 15, scope: !4444)
!4455 = !DILocalVariable(name: "value", scope: !4444, file: !3, line: 172, type: !128)
!4456 = !DILocation(line: 172, column: 6, scope: !4444)
!4457 = !DILocalVariable(name: "index", scope: !4444, file: !3, line: 172, type: !128)
!4458 = !DILocation(line: 172, column: 13, scope: !4444)
!4459 = !DILocation(line: 174, column: 7, scope: !4444)
!4460 = !DILocation(line: 175, column: 10, scope: !4444)
!4461 = !DILocation(line: 175, column: 8, scope: !4444)
!4462 = !DILocation(line: 176, column: 10, scope: !4444)
!4463 = !DILocation(line: 176, column: 17, scope: !4444)
!4464 = !DILocation(line: 176, column: 22, scope: !4444)
!4465 = !DILocation(line: 176, column: 15, scope: !4444)
!4466 = !DILocation(line: 176, column: 8, scope: !4444)
!4467 = !DILocation(line: 178, column: 25, scope: !4444)
!4468 = !DILocation(line: 178, column: 30, scope: !4444)
!4469 = !DILocation(line: 179, column: 4, scope: !4444)
!4470 = !DILocation(line: 181, column: 4, scope: !4444)
!4471 = !DILocation(line: 181, column: 11, scope: !4444)
!4472 = !DILocation(line: 178, column: 9, scope: !4444)
!4473 = !DILocation(line: 178, column: 2, scope: !4444)
!4474 = distinct !DISubprogram(name: "__fswab16", scope: !4475, file: !4475, line: 48, type: !4476, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4475 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!130, !130}
!4478 = !DILocalVariable(name: "val", arg: 1, scope: !4474, file: !4475, line: 48, type: !130)
!4479 = !DILocation(line: 48, column: 57, scope: !4474)
!4480 = !DILocation(line: 53, column: 9, scope: !4474)
!4481 = !DILocation(line: 53, column: 2, scope: !4474)
!4482 = distinct !DISubprogram(name: "__create_pipe", scope: !102, file: !102, line: 1945, type: !4483, scopeLine: 1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{!7, !144, !7}
!4485 = !DILocalVariable(name: "dev", arg: 1, scope: !4482, file: !102, line: 1945, type: !144)
!4486 = !DILocation(line: 1945, column: 61, scope: !4482)
!4487 = !DILocalVariable(name: "endpoint", arg: 2, scope: !4482, file: !102, line: 1946, type: !7)
!4488 = !DILocation(line: 1946, column: 16, scope: !4482)
!4489 = !DILocation(line: 1948, column: 10, scope: !4482)
!4490 = !DILocation(line: 1948, column: 15, scope: !4482)
!4491 = !DILocation(line: 1948, column: 22, scope: !4482)
!4492 = !DILocation(line: 1948, column: 31, scope: !4482)
!4493 = !DILocation(line: 1948, column: 40, scope: !4482)
!4494 = !DILocation(line: 1948, column: 28, scope: !4482)
!4495 = !DILocation(line: 1948, column: 2, scope: !4482)
!4496 = distinct !DISubprogram(name: "rtsx_usb_ep0_read_register", scope: !3, file: !3, line: 185, type: !4497, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!139, !3813, !128, !3824}
!4499 = !DILocalVariable(name: "ucr", arg: 1, scope: !4496, file: !3, line: 185, type: !3813)
!4500 = !DILocation(line: 185, column: 49, scope: !4496)
!4501 = !DILocalVariable(name: "addr", arg: 2, scope: !4496, file: !3, line: 185, type: !128)
!4502 = !DILocation(line: 185, column: 58, scope: !4496)
!4503 = !DILocalVariable(name: "data", arg: 3, scope: !4496, file: !3, line: 185, type: !3824)
!4504 = !DILocation(line: 185, column: 68, scope: !4496)
!4505 = !DILocalVariable(name: "value", scope: !4496, file: !3, line: 187, type: !128)
!4506 = !DILocation(line: 187, column: 6, scope: !4496)
!4507 = !DILocalVariable(name: "buf", scope: !4496, file: !3, line: 188, type: !3824)
!4508 = !DILocation(line: 188, column: 6, scope: !4496)
!4509 = !DILocalVariable(name: "ret", scope: !4496, file: !3, line: 189, type: !139)
!4510 = !DILocation(line: 189, column: 6, scope: !4496)
!4511 = !DILocation(line: 191, column: 7, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4496, file: !3, line: 191, column: 6)
!4513 = !DILocation(line: 191, column: 6, scope: !4496)
!4514 = !DILocation(line: 192, column: 3, scope: !4512)
!4515 = !DILocation(line: 194, column: 8, scope: !4496)
!4516 = !DILocation(line: 194, column: 6, scope: !4496)
!4517 = !DILocation(line: 195, column: 7, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4496, file: !3, line: 195, column: 6)
!4519 = !DILocation(line: 195, column: 6, scope: !4496)
!4520 = !DILocation(line: 196, column: 3, scope: !4518)
!4521 = !DILocation(line: 198, column: 7, scope: !4496)
!4522 = !DILocation(line: 199, column: 10, scope: !4496)
!4523 = !DILocation(line: 199, column: 8, scope: !4496)
!4524 = !DILocation(line: 201, column: 24, scope: !4496)
!4525 = !DILocation(line: 201, column: 29, scope: !4496)
!4526 = !DILocation(line: 202, column: 4, scope: !4496)
!4527 = !DILocation(line: 204, column: 4, scope: !4496)
!4528 = !DILocation(line: 204, column: 14, scope: !4496)
!4529 = !DILocation(line: 201, column: 8, scope: !4496)
!4530 = !DILocation(line: 201, column: 6, scope: !4496)
!4531 = !DILocation(line: 205, column: 11, scope: !4496)
!4532 = !DILocation(line: 205, column: 10, scope: !4496)
!4533 = !DILocation(line: 205, column: 3, scope: !4496)
!4534 = !DILocation(line: 205, column: 8, scope: !4496)
!4535 = !DILocation(line: 207, column: 8, scope: !4496)
!4536 = !DILocation(line: 207, column: 2, scope: !4496)
!4537 = !DILocation(line: 208, column: 9, scope: !4496)
!4538 = !DILocation(line: 208, column: 2, scope: !4496)
!4539 = !DILocation(line: 209, column: 1, scope: !4496)
!4540 = distinct !DISubprogram(name: "kzalloc", scope: !114, file: !114, line: 662, type: !4541, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!133, !284, !134}
!4543 = !DILocalVariable(name: "s", arg: 1, scope: !4544, file: !114, line: 445, type: !891)
!4544 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !114, file: !114, line: 445, type: !4545, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4545 = !DISubroutineType(types: !4546)
!4546 = !{!133, !891, !134, !284}
!4547 = !DILocation(line: 445, column: 72, scope: !4544, inlinedAt: !4548)
!4548 = distinct !DILocation(line: 552, column: 10, scope: !4549, inlinedAt: !4552)
!4549 = distinct !DILexicalBlock(scope: !4550, file: !114, line: 540, column: 34)
!4550 = distinct !DILexicalBlock(scope: !4551, file: !114, line: 540, column: 6)
!4551 = distinct !DISubprogram(name: "kmalloc", scope: !114, file: !114, line: 538, type: !4541, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4552 = distinct !DILocation(line: 664, column: 9, scope: !4540)
!4553 = !DILocalVariable(name: "flags", arg: 2, scope: !4544, file: !114, line: 446, type: !134)
!4554 = !DILocation(line: 446, column: 9, scope: !4544, inlinedAt: !4548)
!4555 = !DILocalVariable(name: "size", arg: 3, scope: !4544, file: !114, line: 446, type: !284)
!4556 = !DILocation(line: 446, column: 23, scope: !4544, inlinedAt: !4548)
!4557 = !DILocalVariable(name: "ret", scope: !4544, file: !114, line: 448, type: !133)
!4558 = !DILocation(line: 448, column: 8, scope: !4544, inlinedAt: !4548)
!4559 = !DILocalVariable(name: "flags", arg: 1, scope: !4560, file: !114, line: 318, type: !134)
!4560 = distinct !DISubprogram(name: "kmalloc_type", scope: !114, file: !114, line: 318, type: !4561, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!113, !134}
!4563 = !DILocation(line: 318, column: 67, scope: !4560, inlinedAt: !4564)
!4564 = distinct !DILocation(line: 553, column: 20, scope: !4549, inlinedAt: !4552)
!4565 = !DILocalVariable(name: "size", arg: 1, scope: !4566, file: !114, line: 346, type: !284)
!4566 = distinct !DISubprogram(name: "kmalloc_index", scope: !114, file: !114, line: 346, type: !4567, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!7, !284}
!4569 = !DILocation(line: 346, column: 58, scope: !4566, inlinedAt: !4570)
!4570 = distinct !DILocation(line: 547, column: 11, scope: !4549, inlinedAt: !4552)
!4571 = !DILocalVariable(name: "size", arg: 1, scope: !4572, file: !114, line: 472, type: !284)
!4572 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !114, file: !114, line: 472, type: !4573, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{!133, !284, !134, !7}
!4575 = !DILocation(line: 472, column: 28, scope: !4572, inlinedAt: !4576)
!4576 = distinct !DILocation(line: 481, column: 9, scope: !4577, inlinedAt: !4578)
!4577 = distinct !DISubprogram(name: "kmalloc_large", scope: !114, file: !114, line: 478, type: !4541, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4578 = distinct !DILocation(line: 545, column: 11, scope: !4579, inlinedAt: !4552)
!4579 = distinct !DILexicalBlock(scope: !4549, file: !114, line: 544, column: 7)
!4580 = !DILocalVariable(name: "flags", arg: 2, scope: !4572, file: !114, line: 472, type: !134)
!4581 = !DILocation(line: 472, column: 40, scope: !4572, inlinedAt: !4576)
!4582 = !DILocalVariable(name: "order", arg: 3, scope: !4572, file: !114, line: 472, type: !7)
!4583 = !DILocation(line: 472, column: 60, scope: !4572, inlinedAt: !4576)
!4584 = !DILocalVariable(name: "size", arg: 1, scope: !4577, file: !114, line: 478, type: !284)
!4585 = !DILocation(line: 478, column: 51, scope: !4577, inlinedAt: !4578)
!4586 = !DILocalVariable(name: "flags", arg: 2, scope: !4577, file: !114, line: 478, type: !134)
!4587 = !DILocation(line: 478, column: 63, scope: !4577, inlinedAt: !4578)
!4588 = !DILocalVariable(name: "order", scope: !4577, file: !114, line: 480, type: !7)
!4589 = !DILocation(line: 480, column: 15, scope: !4577, inlinedAt: !4578)
!4590 = !DILocalVariable(name: "size", arg: 1, scope: !4551, file: !114, line: 538, type: !284)
!4591 = !DILocation(line: 538, column: 45, scope: !4551, inlinedAt: !4552)
!4592 = !DILocalVariable(name: "flags", arg: 2, scope: !4551, file: !114, line: 538, type: !134)
!4593 = !DILocation(line: 538, column: 57, scope: !4551, inlinedAt: !4552)
!4594 = !DILocalVariable(name: "index", scope: !4549, file: !114, line: 542, type: !7)
!4595 = !DILocation(line: 542, column: 16, scope: !4549, inlinedAt: !4552)
!4596 = !DILocalVariable(name: "size", arg: 1, scope: !4540, file: !114, line: 662, type: !284)
!4597 = !DILocation(line: 662, column: 36, scope: !4540)
!4598 = !DILocalVariable(name: "flags", arg: 2, scope: !4540, file: !114, line: 662, type: !134)
!4599 = !DILocation(line: 662, column: 48, scope: !4540)
!4600 = !DILocation(line: 664, column: 17, scope: !4540)
!4601 = !DILocation(line: 664, column: 23, scope: !4540)
!4602 = !DILocation(line: 664, column: 29, scope: !4540)
!4603 = !DILocation(line: 540, column: 27, scope: !4550, inlinedAt: !4552)
!4604 = !DILocation(line: 540, column: 6, scope: !4550, inlinedAt: !4552)
!4605 = !DILocation(line: 540, column: 6, scope: !4551, inlinedAt: !4552)
!4606 = !DILocation(line: 544, column: 7, scope: !4579, inlinedAt: !4552)
!4607 = !DILocation(line: 544, column: 12, scope: !4579, inlinedAt: !4552)
!4608 = !DILocation(line: 544, column: 7, scope: !4549, inlinedAt: !4552)
!4609 = !DILocation(line: 545, column: 25, scope: !4579, inlinedAt: !4552)
!4610 = !DILocation(line: 545, column: 31, scope: !4579, inlinedAt: !4552)
!4611 = !DILocation(line: 480, column: 33, scope: !4577, inlinedAt: !4578)
!4612 = !DILocation(line: 480, column: 23, scope: !4577, inlinedAt: !4578)
!4613 = !DILocation(line: 481, column: 29, scope: !4577, inlinedAt: !4578)
!4614 = !DILocation(line: 481, column: 35, scope: !4577, inlinedAt: !4578)
!4615 = !DILocation(line: 481, column: 42, scope: !4577, inlinedAt: !4578)
!4616 = !DILocation(line: 474, column: 23, scope: !4572, inlinedAt: !4576)
!4617 = !DILocation(line: 474, column: 29, scope: !4572, inlinedAt: !4576)
!4618 = !DILocation(line: 474, column: 36, scope: !4572, inlinedAt: !4576)
!4619 = !DILocation(line: 474, column: 9, scope: !4572, inlinedAt: !4576)
!4620 = !DILocation(line: 545, column: 4, scope: !4579, inlinedAt: !4552)
!4621 = !DILocation(line: 547, column: 25, scope: !4549, inlinedAt: !4552)
!4622 = !DILocation(line: 348, column: 7, scope: !4623, inlinedAt: !4570)
!4623 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 348, column: 6)
!4624 = !DILocation(line: 348, column: 6, scope: !4566, inlinedAt: !4570)
!4625 = !DILocation(line: 349, column: 3, scope: !4623, inlinedAt: !4570)
!4626 = !DILocation(line: 351, column: 6, scope: !4627, inlinedAt: !4570)
!4627 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 351, column: 6)
!4628 = !DILocation(line: 351, column: 11, scope: !4627, inlinedAt: !4570)
!4629 = !DILocation(line: 351, column: 6, scope: !4566, inlinedAt: !4570)
!4630 = !DILocation(line: 352, column: 3, scope: !4627, inlinedAt: !4570)
!4631 = !DILocation(line: 354, column: 32, scope: !4632, inlinedAt: !4570)
!4632 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 354, column: 6)
!4633 = !DILocation(line: 354, column: 37, scope: !4632, inlinedAt: !4570)
!4634 = !DILocation(line: 354, column: 42, scope: !4632, inlinedAt: !4570)
!4635 = !DILocation(line: 354, column: 45, scope: !4632, inlinedAt: !4570)
!4636 = !DILocation(line: 354, column: 50, scope: !4632, inlinedAt: !4570)
!4637 = !DILocation(line: 354, column: 6, scope: !4566, inlinedAt: !4570)
!4638 = !DILocation(line: 355, column: 3, scope: !4632, inlinedAt: !4570)
!4639 = !DILocation(line: 356, column: 32, scope: !4640, inlinedAt: !4570)
!4640 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 356, column: 6)
!4641 = !DILocation(line: 356, column: 37, scope: !4640, inlinedAt: !4570)
!4642 = !DILocation(line: 356, column: 43, scope: !4640, inlinedAt: !4570)
!4643 = !DILocation(line: 356, column: 46, scope: !4640, inlinedAt: !4570)
!4644 = !DILocation(line: 356, column: 51, scope: !4640, inlinedAt: !4570)
!4645 = !DILocation(line: 356, column: 6, scope: !4566, inlinedAt: !4570)
!4646 = !DILocation(line: 357, column: 3, scope: !4640, inlinedAt: !4570)
!4647 = !DILocation(line: 358, column: 6, scope: !4648, inlinedAt: !4570)
!4648 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 358, column: 6)
!4649 = !DILocation(line: 358, column: 11, scope: !4648, inlinedAt: !4570)
!4650 = !DILocation(line: 358, column: 6, scope: !4566, inlinedAt: !4570)
!4651 = !DILocation(line: 358, column: 26, scope: !4648, inlinedAt: !4570)
!4652 = !DILocation(line: 359, column: 6, scope: !4653, inlinedAt: !4570)
!4653 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 359, column: 6)
!4654 = !DILocation(line: 359, column: 11, scope: !4653, inlinedAt: !4570)
!4655 = !DILocation(line: 359, column: 6, scope: !4566, inlinedAt: !4570)
!4656 = !DILocation(line: 359, column: 26, scope: !4653, inlinedAt: !4570)
!4657 = !DILocation(line: 360, column: 6, scope: !4658, inlinedAt: !4570)
!4658 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 360, column: 6)
!4659 = !DILocation(line: 360, column: 11, scope: !4658, inlinedAt: !4570)
!4660 = !DILocation(line: 360, column: 6, scope: !4566, inlinedAt: !4570)
!4661 = !DILocation(line: 360, column: 26, scope: !4658, inlinedAt: !4570)
!4662 = !DILocation(line: 361, column: 6, scope: !4663, inlinedAt: !4570)
!4663 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 361, column: 6)
!4664 = !DILocation(line: 361, column: 11, scope: !4663, inlinedAt: !4570)
!4665 = !DILocation(line: 361, column: 6, scope: !4566, inlinedAt: !4570)
!4666 = !DILocation(line: 361, column: 26, scope: !4663, inlinedAt: !4570)
!4667 = !DILocation(line: 362, column: 6, scope: !4668, inlinedAt: !4570)
!4668 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 362, column: 6)
!4669 = !DILocation(line: 362, column: 11, scope: !4668, inlinedAt: !4570)
!4670 = !DILocation(line: 362, column: 6, scope: !4566, inlinedAt: !4570)
!4671 = !DILocation(line: 362, column: 26, scope: !4668, inlinedAt: !4570)
!4672 = !DILocation(line: 363, column: 6, scope: !4673, inlinedAt: !4570)
!4673 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 363, column: 6)
!4674 = !DILocation(line: 363, column: 11, scope: !4673, inlinedAt: !4570)
!4675 = !DILocation(line: 363, column: 6, scope: !4566, inlinedAt: !4570)
!4676 = !DILocation(line: 363, column: 26, scope: !4673, inlinedAt: !4570)
!4677 = !DILocation(line: 364, column: 6, scope: !4678, inlinedAt: !4570)
!4678 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 364, column: 6)
!4679 = !DILocation(line: 364, column: 11, scope: !4678, inlinedAt: !4570)
!4680 = !DILocation(line: 364, column: 6, scope: !4566, inlinedAt: !4570)
!4681 = !DILocation(line: 364, column: 26, scope: !4678, inlinedAt: !4570)
!4682 = !DILocation(line: 365, column: 6, scope: !4683, inlinedAt: !4570)
!4683 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 365, column: 6)
!4684 = !DILocation(line: 365, column: 11, scope: !4683, inlinedAt: !4570)
!4685 = !DILocation(line: 365, column: 6, scope: !4566, inlinedAt: !4570)
!4686 = !DILocation(line: 365, column: 26, scope: !4683, inlinedAt: !4570)
!4687 = !DILocation(line: 366, column: 6, scope: !4688, inlinedAt: !4570)
!4688 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 366, column: 6)
!4689 = !DILocation(line: 366, column: 11, scope: !4688, inlinedAt: !4570)
!4690 = !DILocation(line: 366, column: 6, scope: !4566, inlinedAt: !4570)
!4691 = !DILocation(line: 366, column: 26, scope: !4688, inlinedAt: !4570)
!4692 = !DILocation(line: 367, column: 6, scope: !4693, inlinedAt: !4570)
!4693 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 367, column: 6)
!4694 = !DILocation(line: 367, column: 11, scope: !4693, inlinedAt: !4570)
!4695 = !DILocation(line: 367, column: 6, scope: !4566, inlinedAt: !4570)
!4696 = !DILocation(line: 367, column: 26, scope: !4693, inlinedAt: !4570)
!4697 = !DILocation(line: 368, column: 6, scope: !4698, inlinedAt: !4570)
!4698 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 368, column: 6)
!4699 = !DILocation(line: 368, column: 11, scope: !4698, inlinedAt: !4570)
!4700 = !DILocation(line: 368, column: 6, scope: !4566, inlinedAt: !4570)
!4701 = !DILocation(line: 368, column: 26, scope: !4698, inlinedAt: !4570)
!4702 = !DILocation(line: 369, column: 6, scope: !4703, inlinedAt: !4570)
!4703 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 369, column: 6)
!4704 = !DILocation(line: 369, column: 11, scope: !4703, inlinedAt: !4570)
!4705 = !DILocation(line: 369, column: 6, scope: !4566, inlinedAt: !4570)
!4706 = !DILocation(line: 369, column: 26, scope: !4703, inlinedAt: !4570)
!4707 = !DILocation(line: 370, column: 6, scope: !4708, inlinedAt: !4570)
!4708 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 370, column: 6)
!4709 = !DILocation(line: 370, column: 11, scope: !4708, inlinedAt: !4570)
!4710 = !DILocation(line: 370, column: 6, scope: !4566, inlinedAt: !4570)
!4711 = !DILocation(line: 370, column: 26, scope: !4708, inlinedAt: !4570)
!4712 = !DILocation(line: 371, column: 6, scope: !4713, inlinedAt: !4570)
!4713 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 371, column: 6)
!4714 = !DILocation(line: 371, column: 11, scope: !4713, inlinedAt: !4570)
!4715 = !DILocation(line: 371, column: 6, scope: !4566, inlinedAt: !4570)
!4716 = !DILocation(line: 371, column: 26, scope: !4713, inlinedAt: !4570)
!4717 = !DILocation(line: 372, column: 6, scope: !4718, inlinedAt: !4570)
!4718 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 372, column: 6)
!4719 = !DILocation(line: 372, column: 11, scope: !4718, inlinedAt: !4570)
!4720 = !DILocation(line: 372, column: 6, scope: !4566, inlinedAt: !4570)
!4721 = !DILocation(line: 372, column: 26, scope: !4718, inlinedAt: !4570)
!4722 = !DILocation(line: 373, column: 6, scope: !4723, inlinedAt: !4570)
!4723 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 373, column: 6)
!4724 = !DILocation(line: 373, column: 11, scope: !4723, inlinedAt: !4570)
!4725 = !DILocation(line: 373, column: 6, scope: !4566, inlinedAt: !4570)
!4726 = !DILocation(line: 373, column: 26, scope: !4723, inlinedAt: !4570)
!4727 = !DILocation(line: 374, column: 6, scope: !4728, inlinedAt: !4570)
!4728 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 374, column: 6)
!4729 = !DILocation(line: 374, column: 11, scope: !4728, inlinedAt: !4570)
!4730 = !DILocation(line: 374, column: 6, scope: !4566, inlinedAt: !4570)
!4731 = !DILocation(line: 374, column: 26, scope: !4728, inlinedAt: !4570)
!4732 = !DILocation(line: 375, column: 6, scope: !4733, inlinedAt: !4570)
!4733 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 375, column: 6)
!4734 = !DILocation(line: 375, column: 11, scope: !4733, inlinedAt: !4570)
!4735 = !DILocation(line: 375, column: 6, scope: !4566, inlinedAt: !4570)
!4736 = !DILocation(line: 375, column: 27, scope: !4733, inlinedAt: !4570)
!4737 = !DILocation(line: 376, column: 6, scope: !4738, inlinedAt: !4570)
!4738 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 376, column: 6)
!4739 = !DILocation(line: 376, column: 11, scope: !4738, inlinedAt: !4570)
!4740 = !DILocation(line: 376, column: 6, scope: !4566, inlinedAt: !4570)
!4741 = !DILocation(line: 376, column: 32, scope: !4738, inlinedAt: !4570)
!4742 = !DILocation(line: 377, column: 6, scope: !4743, inlinedAt: !4570)
!4743 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 377, column: 6)
!4744 = !DILocation(line: 377, column: 11, scope: !4743, inlinedAt: !4570)
!4745 = !DILocation(line: 377, column: 6, scope: !4566, inlinedAt: !4570)
!4746 = !DILocation(line: 377, column: 32, scope: !4743, inlinedAt: !4570)
!4747 = !DILocation(line: 378, column: 6, scope: !4748, inlinedAt: !4570)
!4748 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 378, column: 6)
!4749 = !DILocation(line: 378, column: 11, scope: !4748, inlinedAt: !4570)
!4750 = !DILocation(line: 378, column: 6, scope: !4566, inlinedAt: !4570)
!4751 = !DILocation(line: 378, column: 32, scope: !4748, inlinedAt: !4570)
!4752 = !DILocation(line: 379, column: 6, scope: !4753, inlinedAt: !4570)
!4753 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 379, column: 6)
!4754 = !DILocation(line: 379, column: 11, scope: !4753, inlinedAt: !4570)
!4755 = !DILocation(line: 379, column: 6, scope: !4566, inlinedAt: !4570)
!4756 = !DILocation(line: 379, column: 33, scope: !4753, inlinedAt: !4570)
!4757 = !DILocation(line: 380, column: 6, scope: !4758, inlinedAt: !4570)
!4758 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 380, column: 6)
!4759 = !DILocation(line: 380, column: 11, scope: !4758, inlinedAt: !4570)
!4760 = !DILocation(line: 380, column: 6, scope: !4566, inlinedAt: !4570)
!4761 = !DILocation(line: 380, column: 33, scope: !4758, inlinedAt: !4570)
!4762 = !DILocation(line: 381, column: 6, scope: !4763, inlinedAt: !4570)
!4763 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 381, column: 6)
!4764 = !DILocation(line: 381, column: 11, scope: !4763, inlinedAt: !4570)
!4765 = !DILocation(line: 381, column: 6, scope: !4566, inlinedAt: !4570)
!4766 = !DILocation(line: 381, column: 33, scope: !4763, inlinedAt: !4570)
!4767 = !DILocation(line: 382, column: 2, scope: !4768, inlinedAt: !4570)
!4768 = distinct !DILexicalBlock(scope: !4769, file: !114, line: 382, column: 2)
!4769 = distinct !DILexicalBlock(scope: !4566, file: !114, line: 382, column: 2)
!4770 = !{i32 -2144228857, i32 -2144228828, i32 -2144228782, i32 -2144228724, i32 -2144228670, i32 -2144228616, i32 -2144228561, i32 -2144228530}
!4771 = !DILocation(line: 382, column: 2, scope: !4772, inlinedAt: !4570)
!4772 = distinct !DILexicalBlock(scope: !4773, file: !114, line: 382, column: 2)
!4773 = distinct !DILexicalBlock(scope: !4769, file: !114, line: 382, column: 2)
!4774 = !{i32 -2144228087, i32 -2144228080, i32 -2144228026, i32 -2144227995, i32 -2144227965}
!4775 = !DILocation(line: 382, column: 2, scope: !4773, inlinedAt: !4570)
!4776 = !DILocation(line: 386, column: 1, scope: !4566, inlinedAt: !4570)
!4777 = !DILocation(line: 547, column: 9, scope: !4549, inlinedAt: !4552)
!4778 = !DILocation(line: 549, column: 8, scope: !4779, inlinedAt: !4552)
!4779 = distinct !DILexicalBlock(scope: !4549, file: !114, line: 549, column: 7)
!4780 = !DILocation(line: 549, column: 7, scope: !4549, inlinedAt: !4552)
!4781 = !DILocation(line: 550, column: 4, scope: !4779, inlinedAt: !4552)
!4782 = !DILocation(line: 553, column: 33, scope: !4549, inlinedAt: !4552)
!4783 = !DILocation(line: 325, column: 6, scope: !4784, inlinedAt: !4564)
!4784 = distinct !DILexicalBlock(scope: !4560, file: !114, line: 325, column: 6)
!4785 = !DILocation(line: 325, column: 6, scope: !4560, inlinedAt: !4564)
!4786 = !DILocation(line: 326, column: 3, scope: !4784, inlinedAt: !4564)
!4787 = !DILocation(line: 332, column: 9, scope: !4560, inlinedAt: !4564)
!4788 = !DILocation(line: 332, column: 15, scope: !4560, inlinedAt: !4564)
!4789 = !DILocation(line: 332, column: 2, scope: !4560, inlinedAt: !4564)
!4790 = !DILocation(line: 336, column: 1, scope: !4560, inlinedAt: !4564)
!4791 = !DILocation(line: 553, column: 5, scope: !4549, inlinedAt: !4552)
!4792 = !DILocation(line: 553, column: 41, scope: !4549, inlinedAt: !4552)
!4793 = !DILocation(line: 554, column: 5, scope: !4549, inlinedAt: !4552)
!4794 = !DILocation(line: 554, column: 12, scope: !4549, inlinedAt: !4552)
!4795 = !DILocation(line: 448, column: 31, scope: !4544, inlinedAt: !4548)
!4796 = !DILocation(line: 448, column: 34, scope: !4544, inlinedAt: !4548)
!4797 = !DILocation(line: 448, column: 14, scope: !4544, inlinedAt: !4548)
!4798 = !DILocation(line: 450, column: 22, scope: !4544, inlinedAt: !4548)
!4799 = !DILocation(line: 450, column: 25, scope: !4544, inlinedAt: !4548)
!4800 = !DILocation(line: 450, column: 30, scope: !4544, inlinedAt: !4548)
!4801 = !DILocation(line: 450, column: 36, scope: !4544, inlinedAt: !4548)
!4802 = !DILocation(line: 450, column: 8, scope: !4544, inlinedAt: !4548)
!4803 = !DILocation(line: 450, column: 6, scope: !4544, inlinedAt: !4548)
!4804 = !DILocation(line: 451, column: 9, scope: !4544, inlinedAt: !4548)
!4805 = !DILocation(line: 552, column: 3, scope: !4549, inlinedAt: !4552)
!4806 = !DILocation(line: 557, column: 19, scope: !4551, inlinedAt: !4552)
!4807 = !DILocation(line: 557, column: 25, scope: !4551, inlinedAt: !4552)
!4808 = !DILocation(line: 557, column: 9, scope: !4551, inlinedAt: !4552)
!4809 = !DILocation(line: 557, column: 2, scope: !4551, inlinedAt: !4552)
!4810 = !DILocation(line: 558, column: 1, scope: !4551, inlinedAt: !4552)
!4811 = !DILocation(line: 664, column: 2, scope: !4540)
!4812 = distinct !DISubprogram(name: "rtsx_usb_add_cmd", scope: !3, file: !3, line: 212, type: !4813, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{null, !3813, !136, !128, !136, !136}
!4815 = !DILocalVariable(name: "ucr", arg: 1, scope: !4812, file: !3, line: 212, type: !3813)
!4816 = !DILocation(line: 212, column: 40, scope: !4812)
!4817 = !DILocalVariable(name: "cmd_type", arg: 2, scope: !4812, file: !3, line: 212, type: !136)
!4818 = !DILocation(line: 212, column: 48, scope: !4812)
!4819 = !DILocalVariable(name: "reg_addr", arg: 3, scope: !4812, file: !3, line: 212, type: !128)
!4820 = !DILocation(line: 212, column: 62, scope: !4812)
!4821 = !DILocalVariable(name: "mask", arg: 4, scope: !4812, file: !3, line: 213, type: !136)
!4822 = !DILocation(line: 213, column: 6, scope: !4812)
!4823 = !DILocalVariable(name: "data", arg: 5, scope: !4812, file: !3, line: 213, type: !136)
!4824 = !DILocation(line: 213, column: 15, scope: !4812)
!4825 = !DILocalVariable(name: "i", scope: !4812, file: !3, line: 215, type: !139)
!4826 = !DILocation(line: 215, column: 6, scope: !4812)
!4827 = !DILocation(line: 217, column: 6, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 217, column: 6)
!4829 = !DILocation(line: 217, column: 11, scope: !4828)
!4830 = !DILocation(line: 217, column: 19, scope: !4828)
!4831 = !DILocation(line: 217, column: 6, scope: !4812)
!4832 = !DILocation(line: 218, column: 20, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 217, column: 52)
!4834 = !DILocation(line: 218, column: 25, scope: !4833)
!4835 = !DILocation(line: 218, column: 33, scope: !4833)
!4836 = !DILocation(line: 218, column: 18, scope: !4833)
!4837 = !DILocation(line: 218, column: 5, scope: !4833)
!4838 = !DILocation(line: 220, column: 25, scope: !4833)
!4839 = !DILocation(line: 220, column: 34, scope: !4833)
!4840 = !DILocation(line: 220, column: 42, scope: !4833)
!4841 = !DILocation(line: 221, column: 10, scope: !4833)
!4842 = !DILocation(line: 221, column: 19, scope: !4833)
!4843 = !DILocation(line: 221, column: 25, scope: !4833)
!4844 = !DILocation(line: 221, column: 4, scope: !4833)
!4845 = !DILocation(line: 220, column: 48, scope: !4833)
!4846 = !DILocation(line: 220, column: 23, scope: !4833)
!4847 = !DILocation(line: 220, column: 3, scope: !4833)
!4848 = !DILocation(line: 220, column: 8, scope: !4833)
!4849 = !DILocation(line: 220, column: 17, scope: !4833)
!4850 = !DILocation(line: 220, column: 21, scope: !4833)
!4851 = !DILocation(line: 222, column: 27, scope: !4833)
!4852 = !DILocation(line: 222, column: 23, scope: !4833)
!4853 = !DILocation(line: 222, column: 3, scope: !4833)
!4854 = !DILocation(line: 222, column: 8, scope: !4833)
!4855 = !DILocation(line: 222, column: 17, scope: !4833)
!4856 = !DILocation(line: 222, column: 21, scope: !4833)
!4857 = !DILocation(line: 223, column: 23, scope: !4833)
!4858 = !DILocation(line: 223, column: 3, scope: !4833)
!4859 = !DILocation(line: 223, column: 8, scope: !4833)
!4860 = !DILocation(line: 223, column: 17, scope: !4833)
!4861 = !DILocation(line: 223, column: 21, scope: !4833)
!4862 = !DILocation(line: 224, column: 23, scope: !4833)
!4863 = !DILocation(line: 224, column: 3, scope: !4833)
!4864 = !DILocation(line: 224, column: 8, scope: !4833)
!4865 = !DILocation(line: 224, column: 17, scope: !4833)
!4866 = !DILocation(line: 224, column: 21, scope: !4833)
!4867 = !DILocation(line: 226, column: 3, scope: !4833)
!4868 = !DILocation(line: 226, column: 8, scope: !4833)
!4869 = !DILocation(line: 226, column: 15, scope: !4833)
!4870 = !DILocation(line: 227, column: 2, scope: !4833)
!4871 = !DILocation(line: 228, column: 1, scope: !4812)
!4872 = distinct !DISubprogram(name: "rtsx_usb_send_cmd", scope: !3, file: !3, line: 231, type: !4873, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4873 = !DISubroutineType(types: !4874)
!4874 = !{!139, !3813, !136, !139}
!4875 = !DILocalVariable(name: "ucr", arg: 1, scope: !4872, file: !3, line: 231, type: !3813)
!4876 = !DILocation(line: 231, column: 40, scope: !4872)
!4877 = !DILocalVariable(name: "flag", arg: 2, scope: !4872, file: !3, line: 231, type: !136)
!4878 = !DILocation(line: 231, column: 48, scope: !4872)
!4879 = !DILocalVariable(name: "timeout", arg: 3, scope: !4872, file: !3, line: 231, type: !139)
!4880 = !DILocation(line: 231, column: 58, scope: !4872)
!4881 = !DILocalVariable(name: "ret", scope: !4872, file: !3, line: 233, type: !139)
!4882 = !DILocation(line: 233, column: 6, scope: !4872)
!4883 = !DILocation(line: 235, column: 29, scope: !4872)
!4884 = !DILocation(line: 235, column: 34, scope: !4872)
!4885 = !DILocation(line: 235, column: 42, scope: !4872)
!4886 = !DILocation(line: 235, column: 24, scope: !4872)
!4887 = !DILocation(line: 235, column: 2, scope: !4872)
!4888 = !DILocation(line: 235, column: 7, scope: !4872)
!4889 = !DILocation(line: 235, column: 22, scope: !4872)
!4890 = !DILocation(line: 236, column: 29, scope: !4872)
!4891 = !DILocation(line: 236, column: 34, scope: !4872)
!4892 = !DILocation(line: 236, column: 24, scope: !4872)
!4893 = !DILocation(line: 236, column: 2, scope: !4872)
!4894 = !DILocation(line: 236, column: 7, scope: !4872)
!4895 = !DILocation(line: 236, column: 22, scope: !4872)
!4896 = !DILocation(line: 237, column: 29, scope: !4872)
!4897 = !DILocation(line: 237, column: 2, scope: !4872)
!4898 = !DILocation(line: 237, column: 7, scope: !4872)
!4899 = !DILocation(line: 237, column: 27, scope: !4872)
!4900 = !DILocation(line: 239, column: 31, scope: !4872)
!4901 = !DILocation(line: 240, column: 4, scope: !4872)
!4902 = !DILocation(line: 241, column: 4, scope: !4872)
!4903 = !DILocation(line: 241, column: 9, scope: !4872)
!4904 = !DILocation(line: 241, column: 18, scope: !4872)
!4905 = !DILocation(line: 241, column: 23, scope: !4872)
!4906 = !DILocation(line: 241, column: 31, scope: !4872)
!4907 = !DILocation(line: 241, column: 35, scope: !4872)
!4908 = !DILocation(line: 242, column: 13, scope: !4872)
!4909 = !DILocation(line: 239, column: 8, scope: !4872)
!4910 = !DILocation(line: 239, column: 6, scope: !4872)
!4911 = !DILocation(line: 243, column: 6, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 243, column: 6)
!4913 = !DILocation(line: 243, column: 6, scope: !4872)
!4914 = !DILocation(line: 244, column: 26, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4912, file: !3, line: 243, column: 11)
!4916 = !DILocation(line: 244, column: 3, scope: !4915)
!4917 = !DILocation(line: 245, column: 10, scope: !4915)
!4918 = !DILocation(line: 245, column: 3, scope: !4915)
!4919 = !DILocation(line: 248, column: 2, scope: !4872)
!4920 = !DILocation(line: 249, column: 1, scope: !4872)
!4921 = distinct !DISubprogram(name: "rtsx_usb_clear_fsm_err", scope: !3815, file: !3815, line: 606, type: !4922, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4922 = !DISubroutineType(types: !4923)
!4923 = !{null, !3813}
!4924 = !DILocalVariable(name: "ucr", arg: 1, scope: !4921, file: !3815, line: 606, type: !3813)
!4925 = !DILocation(line: 606, column: 60, scope: !4921)
!4926 = !DILocation(line: 608, column: 30, scope: !4921)
!4927 = !DILocation(line: 608, column: 2, scope: !4921)
!4928 = !DILocation(line: 609, column: 1, scope: !4921)
!4929 = distinct !DISubprogram(name: "rtsx_usb_get_rsp", scope: !3, file: !3, line: 252, type: !4930, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{!139, !3813, !139, !139}
!4932 = !DILocalVariable(name: "ucr", arg: 1, scope: !4929, file: !3, line: 252, type: !3813)
!4933 = !DILocation(line: 252, column: 39, scope: !4929)
!4934 = !DILocalVariable(name: "rsp_len", arg: 2, scope: !4929, file: !3, line: 252, type: !139)
!4935 = !DILocation(line: 252, column: 48, scope: !4929)
!4936 = !DILocalVariable(name: "timeout", arg: 3, scope: !4929, file: !3, line: 252, type: !139)
!4937 = !DILocation(line: 252, column: 61, scope: !4929)
!4938 = !DILocation(line: 254, column: 6, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 254, column: 6)
!4940 = !DILocation(line: 254, column: 14, scope: !4939)
!4941 = !DILocation(line: 254, column: 6, scope: !4929)
!4942 = !DILocation(line: 255, column: 3, scope: !4939)
!4943 = !DILocation(line: 257, column: 12, scope: !4929)
!4944 = !DILocation(line: 257, column: 10, scope: !4929)
!4945 = !DILocation(line: 259, column: 32, scope: !4929)
!4946 = !DILocation(line: 260, column: 4, scope: !4929)
!4947 = !DILocation(line: 261, column: 4, scope: !4929)
!4948 = !DILocation(line: 261, column: 9, scope: !4929)
!4949 = !DILocation(line: 261, column: 18, scope: !4929)
!4950 = !DILocation(line: 261, column: 36, scope: !4929)
!4951 = !DILocation(line: 259, column: 9, scope: !4929)
!4952 = !DILocation(line: 259, column: 2, scope: !4929)
!4953 = !DILocation(line: 262, column: 1, scope: !4929)
!4954 = distinct !DISubprogram(name: "rtsx_usb_get_card_status", scope: !3, file: !3, line: 286, type: !4955, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4955 = !DISubroutineType(types: !4956)
!4956 = !{!139, !3813, !4957}
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!4958 = !DILocalVariable(name: "ucr", arg: 1, scope: !4954, file: !3, line: 286, type: !3813)
!4959 = !DILocation(line: 286, column: 47, scope: !4954)
!4960 = !DILocalVariable(name: "status", arg: 2, scope: !4954, file: !3, line: 286, type: !4957)
!4961 = !DILocation(line: 286, column: 57, scope: !4954)
!4962 = !DILocalVariable(name: "ret", scope: !4954, file: !3, line: 288, type: !139)
!4963 = !DILocation(line: 288, column: 6, scope: !4954)
!4964 = !DILocalVariable(name: "buf", scope: !4954, file: !3, line: 289, type: !4957)
!4965 = !DILocation(line: 289, column: 7, scope: !4954)
!4966 = !DILocation(line: 291, column: 7, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 291, column: 6)
!4968 = !DILocation(line: 291, column: 6, scope: !4954)
!4969 = !DILocation(line: 292, column: 3, scope: !4967)
!4970 = !DILocation(line: 294, column: 6, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 294, column: 6)
!4972 = !DILocation(line: 294, column: 19, scope: !4971)
!4973 = !DILocation(line: 294, column: 6, scope: !4954)
!4974 = !DILocation(line: 295, column: 9, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4971, file: !3, line: 294, column: 25)
!4976 = !DILocation(line: 295, column: 7, scope: !4975)
!4977 = !DILocation(line: 296, column: 8, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4975, file: !3, line: 296, column: 7)
!4979 = !DILocation(line: 296, column: 7, scope: !4975)
!4980 = !DILocation(line: 297, column: 4, scope: !4978)
!4981 = !DILocation(line: 299, column: 25, scope: !4975)
!4982 = !DILocation(line: 299, column: 30, scope: !4975)
!4983 = !DILocation(line: 300, column: 5, scope: !4975)
!4984 = !DILocation(line: 303, column: 11, scope: !4975)
!4985 = !DILocation(line: 299, column: 9, scope: !4975)
!4986 = !DILocation(line: 299, column: 7, scope: !4975)
!4987 = !DILocation(line: 304, column: 14, scope: !4975)
!4988 = !DILocation(line: 304, column: 13, scope: !4975)
!4989 = !DILocation(line: 304, column: 4, scope: !4975)
!4990 = !DILocation(line: 304, column: 11, scope: !4975)
!4991 = !DILocation(line: 306, column: 9, scope: !4975)
!4992 = !DILocation(line: 306, column: 3, scope: !4975)
!4993 = !DILocation(line: 307, column: 2, scope: !4975)
!4994 = !DILocation(line: 308, column: 39, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4971, file: !3, line: 307, column: 9)
!4996 = !DILocation(line: 308, column: 44, scope: !4995)
!4997 = !DILocation(line: 308, column: 9, scope: !4995)
!4998 = !DILocation(line: 308, column: 7, scope: !4995)
!4999 = !DILocation(line: 312, column: 6, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 312, column: 6)
!5001 = !DILocation(line: 312, column: 10, scope: !5000)
!5002 = !DILocation(line: 312, column: 6, scope: !4954)
!5003 = !DILocation(line: 313, column: 10, scope: !5000)
!5004 = !DILocation(line: 313, column: 3, scope: !5000)
!5005 = !DILocation(line: 315, column: 2, scope: !4954)
!5006 = !DILocation(line: 316, column: 1, scope: !4954)
!5007 = distinct !DISubprogram(name: "rtsx_usb_get_status_with_bulk", scope: !3, file: !3, line: 265, type: !4955, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5008 = !DILocalVariable(name: "ucr", arg: 1, scope: !5007, file: !3, line: 265, type: !3813)
!5009 = !DILocation(line: 265, column: 59, scope: !5007)
!5010 = !DILocalVariable(name: "status", arg: 2, scope: !5007, file: !3, line: 265, type: !4957)
!5011 = !DILocation(line: 265, column: 69, scope: !5007)
!5012 = !DILocalVariable(name: "ret", scope: !5007, file: !3, line: 267, type: !139)
!5013 = !DILocation(line: 267, column: 6, scope: !5007)
!5014 = !DILocation(line: 269, column: 20, scope: !5007)
!5015 = !DILocation(line: 269, column: 2, scope: !5007)
!5016 = !DILocation(line: 270, column: 19, scope: !5007)
!5017 = !DILocation(line: 270, column: 2, scope: !5007)
!5018 = !DILocation(line: 271, column: 19, scope: !5007)
!5019 = !DILocation(line: 271, column: 2, scope: !5007)
!5020 = !DILocation(line: 272, column: 26, scope: !5007)
!5021 = !DILocation(line: 272, column: 8, scope: !5007)
!5022 = !DILocation(line: 272, column: 6, scope: !5007)
!5023 = !DILocation(line: 273, column: 6, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 273, column: 6)
!5025 = !DILocation(line: 273, column: 6, scope: !5007)
!5026 = !DILocation(line: 274, column: 10, scope: !5024)
!5027 = !DILocation(line: 274, column: 3, scope: !5024)
!5028 = !DILocation(line: 276, column: 25, scope: !5007)
!5029 = !DILocation(line: 276, column: 8, scope: !5007)
!5030 = !DILocation(line: 276, column: 6, scope: !5007)
!5031 = !DILocation(line: 277, column: 6, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 277, column: 6)
!5033 = !DILocation(line: 277, column: 6, scope: !5007)
!5034 = !DILocation(line: 278, column: 10, scope: !5032)
!5035 = !DILocation(line: 278, column: 3, scope: !5032)
!5036 = !DILocation(line: 280, column: 14, scope: !5007)
!5037 = !DILocation(line: 280, column: 19, scope: !5007)
!5038 = !DILocation(line: 280, column: 30, scope: !5007)
!5039 = !DILocation(line: 280, column: 36, scope: !5007)
!5040 = !DILocation(line: 281, column: 7, scope: !5007)
!5041 = !DILocation(line: 281, column: 12, scope: !5007)
!5042 = !DILocation(line: 281, column: 23, scope: !5007)
!5043 = !DILocation(line: 281, column: 31, scope: !5007)
!5044 = !DILocation(line: 280, column: 44, scope: !5007)
!5045 = !DILocation(line: 280, column: 12, scope: !5007)
!5046 = !DILocation(line: 280, column: 3, scope: !5007)
!5047 = !DILocation(line: 280, column: 10, scope: !5007)
!5048 = !DILocation(line: 283, column: 2, scope: !5007)
!5049 = !DILocation(line: 284, column: 1, scope: !5007)
!5050 = distinct !DISubprogram(name: "rtsx_usb_write_register", scope: !3, file: !3, line: 340, type: !4445, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5051 = !DILocalVariable(name: "ucr", arg: 1, scope: !5050, file: !3, line: 340, type: !3813)
!5052 = !DILocation(line: 340, column: 46, scope: !5050)
!5053 = !DILocalVariable(name: "addr", arg: 2, scope: !5050, file: !3, line: 340, type: !128)
!5054 = !DILocation(line: 340, column: 55, scope: !5050)
!5055 = !DILocalVariable(name: "mask", arg: 3, scope: !5050, file: !3, line: 340, type: !136)
!5056 = !DILocation(line: 340, column: 64, scope: !5050)
!5057 = !DILocalVariable(name: "data", arg: 4, scope: !5050, file: !3, line: 340, type: !136)
!5058 = !DILocation(line: 340, column: 73, scope: !5050)
!5059 = !DILocation(line: 342, column: 20, scope: !5050)
!5060 = !DILocation(line: 342, column: 2, scope: !5050)
!5061 = !DILocation(line: 343, column: 19, scope: !5050)
!5062 = !DILocation(line: 343, column: 39, scope: !5050)
!5063 = !DILocation(line: 343, column: 45, scope: !5050)
!5064 = !DILocation(line: 343, column: 51, scope: !5050)
!5065 = !DILocation(line: 343, column: 2, scope: !5050)
!5066 = !DILocation(line: 344, column: 27, scope: !5050)
!5067 = !DILocation(line: 344, column: 9, scope: !5050)
!5068 = !DILocation(line: 344, column: 2, scope: !5050)
!5069 = distinct !DISubprogram(name: "rtsx_usb_init_cmd", scope: !3815, file: !3815, line: 138, type: !4922, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5070 = !DILocalVariable(name: "ucr", arg: 1, scope: !5069, file: !3815, line: 138, type: !3813)
!5071 = !DILocation(line: 138, column: 55, scope: !5069)
!5072 = !DILocation(line: 140, column: 2, scope: !5069)
!5073 = !DILocation(line: 140, column: 2, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5069, file: !3815, line: 140, column: 2)
!5075 = !DILocation(line: 141, column: 2, scope: !5069)
!5076 = !DILocation(line: 141, column: 7, scope: !5069)
!5077 = !DILocation(line: 141, column: 15, scope: !5069)
!5078 = !DILocation(line: 142, column: 2, scope: !5069)
!5079 = !DILocation(line: 142, column: 7, scope: !5069)
!5080 = !DILocation(line: 142, column: 28, scope: !5069)
!5081 = !DILocation(line: 143, column: 1, scope: !5069)
!5082 = distinct !DISubprogram(name: "rtsx_usb_read_register", scope: !3, file: !3, line: 348, type: !4497, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5083 = !DILocalVariable(name: "ucr", arg: 1, scope: !5082, file: !3, line: 348, type: !3813)
!5084 = !DILocation(line: 348, column: 45, scope: !5082)
!5085 = !DILocalVariable(name: "addr", arg: 2, scope: !5082, file: !3, line: 348, type: !128)
!5086 = !DILocation(line: 348, column: 54, scope: !5082)
!5087 = !DILocalVariable(name: "data", arg: 3, scope: !5082, file: !3, line: 348, type: !3824)
!5088 = !DILocation(line: 348, column: 64, scope: !5082)
!5089 = !DILocalVariable(name: "ret", scope: !5082, file: !3, line: 350, type: !139)
!5090 = !DILocation(line: 350, column: 6, scope: !5082)
!5091 = !DILocation(line: 352, column: 6, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5082, file: !3, line: 352, column: 6)
!5093 = !DILocation(line: 352, column: 11, scope: !5092)
!5094 = !DILocation(line: 352, column: 6, scope: !5082)
!5095 = !DILocation(line: 353, column: 4, scope: !5092)
!5096 = !DILocation(line: 353, column: 9, scope: !5092)
!5097 = !DILocation(line: 353, column: 3, scope: !5092)
!5098 = !DILocation(line: 355, column: 20, scope: !5082)
!5099 = !DILocation(line: 355, column: 2, scope: !5082)
!5100 = !DILocation(line: 356, column: 19, scope: !5082)
!5101 = !DILocation(line: 356, column: 38, scope: !5082)
!5102 = !DILocation(line: 356, column: 2, scope: !5082)
!5103 = !DILocation(line: 357, column: 26, scope: !5082)
!5104 = !DILocation(line: 357, column: 8, scope: !5082)
!5105 = !DILocation(line: 357, column: 6, scope: !5082)
!5106 = !DILocation(line: 358, column: 6, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5082, file: !3, line: 358, column: 6)
!5108 = !DILocation(line: 358, column: 6, scope: !5082)
!5109 = !DILocation(line: 359, column: 10, scope: !5107)
!5110 = !DILocation(line: 359, column: 3, scope: !5107)
!5111 = !DILocation(line: 361, column: 25, scope: !5082)
!5112 = !DILocation(line: 361, column: 8, scope: !5082)
!5113 = !DILocation(line: 361, column: 6, scope: !5082)
!5114 = !DILocation(line: 362, column: 6, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5082, file: !3, line: 362, column: 6)
!5116 = !DILocation(line: 362, column: 6, scope: !5082)
!5117 = !DILocation(line: 363, column: 10, scope: !5115)
!5118 = !DILocation(line: 363, column: 3, scope: !5115)
!5119 = !DILocation(line: 365, column: 6, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5082, file: !3, line: 365, column: 6)
!5121 = !DILocation(line: 365, column: 11, scope: !5120)
!5122 = !DILocation(line: 365, column: 6, scope: !5082)
!5123 = !DILocation(line: 366, column: 11, scope: !5120)
!5124 = !DILocation(line: 366, column: 16, scope: !5120)
!5125 = !DILocation(line: 366, column: 4, scope: !5120)
!5126 = !DILocation(line: 366, column: 9, scope: !5120)
!5127 = !DILocation(line: 366, column: 3, scope: !5120)
!5128 = !DILocation(line: 368, column: 2, scope: !5082)
!5129 = !DILocation(line: 369, column: 1, scope: !5082)
!5130 = distinct !DISubprogram(name: "rtsx_usb_switch_clock", scope: !3, file: !3, line: 389, type: !5131, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5131 = !DISubroutineType(types: !5132)
!5132 = !{!139, !3813, !7, !136, !448, !448, !448}
!5133 = !DILocalVariable(name: "ucr", arg: 1, scope: !5130, file: !3, line: 389, type: !3813)
!5134 = !DILocation(line: 389, column: 44, scope: !5130)
!5135 = !DILocalVariable(name: "card_clock", arg: 2, scope: !5130, file: !3, line: 389, type: !7)
!5136 = !DILocation(line: 389, column: 62, scope: !5130)
!5137 = !DILocalVariable(name: "ssc_depth", arg: 3, scope: !5130, file: !3, line: 390, type: !136)
!5138 = !DILocation(line: 390, column: 6, scope: !5130)
!5139 = !DILocalVariable(name: "initial_mode", arg: 4, scope: !5130, file: !3, line: 390, type: !448)
!5140 = !DILocation(line: 390, column: 22, scope: !5130)
!5141 = !DILocalVariable(name: "double_clk", arg: 5, scope: !5130, file: !3, line: 390, type: !448)
!5142 = !DILocation(line: 390, column: 41, scope: !5130)
!5143 = !DILocalVariable(name: "vpclk", arg: 6, scope: !5130, file: !3, line: 390, type: !448)
!5144 = !DILocation(line: 390, column: 58, scope: !5130)
!5145 = !DILocalVariable(name: "ret", scope: !5130, file: !3, line: 392, type: !139)
!5146 = !DILocation(line: 392, column: 6, scope: !5130)
!5147 = !DILocalVariable(name: "n", scope: !5130, file: !3, line: 393, type: !136)
!5148 = !DILocation(line: 393, column: 5, scope: !5130)
!5149 = !DILocalVariable(name: "clk_divider", scope: !5130, file: !3, line: 393, type: !136)
!5150 = !DILocation(line: 393, column: 8, scope: !5130)
!5151 = !DILocalVariable(name: "mcu_cnt", scope: !5130, file: !3, line: 393, type: !136)
!5152 = !DILocation(line: 393, column: 21, scope: !5130)
!5153 = !DILocalVariable(name: "div", scope: !5130, file: !3, line: 393, type: !136)
!5154 = !DILocation(line: 393, column: 30, scope: !5130)
!5155 = !DILocation(line: 395, column: 7, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 395, column: 6)
!5157 = !DILocation(line: 395, column: 6, scope: !5130)
!5158 = !DILocation(line: 396, column: 3, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5156, file: !3, line: 395, column: 19)
!5160 = !DILocation(line: 396, column: 8, scope: !5159)
!5161 = !DILocation(line: 396, column: 16, scope: !5159)
!5162 = !DILocation(line: 397, column: 3, scope: !5159)
!5163 = !DILocation(line: 400, column: 6, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 400, column: 6)
!5165 = !DILocation(line: 400, column: 6, scope: !5130)
!5166 = !DILocation(line: 402, column: 15, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5164, file: !3, line: 400, column: 20)
!5168 = !DILocation(line: 403, column: 14, scope: !5167)
!5169 = !DILocation(line: 404, column: 2, scope: !5167)
!5170 = !DILocation(line: 405, column: 15, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5164, file: !3, line: 404, column: 9)
!5172 = !DILocation(line: 408, column: 32, scope: !5130)
!5173 = !DILocation(line: 409, column: 24, scope: !5130)
!5174 = !DILocation(line: 408, column: 8, scope: !5130)
!5175 = !DILocation(line: 408, column: 6, scope: !5130)
!5176 = !DILocation(line: 410, column: 6, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 410, column: 6)
!5178 = !DILocation(line: 410, column: 10, scope: !5177)
!5179 = !DILocation(line: 410, column: 6, scope: !5130)
!5180 = !DILocation(line: 411, column: 10, scope: !5177)
!5181 = !DILocation(line: 411, column: 3, scope: !5177)
!5182 = !DILocation(line: 413, column: 13, scope: !5130)
!5183 = !DILocation(line: 417, column: 7, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 417, column: 6)
!5185 = !DILocation(line: 417, column: 20, scope: !5184)
!5186 = !DILocation(line: 417, column: 23, scope: !5184)
!5187 = !DILocation(line: 417, column: 6, scope: !5130)
!5188 = !DILocation(line: 418, column: 14, scope: !5184)
!5189 = !DILocation(line: 418, column: 3, scope: !5184)
!5190 = !DILocation(line: 423, column: 6, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 423, column: 6)
!5192 = !DILocation(line: 423, column: 20, scope: !5191)
!5193 = !DILocation(line: 423, column: 25, scope: !5191)
!5194 = !DILocation(line: 423, column: 17, scope: !5191)
!5195 = !DILocation(line: 423, column: 6, scope: !5130)
!5196 = !DILocation(line: 424, column: 3, scope: !5191)
!5197 = !DILocation(line: 427, column: 6, scope: !5130)
!5198 = !DILocation(line: 427, column: 17, scope: !5130)
!5199 = !DILocation(line: 427, column: 4, scope: !5130)
!5200 = !DILocation(line: 428, column: 7, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 428, column: 6)
!5202 = !DILocation(line: 428, column: 18, scope: !5201)
!5203 = !DILocation(line: 428, column: 24, scope: !5201)
!5204 = !DILocation(line: 428, column: 28, scope: !5201)
!5205 = !DILocation(line: 428, column: 30, scope: !5201)
!5206 = !DILocation(line: 428, column: 6, scope: !5130)
!5207 = !DILocation(line: 429, column: 3, scope: !5201)
!5208 = !DILocation(line: 431, column: 15, scope: !5130)
!5209 = !DILocation(line: 431, column: 14, scope: !5130)
!5210 = !DILocation(line: 431, column: 26, scope: !5130)
!5211 = !DILocation(line: 431, column: 12, scope: !5130)
!5212 = !DILocation(line: 431, column: 10, scope: !5130)
!5213 = !DILocation(line: 432, column: 6, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 432, column: 6)
!5215 = !DILocation(line: 432, column: 14, scope: !5214)
!5216 = !DILocation(line: 432, column: 6, scope: !5130)
!5217 = !DILocation(line: 433, column: 11, scope: !5214)
!5218 = !DILocation(line: 433, column: 3, scope: !5214)
!5219 = !DILocation(line: 437, column: 6, scope: !5130)
!5220 = !DILocation(line: 438, column: 2, scope: !5130)
!5221 = !DILocation(line: 438, column: 9, scope: !5130)
!5222 = !DILocation(line: 438, column: 11, scope: !5130)
!5223 = !DILocation(line: 438, column: 23, scope: !5130)
!5224 = !DILocation(line: 438, column: 26, scope: !5130)
!5225 = !DILocation(line: 438, column: 30, scope: !5130)
!5226 = !DILocation(line: 0, scope: !5130)
!5227 = !DILocation(line: 439, column: 8, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 438, column: 43)
!5229 = !DILocation(line: 439, column: 10, scope: !5228)
!5230 = !DILocation(line: 439, column: 15, scope: !5228)
!5231 = !DILocation(line: 439, column: 19, scope: !5228)
!5232 = !DILocation(line: 439, column: 7, scope: !5228)
!5233 = !DILocation(line: 439, column: 5, scope: !5228)
!5234 = !DILocation(line: 440, column: 6, scope: !5228)
!5235 = distinct !{!5235, !5220, !5236}
!5236 = !DILocation(line: 441, column: 2, scope: !5130)
!5237 = !DILocation(line: 444, column: 6, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 444, column: 6)
!5239 = !DILocation(line: 444, column: 6, scope: !5130)
!5240 = !DILocation(line: 445, column: 32, scope: !5238)
!5241 = !DILocation(line: 445, column: 15, scope: !5238)
!5242 = !DILocation(line: 445, column: 13, scope: !5238)
!5243 = !DILocation(line: 445, column: 3, scope: !5238)
!5244 = !DILocation(line: 447, column: 31, scope: !5130)
!5245 = !DILocation(line: 447, column: 42, scope: !5130)
!5246 = !DILocation(line: 447, column: 14, scope: !5130)
!5247 = !DILocation(line: 447, column: 12, scope: !5130)
!5248 = !DILocation(line: 450, column: 20, scope: !5130)
!5249 = !DILocation(line: 450, column: 2, scope: !5130)
!5250 = !DILocation(line: 451, column: 19, scope: !5130)
!5251 = !DILocation(line: 451, column: 2, scope: !5130)
!5252 = !DILocation(line: 452, column: 19, scope: !5130)
!5253 = !DILocation(line: 453, column: 11, scope: !5130)
!5254 = !DILocation(line: 453, column: 15, scope: !5130)
!5255 = !DILocation(line: 453, column: 23, scope: !5130)
!5256 = !DILocation(line: 453, column: 21, scope: !5130)
!5257 = !DILocation(line: 453, column: 10, scope: !5130)
!5258 = !DILocation(line: 452, column: 2, scope: !5130)
!5259 = !DILocation(line: 454, column: 19, scope: !5130)
!5260 = !DILocation(line: 454, column: 2, scope: !5130)
!5261 = !DILocation(line: 455, column: 19, scope: !5130)
!5262 = !DILocation(line: 456, column: 20, scope: !5130)
!5263 = !DILocation(line: 455, column: 2, scope: !5130)
!5264 = !DILocation(line: 457, column: 19, scope: !5130)
!5265 = !DILocation(line: 457, column: 58, scope: !5130)
!5266 = !DILocation(line: 457, column: 2, scope: !5130)
!5267 = !DILocation(line: 458, column: 19, scope: !5130)
!5268 = !DILocation(line: 458, column: 2, scope: !5130)
!5269 = !DILocation(line: 459, column: 6, scope: !5270)
!5270 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 459, column: 6)
!5271 = !DILocation(line: 459, column: 6, scope: !5130)
!5272 = !DILocation(line: 460, column: 20, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 459, column: 13)
!5274 = !DILocation(line: 460, column: 3, scope: !5273)
!5275 = !DILocation(line: 462, column: 20, scope: !5273)
!5276 = !DILocation(line: 462, column: 3, scope: !5273)
!5277 = !DILocation(line: 464, column: 2, scope: !5273)
!5278 = !DILocation(line: 466, column: 26, scope: !5130)
!5279 = !DILocation(line: 466, column: 8, scope: !5130)
!5280 = !DILocation(line: 466, column: 6, scope: !5130)
!5281 = !DILocation(line: 467, column: 6, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 467, column: 6)
!5283 = !DILocation(line: 467, column: 10, scope: !5282)
!5284 = !DILocation(line: 467, column: 6, scope: !5130)
!5285 = !DILocation(line: 468, column: 10, scope: !5282)
!5286 = !DILocation(line: 468, column: 3, scope: !5282)
!5287 = !DILocation(line: 470, column: 32, scope: !5130)
!5288 = !DILocation(line: 470, column: 8, scope: !5130)
!5289 = !DILocation(line: 470, column: 6, scope: !5130)
!5290 = !DILocation(line: 472, column: 6, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 472, column: 6)
!5292 = !DILocation(line: 472, column: 10, scope: !5291)
!5293 = !DILocation(line: 472, column: 6, scope: !5130)
!5294 = !DILocation(line: 473, column: 10, scope: !5291)
!5295 = !DILocation(line: 473, column: 3, scope: !5291)
!5296 = !DILocation(line: 476, column: 2, scope: !5130)
!5297 = !DILocation(line: 478, column: 32, scope: !5130)
!5298 = !DILocation(line: 478, column: 8, scope: !5130)
!5299 = !DILocation(line: 478, column: 6, scope: !5130)
!5300 = !DILocation(line: 479, column: 6, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 479, column: 6)
!5302 = !DILocation(line: 479, column: 10, scope: !5301)
!5303 = !DILocation(line: 479, column: 6, scope: !5130)
!5304 = !DILocation(line: 480, column: 10, scope: !5301)
!5305 = !DILocation(line: 480, column: 3, scope: !5301)
!5306 = !DILocation(line: 482, column: 17, scope: !5130)
!5307 = !DILocation(line: 482, column: 2, scope: !5130)
!5308 = !DILocation(line: 482, column: 7, scope: !5130)
!5309 = !DILocation(line: 482, column: 15, scope: !5130)
!5310 = !DILocation(line: 484, column: 2, scope: !5130)
!5311 = !DILocation(line: 485, column: 1, scope: !5130)
!5312 = distinct !DISubprogram(name: "double_ssc_depth", scope: !3, file: !3, line: 372, type: !5313, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5313 = !DISubroutineType(types: !5314)
!5314 = !{!136, !136}
!5315 = !DILocalVariable(name: "depth", arg: 1, scope: !5312, file: !3, line: 372, type: !136)
!5316 = !DILocation(line: 372, column: 38, scope: !5312)
!5317 = !DILocation(line: 374, column: 10, scope: !5312)
!5318 = !DILocation(line: 374, column: 16, scope: !5312)
!5319 = !DILocation(line: 374, column: 9, scope: !5312)
!5320 = !DILocation(line: 374, column: 24, scope: !5312)
!5321 = !DILocation(line: 374, column: 30, scope: !5312)
!5322 = !DILocation(line: 374, column: 37, scope: !5312)
!5323 = !DILocation(line: 374, column: 2, scope: !5312)
!5324 = distinct !DISubprogram(name: "revise_ssc_depth", scope: !3, file: !3, line: 377, type: !5325, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5325 = !DISubroutineType(types: !5326)
!5326 = !{!136, !136, !136}
!5327 = !DILocalVariable(name: "ssc_depth", arg: 1, scope: !5324, file: !3, line: 377, type: !136)
!5328 = !DILocation(line: 377, column: 31, scope: !5324)
!5329 = !DILocalVariable(name: "div", arg: 2, scope: !5324, file: !3, line: 377, type: !136)
!5330 = !DILocation(line: 377, column: 45, scope: !5324)
!5331 = !DILocation(line: 379, column: 6, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 379, column: 6)
!5333 = !DILocation(line: 379, column: 10, scope: !5332)
!5334 = !DILocation(line: 379, column: 6, scope: !5324)
!5335 = !DILocation(line: 380, column: 7, scope: !5336)
!5336 = distinct !DILexicalBlock(scope: !5337, file: !3, line: 380, column: 7)
!5337 = distinct !DILexicalBlock(scope: !5332, file: !3, line: 379, column: 23)
!5338 = !DILocation(line: 380, column: 19, scope: !5336)
!5339 = !DILocation(line: 380, column: 23, scope: !5336)
!5340 = !DILocation(line: 380, column: 17, scope: !5336)
!5341 = !DILocation(line: 380, column: 7, scope: !5337)
!5342 = !DILocation(line: 381, column: 18, scope: !5336)
!5343 = !DILocation(line: 381, column: 22, scope: !5336)
!5344 = !DILocation(line: 381, column: 14, scope: !5336)
!5345 = !DILocation(line: 381, column: 4, scope: !5336)
!5346 = !DILocation(line: 383, column: 14, scope: !5336)
!5347 = !DILocation(line: 384, column: 2, scope: !5337)
!5348 = !DILocation(line: 386, column: 9, scope: !5324)
!5349 = !DILocation(line: 386, column: 2, scope: !5324)
!5350 = distinct !DISubprogram(name: "rtsx_usb_card_exclusive_check", scope: !3, file: !3, line: 488, type: !5351, scopeLine: 489, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5351 = !DISubroutineType(types: !5352)
!5352 = !{!139, !3813, !139}
!5353 = !DILocalVariable(name: "ucr", arg: 1, scope: !5350, file: !3, line: 488, type: !3813)
!5354 = !DILocation(line: 488, column: 52, scope: !5350)
!5355 = !DILocalVariable(name: "card", arg: 2, scope: !5350, file: !3, line: 488, type: !139)
!5356 = !DILocation(line: 488, column: 61, scope: !5350)
!5357 = !DILocalVariable(name: "ret", scope: !5350, file: !3, line: 490, type: !139)
!5358 = !DILocation(line: 490, column: 6, scope: !5350)
!5359 = !DILocalVariable(name: "val", scope: !5350, file: !3, line: 491, type: !128)
!5360 = !DILocation(line: 491, column: 6, scope: !5350)
!5361 = !DILocalVariable(name: "cd_mask", scope: !5350, file: !3, line: 492, type: !5362)
!5362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 32, elements: !166)
!5363 = !DILocation(line: 492, column: 6, scope: !5350)
!5364 = !DILocation(line: 497, column: 33, scope: !5350)
!5365 = !DILocation(line: 497, column: 8, scope: !5350)
!5366 = !DILocation(line: 497, column: 6, scope: !5350)
!5367 = !DILocation(line: 502, column: 6, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 502, column: 6)
!5369 = !DILocation(line: 502, column: 6, scope: !5350)
!5370 = !DILocation(line: 503, column: 3, scope: !5368)
!5371 = !DILocation(line: 505, column: 6, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 505, column: 6)
!5373 = !DILocation(line: 505, column: 20, scope: !5372)
!5374 = !DILocation(line: 505, column: 12, scope: !5372)
!5375 = !DILocation(line: 505, column: 10, scope: !5372)
!5376 = !DILocation(line: 505, column: 6, scope: !5350)
!5377 = !DILocation(line: 506, column: 3, scope: !5372)
!5378 = !DILocation(line: 508, column: 2, scope: !5350)
!5379 = !DILocation(line: 509, column: 1, scope: !5350)
!5380 = distinct !DISubprogram(name: "rtsx_usb_driver_init", scope: !3, file: !3, line: 784, type: !5381, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5381 = !DISubroutineType(types: !5382)
!5382 = !{!139}
!5383 = !DILocation(line: 784, column: 1, scope: !5380)
!5384 = distinct !DISubprogram(name: "rtsx_usb_driver_exit", scope: !3, file: !3, line: 784, type: !1749, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5385 = !DILocation(line: 784, column: 1, scope: !5384)
!5386 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !4197, file: !4197, line: 308, type: !4198, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5387 = !DILocalVariable(name: "m", arg: 1, scope: !5386, file: !4197, line: 308, type: !2625)
!5388 = !DILocation(line: 308, column: 66, scope: !5386)
!5389 = !DILocation(line: 310, column: 10, scope: !5386)
!5390 = !DILocation(line: 310, column: 12, scope: !5386)
!5391 = !DILocation(line: 310, column: 34, scope: !5386)
!5392 = !DILocation(line: 310, column: 39, scope: !5386)
!5393 = !DILocation(line: 310, column: 2, scope: !5386)
!5394 = distinct !DISubprogram(name: "rtsx_usb_seq_cmd_hdr", scope: !3, file: !3, line: 84, type: !5395, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5395 = !DISubroutineType(types: !5396)
!5396 = !{null, !3813, !128, !128, !136}
!5397 = !DILocalVariable(name: "ucr", arg: 1, scope: !5394, file: !3, line: 84, type: !3813)
!5398 = !DILocation(line: 84, column: 58, scope: !5394)
!5399 = !DILocalVariable(name: "addr", arg: 2, scope: !5394, file: !3, line: 85, type: !128)
!5400 = !DILocation(line: 85, column: 7, scope: !5394)
!5401 = !DILocalVariable(name: "len", arg: 3, scope: !5394, file: !3, line: 85, type: !128)
!5402 = !DILocation(line: 85, column: 17, scope: !5394)
!5403 = !DILocalVariable(name: "seq_type", arg: 4, scope: !5394, file: !3, line: 85, type: !136)
!5404 = !DILocation(line: 85, column: 25, scope: !5394)
!5405 = !DILocation(line: 87, column: 2, scope: !5394)
!5406 = !DILocation(line: 87, column: 2, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5394, file: !3, line: 87, column: 2)
!5408 = !DILocation(line: 89, column: 30, scope: !5394)
!5409 = !DILocation(line: 89, column: 2, scope: !5394)
!5410 = !DILocation(line: 89, column: 7, scope: !5394)
!5411 = !DILocation(line: 89, column: 28, scope: !5394)
!5412 = !DILocation(line: 90, column: 25, scope: !5394)
!5413 = !DILocation(line: 90, column: 29, scope: !5394)
!5414 = !DILocation(line: 90, column: 20, scope: !5394)
!5415 = !DILocation(line: 90, column: 2, scope: !5394)
!5416 = !DILocation(line: 90, column: 7, scope: !5394)
!5417 = !DILocation(line: 90, column: 18, scope: !5394)
!5418 = !DILocation(line: 91, column: 24, scope: !5394)
!5419 = !DILocation(line: 91, column: 20, scope: !5394)
!5420 = !DILocation(line: 91, column: 2, scope: !5394)
!5421 = !DILocation(line: 91, column: 7, scope: !5394)
!5422 = !DILocation(line: 91, column: 18, scope: !5394)
!5423 = !DILocation(line: 92, column: 25, scope: !5394)
!5424 = !DILocation(line: 92, column: 30, scope: !5394)
!5425 = !DILocation(line: 92, column: 20, scope: !5394)
!5426 = !DILocation(line: 92, column: 2, scope: !5394)
!5427 = !DILocation(line: 92, column: 7, scope: !5394)
!5428 = !DILocation(line: 92, column: 18, scope: !5394)
!5429 = !DILocation(line: 93, column: 24, scope: !5394)
!5430 = !DILocation(line: 93, column: 20, scope: !5394)
!5431 = !DILocation(line: 93, column: 2, scope: !5394)
!5432 = !DILocation(line: 93, column: 7, scope: !5394)
!5433 = !DILocation(line: 93, column: 18, scope: !5394)
!5434 = !DILocation(line: 95, column: 6, scope: !5435)
!5435 = distinct !DILexicalBlock(scope: !5394, file: !3, line: 95, column: 6)
!5436 = !DILocation(line: 95, column: 15, scope: !5435)
!5437 = !DILocation(line: 95, column: 6, scope: !5394)
!5438 = !DILocation(line: 96, column: 3, scope: !5435)
!5439 = !DILocation(line: 96, column: 8, scope: !5435)
!5440 = !DILocation(line: 96, column: 28, scope: !5435)
!5441 = !DILocation(line: 98, column: 3, scope: !5435)
!5442 = !DILocation(line: 98, column: 8, scope: !5435)
!5443 = !DILocation(line: 98, column: 28, scope: !5435)
!5444 = !DILocation(line: 99, column: 1, scope: !5394)
!5445 = distinct !DISubprogram(name: "get_order", scope: !5446, file: !5446, line: 29, type: !5447, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5446 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5447 = !DISubroutineType(types: !5448)
!5448 = !{!139, !287}
!5449 = !DILocalVariable(name: "x", arg: 1, scope: !5450, file: !5451, line: 366, type: !381)
!5450 = distinct !DISubprogram(name: "fls64", scope: !5451, file: !5451, line: 366, type: !5452, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5451 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5452 = !DISubroutineType(types: !5453)
!5453 = !{!139, !381}
!5454 = !DILocation(line: 366, column: 40, scope: !5450, inlinedAt: !5455)
!5455 = distinct !DILocation(line: 46, column: 9, scope: !5445)
!5456 = !DILocalVariable(name: "bitpos", scope: !5450, file: !5451, line: 368, type: !139)
!5457 = !DILocation(line: 368, column: 6, scope: !5450, inlinedAt: !5455)
!5458 = !DILocalVariable(name: "size", arg: 1, scope: !5445, file: !5446, line: 29, type: !287)
!5459 = !DILocation(line: 29, column: 63, scope: !5445)
!5460 = !DILocation(line: 31, column: 27, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5445, file: !5446, line: 31, column: 6)
!5462 = !DILocation(line: 31, column: 6, scope: !5461)
!5463 = !DILocation(line: 31, column: 6, scope: !5445)
!5464 = !DILocation(line: 32, column: 8, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5466, file: !5446, line: 32, column: 7)
!5466 = distinct !DILexicalBlock(scope: !5461, file: !5446, line: 31, column: 34)
!5467 = !DILocation(line: 32, column: 7, scope: !5466)
!5468 = !DILocation(line: 33, column: 4, scope: !5465)
!5469 = !DILocation(line: 35, column: 7, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5466, file: !5446, line: 35, column: 7)
!5471 = !DILocation(line: 35, column: 12, scope: !5470)
!5472 = !DILocation(line: 35, column: 7, scope: !5466)
!5473 = !DILocation(line: 36, column: 4, scope: !5470)
!5474 = !DILocation(line: 38, column: 10, scope: !5466)
!5475 = !DILocation(line: 38, column: 28, scope: !5466)
!5476 = !DILocation(line: 38, column: 41, scope: !5466)
!5477 = !DILocation(line: 38, column: 3, scope: !5466)
!5478 = !DILocation(line: 41, column: 6, scope: !5445)
!5479 = !DILocation(line: 42, column: 7, scope: !5445)
!5480 = !DILocation(line: 46, column: 15, scope: !5445)
!5481 = !DILocation(line: 374, column: 2, scope: !5450, inlinedAt: !5455)
!5482 = !DILocation(line: 376, column: 14, scope: !5450, inlinedAt: !5455)
!5483 = !{i32 315468}
!5484 = !DILocation(line: 377, column: 9, scope: !5450, inlinedAt: !5455)
!5485 = !DILocation(line: 377, column: 16, scope: !5450, inlinedAt: !5455)
!5486 = !DILocation(line: 46, column: 2, scope: !5445)
!5487 = !DILocation(line: 48, column: 1, scope: !5445)
!5488 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5489, file: !5489, line: 30, type: !5490, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5489 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5490 = !DISubroutineType(types: !5491)
!5491 = !{!139, !380}
!5492 = !DILocation(line: 366, column: 40, scope: !5450, inlinedAt: !5493)
!5493 = distinct !DILocation(line: 32, column: 9, scope: !5488)
!5494 = !DILocation(line: 368, column: 6, scope: !5450, inlinedAt: !5493)
!5495 = !DILocalVariable(name: "n", arg: 1, scope: !5488, file: !5489, line: 30, type: !380)
!5496 = !DILocation(line: 30, column: 21, scope: !5488)
!5497 = !DILocation(line: 32, column: 15, scope: !5488)
!5498 = !DILocation(line: 374, column: 2, scope: !5450, inlinedAt: !5493)
!5499 = !DILocation(line: 376, column: 14, scope: !5450, inlinedAt: !5493)
!5500 = !DILocation(line: 377, column: 9, scope: !5450, inlinedAt: !5493)
!5501 = !DILocation(line: 377, column: 16, scope: !5450, inlinedAt: !5493)
!5502 = !DILocation(line: 32, column: 18, scope: !5488)
!5503 = !DILocation(line: 32, column: 2, scope: !5488)
!5504 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1987, file: !1987, line: 137, type: !5505, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5505 = !DISubroutineType(types: !5506)
!5506 = !{!133, !891, !3004, !284, !134}
!5507 = !DILocalVariable(name: "s", arg: 1, scope: !5504, file: !1987, line: 137, type: !891)
!5508 = !DILocation(line: 137, column: 54, scope: !5504)
!5509 = !DILocalVariable(name: "object", arg: 2, scope: !5504, file: !1987, line: 137, type: !3004)
!5510 = !DILocation(line: 137, column: 69, scope: !5504)
!5511 = !DILocalVariable(name: "size", arg: 3, scope: !5504, file: !1987, line: 138, type: !284)
!5512 = !DILocation(line: 138, column: 12, scope: !5504)
!5513 = !DILocalVariable(name: "flags", arg: 4, scope: !5504, file: !1987, line: 138, type: !134)
!5514 = !DILocation(line: 138, column: 24, scope: !5504)
!5515 = !DILocation(line: 140, column: 17, scope: !5504)
!5516 = !DILocation(line: 140, column: 2, scope: !5504)
!5517 = !DILocalVariable(name: "intf", arg: 1, scope: !4050, file: !3, line: 617, type: !3705)
!5518 = !DILocation(line: 617, column: 49, scope: !4050)
!5519 = !DILocalVariable(name: "id", arg: 2, scope: !4050, file: !3, line: 618, type: !3996)
!5520 = !DILocation(line: 618, column: 33, scope: !4050)
!5521 = !DILocalVariable(name: "usb_dev", scope: !4050, file: !3, line: 620, type: !144)
!5522 = !DILocation(line: 620, column: 21, scope: !4050)
!5523 = !DILocation(line: 620, column: 51, scope: !4050)
!5524 = !DILocation(line: 620, column: 31, scope: !4050)
!5525 = !DILocalVariable(name: "ucr", scope: !4050, file: !3, line: 621, type: !3813)
!5526 = !DILocation(line: 621, column: 19, scope: !4050)
!5527 = !DILocalVariable(name: "ret", scope: !4050, file: !3, line: 622, type: !139)
!5528 = !DILocation(line: 622, column: 6, scope: !4050)
!5529 = !DILocation(line: 628, column: 22, scope: !4050)
!5530 = !DILocation(line: 628, column: 28, scope: !4050)
!5531 = !DILocation(line: 628, column: 8, scope: !4050)
!5532 = !DILocation(line: 628, column: 6, scope: !4050)
!5533 = !DILocation(line: 629, column: 7, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !4050, file: !3, line: 629, column: 6)
!5535 = !DILocation(line: 629, column: 6, scope: !4050)
!5536 = !DILocation(line: 630, column: 3, scope: !5534)
!5537 = !DILocation(line: 632, column: 18, scope: !4050)
!5538 = !DILocation(line: 632, column: 2, scope: !4050)
!5539 = !DILocation(line: 632, column: 7, scope: !4050)
!5540 = !DILocation(line: 632, column: 16, scope: !4050)
!5541 = !DILocation(line: 634, column: 34, scope: !4050)
!5542 = !DILocation(line: 634, column: 39, scope: !4050)
!5543 = !DILocation(line: 635, column: 17, scope: !4050)
!5544 = !DILocation(line: 635, column: 22, scope: !4050)
!5545 = !DILocation(line: 634, column: 15, scope: !4050)
!5546 = !DILocation(line: 634, column: 2, scope: !4050)
!5547 = !DILocation(line: 634, column: 7, scope: !4050)
!5548 = !DILocation(line: 634, column: 13, scope: !4050)
!5549 = !DILocation(line: 636, column: 7, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !4050, file: !3, line: 636, column: 6)
!5551 = !DILocation(line: 636, column: 12, scope: !5550)
!5552 = !DILocation(line: 636, column: 6, scope: !4050)
!5553 = !DILocation(line: 637, column: 3, scope: !5550)
!5554 = !DILocation(line: 639, column: 19, scope: !4050)
!5555 = !DILocation(line: 639, column: 25, scope: !4050)
!5556 = !DILocation(line: 639, column: 2, scope: !4050)
!5557 = !DILocation(line: 641, column: 19, scope: !4050)
!5558 = !DILocation(line: 641, column: 23, scope: !4050)
!5559 = !DILocation(line: 641, column: 2, scope: !4050)
!5560 = !DILocation(line: 641, column: 7, scope: !4050)
!5561 = !DILocation(line: 641, column: 17, scope: !4050)
!5562 = !DILocation(line: 642, column: 20, scope: !4050)
!5563 = !DILocation(line: 642, column: 24, scope: !4050)
!5564 = !DILocation(line: 642, column: 2, scope: !4050)
!5565 = !DILocation(line: 642, column: 7, scope: !4050)
!5566 = !DILocation(line: 642, column: 18, scope: !4050)
!5567 = !DILocation(line: 643, column: 32, scope: !4050)
!5568 = !DILocation(line: 643, column: 37, scope: !4050)
!5569 = !DILocation(line: 643, column: 17, scope: !4050)
!5570 = !DILocation(line: 643, column: 22, scope: !4050)
!5571 = !DILocation(line: 643, column: 30, scope: !4050)
!5572 = !DILocation(line: 643, column: 2, scope: !4050)
!5573 = !DILocation(line: 643, column: 7, scope: !4050)
!5574 = !DILocation(line: 643, column: 15, scope: !4050)
!5575 = !DILocation(line: 645, column: 2, scope: !4050)
!5576 = !DILocation(line: 645, column: 2, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !4050, file: !3, line: 645, column: 2)
!5578 = !DILocation(line: 647, column: 19, scope: !4050)
!5579 = !DILocation(line: 647, column: 2, scope: !4050)
!5580 = !DILocation(line: 647, column: 7, scope: !4050)
!5581 = !DILocation(line: 647, column: 17, scope: !4050)
!5582 = !DILocation(line: 650, column: 27, scope: !4050)
!5583 = !DILocation(line: 650, column: 8, scope: !4050)
!5584 = !DILocation(line: 650, column: 6, scope: !4050)
!5585 = !DILocation(line: 651, column: 6, scope: !5586)
!5586 = distinct !DILexicalBlock(scope: !4050, file: !3, line: 651, column: 6)
!5587 = !DILocation(line: 651, column: 6, scope: !4050)
!5588 = !DILocation(line: 652, column: 3, scope: !5586)
!5589 = !DILocation(line: 655, column: 2, scope: !4050)
!5590 = !DILocation(line: 657, column: 33, scope: !4050)
!5591 = !DILocation(line: 657, column: 39, scope: !4050)
!5592 = !DILocation(line: 657, column: 8, scope: !4050)
!5593 = !DILocation(line: 657, column: 6, scope: !4050)
!5594 = !DILocation(line: 659, column: 6, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !4050, file: !3, line: 659, column: 6)
!5596 = !DILocation(line: 659, column: 6, scope: !4050)
!5597 = !DILocation(line: 660, column: 3, scope: !5595)
!5598 = !DILocation(line: 663, column: 2, scope: !4050)
!5599 = !DILocation(line: 663, column: 8, scope: !4050)
!5600 = !DILocation(line: 663, column: 28, scope: !4050)
!5601 = !DILocation(line: 664, column: 25, scope: !4050)
!5602 = !DILocation(line: 664, column: 2, scope: !4050)
!5603 = !DILocation(line: 667, column: 2, scope: !4050)
!5604 = !DILabel(scope: !4050, name: "out_init_fail", file: !3, line: 669)
!5605 = !DILocation(line: 669, column: 1, scope: !4050)
!5606 = !DILocation(line: 670, column: 20, scope: !4050)
!5607 = !DILocation(line: 670, column: 25, scope: !4050)
!5608 = !DILocation(line: 670, column: 47, scope: !4050)
!5609 = !DILocation(line: 670, column: 52, scope: !4050)
!5610 = !DILocation(line: 671, column: 4, scope: !4050)
!5611 = !DILocation(line: 671, column: 9, scope: !4050)
!5612 = !DILocation(line: 670, column: 2, scope: !4050)
!5613 = !DILocation(line: 672, column: 9, scope: !4050)
!5614 = !DILocation(line: 672, column: 2, scope: !4050)
!5615 = !DILocation(line: 673, column: 1, scope: !4050)
!5616 = distinct !DISubprogram(name: "rtsx_usb_disconnect", scope: !3, file: !3, line: 675, type: !4015, scopeLine: 676, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5617 = !DILocalVariable(name: "intf", arg: 1, scope: !5616, file: !3, line: 675, type: !3705)
!5618 = !DILocation(line: 675, column: 55, scope: !5616)
!5619 = !DILocalVariable(name: "ucr", scope: !5616, file: !3, line: 677, type: !3813)
!5620 = !DILocation(line: 677, column: 19, scope: !5616)
!5621 = !DILocation(line: 677, column: 61, scope: !5616)
!5622 = !DILocation(line: 677, column: 44, scope: !5616)
!5623 = !DILocation(line: 677, column: 25, scope: !5616)
!5624 = !DILocation(line: 681, column: 22, scope: !5616)
!5625 = !DILocation(line: 681, column: 28, scope: !5616)
!5626 = !DILocation(line: 681, column: 2, scope: !5616)
!5627 = !DILocation(line: 683, column: 19, scope: !5616)
!5628 = !DILocation(line: 683, column: 24, scope: !5616)
!5629 = !DILocation(line: 683, column: 2, scope: !5616)
!5630 = !DILocation(line: 684, column: 20, scope: !5616)
!5631 = !DILocation(line: 684, column: 25, scope: !5616)
!5632 = !DILocation(line: 684, column: 47, scope: !5616)
!5633 = !DILocation(line: 684, column: 52, scope: !5616)
!5634 = !DILocation(line: 685, column: 4, scope: !5616)
!5635 = !DILocation(line: 685, column: 9, scope: !5616)
!5636 = !DILocation(line: 684, column: 2, scope: !5616)
!5637 = !DILocation(line: 686, column: 1, scope: !5616)
!5638 = distinct !DISubprogram(name: "rtsx_usb_suspend", scope: !3, file: !3, line: 689, type: !4023, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5639 = !DILocalVariable(name: "intf", arg: 1, scope: !5638, file: !3, line: 689, type: !3705)
!5640 = !DILocation(line: 689, column: 51, scope: !5638)
!5641 = !DILocalVariable(name: "message", arg: 2, scope: !5638, file: !3, line: 689, type: !3286)
!5642 = !DILocation(line: 689, column: 70, scope: !5638)
!5643 = !DILocalVariable(name: "ucr", scope: !5638, file: !3, line: 691, type: !3813)
!5644 = !DILocation(line: 691, column: 19, scope: !5638)
!5645 = !DILocation(line: 692, column: 39, scope: !5638)
!5646 = !DILocation(line: 692, column: 22, scope: !5638)
!5647 = !DILocation(line: 692, column: 3, scope: !5638)
!5648 = !DILocalVariable(name: "val", scope: !5638, file: !3, line: 693, type: !128)
!5649 = !DILocation(line: 693, column: 6, scope: !5638)
!5650 = !DILocation(line: 698, column: 6, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5638, file: !3, line: 698, column: 6)
!5652 = !DILocation(line: 698, column: 6, scope: !5638)
!5653 = !DILocation(line: 699, column: 22, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5655, file: !3, line: 699, column: 7)
!5655 = distinct !DILexicalBlock(scope: !5651, file: !3, line: 698, column: 29)
!5656 = !DILocation(line: 699, column: 27, scope: !5654)
!5657 = !DILocation(line: 699, column: 7, scope: !5654)
!5658 = !DILocation(line: 699, column: 7, scope: !5655)
!5659 = !DILocation(line: 700, column: 29, scope: !5660)
!5660 = distinct !DILexicalBlock(scope: !5654, file: !3, line: 699, column: 39)
!5661 = !DILocation(line: 700, column: 4, scope: !5660)
!5662 = !DILocation(line: 701, column: 18, scope: !5660)
!5663 = !DILocation(line: 701, column: 23, scope: !5660)
!5664 = !DILocation(line: 701, column: 4, scope: !5660)
!5665 = !DILocation(line: 704, column: 8, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5660, file: !3, line: 704, column: 8)
!5667 = !DILocation(line: 704, column: 12, scope: !5666)
!5668 = !DILocation(line: 704, column: 8, scope: !5660)
!5669 = !DILocation(line: 705, column: 5, scope: !5666)
!5670 = !DILocation(line: 706, column: 3, scope: !5660)
!5671 = !DILocation(line: 708, column: 4, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5654, file: !3, line: 706, column: 10)
!5673 = !DILocation(line: 710, column: 2, scope: !5655)
!5674 = !DILocation(line: 712, column: 2, scope: !5638)
!5675 = !DILocation(line: 713, column: 1, scope: !5638)
!5676 = distinct !DISubprogram(name: "rtsx_usb_resume", scope: !3, file: !3, line: 721, type: !4027, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5677 = !DILocalVariable(name: "intf", arg: 1, scope: !5676, file: !3, line: 721, type: !3705)
!5678 = !DILocation(line: 721, column: 50, scope: !5676)
!5679 = !DILocation(line: 723, column: 25, scope: !5676)
!5680 = !DILocation(line: 723, column: 31, scope: !5676)
!5681 = !DILocation(line: 723, column: 2, scope: !5676)
!5682 = !DILocation(line: 724, column: 2, scope: !5676)
!5683 = distinct !DISubprogram(name: "rtsx_usb_reset_resume", scope: !3, file: !3, line: 727, type: !4027, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5684 = !DILocalVariable(name: "intf", arg: 1, scope: !5683, file: !3, line: 727, type: !3705)
!5685 = !DILocation(line: 727, column: 56, scope: !5683)
!5686 = !DILocalVariable(name: "ucr", scope: !5683, file: !3, line: 729, type: !3813)
!5687 = !DILocation(line: 729, column: 19, scope: !5683)
!5688 = !DILocation(line: 730, column: 39, scope: !5683)
!5689 = !DILocation(line: 730, column: 22, scope: !5683)
!5690 = !DILocation(line: 730, column: 3, scope: !5683)
!5691 = !DILocation(line: 732, column: 22, scope: !5683)
!5692 = !DILocation(line: 732, column: 2, scope: !5683)
!5693 = !DILocation(line: 733, column: 25, scope: !5683)
!5694 = !DILocation(line: 733, column: 31, scope: !5683)
!5695 = !DILocation(line: 733, column: 2, scope: !5683)
!5696 = !DILocation(line: 734, column: 2, scope: !5683)
!5697 = distinct !DISubprogram(name: "rtsx_usb_pre_reset", scope: !3, file: !3, line: 746, type: !4027, scopeLine: 747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5698 = !DILocalVariable(name: "intf", arg: 1, scope: !5697, file: !3, line: 746, type: !3705)
!5699 = !DILocation(line: 746, column: 53, scope: !5697)
!5700 = !DILocalVariable(name: "ucr", scope: !5697, file: !3, line: 748, type: !3813)
!5701 = !DILocation(line: 748, column: 19, scope: !5697)
!5702 = !DILocation(line: 748, column: 61, scope: !5697)
!5703 = !DILocation(line: 748, column: 44, scope: !5697)
!5704 = !DILocation(line: 748, column: 25, scope: !5697)
!5705 = !DILocation(line: 750, column: 14, scope: !5697)
!5706 = !DILocation(line: 750, column: 19, scope: !5697)
!5707 = !DILocation(line: 750, column: 2, scope: !5697)
!5708 = !DILocation(line: 751, column: 2, scope: !5697)
!5709 = distinct !DISubprogram(name: "rtsx_usb_post_reset", scope: !3, file: !3, line: 754, type: !4027, scopeLine: 755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5710 = !DILocalVariable(name: "intf", arg: 1, scope: !5709, file: !3, line: 754, type: !3705)
!5711 = !DILocation(line: 754, column: 54, scope: !5709)
!5712 = !DILocalVariable(name: "ucr", scope: !5709, file: !3, line: 756, type: !3813)
!5713 = !DILocation(line: 756, column: 19, scope: !5709)
!5714 = !DILocation(line: 756, column: 61, scope: !5709)
!5715 = !DILocation(line: 756, column: 44, scope: !5709)
!5716 = !DILocation(line: 756, column: 25, scope: !5709)
!5717 = !DILocation(line: 758, column: 16, scope: !5709)
!5718 = !DILocation(line: 758, column: 21, scope: !5709)
!5719 = !DILocation(line: 758, column: 2, scope: !5709)
!5720 = !DILocation(line: 759, column: 2, scope: !5709)
!5721 = distinct !DISubprogram(name: "interface_to_usbdev", scope: !102, file: !102, line: 715, type: !5722, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5722 = !DISubroutineType(types: !5723)
!5723 = !{!144, !3705}
!5724 = !DILocalVariable(name: "intf", arg: 1, scope: !5721, file: !102, line: 715, type: !3705)
!5725 = !DILocation(line: 715, column: 76, scope: !5721)
!5726 = !DILocalVariable(name: "__mptr", scope: !5727, file: !102, line: 717, type: !133)
!5727 = distinct !DILexicalBlock(scope: !5721, file: !102, line: 717, column: 9)
!5728 = !DILocation(line: 717, column: 9, scope: !5727)
!5729 = !DILocation(line: 717, column: 9, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !5727, file: !102, line: 717, column: 9)
!5731 = !DILocation(line: 717, column: 2, scope: !5721)
!5732 = distinct !DISubprogram(name: "devm_kzalloc", scope: !81, file: !81, line: 215, type: !5733, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5733 = !DISubroutineType(types: !5734)
!5734 = !{!133, !174, !284, !134}
!5735 = !DILocalVariable(name: "dev", arg: 1, scope: !5732, file: !81, line: 215, type: !174)
!5736 = !DILocation(line: 215, column: 49, scope: !5732)
!5737 = !DILocalVariable(name: "size", arg: 2, scope: !5732, file: !81, line: 215, type: !284)
!5738 = !DILocation(line: 215, column: 61, scope: !5732)
!5739 = !DILocalVariable(name: "gfp", arg: 3, scope: !5732, file: !81, line: 215, type: !134)
!5740 = !DILocation(line: 215, column: 73, scope: !5732)
!5741 = !DILocation(line: 217, column: 22, scope: !5732)
!5742 = !DILocation(line: 217, column: 27, scope: !5732)
!5743 = !DILocation(line: 217, column: 33, scope: !5732)
!5744 = !DILocation(line: 217, column: 37, scope: !5732)
!5745 = !DILocation(line: 217, column: 9, scope: !5732)
!5746 = !DILocation(line: 217, column: 2, scope: !5732)
!5747 = distinct !DISubprogram(name: "usb_set_intfdata", scope: !102, file: !102, line: 268, type: !5748, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5748 = !DISubroutineType(types: !5749)
!5749 = !{null, !3705, !133}
!5750 = !DILocalVariable(name: "intf", arg: 1, scope: !5747, file: !102, line: 268, type: !3705)
!5751 = !DILocation(line: 268, column: 59, scope: !5747)
!5752 = !DILocalVariable(name: "data", arg: 2, scope: !5747, file: !102, line: 268, type: !133)
!5753 = !DILocation(line: 268, column: 71, scope: !5747)
!5754 = !DILocation(line: 270, column: 19, scope: !5747)
!5755 = !DILocation(line: 270, column: 25, scope: !5747)
!5756 = !DILocation(line: 270, column: 30, scope: !5747)
!5757 = !DILocation(line: 270, column: 2, scope: !5747)
!5758 = !DILocation(line: 271, column: 1, scope: !5747)
!5759 = distinct !DISubprogram(name: "rtsx_usb_init_chip", scope: !3, file: !3, line: 567, type: !5760, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5760 = !DISubroutineType(types: !5761)
!5761 = !{!139, !3813}
!5762 = !DILocalVariable(name: "ucr", arg: 1, scope: !5759, file: !3, line: 567, type: !3813)
!5763 = !DILocation(line: 567, column: 48, scope: !5759)
!5764 = !DILocalVariable(name: "ret", scope: !5759, file: !3, line: 569, type: !139)
!5765 = !DILocation(line: 569, column: 6, scope: !5759)
!5766 = !DILocalVariable(name: "val", scope: !5759, file: !3, line: 570, type: !136)
!5767 = !DILocation(line: 570, column: 5, scope: !5759)
!5768 = !DILocation(line: 572, column: 25, scope: !5759)
!5769 = !DILocation(line: 572, column: 2, scope: !5759)
!5770 = !DILocation(line: 575, column: 32, scope: !5759)
!5771 = !DILocation(line: 575, column: 8, scope: !5759)
!5772 = !DILocation(line: 575, column: 6, scope: !5759)
!5773 = !DILocation(line: 577, column: 6, scope: !5774)
!5774 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 577, column: 6)
!5775 = !DILocation(line: 577, column: 6, scope: !5759)
!5776 = !DILocation(line: 578, column: 10, scope: !5774)
!5777 = !DILocation(line: 578, column: 3, scope: !5774)
!5778 = !DILocation(line: 580, column: 2, scope: !5759)
!5779 = !DILocation(line: 581, column: 32, scope: !5759)
!5780 = !DILocation(line: 581, column: 8, scope: !5759)
!5781 = !DILocation(line: 581, column: 6, scope: !5759)
!5782 = !DILocation(line: 582, column: 6, scope: !5783)
!5783 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 582, column: 6)
!5784 = !DILocation(line: 582, column: 6, scope: !5759)
!5785 = !DILocation(line: 583, column: 10, scope: !5783)
!5786 = !DILocation(line: 583, column: 3, scope: !5783)
!5787 = !DILocation(line: 586, column: 31, scope: !5759)
!5788 = !DILocation(line: 586, column: 8, scope: !5759)
!5789 = !DILocation(line: 586, column: 6, scope: !5759)
!5790 = !DILocation(line: 587, column: 6, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 587, column: 6)
!5792 = !DILocation(line: 587, column: 6, scope: !5759)
!5793 = !DILocation(line: 588, column: 10, scope: !5791)
!5794 = !DILocation(line: 588, column: 3, scope: !5791)
!5795 = !DILocation(line: 590, column: 20, scope: !5759)
!5796 = !DILocation(line: 590, column: 24, scope: !5759)
!5797 = !DILocation(line: 590, column: 2, scope: !5759)
!5798 = !DILocation(line: 590, column: 7, scope: !5759)
!5799 = !DILocation(line: 590, column: 18, scope: !5759)
!5800 = !DILocation(line: 593, column: 31, scope: !5759)
!5801 = !DILocation(line: 593, column: 8, scope: !5759)
!5802 = !DILocation(line: 593, column: 6, scope: !5759)
!5803 = !DILocation(line: 594, column: 6, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 594, column: 6)
!5805 = !DILocation(line: 594, column: 6, scope: !5759)
!5806 = !DILocation(line: 595, column: 10, scope: !5804)
!5807 = !DILocation(line: 595, column: 3, scope: !5804)
!5808 = !DILocation(line: 597, column: 6, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 597, column: 6)
!5810 = !DILocation(line: 597, column: 10, scope: !5809)
!5811 = !DILocation(line: 597, column: 6, scope: !5759)
!5812 = !DILocation(line: 598, column: 3, scope: !5813)
!5813 = distinct !DILexicalBlock(scope: !5809, file: !3, line: 597, column: 33)
!5814 = !DILocation(line: 598, column: 8, scope: !5813)
!5815 = !DILocation(line: 598, column: 16, scope: !5813)
!5816 = !DILocation(line: 600, column: 2, scope: !5813)
!5817 = !DILocation(line: 601, column: 3, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5809, file: !3, line: 600, column: 9)
!5819 = !DILocation(line: 601, column: 8, scope: !5818)
!5820 = !DILocation(line: 601, column: 16, scope: !5818)
!5821 = !DILocation(line: 606, column: 25, scope: !5759)
!5822 = !DILocation(line: 606, column: 2, scope: !5759)
!5823 = !DILocation(line: 607, column: 6, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 607, column: 6)
!5825 = !DILocation(line: 607, column: 10, scope: !5824)
!5826 = !DILocation(line: 607, column: 6, scope: !5759)
!5827 = !DILocation(line: 608, column: 3, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5824, file: !3, line: 607, column: 21)
!5829 = !DILocation(line: 608, column: 8, scope: !5828)
!5830 = !DILocation(line: 608, column: 19, scope: !5828)
!5831 = !DILocation(line: 610, column: 2, scope: !5828)
!5832 = !DILocation(line: 611, column: 3, scope: !5833)
!5833 = distinct !DILexicalBlock(scope: !5824, file: !3, line: 610, column: 9)
!5834 = !DILocation(line: 611, column: 8, scope: !5833)
!5835 = !DILocation(line: 611, column: 19, scope: !5833)
!5836 = !DILocation(line: 614, column: 29, scope: !5759)
!5837 = !DILocation(line: 614, column: 9, scope: !5759)
!5838 = !DILocation(line: 614, column: 2, scope: !5759)
!5839 = !DILocation(line: 615, column: 1, scope: !5759)
!5840 = distinct !DISubprogram(name: "rtsx_usb_sg_timed_out", scope: !3, file: !3, line: 32, type: !3370, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5841 = !DILocalVariable(name: "t", arg: 1, scope: !5840, file: !3, line: 32, type: !3372)
!5842 = !DILocation(line: 32, column: 54, scope: !5840)
!5843 = !DILocalVariable(name: "ucr", scope: !5840, file: !3, line: 34, type: !3813)
!5844 = !DILocation(line: 34, column: 19, scope: !5840)
!5845 = !DILocalVariable(name: "__mptr", scope: !5846, file: !3, line: 34, type: !133)
!5846 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 34, column: 25)
!5847 = !DILocation(line: 34, column: 25, scope: !5846)
!5848 = !DILocation(line: 34, column: 25, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5846, file: !3, line: 34, column: 25)
!5850 = !DILocation(line: 37, column: 17, scope: !5840)
!5851 = !DILocation(line: 37, column: 22, scope: !5840)
!5852 = !DILocation(line: 37, column: 2, scope: !5840)
!5853 = !DILocation(line: 38, column: 1, scope: !5840)
!5854 = distinct !DISubprogram(name: "mfd_add_hotplug_devices", scope: !4056, file: !4056, line: 149, type: !5855, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5855 = !DISubroutineType(types: !5856)
!5856 = !{!139, !174, !5857, !139}
!5857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!5858 = !DILocalVariable(name: "parent", arg: 1, scope: !5854, file: !4056, line: 149, type: !174)
!5859 = !DILocation(line: 149, column: 58, scope: !5854)
!5860 = !DILocalVariable(name: "cells", arg: 2, scope: !5854, file: !4056, line: 150, type: !5857)
!5861 = !DILocation(line: 150, column: 26, scope: !5854)
!5862 = !DILocalVariable(name: "n_devs", arg: 3, scope: !5854, file: !4056, line: 150, type: !139)
!5863 = !DILocation(line: 150, column: 37, scope: !5854)
!5864 = !DILocation(line: 152, column: 25, scope: !5854)
!5865 = !DILocation(line: 152, column: 54, scope: !5854)
!5866 = !DILocation(line: 152, column: 61, scope: !5854)
!5867 = !DILocation(line: 152, column: 9, scope: !5854)
!5868 = !DILocation(line: 152, column: 2, scope: !5854)
!5869 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !81, file: !81, line: 660, type: !5870, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5870 = !DISubroutineType(types: !5871)
!5871 = !{null, !174, !133}
!5872 = !DILocalVariable(name: "dev", arg: 1, scope: !5869, file: !81, line: 660, type: !174)
!5873 = !DILocation(line: 660, column: 51, scope: !5869)
!5874 = !DILocalVariable(name: "data", arg: 2, scope: !5869, file: !81, line: 660, type: !133)
!5875 = !DILocation(line: 660, column: 62, scope: !5869)
!5876 = !DILocation(line: 662, column: 21, scope: !5869)
!5877 = !DILocation(line: 662, column: 2, scope: !5869)
!5878 = !DILocation(line: 662, column: 7, scope: !5869)
!5879 = !DILocation(line: 662, column: 19, scope: !5869)
!5880 = !DILocation(line: 663, column: 1, scope: !5869)
!5881 = distinct !DISubprogram(name: "rtsx_usb_reset_chip", scope: !3, file: !3, line: 512, type: !5760, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5882 = !DILocalVariable(name: "ucr", arg: 1, scope: !5881, file: !3, line: 512, type: !3813)
!5883 = !DILocation(line: 512, column: 49, scope: !5881)
!5884 = !DILocalVariable(name: "ret", scope: !5881, file: !3, line: 514, type: !139)
!5885 = !DILocation(line: 514, column: 6, scope: !5881)
!5886 = !DILocalVariable(name: "val", scope: !5881, file: !3, line: 515, type: !136)
!5887 = !DILocation(line: 515, column: 5, scope: !5881)
!5888 = !DILocation(line: 517, column: 20, scope: !5881)
!5889 = !DILocation(line: 517, column: 2, scope: !5881)
!5890 = !DILocation(line: 519, column: 6, scope: !5891)
!5891 = distinct !DILexicalBlock(scope: !5881, file: !3, line: 519, column: 6)
!5892 = !DILocation(line: 519, column: 6, scope: !5881)
!5893 = !DILocation(line: 520, column: 20, scope: !5894)
!5894 = distinct !DILexicalBlock(scope: !5891, file: !3, line: 519, column: 30)
!5895 = !DILocation(line: 520, column: 3, scope: !5894)
!5896 = !DILocation(line: 522, column: 20, scope: !5894)
!5897 = !DILocation(line: 522, column: 3, scope: !5894)
!5898 = !DILocation(line: 524, column: 20, scope: !5894)
!5899 = !DILocation(line: 524, column: 3, scope: !5894)
!5900 = !DILocation(line: 526, column: 20, scope: !5894)
!5901 = !DILocation(line: 526, column: 3, scope: !5894)
!5902 = !DILocation(line: 528, column: 20, scope: !5894)
!5903 = !DILocation(line: 528, column: 3, scope: !5894)
!5904 = !DILocation(line: 530, column: 2, scope: !5894)
!5905 = !DILocation(line: 532, column: 19, scope: !5881)
!5906 = !DILocation(line: 532, column: 2, scope: !5881)
!5907 = !DILocation(line: 533, column: 19, scope: !5881)
!5908 = !DILocation(line: 533, column: 2, scope: !5881)
!5909 = !DILocation(line: 534, column: 19, scope: !5881)
!5910 = !DILocation(line: 534, column: 2, scope: !5881)
!5911 = !DILocation(line: 536, column: 19, scope: !5881)
!5912 = !DILocation(line: 536, column: 2, scope: !5881)
!5913 = !DILocation(line: 538, column: 19, scope: !5881)
!5914 = !DILocation(line: 538, column: 2, scope: !5881)
!5915 = !DILocation(line: 540, column: 19, scope: !5881)
!5916 = !DILocation(line: 540, column: 2, scope: !5881)
!5917 = !DILocation(line: 542, column: 6, scope: !5918)
!5918 = distinct !DILexicalBlock(scope: !5881, file: !3, line: 542, column: 6)
!5919 = !DILocation(line: 542, column: 11, scope: !5918)
!5920 = !DILocation(line: 542, column: 6, scope: !5881)
!5921 = !DILocation(line: 543, column: 20, scope: !5918)
!5922 = !DILocation(line: 543, column: 3, scope: !5918)
!5923 = !DILocation(line: 546, column: 19, scope: !5881)
!5924 = !DILocation(line: 546, column: 2, scope: !5881)
!5925 = !DILocation(line: 548, column: 19, scope: !5881)
!5926 = !DILocation(line: 548, column: 2, scope: !5881)
!5927 = !DILocation(line: 552, column: 26, scope: !5881)
!5928 = !DILocation(line: 552, column: 8, scope: !5881)
!5929 = !DILocation(line: 552, column: 6, scope: !5881)
!5930 = !DILocation(line: 553, column: 6, scope: !5931)
!5931 = distinct !DILexicalBlock(scope: !5881, file: !3, line: 553, column: 6)
!5932 = !DILocation(line: 553, column: 6, scope: !5881)
!5933 = !DILocation(line: 554, column: 10, scope: !5931)
!5934 = !DILocation(line: 554, column: 3, scope: !5931)
!5935 = !DILocation(line: 557, column: 25, scope: !5881)
!5936 = !DILocation(line: 557, column: 2, scope: !5881)
!5937 = !DILocation(line: 558, column: 7, scope: !5938)
!5938 = distinct !DILexicalBlock(scope: !5881, file: !3, line: 558, column: 6)
!5939 = !DILocation(line: 558, column: 11, scope: !5938)
!5940 = !DILocation(line: 558, column: 24, scope: !5938)
!5941 = !DILocation(line: 558, column: 29, scope: !5938)
!5942 = !DILocation(line: 558, column: 33, scope: !5938)
!5943 = !DILocation(line: 558, column: 50, scope: !5938)
!5944 = !DILocation(line: 558, column: 6, scope: !5881)
!5945 = !DILocation(line: 559, column: 37, scope: !5946)
!5946 = distinct !DILexicalBlock(scope: !5938, file: !3, line: 558, column: 73)
!5947 = !DILocation(line: 559, column: 9, scope: !5946)
!5948 = !DILocation(line: 559, column: 7, scope: !5946)
!5949 = !DILocation(line: 560, column: 7, scope: !5950)
!5950 = distinct !DILexicalBlock(scope: !5946, file: !3, line: 560, column: 7)
!5951 = !DILocation(line: 560, column: 7, scope: !5946)
!5952 = !DILocation(line: 561, column: 11, scope: !5950)
!5953 = !DILocation(line: 561, column: 4, scope: !5950)
!5954 = !DILocation(line: 562, column: 2, scope: !5946)
!5955 = !DILocation(line: 564, column: 2, scope: !5881)
!5956 = !DILocation(line: 565, column: 1, scope: !5881)
!5957 = distinct !DISubprogram(name: "rtsx_usb_write_phy_register", scope: !3, file: !3, line: 319, type: !5958, scopeLine: 320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5958 = !DISubroutineType(types: !5959)
!5959 = !{!139, !3813, !136, !136}
!5960 = !DILocalVariable(name: "ucr", arg: 1, scope: !5957, file: !3, line: 319, type: !3813)
!5961 = !DILocation(line: 319, column: 57, scope: !5957)
!5962 = !DILocalVariable(name: "addr", arg: 2, scope: !5957, file: !3, line: 319, type: !136)
!5963 = !DILocation(line: 319, column: 65, scope: !5957)
!5964 = !DILocalVariable(name: "val", arg: 3, scope: !5957, file: !3, line: 319, type: !136)
!5965 = !DILocation(line: 319, column: 74, scope: !5957)
!5966 = !DILocation(line: 324, column: 20, scope: !5957)
!5967 = !DILocation(line: 324, column: 2, scope: !5957)
!5968 = !DILocation(line: 326, column: 19, scope: !5957)
!5969 = !DILocation(line: 326, column: 56, scope: !5957)
!5970 = !DILocation(line: 326, column: 2, scope: !5957)
!5971 = !DILocation(line: 327, column: 19, scope: !5957)
!5972 = !DILocation(line: 327, column: 58, scope: !5957)
!5973 = !DILocation(line: 327, column: 63, scope: !5957)
!5974 = !DILocation(line: 327, column: 2, scope: !5957)
!5975 = !DILocation(line: 328, column: 19, scope: !5957)
!5976 = !DILocation(line: 328, column: 2, scope: !5957)
!5977 = !DILocation(line: 329, column: 19, scope: !5957)
!5978 = !DILocation(line: 329, column: 2, scope: !5957)
!5979 = !DILocation(line: 330, column: 19, scope: !5957)
!5980 = !DILocation(line: 330, column: 2, scope: !5957)
!5981 = !DILocation(line: 331, column: 19, scope: !5957)
!5982 = !DILocation(line: 332, column: 11, scope: !5957)
!5983 = !DILocation(line: 332, column: 16, scope: !5957)
!5984 = !DILocation(line: 332, column: 22, scope: !5957)
!5985 = !DILocation(line: 332, column: 10, scope: !5957)
!5986 = !DILocation(line: 331, column: 2, scope: !5957)
!5987 = !DILocation(line: 333, column: 19, scope: !5957)
!5988 = !DILocation(line: 333, column: 2, scope: !5957)
!5989 = !DILocation(line: 334, column: 19, scope: !5957)
!5990 = !DILocation(line: 334, column: 2, scope: !5957)
!5991 = !DILocation(line: 335, column: 19, scope: !5957)
!5992 = !DILocation(line: 335, column: 2, scope: !5957)
!5993 = !DILocation(line: 337, column: 27, scope: !5957)
!5994 = !DILocation(line: 337, column: 9, scope: !5957)
!5995 = !DILocation(line: 337, column: 2, scope: !5957)
!5996 = distinct !DISubprogram(name: "usb_get_intfdata", scope: !102, file: !102, line: 263, type: !5997, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5997 = !DISubroutineType(types: !5998)
!5998 = !{!133, !3705}
!5999 = !DILocalVariable(name: "intf", arg: 1, scope: !5996, file: !102, line: 263, type: !3705)
!6000 = !DILocation(line: 263, column: 60, scope: !5996)
!6001 = !DILocation(line: 265, column: 26, scope: !5996)
!6002 = !DILocation(line: 265, column: 32, scope: !5996)
!6003 = !DILocation(line: 265, column: 9, scope: !5996)
!6004 = !DILocation(line: 265, column: 2, scope: !5996)
!6005 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !81, file: !81, line: 655, type: !6006, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!6006 = !DISubroutineType(types: !6007)
!6007 = !{!133, !6008}
!6008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6009, size: 64)
!6009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!6010 = !DILocalVariable(name: "dev", arg: 1, scope: !6005, file: !81, line: 655, type: !6008)
!6011 = !DILocation(line: 655, column: 58, scope: !6005)
!6012 = !DILocation(line: 657, column: 9, scope: !6005)
!6013 = !DILocation(line: 657, column: 14, scope: !6005)
!6014 = !DILocation(line: 657, column: 2, scope: !6005)
!6015 = distinct !DISubprogram(name: "rtsx_usb_resume_child", scope: !3, file: !3, line: 715, type: !6016, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!6016 = !DISubroutineType(types: !6017)
!6017 = !{!139, !174, !133}
!6018 = !DILocalVariable(name: "dev", arg: 1, scope: !6015, file: !3, line: 715, type: !174)
!6019 = !DILocation(line: 715, column: 49, scope: !6015)
!6020 = !DILocalVariable(name: "data", arg: 2, scope: !6015, file: !3, line: 715, type: !133)
!6021 = !DILocation(line: 715, column: 60, scope: !6015)
!6022 = !DILocation(line: 717, column: 20, scope: !6015)
!6023 = !DILocation(line: 717, column: 2, scope: !6015)
!6024 = !DILocation(line: 718, column: 2, scope: !6015)
!6025 = distinct !DISubprogram(name: "pm_request_resume", scope: !6026, file: !6026, line: 344, type: !3204, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!6026 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!6027 = !DILocalVariable(name: "dev", arg: 1, scope: !6025, file: !6026, line: 344, type: !174)
!6028 = !DILocation(line: 344, column: 52, scope: !6025)
!6029 = !DILocation(line: 346, column: 29, scope: !6025)
!6030 = !DILocation(line: 346, column: 9, scope: !6025)
!6031 = !DILocation(line: 346, column: 2, scope: !6025)
