; ModuleID = '../bcout/drivers/w1/masters/ds2490.llvm.bc'
source_filename = "drivers/w1/masters/ds2490.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_ds_driver_init6:\09\09\09"
module asm ".long\09ds_driver_init - .\09\09\09"
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.63, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.63 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.61, %struct.list_head, %struct.list_head, %union.anon.62 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.59 }
%union.anon.59 = type { %struct.anon.60 }
%struct.anon.60 = type { %struct.spinlock, i32 }
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
%struct.page = type { i64, %union.anon.1, %union.anon.51, %struct.atomic_t, [8 x i8] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.51 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.52, i32 }
%union.anon.52 = type { %struct.kuid_t }
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
%struct.vm_struct = type opaque
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
%union.anon.61 = type { %struct.list_head }
%union.anon.62 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.53, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.54, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.55, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.58, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.53 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.54 = type { %struct.callback_head }
%union.anon.55 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.58 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.56 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.56 = type { %struct.nfs_lock_info }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
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
%struct.ds_device = type { %struct.list_head, %struct.usb_device*, %struct.usb_interface*, [4 x i32], i32, i16, [32 x i8], i8, %struct.w1_bus_master }
%struct.w1_bus_master = type { i8*, i8 (i8*)*, void (i8*, i8)*, i8 (i8*, i8)*, i8 (i8*)*, void (i8*, i8)*, i8 (i8*, i8*, i32)*, void (i8*, i8*, i32)*, i8 (i8*, i8)*, i8 (i8*)*, i8 (i8*, i32)*, void (i8*, %struct.w1_master*, i8, void (%struct.w1_master*, i64)*)*, i8* }
%struct.w1_master = type { %struct.list_head, %struct.module*, [32 x i8], %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, i64, i32, i32, i32, i32, i64, %struct.atomic_t, i8*, i32, i32, i64, %struct.task_struct*, %struct.mutex, %struct.mutex, %struct.device_driver*, %struct.device, %struct.w1_bus_master*, i32 }
%struct.ds_status = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@__UNIQUE_ID___addressable_ds_driver_init214 = internal global i8* bitcast (i32 ()* @ds_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@ds_driver = internal global %struct.usb_driver { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @ds_probe, void (%struct.usb_interface*)* @ds_disconnect, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, %struct.usb_device_id* getelementptr inbounds ([2 x %struct.usb_device_id], [2 x %struct.usb_device_id]* @ds_id_table, i32 0, i32 0), %struct.attribute_group** null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, align 8, !dbg !3848
@__exitcall_ds_driver_exit = internal global void ()* @ds_driver_exit, section ".exitcall.exit", align 8, !dbg !3823
@__UNIQUE_ID_author215 = internal constant [49 x i8] c"ds2490.author=Evgeniy Polyakov <zbr@ioremap.net>\00", section ".modinfo", align 1, !dbg !3828
@__UNIQUE_ID_description216 = internal constant [65 x i8] c"ds2490.description=DS2490 USB <-> W1 bus master driver (DS9490*)\00", section ".modinfo", align 1, !dbg !3833
@__UNIQUE_ID_file217 = internal constant [38 x i8] c"ds2490.file=drivers/w1/masters/ds2490\00", section ".modinfo", align 1, !dbg !3838
@__UNIQUE_ID_license218 = internal constant [19 x i8] c"ds2490.license=GPL\00", section ".modinfo", align 1, !dbg !3843
@.str = private unnamed_addr constant [7 x i8] c"ds2490\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"DS9490R\00", align 1
@ds_id_table = internal constant [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1274, i16 9360, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !3913
@.str.2 = private unnamed_addr constant [45 x i8] c"\016Failed to allocate new DS9490R structure.\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to reset configuration: err=%d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"Failed to set alternative setting %d for %d interface: err=%d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"\016Num endpoints=%d. It is not DS9490R.\0A\00", align 1
@ds_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @ds_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @ds_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !3909
@ds_devices = internal global %struct.list_head { %struct.list_head* @ds_devices, %struct.list_head* @ds_devices }, align 8, !dbg !3911
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"\013ds_reset_device: Error allowing strong pullup\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"\013ds_reset_device: Error setting duration\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"\013Failed to send command control message %x.%x: err=%d.\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"\013Failed to send mode control message %x.%x: err=%d.\0A\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"\013Failed to send control message %x.%x: err=%d.\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"\016Resetting device after ST_EPOF.\0A\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"\013Failed to read 1-wire data from 0x%x: err=%d.\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"\0160x%x: count=%d, status: \00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"\016%02x \00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"\016\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"enable flag\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"1-wire speed\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"strong pullup duration\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"programming pulse duration\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"pulldown slew rate control\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"write-1 low time\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"data sample offset/write-0 recovery time\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"reserved (test register)\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"device status flags\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"communication command byte 1\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"communication command byte 2\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"communication command buffer status\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"1-wire data output buffer status\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"1-wire data input buffer status\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"new device detect\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"Result Register Value: \00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"\016NRS: Reset no presence or ...\0A\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"\016SH: short on reset or set path\0A\00", align 1
@.str.36 = private unnamed_addr constant [35 x i8] c"\016APP: alarming presence on reset\0A\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"\016VPP: 12V expected not seen\0A\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"\016CMP: compare error\0A\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"\016CRC: CRC error detected\0A\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"\016RDP: redirected page\0A\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"\016EOS: end of search error\0A\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"\016%45s: %8x\0A\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"\016Clearing ep0x%x.\0A\00", align 1
@.str.44 = private unnamed_addr constant [50 x i8] c"\013Failed to write 1-wire data to ep0x%x: err=%d.\0A\00", align 1
@.str.45 = private unnamed_addr constant [60 x i8] c"%s: max_slave_count %d reached, will continue next search.\0A\00", align 1
@__func__.ds9490r_search = private unnamed_addr constant [15 x i8] c"ds9490r_search\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_ds_driver_init214 to i8*), i8* bitcast (void ()* @ds_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_ds_driver_exit to i8*), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_author215, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__UNIQUE_ID_description216, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__UNIQUE_ID_file217, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__UNIQUE_ID_license218, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @ds_driver_init() #0 section ".init.text" !dbg !3921 {
entry:
  %call = call i32 @usb_register_driver(%struct.usb_driver* @ds_driver, %struct.module* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #9, !dbg !3924
  ret i32 %call, !dbg !3924
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @ds_driver_exit() #0 section ".exit.text" !dbg !3925 {
entry:
  call void @usb_deregister(%struct.usb_driver* @ds_driver) #9, !dbg !3926
  ret void, !dbg !3926
}

; Function Attrs: noredzone
declare dso_local void @usb_deregister(%struct.usb_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_register_driver(%struct.usb_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds_probe(%struct.usb_interface* %intf, %struct.usb_device_id* %udev_id) #2 !dbg !3927 {
entry:
  %retval = alloca i32, align 4
  %intf.addr = alloca %struct.usb_interface*, align 8
  %udev_id.addr = alloca %struct.usb_device_id*, align 8
  %udev = alloca %struct.usb_device*, align 8
  %endpoint = alloca %struct.usb_endpoint_descriptor*, align 8
  %iface_desc = alloca %struct.usb_host_interface*, align 8
  %dev = alloca %struct.ds_device*, align 8
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  %alt = alloca i32, align 4
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !3928, metadata !DIExpression()), !dbg !3929
  store %struct.usb_device_id* %udev_id, %struct.usb_device_id** %udev_id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %udev_id.addr, metadata !3930, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !3932, metadata !DIExpression()), !dbg !3933
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !3934
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %0) #9, !dbg !3935
  store %struct.usb_device* %call, %struct.usb_device** %udev, align 8, !dbg !3933
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %endpoint, metadata !3936, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.declare(metadata %struct.usb_host_interface** %iface_desc, metadata !3939, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev, metadata !3941, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4031, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.declare(metadata i32* %alt, metadata !4033, metadata !DIExpression()), !dbg !4034
  %call1 = call i8* @kzalloc(i64 192, i32 3264) #9, !dbg !4035
  %1 = bitcast i8* %call1 to %struct.ds_device*, !dbg !4035
  store %struct.ds_device* %1, %struct.ds_device** %dev, align 8, !dbg !4036
  %2 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4037
  %tobool = icmp ne %struct.ds_device* %2, null, !dbg !4037
  br i1 %tobool, label %if.end, label %if.then, !dbg !4039

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !4040
  store i32 -12, i32* %retval, align 4, !dbg !4042
  br label %return, !dbg !4042

if.end:                                           ; preds = %entry
  %3 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4043
  %call3 = call %struct.usb_device* @usb_get_dev(%struct.usb_device* %3) #9, !dbg !4044
  %4 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4045
  %udev4 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %4, i32 0, i32 1, !dbg !4046
  store %struct.usb_device* %call3, %struct.usb_device** %udev4, align 8, !dbg !4047
  %5 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4048
  %udev5 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %5, i32 0, i32 1, !dbg !4050
  %6 = load %struct.usb_device*, %struct.usb_device** %udev5, align 8, !dbg !4050
  %tobool6 = icmp ne %struct.usb_device* %6, null, !dbg !4048
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4051

if.then7:                                         ; preds = %if.end
  store i32 -12, i32* %err, align 4, !dbg !4052
  br label %err_out_free, !dbg !4054

if.end8:                                          ; preds = %if.end
  %7 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4055
  %ep = getelementptr inbounds %struct.ds_device, %struct.ds_device* %7, i32 0, i32 3, !dbg !4056
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %ep, i64 0, i64 0, !dbg !4057
  %8 = bitcast i32* %arraydecay to i8*, !dbg !4057
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 16, i1 false), !dbg !4057
  %9 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4058
  %10 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4059
  %11 = bitcast %struct.ds_device* %10 to i8*, !dbg !4059
  call void @usb_set_intfdata(%struct.usb_interface* %9, i8* %11) #9, !dbg !4060
  %12 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4061
  %udev9 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %12, i32 0, i32 1, !dbg !4062
  %13 = load %struct.usb_device*, %struct.usb_device** %udev9, align 8, !dbg !4062
  %call10 = call i32 @usb_reset_configuration(%struct.usb_device* %13) #9, !dbg !4063
  store i32 %call10, i32* %err, align 4, !dbg !4064
  %14 = load i32, i32* %err, align 4, !dbg !4065
  %tobool11 = icmp ne i32 %14, 0, !dbg !4065
  br i1 %tobool11, label %if.then12, label %if.end15, !dbg !4067

if.then12:                                        ; preds = %if.end8
  %15 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4068
  %udev13 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %15, i32 0, i32 1, !dbg !4068
  %16 = load %struct.usb_device*, %struct.usb_device** %udev13, align 8, !dbg !4068
  %dev14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 14, !dbg !4068
  %17 = load i32, i32* %err, align 4, !dbg !4068
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %17) #10, !dbg !4068
  br label %err_out_clear, !dbg !4070

if.end15:                                         ; preds = %if.end8
  store i32 3, i32* %alt, align 4, !dbg !4071
  %18 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4072
  %udev16 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %18, i32 0, i32 1, !dbg !4073
  %19 = load %struct.usb_device*, %struct.usb_device** %udev16, align 8, !dbg !4073
  %20 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4074
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %20, i32 0, i32 1, !dbg !4075
  %21 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting, align 8, !dbg !4075
  %desc = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %21, i32 0, i32 0, !dbg !4076
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc, i32 0, i32 2, !dbg !4077
  %22 = load i8, i8* %bInterfaceNumber, align 2, !dbg !4077
  %conv = zext i8 %22 to i32, !dbg !4074
  %23 = load i32, i32* %alt, align 4, !dbg !4078
  %call17 = call i32 @usb_set_interface(%struct.usb_device* %19, i32 %conv, i32 %23) #9, !dbg !4079
  store i32 %call17, i32* %err, align 4, !dbg !4080
  %24 = load i32, i32* %err, align 4, !dbg !4081
  %tobool18 = icmp ne i32 %24, 0, !dbg !4081
  br i1 %tobool18, label %if.then19, label %if.end26, !dbg !4083

if.then19:                                        ; preds = %if.end15
  %25 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4084
  %udev20 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %25, i32 0, i32 1, !dbg !4084
  %26 = load %struct.usb_device*, %struct.usb_device** %udev20, align 8, !dbg !4084
  %dev21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 14, !dbg !4084
  %27 = load i32, i32* %alt, align 4, !dbg !4084
  %28 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4084
  %cur_altsetting22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %28, i32 0, i32 1, !dbg !4084
  %29 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting22, align 8, !dbg !4084
  %desc23 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %29, i32 0, i32 0, !dbg !4084
  %bInterfaceNumber24 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc23, i32 0, i32 2, !dbg !4084
  %30 = load i8, i8* %bInterfaceNumber24, align 2, !dbg !4084
  %conv25 = zext i8 %30 to i32, !dbg !4084
  %31 = load i32, i32* %err, align 4, !dbg !4084
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev21, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i32 %27, i32 %conv25, i32 %31) #10, !dbg !4084
  br label %err_out_clear, !dbg !4086

if.end26:                                         ; preds = %if.end15
  %32 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4087
  %cur_altsetting27 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %32, i32 0, i32 1, !dbg !4088
  %33 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting27, align 8, !dbg !4088
  store %struct.usb_host_interface* %33, %struct.usb_host_interface** %iface_desc, align 8, !dbg !4089
  %34 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface_desc, align 8, !dbg !4090
  %desc28 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %34, i32 0, i32 0, !dbg !4092
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc28, i32 0, i32 4, !dbg !4093
  %35 = load i8, i8* %bNumEndpoints, align 4, !dbg !4093
  %conv29 = zext i8 %35 to i32, !dbg !4090
  %cmp = icmp ne i32 %conv29, 3, !dbg !4094
  br i1 %cmp, label %if.then31, label %if.end36, !dbg !4095

if.then31:                                        ; preds = %if.end26
  %36 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface_desc, align 8, !dbg !4096
  %desc32 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %36, i32 0, i32 0, !dbg !4096
  %bNumEndpoints33 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc32, i32 0, i32 4, !dbg !4096
  %37 = load i8, i8* %bNumEndpoints33, align 4, !dbg !4096
  %conv34 = zext i8 %37 to i32, !dbg !4096
  %call35 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %conv34) #10, !dbg !4096
  store i32 -22, i32* %err, align 4, !dbg !4098
  br label %err_out_clear, !dbg !4099

if.end36:                                         ; preds = %if.end26
  store i32 0, i32* %i, align 4, !dbg !4100
  br label %for.cond, !dbg !4102

for.cond:                                         ; preds = %for.inc, %if.end36
  %38 = load i32, i32* %i, align 4, !dbg !4103
  %39 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface_desc, align 8, !dbg !4105
  %desc37 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %39, i32 0, i32 0, !dbg !4106
  %bNumEndpoints38 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc37, i32 0, i32 4, !dbg !4107
  %40 = load i8, i8* %bNumEndpoints38, align 4, !dbg !4107
  %conv39 = zext i8 %40 to i32, !dbg !4105
  %cmp40 = icmp slt i32 %38, %conv39, !dbg !4108
  br i1 %cmp40, label %for.body, label %for.end, !dbg !4109

for.body:                                         ; preds = %for.cond
  %41 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface_desc, align 8, !dbg !4110
  %endpoint42 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %41, i32 0, i32 3, !dbg !4112
  %42 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint42, align 8, !dbg !4112
  %43 = load i32, i32* %i, align 4, !dbg !4113
  %idxprom = sext i32 %43 to i64, !dbg !4110
  %arrayidx = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %42, i64 %idxprom, !dbg !4110
  %desc43 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx, i32 0, i32 0, !dbg !4114
  store %struct.usb_endpoint_descriptor* %desc43, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4115
  %44 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4116
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %44, i32 0, i32 2, !dbg !4117
  %45 = load i8, i8* %bEndpointAddress, align 1, !dbg !4117
  %conv44 = zext i8 %45 to i32, !dbg !4116
  %46 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4118
  %ep45 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %46, i32 0, i32 3, !dbg !4119
  %47 = load i32, i32* %i, align 4, !dbg !4120
  %add = add i32 %47, 1, !dbg !4121
  %idxprom46 = sext i32 %add to i64, !dbg !4118
  %arrayidx47 = getelementptr [4 x i32], [4 x i32]* %ep45, i64 0, i64 %idxprom46, !dbg !4118
  store i32 %conv44, i32* %arrayidx47, align 4, !dbg !4122
  br label %for.inc, !dbg !4123

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %i, align 4, !dbg !4124
  %inc = add i32 %48, 1, !dbg !4124
  store i32 %inc, i32* %i, align 4, !dbg !4124
  br label %for.cond, !dbg !4125, !llvm.loop !4126

for.end:                                          ; preds = %for.cond
  %49 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4128
  %call48 = call i32 @ds_w1_init(%struct.ds_device* %49) #9, !dbg !4129
  store i32 %call48, i32* %err, align 4, !dbg !4130
  %50 = load i32, i32* %err, align 4, !dbg !4131
  %tobool49 = icmp ne i32 %50, 0, !dbg !4131
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !4133

if.then50:                                        ; preds = %for.end
  br label %err_out_clear, !dbg !4134

if.end51:                                         ; preds = %for.end
  call void @mutex_lock(%struct.mutex* @ds_mutex) #9, !dbg !4135
  %51 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4136
  %ds_entry = getelementptr inbounds %struct.ds_device, %struct.ds_device* %51, i32 0, i32 0, !dbg !4137
  call void @list_add_tail(%struct.list_head* %ds_entry, %struct.list_head* @ds_devices) #9, !dbg !4138
  call void @mutex_unlock(%struct.mutex* @ds_mutex) #9, !dbg !4139
  store i32 0, i32* %retval, align 4, !dbg !4140
  br label %return, !dbg !4140

err_out_clear:                                    ; preds = %if.then50, %if.then31, %if.then19, %if.then12
  call void @llvm.dbg.label(metadata !4141), !dbg !4142
  %52 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4143
  call void @usb_set_intfdata(%struct.usb_interface* %52, i8* null) #9, !dbg !4144
  %53 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4145
  %udev52 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %53, i32 0, i32 1, !dbg !4146
  %54 = load %struct.usb_device*, %struct.usb_device** %udev52, align 8, !dbg !4146
  call void @usb_put_dev(%struct.usb_device* %54) #9, !dbg !4147
  br label %err_out_free, !dbg !4147

err_out_free:                                     ; preds = %err_out_clear, %if.then7
  call void @llvm.dbg.label(metadata !4148), !dbg !4149
  %55 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4150
  %56 = bitcast %struct.ds_device* %55 to i8*, !dbg !4150
  call void @kfree(i8* %56) #9, !dbg !4151
  %57 = load i32, i32* %err, align 4, !dbg !4152
  store i32 %57, i32* %retval, align 4, !dbg !4153
  br label %return, !dbg !4153

return:                                           ; preds = %err_out_free, %if.end51, %if.then
  %58 = load i32, i32* %retval, align 4, !dbg !4154
  ret i32 %58, !dbg !4154
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ds_disconnect(%struct.usb_interface* %intf) #2 !dbg !4155 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %dev = alloca %struct.ds_device*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4156, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev, metadata !4158, metadata !DIExpression()), !dbg !4159
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4160
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #9, !dbg !4161
  %1 = bitcast i8* %call to %struct.ds_device*, !dbg !4161
  store %struct.ds_device* %1, %struct.ds_device** %dev, align 8, !dbg !4162
  %2 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4163
  %tobool = icmp ne %struct.ds_device* %2, null, !dbg !4163
  br i1 %tobool, label %if.end, label %if.then, !dbg !4165

if.then:                                          ; preds = %entry
  br label %return, !dbg !4166

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* @ds_mutex) #9, !dbg !4167
  %3 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4168
  %ds_entry = getelementptr inbounds %struct.ds_device, %struct.ds_device* %3, i32 0, i32 0, !dbg !4169
  call void @list_del(%struct.list_head* %ds_entry) #9, !dbg !4170
  call void @mutex_unlock(%struct.mutex* @ds_mutex) #9, !dbg !4171
  %4 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4172
  call void @ds_w1_fini(%struct.ds_device* %4) #9, !dbg !4173
  %5 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4174
  call void @usb_set_intfdata(%struct.usb_interface* %5, i8* null) #9, !dbg !4175
  %6 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4176
  %udev = getelementptr inbounds %struct.ds_device, %struct.ds_device* %6, i32 0, i32 1, !dbg !4177
  %7 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4177
  call void @usb_put_dev(%struct.usb_device* %7) #9, !dbg !4178
  %8 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4179
  %9 = bitcast %struct.ds_device* %8 to i8*, !dbg !4179
  call void @kfree(i8* %9) #9, !dbg !4180
  br label %return, !dbg !4181

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4181
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %intf) #2 !dbg !4182 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4185, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4187, metadata !DIExpression()), !dbg !4189
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4189
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !4189
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !4189
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !4189
  %2 = bitcast %struct.device* %1 to i8*, !dbg !4189
  store i8* %2, i8** %__mptr, align 8, !dbg !4189
  br label %do.body, !dbg !4189

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4190

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4189
  %add.ptr = getelementptr i8, i8* %3, i64 -160, !dbg !4189
  %4 = bitcast i8* %add.ptr to %struct.usb_device*, !dbg !4189
  store %struct.usb_device* %4, %struct.usb_device** %tmp, align 8, !dbg !4190
  %5 = load %struct.usb_device*, %struct.usb_device** %tmp, align 8, !dbg !4189
  ret %struct.usb_device* %5, !dbg !4192
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !4193 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4196, metadata !DIExpression()), !dbg !4200
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4206, metadata !DIExpression()), !dbg !4207
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4208, metadata !DIExpression()), !dbg !4209
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4210, metadata !DIExpression()), !dbg !4211
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4212, metadata !DIExpression()), !dbg !4216
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4218, metadata !DIExpression()), !dbg !4222
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4224, metadata !DIExpression()), !dbg !4228
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4233, metadata !DIExpression()), !dbg !4234
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4235, metadata !DIExpression()), !dbg !4236
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4237, metadata !DIExpression()), !dbg !4238
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4239, metadata !DIExpression()), !dbg !4240
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4241, metadata !DIExpression()), !dbg !4242
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4243, metadata !DIExpression()), !dbg !4244
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4245, metadata !DIExpression()), !dbg !4246
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4247, metadata !DIExpression()), !dbg !4248
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4249, metadata !DIExpression()), !dbg !4250
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4251, metadata !DIExpression()), !dbg !4252
  %0 = load i64, i64* %size.addr, align 8, !dbg !4253
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4254
  %or = or i32 %1, 256, !dbg !4255
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4256
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !4257
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4258

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4259
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4260
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4261

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4262
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4263
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4264
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !4265
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4242
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4266
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4267
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4268
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4269
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4270
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4271
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !4272
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4272
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4272
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4272
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !4272
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4273
  br label %kmalloc.exit, !dbg !4273

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4274
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4275
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4275
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4277

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4278
  br label %kmalloc_index.exit.i, !dbg !4278

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4279
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4281
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4282

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4283
  br label %kmalloc_index.exit.i, !dbg !4283

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4284
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4286
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4287

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4288
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4289
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4290

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4291
  br label %kmalloc_index.exit.i, !dbg !4291

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4292
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4294
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4295

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4296
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4297
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4298

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4299
  br label %kmalloc_index.exit.i, !dbg !4299

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4300
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4302
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4303

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4304
  br label %kmalloc_index.exit.i, !dbg !4304

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4305
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4307
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4308

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4309
  br label %kmalloc_index.exit.i, !dbg !4309

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4310
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4312
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4313

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4314
  br label %kmalloc_index.exit.i, !dbg !4314

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4315
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4317
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4318

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4319
  br label %kmalloc_index.exit.i, !dbg !4319

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4320
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4322
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4323

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4324
  br label %kmalloc_index.exit.i, !dbg !4324

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4325
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4327
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4328

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4329
  br label %kmalloc_index.exit.i, !dbg !4329

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4330
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4332
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4333

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4334
  br label %kmalloc_index.exit.i, !dbg !4334

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4335
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4337
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4338

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4339
  br label %kmalloc_index.exit.i, !dbg !4339

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4340
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4342
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4343

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4344
  br label %kmalloc_index.exit.i, !dbg !4344

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4345
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4347
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4348

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4349
  br label %kmalloc_index.exit.i, !dbg !4349

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4350
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4352
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4353

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4354
  br label %kmalloc_index.exit.i, !dbg !4354

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4355
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4357
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4358

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4359
  br label %kmalloc_index.exit.i, !dbg !4359

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4360
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4362
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4363

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4364
  br label %kmalloc_index.exit.i, !dbg !4364

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4365
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4367
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4368

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4369
  br label %kmalloc_index.exit.i, !dbg !4369

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4370
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4372
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4373

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4374
  br label %kmalloc_index.exit.i, !dbg !4374

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4375
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4377
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4378

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4379
  br label %kmalloc_index.exit.i, !dbg !4379

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4380
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4382
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4383

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4384
  br label %kmalloc_index.exit.i, !dbg !4384

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4385
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4387
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4388

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4389
  br label %kmalloc_index.exit.i, !dbg !4389

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4390
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4392
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4393

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4394
  br label %kmalloc_index.exit.i, !dbg !4394

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4395
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4397
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4398

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4399
  br label %kmalloc_index.exit.i, !dbg !4399

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4400
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4402
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4403

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4404
  br label %kmalloc_index.exit.i, !dbg !4404

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4405
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4407
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4408

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4409
  br label %kmalloc_index.exit.i, !dbg !4409

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4410
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4412
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4413

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4414
  br label %kmalloc_index.exit.i, !dbg !4414

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4415
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4417
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4418

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4419
  br label %kmalloc_index.exit.i, !dbg !4419

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !4420, !srcloc !4423
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 210) #11, !dbg !4424, !srcloc !4427
  unreachable, !dbg !4428

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4429
  store i32 %45, i32* %index.i, align 4, !dbg !4430
  %46 = load i32, i32* %index.i, align 4, !dbg !4431
  %tobool.i = icmp ne i32 %46, 0, !dbg !4431
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4433

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4434
  br label %kmalloc.exit, !dbg !4434

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4435
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4436
  %and.i.i = and i32 %48, 17, !dbg !4436
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4436
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4436
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4436
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4436
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4438

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4439
  br label %kmalloc_type.exit.i, !dbg !4439

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4440
  %and2.i.i = and i32 %49, 1, !dbg !4441
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4440
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4440
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4440
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4442
  br label %kmalloc_type.exit.i, !dbg !4442

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4443
  %idxprom.i = zext i32 %51 to i64, !dbg !4444
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4444
  %52 = load i32, i32* %index.i, align 4, !dbg !4445
  %idxprom6.i = zext i32 %52 to i64, !dbg !4444
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4444
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4444
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4446
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4447
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4448
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4449
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !4450
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4450
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4450
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4450
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !4450
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4211
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4451
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4452
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4453
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4454
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !4455
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4456
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4457
  store i8* %62, i8** %retval.i, align 8, !dbg !4458
  br label %kmalloc.exit, !dbg !4458

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4459
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4460
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !4461
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4461
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4461
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4461
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !4461
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4462
  br label %kmalloc.exit, !dbg !4462

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4463
  ret i8* %65, !dbg !4464
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noredzone
declare dso_local %struct.usb_device* @usb_get_dev(%struct.usb_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_set_intfdata(%struct.usb_interface* %intf, i8* %data) #2 !dbg !4465 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4468, metadata !DIExpression()), !dbg !4469
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4470, metadata !DIExpression()), !dbg !4471
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4472
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !4473
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4474
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #9, !dbg !4475
  ret void, !dbg !4476
}

; Function Attrs: noredzone
declare dso_local i32 @usb_reset_configuration(%struct.usb_device*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds_w1_init(%struct.ds_device* %dev) #2 !dbg !4477 {
entry:
  %dev.addr = alloca %struct.ds_device*, align 8
  store %struct.ds_device* %dev, %struct.ds_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev.addr, metadata !4480, metadata !DIExpression()), !dbg !4481
  %0 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !4482
  %master = getelementptr inbounds %struct.ds_device, %struct.ds_device* %0, i32 0, i32 8, !dbg !4483
  %1 = bitcast %struct.w1_bus_master* %master to i8*, !dbg !4484
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 104, i1 false), !dbg !4484
  %2 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !4485
  call void @ds_reset_device(%struct.ds_device* %2) #9, !dbg !4486
  %3 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !4487
  %4 = bitcast %struct.ds_device* %3 to i8*, !dbg !4487
  %5 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !4488
  %master1 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %5, i32 0, i32 8, !dbg !4489
  %data = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %master1, i32 0, i32 0, !dbg !4490
  store i8* %4, i8** %data, align 8, !dbg !4491
  %6 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !4492
  %master2 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %6, i32 0, i32 8, !dbg !4493
  %touch_bit = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %master2, i32 0, i32 3, !dbg !4494
  store i8 (i8*, i8)* @ds9490r_touch_bit, i8 (i8*, i8)** %touch_bit, align 8, !dbg !4495
  %7 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !4496
  %master3 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %7, i32 0, i32 8, !dbg !4497
  %read_byte = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %master3, i32 0, i32 4, !dbg !4498
  store i8 (i8*)* @ds9490r_read_byte, i8 (i8*)** %read_byte, align 8, !dbg !4499
  %8 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !4500
  %master4 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %8, i32 0, i32 8, !dbg !4501
  %write_byte = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %master4, i32 0, i32 5, !dbg !4502
  store void (i8*, i8)* @ds9490r_write_byte, void (i8*, i8)** %write_byte, align 8, !dbg !4503
  %9 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !4504
  %master5 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %9, i32 0, i32 8, !dbg !4505
  %read_block = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %master5, i32 0, i32 6, !dbg !4506
  store i8 (i8*, i8*, i32)* @ds9490r_read_block, i8 (i8*, i8*, i32)** %read_block, align 8, !dbg !4507
  %10 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !4508
  %master6 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %10, i32 0, i32 8, !dbg !4509
  %write_block = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %master6, i32 0, i32 7, !dbg !4510
  store void (i8*, i8*, i32)* @ds9490r_write_block, void (i8*, i8*, i32)** %write_block, align 8, !dbg !4511
  %11 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !4512
  %master7 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %11, i32 0, i32 8, !dbg !4513
  %reset_bus = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %master7, i32 0, i32 9, !dbg !4514
  store i8 (i8*)* @ds9490r_reset, i8 (i8*)** %reset_bus, align 8, !dbg !4515
  %12 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !4516
  %master8 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %12, i32 0, i32 8, !dbg !4517
  %set_pullup = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %master8, i32 0, i32 10, !dbg !4518
  store i8 (i8*, i32)* @ds9490r_set_pullup, i8 (i8*, i32)** %set_pullup, align 8, !dbg !4519
  %13 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !4520
  %master9 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %13, i32 0, i32 8, !dbg !4521
  %search = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %master9, i32 0, i32 11, !dbg !4522
  store void (i8*, %struct.w1_master*, i8, void (%struct.w1_master*, i64)*)* @ds9490r_search, void (i8*, %struct.w1_master*, i8, void (%struct.w1_master*, i64)*)** %search, align 8, !dbg !4523
  %14 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !4524
  %master10 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %14, i32 0, i32 8, !dbg !4525
  %call = call i32 @w1_add_master_device(%struct.w1_bus_master* %master10) #9, !dbg !4526
  ret i32 %call, !dbg !4527
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #2 !dbg !4528 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4532, metadata !DIExpression()), !dbg !4533
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4534, metadata !DIExpression()), !dbg !4535
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4536
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4537
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4538
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4538
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4539
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #9, !dbg !4540
  ret void, !dbg !4541
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @usb_put_dev(%struct.usb_device*) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !4542 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4546, metadata !DIExpression()), !dbg !4551
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4553, metadata !DIExpression()), !dbg !4554
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4555, metadata !DIExpression()), !dbg !4556
  %0 = load i64, i64* %size.addr, align 8, !dbg !4557
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4559
  br i1 %1, label %if.then, label %if.end447, !dbg !4560

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4561
  %tobool = icmp ne i64 %2, 0, !dbg !4561
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4564

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4565
  br label %return, !dbg !4565

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4566
  %cmp = icmp ult i64 %3, 4096, !dbg !4568
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4569

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4570
  br label %return, !dbg !4570

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub = sub i64 %4, 1, !dbg !4571
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4571
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4571

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub4 = sub i64 %6, 1, !dbg !4571
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4571
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4571

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub6 = sub i64 %8, 1, !dbg !4571
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4571
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4571

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4571

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub9 = sub i64 %9, 1, !dbg !4571
  %and = and i64 %sub9, -9223372036854775808, !dbg !4571
  %tobool10 = icmp ne i64 %and, 0, !dbg !4571
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4571

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4571

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub13 = sub i64 %10, 1, !dbg !4571
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4571
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4571
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4571

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4571

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub18 = sub i64 %11, 1, !dbg !4571
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4571
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4571
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4571

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4571

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub23 = sub i64 %12, 1, !dbg !4571
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4571
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4571
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4571

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4571

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub28 = sub i64 %13, 1, !dbg !4571
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4571
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4571
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4571

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4571

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub33 = sub i64 %14, 1, !dbg !4571
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4571
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4571
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4571

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4571

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub38 = sub i64 %15, 1, !dbg !4571
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4571
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4571
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4571

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4571

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub43 = sub i64 %16, 1, !dbg !4571
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4571
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4571
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4571

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4571

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub48 = sub i64 %17, 1, !dbg !4571
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4571
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4571
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4571

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4571

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub53 = sub i64 %18, 1, !dbg !4571
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4571
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4571
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4571

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4571

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub58 = sub i64 %19, 1, !dbg !4571
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4571
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4571
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4571

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4571

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub63 = sub i64 %20, 1, !dbg !4571
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4571
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4571
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4571

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4571

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub68 = sub i64 %21, 1, !dbg !4571
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4571
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4571
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4571

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4571

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub73 = sub i64 %22, 1, !dbg !4571
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4571
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4571
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4571

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4571

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub78 = sub i64 %23, 1, !dbg !4571
  %and79 = and i64 %sub78, 562949953421312, !dbg !4571
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4571
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4571

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4571

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub83 = sub i64 %24, 1, !dbg !4571
  %and84 = and i64 %sub83, 281474976710656, !dbg !4571
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4571
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4571

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4571

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub88 = sub i64 %25, 1, !dbg !4571
  %and89 = and i64 %sub88, 140737488355328, !dbg !4571
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4571
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4571

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4571

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub93 = sub i64 %26, 1, !dbg !4571
  %and94 = and i64 %sub93, 70368744177664, !dbg !4571
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4571
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4571

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4571

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub98 = sub i64 %27, 1, !dbg !4571
  %and99 = and i64 %sub98, 35184372088832, !dbg !4571
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4571
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4571

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4571

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub103 = sub i64 %28, 1, !dbg !4571
  %and104 = and i64 %sub103, 17592186044416, !dbg !4571
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4571
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4571

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4571

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub108 = sub i64 %29, 1, !dbg !4571
  %and109 = and i64 %sub108, 8796093022208, !dbg !4571
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4571
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4571

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4571

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub113 = sub i64 %30, 1, !dbg !4571
  %and114 = and i64 %sub113, 4398046511104, !dbg !4571
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4571
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4571

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4571

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub118 = sub i64 %31, 1, !dbg !4571
  %and119 = and i64 %sub118, 2199023255552, !dbg !4571
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4571
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4571

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4571

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub123 = sub i64 %32, 1, !dbg !4571
  %and124 = and i64 %sub123, 1099511627776, !dbg !4571
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4571
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4571

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4571

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub128 = sub i64 %33, 1, !dbg !4571
  %and129 = and i64 %sub128, 549755813888, !dbg !4571
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4571
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4571

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4571

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub133 = sub i64 %34, 1, !dbg !4571
  %and134 = and i64 %sub133, 274877906944, !dbg !4571
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4571
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4571

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4571

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub138 = sub i64 %35, 1, !dbg !4571
  %and139 = and i64 %sub138, 137438953472, !dbg !4571
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4571
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4571

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4571

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub143 = sub i64 %36, 1, !dbg !4571
  %and144 = and i64 %sub143, 68719476736, !dbg !4571
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4571
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4571

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4571

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub148 = sub i64 %37, 1, !dbg !4571
  %and149 = and i64 %sub148, 34359738368, !dbg !4571
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4571
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4571

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4571

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub153 = sub i64 %38, 1, !dbg !4571
  %and154 = and i64 %sub153, 17179869184, !dbg !4571
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4571
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4571

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4571

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub158 = sub i64 %39, 1, !dbg !4571
  %and159 = and i64 %sub158, 8589934592, !dbg !4571
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4571
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4571

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4571

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub163 = sub i64 %40, 1, !dbg !4571
  %and164 = and i64 %sub163, 4294967296, !dbg !4571
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4571
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4571

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4571

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub168 = sub i64 %41, 1, !dbg !4571
  %and169 = and i64 %sub168, 2147483648, !dbg !4571
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4571
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4571

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4571

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub173 = sub i64 %42, 1, !dbg !4571
  %and174 = and i64 %sub173, 1073741824, !dbg !4571
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4571
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4571

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4571

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub178 = sub i64 %43, 1, !dbg !4571
  %and179 = and i64 %sub178, 536870912, !dbg !4571
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4571
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4571

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4571

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub183 = sub i64 %44, 1, !dbg !4571
  %and184 = and i64 %sub183, 268435456, !dbg !4571
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4571
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4571

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4571

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub188 = sub i64 %45, 1, !dbg !4571
  %and189 = and i64 %sub188, 134217728, !dbg !4571
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4571
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4571

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4571

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub193 = sub i64 %46, 1, !dbg !4571
  %and194 = and i64 %sub193, 67108864, !dbg !4571
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4571
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4571

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4571

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub198 = sub i64 %47, 1, !dbg !4571
  %and199 = and i64 %sub198, 33554432, !dbg !4571
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4571
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4571

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4571

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub203 = sub i64 %48, 1, !dbg !4571
  %and204 = and i64 %sub203, 16777216, !dbg !4571
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4571
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4571

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4571

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub208 = sub i64 %49, 1, !dbg !4571
  %and209 = and i64 %sub208, 8388608, !dbg !4571
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4571
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4571

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4571

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub213 = sub i64 %50, 1, !dbg !4571
  %and214 = and i64 %sub213, 4194304, !dbg !4571
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4571
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4571

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4571

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub218 = sub i64 %51, 1, !dbg !4571
  %and219 = and i64 %sub218, 2097152, !dbg !4571
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4571
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4571

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4571

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub223 = sub i64 %52, 1, !dbg !4571
  %and224 = and i64 %sub223, 1048576, !dbg !4571
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4571
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4571

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4571

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub228 = sub i64 %53, 1, !dbg !4571
  %and229 = and i64 %sub228, 524288, !dbg !4571
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4571
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4571

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4571

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub233 = sub i64 %54, 1, !dbg !4571
  %and234 = and i64 %sub233, 262144, !dbg !4571
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4571
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4571

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4571

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub238 = sub i64 %55, 1, !dbg !4571
  %and239 = and i64 %sub238, 131072, !dbg !4571
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4571
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4571

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4571

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub243 = sub i64 %56, 1, !dbg !4571
  %and244 = and i64 %sub243, 65536, !dbg !4571
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4571
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4571

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4571

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub248 = sub i64 %57, 1, !dbg !4571
  %and249 = and i64 %sub248, 32768, !dbg !4571
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4571
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4571

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4571

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub253 = sub i64 %58, 1, !dbg !4571
  %and254 = and i64 %sub253, 16384, !dbg !4571
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4571
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4571

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4571

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub258 = sub i64 %59, 1, !dbg !4571
  %and259 = and i64 %sub258, 8192, !dbg !4571
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4571
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4571

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4571

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub263 = sub i64 %60, 1, !dbg !4571
  %and264 = and i64 %sub263, 4096, !dbg !4571
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4571
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4571

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4571

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub268 = sub i64 %61, 1, !dbg !4571
  %and269 = and i64 %sub268, 2048, !dbg !4571
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4571
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4571

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4571

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub273 = sub i64 %62, 1, !dbg !4571
  %and274 = and i64 %sub273, 1024, !dbg !4571
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4571
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4571

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4571

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub278 = sub i64 %63, 1, !dbg !4571
  %and279 = and i64 %sub278, 512, !dbg !4571
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4571
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4571

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4571

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub283 = sub i64 %64, 1, !dbg !4571
  %and284 = and i64 %sub283, 256, !dbg !4571
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4571
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4571

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4571

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub288 = sub i64 %65, 1, !dbg !4571
  %and289 = and i64 %sub288, 128, !dbg !4571
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4571
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4571

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4571

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub293 = sub i64 %66, 1, !dbg !4571
  %and294 = and i64 %sub293, 64, !dbg !4571
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4571
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4571

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4571

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub298 = sub i64 %67, 1, !dbg !4571
  %and299 = and i64 %sub298, 32, !dbg !4571
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4571
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4571

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4571

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub303 = sub i64 %68, 1, !dbg !4571
  %and304 = and i64 %sub303, 16, !dbg !4571
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4571
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4571

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4571

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub308 = sub i64 %69, 1, !dbg !4571
  %and309 = and i64 %sub308, 8, !dbg !4571
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4571
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4571

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4571

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub313 = sub i64 %70, 1, !dbg !4571
  %and314 = and i64 %sub313, 4, !dbg !4571
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4571
  %71 = zext i1 %tobool315 to i64, !dbg !4571
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4571
  br label %cond.end, !dbg !4571

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4571
  br label %cond.end317, !dbg !4571

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4571
  br label %cond.end319, !dbg !4571

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4571
  br label %cond.end321, !dbg !4571

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4571
  br label %cond.end323, !dbg !4571

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4571
  br label %cond.end325, !dbg !4571

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4571
  br label %cond.end327, !dbg !4571

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4571
  br label %cond.end329, !dbg !4571

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4571
  br label %cond.end331, !dbg !4571

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4571
  br label %cond.end333, !dbg !4571

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4571
  br label %cond.end335, !dbg !4571

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4571
  br label %cond.end337, !dbg !4571

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4571
  br label %cond.end339, !dbg !4571

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4571
  br label %cond.end341, !dbg !4571

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4571
  br label %cond.end343, !dbg !4571

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4571
  br label %cond.end345, !dbg !4571

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4571
  br label %cond.end347, !dbg !4571

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4571
  br label %cond.end349, !dbg !4571

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4571
  br label %cond.end351, !dbg !4571

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4571
  br label %cond.end353, !dbg !4571

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4571
  br label %cond.end355, !dbg !4571

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4571
  br label %cond.end357, !dbg !4571

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4571
  br label %cond.end359, !dbg !4571

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4571
  br label %cond.end361, !dbg !4571

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4571
  br label %cond.end363, !dbg !4571

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4571
  br label %cond.end365, !dbg !4571

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4571
  br label %cond.end367, !dbg !4571

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4571
  br label %cond.end369, !dbg !4571

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4571
  br label %cond.end371, !dbg !4571

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4571
  br label %cond.end373, !dbg !4571

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4571
  br label %cond.end375, !dbg !4571

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4571
  br label %cond.end377, !dbg !4571

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4571
  br label %cond.end379, !dbg !4571

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4571
  br label %cond.end381, !dbg !4571

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4571
  br label %cond.end383, !dbg !4571

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4571
  br label %cond.end385, !dbg !4571

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4571
  br label %cond.end387, !dbg !4571

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4571
  br label %cond.end389, !dbg !4571

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4571
  br label %cond.end391, !dbg !4571

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4571
  br label %cond.end393, !dbg !4571

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4571
  br label %cond.end395, !dbg !4571

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4571
  br label %cond.end397, !dbg !4571

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4571
  br label %cond.end399, !dbg !4571

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4571
  br label %cond.end401, !dbg !4571

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4571
  br label %cond.end403, !dbg !4571

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4571
  br label %cond.end405, !dbg !4571

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4571
  br label %cond.end407, !dbg !4571

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4571
  br label %cond.end409, !dbg !4571

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4571
  br label %cond.end411, !dbg !4571

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4571
  br label %cond.end413, !dbg !4571

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4571
  br label %cond.end415, !dbg !4571

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4571
  br label %cond.end417, !dbg !4571

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4571
  br label %cond.end419, !dbg !4571

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4571
  br label %cond.end421, !dbg !4571

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4571
  br label %cond.end423, !dbg !4571

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4571
  br label %cond.end425, !dbg !4571

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4571
  br label %cond.end427, !dbg !4571

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4571
  br label %cond.end429, !dbg !4571

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4571
  br label %cond.end431, !dbg !4571

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4571
  br label %cond.end433, !dbg !4571

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4571
  br label %cond.end435, !dbg !4571

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4571
  br label %cond.end437, !dbg !4571

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4571
  br label %cond.end440, !dbg !4571

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4571

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4571
  br label %cond.end444, !dbg !4571

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4571
  %sub443 = sub i64 %72, 1, !dbg !4571
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !4571
  br label %cond.end444, !dbg !4571

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4571
  %sub446 = sub i32 %cond445, 12, !dbg !4572
  %add = add i32 %sub446, 1, !dbg !4573
  store i32 %add, i32* %retval, align 4, !dbg !4574
  br label %return, !dbg !4574

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4575
  %dec = add i64 %73, -1, !dbg !4575
  store i64 %dec, i64* %size.addr, align 8, !dbg !4575
  %74 = load i64, i64* %size.addr, align 8, !dbg !4576
  %shr = lshr i64 %74, 12, !dbg !4576
  store i64 %shr, i64* %size.addr, align 8, !dbg !4576
  %75 = load i64, i64* %size.addr, align 8, !dbg !4577
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4554
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4578
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4579
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !4578, !srcloc !4580
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4578
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4581
  %add.i = add i32 %79, 1, !dbg !4582
  store i32 %add.i, i32* %retval, align 4, !dbg !4583
  br label %return, !dbg !4583

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4584
  ret i32 %80, !dbg !4584
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !4585 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4546, metadata !DIExpression()), !dbg !4589
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4553, metadata !DIExpression()), !dbg !4591
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4592, metadata !DIExpression()), !dbg !4593
  %0 = load i64, i64* %n.addr, align 8, !dbg !4594
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4591
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4595
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4596
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !4595, !srcloc !4580
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4595
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4597
  %add.i = add i32 %4, 1, !dbg !4598
  %sub = sub i32 %add.i, 1, !dbg !4599
  ret i32 %sub, !dbg !4600
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !4601 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4605, metadata !DIExpression()), !dbg !4606
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4607, metadata !DIExpression()), !dbg !4608
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4609, metadata !DIExpression()), !dbg !4610
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4611, metadata !DIExpression()), !dbg !4612
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4613
  ret i8* %0, !dbg !4614
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !4615 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4618, metadata !DIExpression()), !dbg !4619
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4620, metadata !DIExpression()), !dbg !4621
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4622
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4623
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !4624
  store i8* %0, i8** %driver_data, align 8, !dbg !4625
  ret void, !dbg !4626
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ds_reset_device(%struct.ds_device* %dev) #2 !dbg !4627 {
entry:
  %dev.addr = alloca %struct.ds_device*, align 8
  %del = alloca i8, align 1
  store %struct.ds_device* %dev, %struct.ds_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev.addr, metadata !4630, metadata !DIExpression()), !dbg !4631
  %0 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !4632
  %call = call i32 @ds_send_control_cmd(%struct.ds_device* %0, i16 zeroext 0, i16 zeroext 0) #9, !dbg !4633
  %1 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !4634
  %call1 = call i32 @ds_send_control_mode(%struct.ds_device* %1, i16 zeroext 0, i16 zeroext 2) #9, !dbg !4636
  %tobool = icmp ne i32 %call1, 0, !dbg !4636
  br i1 %tobool, label %if.then, label %if.end, !dbg !4637

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !4638
  br label %if.end, !dbg !4638

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !4639
  %spu_sleep = getelementptr inbounds %struct.ds_device, %struct.ds_device* %2, i32 0, i32 4, !dbg !4641
  %3 = load i32, i32* %spu_sleep, align 8, !dbg !4641
  %tobool3 = icmp ne i32 %3, 0, !dbg !4639
  br i1 %tobool3, label %if.then4, label %if.end12, !dbg !4642

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8* %del, metadata !4643, metadata !DIExpression()), !dbg !4645
  %4 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !4646
  %spu_sleep5 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %4, i32 0, i32 4, !dbg !4647
  %5 = load i32, i32* %spu_sleep5, align 8, !dbg !4647
  %shr = ashr i32 %5, 4, !dbg !4648
  %conv = trunc i32 %shr to i8, !dbg !4646
  store i8 %conv, i8* %del, align 1, !dbg !4645
  %6 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !4649
  %7 = load i8, i8* %del, align 1, !dbg !4651
  %conv6 = zext i8 %7 to i16, !dbg !4651
  %call7 = call i32 @ds_send_control(%struct.ds_device* %6, i16 zeroext 19, i16 zeroext %conv6) #9, !dbg !4652
  %tobool8 = icmp ne i32 %call7, 0, !dbg !4652
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !4653

if.then9:                                         ; preds = %if.then4
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !4654
  br label %if.end11, !dbg !4654

if.end11:                                         ; preds = %if.then9, %if.then4
  br label %if.end12, !dbg !4655

if.end12:                                         ; preds = %if.end11, %if.end
  ret void, !dbg !4656
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @ds9490r_touch_bit(i8* %data, i8 zeroext %bit) #2 !dbg !4657 {
entry:
  %retval = alloca i8, align 1
  %data.addr = alloca i8*, align 8
  %bit.addr = alloca i8, align 1
  %dev = alloca %struct.ds_device*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4658, metadata !DIExpression()), !dbg !4659
  store i8 %bit, i8* %bit.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %bit.addr, metadata !4660, metadata !DIExpression()), !dbg !4661
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev, metadata !4662, metadata !DIExpression()), !dbg !4663
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4664
  %1 = bitcast i8* %0 to %struct.ds_device*, !dbg !4664
  store %struct.ds_device* %1, %struct.ds_device** %dev, align 8, !dbg !4663
  %2 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4665
  %3 = load i8, i8* %bit.addr, align 1, !dbg !4667
  %4 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4668
  %byte_buf = getelementptr inbounds %struct.ds_device, %struct.ds_device* %4, i32 0, i32 7, !dbg !4669
  %call = call i32 @ds_touch_bit(%struct.ds_device* %2, i8 zeroext %3, i8* %byte_buf) #9, !dbg !4670
  %tobool = icmp ne i32 %call, 0, !dbg !4670
  br i1 %tobool, label %if.then, label %if.end, !dbg !4671

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !4672
  br label %return, !dbg !4672

if.end:                                           ; preds = %entry
  %5 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4673
  %byte_buf1 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %5, i32 0, i32 7, !dbg !4674
  %6 = load i8, i8* %byte_buf1, align 2, !dbg !4674
  store i8 %6, i8* %retval, align 1, !dbg !4675
  br label %return, !dbg !4675

return:                                           ; preds = %if.end, %if.then
  %7 = load i8, i8* %retval, align 1, !dbg !4676
  ret i8 %7, !dbg !4676
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @ds9490r_read_byte(i8* %data) #2 !dbg !4677 {
entry:
  %retval = alloca i8, align 1
  %data.addr = alloca i8*, align 8
  %dev = alloca %struct.ds_device*, align 8
  %err = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4678, metadata !DIExpression()), !dbg !4679
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev, metadata !4680, metadata !DIExpression()), !dbg !4681
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4682
  %1 = bitcast i8* %0 to %struct.ds_device*, !dbg !4682
  store %struct.ds_device* %1, %struct.ds_device** %dev, align 8, !dbg !4681
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4683, metadata !DIExpression()), !dbg !4684
  %2 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4685
  %3 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4686
  %byte_buf = getelementptr inbounds %struct.ds_device, %struct.ds_device* %3, i32 0, i32 7, !dbg !4687
  %call = call i32 @ds_read_byte(%struct.ds_device* %2, i8* %byte_buf) #9, !dbg !4688
  store i32 %call, i32* %err, align 4, !dbg !4689
  %4 = load i32, i32* %err, align 4, !dbg !4690
  %tobool = icmp ne i32 %4, 0, !dbg !4690
  br i1 %tobool, label %if.then, label %if.end, !dbg !4692

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !4693
  br label %return, !dbg !4693

if.end:                                           ; preds = %entry
  %5 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4694
  %byte_buf1 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %5, i32 0, i32 7, !dbg !4695
  %6 = load i8, i8* %byte_buf1, align 2, !dbg !4695
  store i8 %6, i8* %retval, align 1, !dbg !4696
  br label %return, !dbg !4696

return:                                           ; preds = %if.end, %if.then
  %7 = load i8, i8* %retval, align 1, !dbg !4697
  ret i8 %7, !dbg !4697
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ds9490r_write_byte(i8* %data, i8 zeroext %byte) #2 !dbg !4698 {
entry:
  %data.addr = alloca i8*, align 8
  %byte.addr = alloca i8, align 1
  %dev = alloca %struct.ds_device*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4699, metadata !DIExpression()), !dbg !4700
  store i8 %byte, i8* %byte.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %byte.addr, metadata !4701, metadata !DIExpression()), !dbg !4702
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev, metadata !4703, metadata !DIExpression()), !dbg !4704
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4705
  %1 = bitcast i8* %0 to %struct.ds_device*, !dbg !4705
  store %struct.ds_device* %1, %struct.ds_device** %dev, align 8, !dbg !4704
  %2 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4706
  %3 = load i8, i8* %byte.addr, align 1, !dbg !4707
  %call = call i32 @ds_write_byte(%struct.ds_device* %2, i8 zeroext %3) #9, !dbg !4708
  ret void, !dbg !4709
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @ds9490r_read_block(i8* %data, i8* %buf, i32 %len) #2 !dbg !4710 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4196, metadata !DIExpression()), !dbg !4711
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4206, metadata !DIExpression()), !dbg !4714
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4208, metadata !DIExpression()), !dbg !4715
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4210, metadata !DIExpression()), !dbg !4716
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4212, metadata !DIExpression()), !dbg !4717
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4218, metadata !DIExpression()), !dbg !4719
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4224, metadata !DIExpression()), !dbg !4721
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4233, metadata !DIExpression()), !dbg !4724
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4235, metadata !DIExpression()), !dbg !4725
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4237, metadata !DIExpression()), !dbg !4726
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4239, metadata !DIExpression()), !dbg !4727
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4241, metadata !DIExpression()), !dbg !4728
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4243, metadata !DIExpression()), !dbg !4729
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4245, metadata !DIExpression()), !dbg !4730
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4247, metadata !DIExpression()), !dbg !4731
  %retval = alloca i8, align 1
  %data.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %dev = alloca %struct.ds_device*, align 8
  %err = alloca i32, align 4
  %tbuf = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4732, metadata !DIExpression()), !dbg !4733
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4734, metadata !DIExpression()), !dbg !4735
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !4736, metadata !DIExpression()), !dbg !4737
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev, metadata !4738, metadata !DIExpression()), !dbg !4739
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4740
  %1 = bitcast i8* %0 to %struct.ds_device*, !dbg !4740
  store %struct.ds_device* %1, %struct.ds_device** %dev, align 8, !dbg !4739
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4741, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.declare(metadata i8** %tbuf, metadata !4743, metadata !DIExpression()), !dbg !4744
  %2 = load i32, i32* %len.addr, align 4, !dbg !4745
  %cmp = icmp sle i32 %2, 0, !dbg !4747
  br i1 %cmp, label %if.then, label %if.end, !dbg !4748

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !4749
  br label %return, !dbg !4749

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %len.addr, align 4, !dbg !4750
  %conv = sext i32 %3 to i64, !dbg !4750
  store i64 %conv, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4751
  %5 = call i1 @llvm.is.constant.i64(i64 %4) #11, !dbg !4752
  br i1 %5, label %if.then.i, label %if.end9.i, !dbg !4753

if.then.i:                                        ; preds = %if.end
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4754
  %cmp.i = icmp ugt i64 %6, 8192, !dbg !4755
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4756

if.then1.i:                                       ; preds = %if.then.i
  %7 = load i64, i64* %size.addr.i, align 8, !dbg !4757
  %8 = load i32, i32* %flags.addr.i, align 4, !dbg !4758
  store i64 %7, i64* %size.addr.i.i, align 8
  store i32 %8, i32* %flags.addr.i.i, align 4
  %9 = load i64, i64* %size.addr.i.i, align 8, !dbg !4759
  %call.i.i = call i32 @get_order(i64 %9) #12, !dbg !4760
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4728
  %10 = load i64, i64* %size.addr.i.i, align 8, !dbg !4761
  %11 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4762
  %12 = load i32, i32* %order.i.i, align 4, !dbg !4763
  store i64 %10, i64* %size.addr.i.i.i, align 8
  store i32 %11, i32* %flags.addr.i.i.i, align 4
  store i32 %12, i32* %order.addr.i.i.i, align 4
  %13 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4764
  %14 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4765
  %15 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4766
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %13, i32 %14, i32 %15) #13, !dbg !4767
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4767
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4767
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4767
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !4767
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4768
  br label %kmalloc.exit, !dbg !4768

if.end.i:                                         ; preds = %if.then.i
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !4769
  store i64 %16, i64* %size.addr.i11.i, align 8
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4770
  %tobool.i.i = icmp ne i64 %17, 0, !dbg !4770
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4771

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4772
  br label %kmalloc_index.exit.i, !dbg !4772

if.end.i.i:                                       ; preds = %if.end.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4773
  %cmp.i.i = icmp ule i64 %18, 8, !dbg !4774
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4775

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4776
  br label %kmalloc_index.exit.i, !dbg !4776

if.end2.i.i:                                      ; preds = %if.end.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4777
  %cmp3.i.i = icmp ugt i64 %19, 64, !dbg !4778
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4779

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4780
  %cmp4.i.i = icmp ule i64 %20, 96, !dbg !4781
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4782

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4783
  br label %kmalloc_index.exit.i, !dbg !4783

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4784
  %cmp7.i.i = icmp ugt i64 %21, 128, !dbg !4785
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4786

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4787
  %cmp9.i.i = icmp ule i64 %22, 192, !dbg !4788
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4789

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4790
  br label %kmalloc_index.exit.i, !dbg !4790

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4791
  %cmp12.i.i = icmp ule i64 %23, 8, !dbg !4792
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4793

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4794
  br label %kmalloc_index.exit.i, !dbg !4794

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4795
  %cmp15.i.i = icmp ule i64 %24, 16, !dbg !4796
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4797

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4798
  br label %kmalloc_index.exit.i, !dbg !4798

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4799
  %cmp18.i.i = icmp ule i64 %25, 32, !dbg !4800
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4801

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4802
  br label %kmalloc_index.exit.i, !dbg !4802

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4803
  %cmp21.i.i = icmp ule i64 %26, 64, !dbg !4804
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4805

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4806
  br label %kmalloc_index.exit.i, !dbg !4806

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4807
  %cmp24.i.i = icmp ule i64 %27, 128, !dbg !4808
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4809

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4810
  br label %kmalloc_index.exit.i, !dbg !4810

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4811
  %cmp27.i.i = icmp ule i64 %28, 256, !dbg !4812
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4813

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4814
  br label %kmalloc_index.exit.i, !dbg !4814

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4815
  %cmp30.i.i = icmp ule i64 %29, 512, !dbg !4816
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4817

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4818
  br label %kmalloc_index.exit.i, !dbg !4818

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4819
  %cmp33.i.i = icmp ule i64 %30, 1024, !dbg !4820
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4821

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4822
  br label %kmalloc_index.exit.i, !dbg !4822

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4823
  %cmp36.i.i = icmp ule i64 %31, 2048, !dbg !4824
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4825

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4826
  br label %kmalloc_index.exit.i, !dbg !4826

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4827
  %cmp39.i.i = icmp ule i64 %32, 4096, !dbg !4828
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4829

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4830
  br label %kmalloc_index.exit.i, !dbg !4830

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4831
  %cmp42.i.i = icmp ule i64 %33, 8192, !dbg !4832
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4833

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4834
  br label %kmalloc_index.exit.i, !dbg !4834

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4835
  %cmp45.i.i = icmp ule i64 %34, 16384, !dbg !4836
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4837

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4838
  br label %kmalloc_index.exit.i, !dbg !4838

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4839
  %cmp48.i.i = icmp ule i64 %35, 32768, !dbg !4840
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4841

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4842
  br label %kmalloc_index.exit.i, !dbg !4842

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4843
  %cmp51.i.i = icmp ule i64 %36, 65536, !dbg !4844
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4845

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4846
  br label %kmalloc_index.exit.i, !dbg !4846

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4847
  %cmp54.i.i = icmp ule i64 %37, 131072, !dbg !4848
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4849

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4850
  br label %kmalloc_index.exit.i, !dbg !4850

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4851
  %cmp57.i.i = icmp ule i64 %38, 262144, !dbg !4852
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4853

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4854
  br label %kmalloc_index.exit.i, !dbg !4854

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4855
  %cmp60.i.i = icmp ule i64 %39, 524288, !dbg !4856
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4857

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4858
  br label %kmalloc_index.exit.i, !dbg !4858

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4859
  %cmp63.i.i = icmp ule i64 %40, 1048576, !dbg !4860
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4861

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4862
  br label %kmalloc_index.exit.i, !dbg !4862

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4863
  %cmp66.i.i = icmp ule i64 %41, 2097152, !dbg !4864
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4865

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4866
  br label %kmalloc_index.exit.i, !dbg !4866

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4867
  %cmp69.i.i = icmp ule i64 %42, 4194304, !dbg !4868
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4869

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4870
  br label %kmalloc_index.exit.i, !dbg !4870

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4871
  %cmp72.i.i = icmp ule i64 %43, 8388608, !dbg !4872
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4873

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4874
  br label %kmalloc_index.exit.i, !dbg !4874

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4875
  %cmp75.i.i = icmp ule i64 %44, 16777216, !dbg !4876
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4877

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4878
  br label %kmalloc_index.exit.i, !dbg !4878

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4879
  %cmp78.i.i = icmp ule i64 %45, 33554432, !dbg !4880
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4881

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4882
  br label %kmalloc_index.exit.i, !dbg !4882

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4883
  %cmp81.i.i = icmp ule i64 %46, 67108864, !dbg !4884
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4885

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4886
  br label %kmalloc_index.exit.i, !dbg !4886

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !4887, !srcloc !4423
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 210) #11, !dbg !4888, !srcloc !4427
  unreachable, !dbg !4889

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %47 = load i32, i32* %retval.i.i, align 4, !dbg !4890
  store i32 %47, i32* %index.i, align 4, !dbg !4891
  %48 = load i32, i32* %index.i, align 4, !dbg !4892
  %tobool.i = icmp ne i32 %48, 0, !dbg !4892
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4893

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4894
  br label %kmalloc.exit, !dbg !4894

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %49 = load i32, i32* %flags.addr.i, align 4, !dbg !4895
  store i32 %49, i32* %flags.addr.i13.i, align 4
  %50 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4896
  %and.i.i = and i32 %50, 17, !dbg !4896
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4896
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4896
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4896
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4896
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4897

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4898
  br label %kmalloc_type.exit.i, !dbg !4898

if.end.i16.i:                                     ; preds = %if.end4.i
  %51 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4899
  %and2.i.i = and i32 %51, 1, !dbg !4900
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4899
  %52 = zext i1 %tobool3.i.i to i64, !dbg !4899
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4899
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4901
  br label %kmalloc_type.exit.i, !dbg !4901

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %53 = load i32, i32* %retval.i12.i, align 4, !dbg !4902
  %idxprom.i = zext i32 %53 to i64, !dbg !4903
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4903
  %54 = load i32, i32* %index.i, align 4, !dbg !4904
  %idxprom6.i = zext i32 %54 to i64, !dbg !4903
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4903
  %55 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4903
  %56 = load i32, i32* %flags.addr.i, align 4, !dbg !4905
  %57 = load i64, i64* %size.addr.i, align 8, !dbg !4906
  store %struct.kmem_cache* %55, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %56, i32* %flags.addr.i17.i, align 4
  store i64 %57, i64* %size.addr.i18.i, align 8
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4907
  %59 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4908
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %58, i32 %59) #13, !dbg !4909
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4909
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4909
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4909
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !4909
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4716
  %60 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4910
  %61 = load i8*, i8** %ret.i.i, align 8, !dbg !4911
  %62 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4912
  %63 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4913
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %60, i8* %61, i64 %62, i32 %63) #13, !dbg !4914
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4915
  %64 = load i8*, i8** %ret.i.i, align 8, !dbg !4916
  store i8* %64, i8** %retval.i, align 8, !dbg !4917
  br label %kmalloc.exit, !dbg !4917

if.end9.i:                                        ; preds = %if.end
  %65 = load i64, i64* %size.addr.i, align 8, !dbg !4918
  %66 = load i32, i32* %flags.addr.i, align 4, !dbg !4919
  %call10.i = call noalias i8* @__kmalloc(i64 %65, i32 %66) #13, !dbg !4920
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4920
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4920
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4920
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !4920
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4921
  br label %kmalloc.exit, !dbg !4921

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %67 = load i8*, i8** %retval.i, align 8, !dbg !4922
  store i8* %67, i8** %tbuf, align 8, !dbg !4923
  %68 = load i8*, i8** %tbuf, align 8, !dbg !4924
  %tobool = icmp ne i8* %68, null, !dbg !4924
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !4926

if.then1:                                         ; preds = %kmalloc.exit
  store i8 0, i8* %retval, align 1, !dbg !4927
  br label %return, !dbg !4927

if.end2:                                          ; preds = %kmalloc.exit
  %69 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4928
  %70 = load i8*, i8** %tbuf, align 8, !dbg !4929
  %71 = load i32, i32* %len.addr, align 4, !dbg !4930
  %call3 = call i32 @ds_read_block(%struct.ds_device* %69, i8* %70, i32 %71) #9, !dbg !4931
  store i32 %call3, i32* %err, align 4, !dbg !4932
  %72 = load i32, i32* %err, align 4, !dbg !4933
  %cmp4 = icmp sge i32 %72, 0, !dbg !4935
  br i1 %cmp4, label %if.then6, label %if.end8, !dbg !4936

if.then6:                                         ; preds = %if.end2
  %73 = load i8*, i8** %buf.addr, align 8, !dbg !4937
  %74 = load i8*, i8** %tbuf, align 8, !dbg !4938
  %75 = load i32, i32* %len.addr, align 4, !dbg !4939
  %conv7 = sext i32 %75 to i64, !dbg !4939
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %73, i8* align 1 %74, i64 %conv7, i1 false), !dbg !4940
  br label %if.end8, !dbg !4940

if.end8:                                          ; preds = %if.then6, %if.end2
  %76 = load i8*, i8** %tbuf, align 8, !dbg !4941
  call void @kfree(i8* %76) #9, !dbg !4942
  %77 = load i32, i32* %err, align 4, !dbg !4943
  %cmp9 = icmp sge i32 %77, 0, !dbg !4944
  br i1 %cmp9, label %cond.true, label %cond.false, !dbg !4943

cond.true:                                        ; preds = %if.end8
  %78 = load i32, i32* %len.addr, align 4, !dbg !4945
  br label %cond.end, !dbg !4943

cond.false:                                       ; preds = %if.end8
  br label %cond.end, !dbg !4943

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %78, %cond.true ], [ 0, %cond.false ], !dbg !4943
  %conv11 = trunc i32 %cond to i8, !dbg !4943
  store i8 %conv11, i8* %retval, align 1, !dbg !4946
  br label %return, !dbg !4946

return:                                           ; preds = %cond.end, %if.then1, %if.then
  %79 = load i8, i8* %retval, align 1, !dbg !4947
  ret i8 %79, !dbg !4947
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ds9490r_write_block(i8* %data, i8* %buf, i32 %len) #2 !dbg !4948 {
entry:
  %data.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %dev = alloca %struct.ds_device*, align 8
  %tbuf = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4949, metadata !DIExpression()), !dbg !4950
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4951, metadata !DIExpression()), !dbg !4952
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !4953, metadata !DIExpression()), !dbg !4954
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev, metadata !4955, metadata !DIExpression()), !dbg !4956
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4957
  %1 = bitcast i8* %0 to %struct.ds_device*, !dbg !4957
  store %struct.ds_device* %1, %struct.ds_device** %dev, align 8, !dbg !4956
  call void @llvm.dbg.declare(metadata i8** %tbuf, metadata !4958, metadata !DIExpression()), !dbg !4959
  %2 = load i32, i32* %len.addr, align 4, !dbg !4960
  %cmp = icmp sle i32 %2, 0, !dbg !4962
  br i1 %cmp, label %if.then, label %if.end, !dbg !4963

if.then:                                          ; preds = %entry
  br label %return, !dbg !4964

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !4965
  %4 = load i32, i32* %len.addr, align 4, !dbg !4966
  %conv = sext i32 %4 to i64, !dbg !4966
  %call = call i8* @kmemdup(i8* %3, i64 %conv, i32 3264) #9, !dbg !4967
  store i8* %call, i8** %tbuf, align 8, !dbg !4968
  %5 = load i8*, i8** %tbuf, align 8, !dbg !4969
  %tobool = icmp ne i8* %5, null, !dbg !4969
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !4971

if.then1:                                         ; preds = %if.end
  br label %return, !dbg !4972

if.end2:                                          ; preds = %if.end
  %6 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4973
  %7 = load i8*, i8** %tbuf, align 8, !dbg !4974
  %8 = load i32, i32* %len.addr, align 4, !dbg !4975
  %call3 = call i32 @ds_write_block(%struct.ds_device* %6, i8* %7, i32 %8) #9, !dbg !4976
  %9 = load i8*, i8** %tbuf, align 8, !dbg !4977
  call void @kfree(i8* %9) #9, !dbg !4978
  br label %return, !dbg !4979

return:                                           ; preds = %if.end2, %if.then1, %if.then
  ret void, !dbg !4979
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @ds9490r_reset(i8* %data) #2 !dbg !4980 {
entry:
  %retval = alloca i8, align 1
  %data.addr = alloca i8*, align 8
  %dev = alloca %struct.ds_device*, align 8
  %err = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4981, metadata !DIExpression()), !dbg !4982
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev, metadata !4983, metadata !DIExpression()), !dbg !4984
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4985
  %1 = bitcast i8* %0 to %struct.ds_device*, !dbg !4985
  store %struct.ds_device* %1, %struct.ds_device** %dev, align 8, !dbg !4984
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4986, metadata !DIExpression()), !dbg !4987
  %2 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !4988
  %call = call i32 @ds_reset(%struct.ds_device* %2) #9, !dbg !4989
  store i32 %call, i32* %err, align 4, !dbg !4990
  %3 = load i32, i32* %err, align 4, !dbg !4991
  %tobool = icmp ne i32 %3, 0, !dbg !4991
  br i1 %tobool, label %if.then, label %if.end, !dbg !4993

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !4994
  br label %return, !dbg !4994

if.end:                                           ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !4995
  br label %return, !dbg !4995

return:                                           ; preds = %if.end, %if.then
  %4 = load i8, i8* %retval, align 1, !dbg !4996
  ret i8 %4, !dbg !4996
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @ds9490r_set_pullup(i8* %data, i32 %delay) #2 !dbg !4997 {
entry:
  %retval = alloca i8, align 1
  %data.addr = alloca i8*, align 8
  %delay.addr = alloca i32, align 4
  %dev = alloca %struct.ds_device*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4998, metadata !DIExpression()), !dbg !4999
  store i32 %delay, i32* %delay.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %delay.addr, metadata !5000, metadata !DIExpression()), !dbg !5001
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev, metadata !5002, metadata !DIExpression()), !dbg !5003
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5004
  %1 = bitcast i8* %0 to %struct.ds_device*, !dbg !5004
  store %struct.ds_device* %1, %struct.ds_device** %dev, align 8, !dbg !5003
  %2 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !5005
  %3 = load i32, i32* %delay.addr, align 4, !dbg !5007
  %call = call i32 @ds_set_pullup(%struct.ds_device* %2, i32 %3) #9, !dbg !5008
  %tobool = icmp ne i32 %call, 0, !dbg !5008
  br i1 %tobool, label %if.then, label %if.end, !dbg !5009

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !5010
  br label %return, !dbg !5010

if.end:                                           ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !5011
  br label %return, !dbg !5011

return:                                           ; preds = %if.end, %if.then
  %4 = load i8, i8* %retval, align 1, !dbg !5012
  ret i8 %4, !dbg !5012
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ds9490r_search(i8* %data, %struct.w1_master* %master, i8 zeroext %search_type, void (%struct.w1_master*, i64)* %callback) #2 !dbg !5013 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4196, metadata !DIExpression()), !dbg !5014
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4206, metadata !DIExpression()), !dbg !5017
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4208, metadata !DIExpression()), !dbg !5018
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4210, metadata !DIExpression()), !dbg !5019
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4212, metadata !DIExpression()), !dbg !5020
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4218, metadata !DIExpression()), !dbg !5022
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4224, metadata !DIExpression()), !dbg !5024
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4233, metadata !DIExpression()), !dbg !5027
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4235, metadata !DIExpression()), !dbg !5028
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4237, metadata !DIExpression()), !dbg !5029
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4239, metadata !DIExpression()), !dbg !5030
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4241, metadata !DIExpression()), !dbg !5031
  %retval.i64 = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4243, metadata !DIExpression()), !dbg !5032
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4245, metadata !DIExpression()), !dbg !5033
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4247, metadata !DIExpression()), !dbg !5034
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !5035, metadata !DIExpression()), !dbg !5040
  %data.addr = alloca i8*, align 8
  %master.addr = alloca %struct.w1_master*, align 8
  %search_type.addr = alloca i8, align 1
  %callback.addr = alloca void (%struct.w1_master*, i64)*, align 8
  %dev = alloca %struct.ds_device*, align 8
  %err = alloca i32, align 4
  %value = alloca i16, align 2
  %index = alloca i16, align 2
  %st = alloca %struct.ds_status, align 1
  %search_limit = alloca i32, align 4
  %found = alloca i32, align 4
  %i = alloca i32, align 4
  %jtime = alloca i64, align 8
  %bufsize = alloca i64, align 8
  %buf = alloca i64*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5042, metadata !DIExpression()), !dbg !5043
  store %struct.w1_master* %master, %struct.w1_master** %master.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.w1_master** %master.addr, metadata !5044, metadata !DIExpression()), !dbg !5045
  store i8 %search_type, i8* %search_type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %search_type.addr, metadata !5046, metadata !DIExpression()), !dbg !5047
  store void (%struct.w1_master*, i64)* %callback, void (%struct.w1_master*, i64)** %callback.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.w1_master*, i64)** %callback.addr, metadata !5048, metadata !DIExpression()), !dbg !5049
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev, metadata !5050, metadata !DIExpression()), !dbg !5051
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5052
  %1 = bitcast i8* %0 to %struct.ds_device*, !dbg !5052
  store %struct.ds_device* %1, %struct.ds_device** %dev, align 8, !dbg !5051
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5053, metadata !DIExpression()), !dbg !5054
  call void @llvm.dbg.declare(metadata i16* %value, metadata !5055, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.declare(metadata i16* %index, metadata !5057, metadata !DIExpression()), !dbg !5058
  call void @llvm.dbg.declare(metadata %struct.ds_status* %st, metadata !5059, metadata !DIExpression()), !dbg !5078
  call void @llvm.dbg.declare(metadata i32* %search_limit, metadata !5079, metadata !DIExpression()), !dbg !5080
  call void @llvm.dbg.declare(metadata i32* %found, metadata !5081, metadata !DIExpression()), !dbg !5082
  store i32 0, i32* %found, align 4, !dbg !5082
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5083, metadata !DIExpression()), !dbg !5084
  call void @llvm.dbg.declare(metadata i64* %jtime, metadata !5085, metadata !DIExpression()), !dbg !5087
  store i32 106, i32* %m.addr.i, align 4
  %2 = load i32, i32* %m.addr.i, align 4, !dbg !5088
  %3 = call i1 @llvm.is.constant.i32(i32 %2) #11, !dbg !5090
  br i1 %3, label %if.then.i, label %if.else.i, !dbg !5091

if.then.i:                                        ; preds = %entry
  %4 = load i32, i32* %m.addr.i, align 4, !dbg !5092
  %cmp.i = icmp slt i32 %4, 0, !dbg !5095
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5096

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !5097
  br label %msecs_to_jiffies.exit, !dbg !5097

if.end.i:                                         ; preds = %if.then.i
  %5 = load i32, i32* %m.addr.i, align 4, !dbg !5098
  %call.i = call i64 @_msecs_to_jiffies(i32 %5) #13, !dbg !5099
  store i64 %call.i, i64* %retval.i, align 8, !dbg !5100
  br label %msecs_to_jiffies.exit, !dbg !5100

if.else.i:                                        ; preds = %entry
  %6 = load i32, i32* %m.addr.i, align 4, !dbg !5101
  %call2.i = call i64 @__msecs_to_jiffies(i32 %6) #13, !dbg !5103
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !5104
  br label %msecs_to_jiffies.exit, !dbg !5104

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %7 = load i64, i64* %retval.i, align 8, !dbg !5105
  store i64 %7, i64* %jtime, align 8, !dbg !5087
  call void @llvm.dbg.declare(metadata i64* %bufsize, metadata !5106, metadata !DIExpression()), !dbg !5108
  store i64 128, i64* %bufsize, align 8, !dbg !5108
  call void @llvm.dbg.declare(metadata i64** %buf, metadata !5109, metadata !DIExpression()), !dbg !5110
  store i64 128, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !5111
  %9 = call i1 @llvm.is.constant.i64(i64 %8) #11, !dbg !5112
  br i1 %9, label %if.then.i66, label %if.end9.i, !dbg !5113

if.then.i66:                                      ; preds = %msecs_to_jiffies.exit
  %10 = load i64, i64* %size.addr.i, align 8, !dbg !5114
  %cmp.i65 = icmp ugt i64 %10, 8192, !dbg !5115
  br i1 %cmp.i65, label %if.then1.i67, label %if.end.i68, !dbg !5116

if.then1.i67:                                     ; preds = %if.then.i66
  %11 = load i64, i64* %size.addr.i, align 8, !dbg !5117
  %12 = load i32, i32* %flags.addr.i, align 4, !dbg !5118
  store i64 %11, i64* %size.addr.i.i, align 8
  store i32 %12, i32* %flags.addr.i.i, align 4
  %13 = load i64, i64* %size.addr.i.i, align 8, !dbg !5119
  %call.i.i = call i32 @get_order(i64 %13) #12, !dbg !5120
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5031
  %14 = load i64, i64* %size.addr.i.i, align 8, !dbg !5121
  %15 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5122
  %16 = load i32, i32* %order.i.i, align 4, !dbg !5123
  store i64 %14, i64* %size.addr.i.i.i, align 8
  store i32 %15, i32* %flags.addr.i.i.i, align 4
  store i32 %16, i32* %order.addr.i.i.i, align 4
  %17 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5124
  %18 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5125
  %19 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5126
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %17, i32 %18, i32 %19) #13, !dbg !5127
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5127
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5127
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5127
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !5127
  store i8* %call.i.i.i, i8** %retval.i64, align 8, !dbg !5128
  br label %kmalloc.exit, !dbg !5128

if.end.i68:                                       ; preds = %if.then.i66
  %20 = load i64, i64* %size.addr.i, align 8, !dbg !5129
  store i64 %20, i64* %size.addr.i11.i, align 8
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5130
  %tobool.i.i = icmp ne i64 %21, 0, !dbg !5130
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5131

if.then.i.i:                                      ; preds = %if.end.i68
  store i32 0, i32* %retval.i.i, align 4, !dbg !5132
  br label %kmalloc_index.exit.i, !dbg !5132

if.end.i.i:                                       ; preds = %if.end.i68
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5133
  %cmp.i.i = icmp ule i64 %22, 8, !dbg !5134
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5135

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5136
  br label %kmalloc_index.exit.i, !dbg !5136

if.end2.i.i:                                      ; preds = %if.end.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5137
  %cmp3.i.i = icmp ugt i64 %23, 64, !dbg !5138
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5139

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5140
  %cmp4.i.i = icmp ule i64 %24, 96, !dbg !5141
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5142

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5143
  br label %kmalloc_index.exit.i, !dbg !5143

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5144
  %cmp7.i.i = icmp ugt i64 %25, 128, !dbg !5145
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5146

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5147
  %cmp9.i.i = icmp ule i64 %26, 192, !dbg !5148
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5149

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5150
  br label %kmalloc_index.exit.i, !dbg !5150

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5151
  %cmp12.i.i = icmp ule i64 %27, 8, !dbg !5152
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5153

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5154
  br label %kmalloc_index.exit.i, !dbg !5154

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5155
  %cmp15.i.i = icmp ule i64 %28, 16, !dbg !5156
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5157

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5158
  br label %kmalloc_index.exit.i, !dbg !5158

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5159
  %cmp18.i.i = icmp ule i64 %29, 32, !dbg !5160
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5161

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5162
  br label %kmalloc_index.exit.i, !dbg !5162

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5163
  %cmp21.i.i = icmp ule i64 %30, 64, !dbg !5164
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5165

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5166
  br label %kmalloc_index.exit.i, !dbg !5166

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5167
  %cmp24.i.i = icmp ule i64 %31, 128, !dbg !5168
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5169

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5170
  br label %kmalloc_index.exit.i, !dbg !5170

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5171
  %cmp27.i.i = icmp ule i64 %32, 256, !dbg !5172
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5173

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5174
  br label %kmalloc_index.exit.i, !dbg !5174

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5175
  %cmp30.i.i = icmp ule i64 %33, 512, !dbg !5176
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5177

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5178
  br label %kmalloc_index.exit.i, !dbg !5178

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5179
  %cmp33.i.i = icmp ule i64 %34, 1024, !dbg !5180
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5181

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5182
  br label %kmalloc_index.exit.i, !dbg !5182

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5183
  %cmp36.i.i = icmp ule i64 %35, 2048, !dbg !5184
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5185

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5186
  br label %kmalloc_index.exit.i, !dbg !5186

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5187
  %cmp39.i.i = icmp ule i64 %36, 4096, !dbg !5188
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5189

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5190
  br label %kmalloc_index.exit.i, !dbg !5190

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5191
  %cmp42.i.i = icmp ule i64 %37, 8192, !dbg !5192
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5193

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5194
  br label %kmalloc_index.exit.i, !dbg !5194

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5195
  %cmp45.i.i = icmp ule i64 %38, 16384, !dbg !5196
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5197

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5198
  br label %kmalloc_index.exit.i, !dbg !5198

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5199
  %cmp48.i.i = icmp ule i64 %39, 32768, !dbg !5200
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5201

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5202
  br label %kmalloc_index.exit.i, !dbg !5202

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5203
  %cmp51.i.i = icmp ule i64 %40, 65536, !dbg !5204
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5205

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5206
  br label %kmalloc_index.exit.i, !dbg !5206

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5207
  %cmp54.i.i = icmp ule i64 %41, 131072, !dbg !5208
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5209

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5210
  br label %kmalloc_index.exit.i, !dbg !5210

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5211
  %cmp57.i.i = icmp ule i64 %42, 262144, !dbg !5212
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5213

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5214
  br label %kmalloc_index.exit.i, !dbg !5214

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5215
  %cmp60.i.i = icmp ule i64 %43, 524288, !dbg !5216
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5217

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5218
  br label %kmalloc_index.exit.i, !dbg !5218

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5219
  %cmp63.i.i = icmp ule i64 %44, 1048576, !dbg !5220
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5221

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5222
  br label %kmalloc_index.exit.i, !dbg !5222

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5223
  %cmp66.i.i = icmp ule i64 %45, 2097152, !dbg !5224
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5225

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5226
  br label %kmalloc_index.exit.i, !dbg !5226

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5227
  %cmp69.i.i = icmp ule i64 %46, 4194304, !dbg !5228
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5229

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5230
  br label %kmalloc_index.exit.i, !dbg !5230

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5231
  %cmp72.i.i = icmp ule i64 %47, 8388608, !dbg !5232
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5233

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5234
  br label %kmalloc_index.exit.i, !dbg !5234

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5235
  %cmp75.i.i = icmp ule i64 %48, 16777216, !dbg !5236
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5237

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5238
  br label %kmalloc_index.exit.i, !dbg !5238

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5239
  %cmp78.i.i = icmp ule i64 %49, 33554432, !dbg !5240
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5241

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5242
  br label %kmalloc_index.exit.i, !dbg !5242

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5243
  %cmp81.i.i = icmp ule i64 %50, 67108864, !dbg !5244
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5245

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5246
  br label %kmalloc_index.exit.i, !dbg !5246

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !5247, !srcloc !4423
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 210) #11, !dbg !5248, !srcloc !4427
  unreachable, !dbg !5249

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %51 = load i32, i32* %retval.i.i, align 4, !dbg !5250
  store i32 %51, i32* %index.i, align 4, !dbg !5251
  %52 = load i32, i32* %index.i, align 4, !dbg !5252
  %tobool.i = icmp ne i32 %52, 0, !dbg !5252
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5253

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i64, align 8, !dbg !5254
  br label %kmalloc.exit, !dbg !5254

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %53 = load i32, i32* %flags.addr.i, align 4, !dbg !5255
  store i32 %53, i32* %flags.addr.i13.i, align 4
  %54 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5256
  %and.i.i = and i32 %54, 17, !dbg !5256
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5256
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5256
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5256
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5256
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5257

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5258
  br label %kmalloc_type.exit.i, !dbg !5258

if.end.i16.i:                                     ; preds = %if.end4.i
  %55 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5259
  %and2.i.i = and i32 %55, 1, !dbg !5260
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5259
  %56 = zext i1 %tobool3.i.i to i64, !dbg !5259
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5259
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5261
  br label %kmalloc_type.exit.i, !dbg !5261

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %57 = load i32, i32* %retval.i12.i, align 4, !dbg !5262
  %idxprom.i = zext i32 %57 to i64, !dbg !5263
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5263
  %58 = load i32, i32* %index.i, align 4, !dbg !5264
  %idxprom6.i = zext i32 %58 to i64, !dbg !5263
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5263
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5263
  %60 = load i32, i32* %flags.addr.i, align 4, !dbg !5265
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !5266
  store %struct.kmem_cache* %59, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %60, i32* %flags.addr.i17.i, align 4
  store i64 %61, i64* %size.addr.i18.i, align 8
  %62 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5267
  %63 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5268
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %62, i32 %63) #13, !dbg !5269
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5269
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5269
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5269
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !5269
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5019
  %64 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5270
  %65 = load i8*, i8** %ret.i.i, align 8, !dbg !5271
  %66 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5272
  %67 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5273
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %64, i8* %65, i64 %66, i32 %67) #13, !dbg !5274
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5275
  %68 = load i8*, i8** %ret.i.i, align 8, !dbg !5276
  store i8* %68, i8** %retval.i64, align 8, !dbg !5277
  br label %kmalloc.exit, !dbg !5277

if.end9.i:                                        ; preds = %msecs_to_jiffies.exit
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !5278
  %70 = load i32, i32* %flags.addr.i, align 4, !dbg !5279
  %call10.i = call noalias i8* @__kmalloc(i64 %69, i32 %70) #13, !dbg !5280
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5280
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5280
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5280
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !5280
  store i8* %call10.i, i8** %retval.i64, align 8, !dbg !5281
  br label %kmalloc.exit, !dbg !5281

kmalloc.exit:                                     ; preds = %if.then1.i67, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %71 = load i8*, i8** %retval.i64, align 8, !dbg !5282
  %72 = bitcast i8* %71 to i64*, !dbg !5283
  store i64* %72, i64** %buf, align 8, !dbg !5284
  %73 = load i64*, i64** %buf, align 8, !dbg !5285
  %tobool = icmp ne i64* %73, null, !dbg !5285
  br i1 %tobool, label %if.end, label %if.then, !dbg !5287

if.then:                                          ; preds = %kmalloc.exit
  br label %return, !dbg !5288

if.end:                                           ; preds = %kmalloc.exit
  %74 = load %struct.w1_master*, %struct.w1_master** %master.addr, align 8, !dbg !5289
  %bus_mutex = getelementptr inbounds %struct.w1_master, %struct.w1_master* %74, i32 0, i32 21, !dbg !5290
  call void @mutex_lock(%struct.mutex* %bus_mutex) #9, !dbg !5291
  %75 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !5292
  %76 = load %struct.w1_master*, %struct.w1_master** %master.addr, align 8, !dbg !5294
  %search_id = getelementptr inbounds %struct.w1_master, %struct.w1_master* %76, i32 0, i32 13, !dbg !5295
  %77 = bitcast i64* %search_id to i8*, !dbg !5296
  %call2 = call i32 @ds_send_data(%struct.ds_device* %75, i8* %77, i32 8) #9, !dbg !5297
  %cmp = icmp slt i32 %call2, 0, !dbg !5298
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !5299

if.then3:                                         ; preds = %if.end
  br label %search_out, !dbg !5300

if.end4:                                          ; preds = %if.end
  %78 = load %struct.w1_master*, %struct.w1_master** %master.addr, align 8, !dbg !5301
  %search_id5 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %78, i32 0, i32 13, !dbg !5302
  store i64 0, i64* %search_id5, align 8, !dbg !5303
  store i16 18941, i16* %value, align 2, !dbg !5304
  %79 = load %struct.w1_master*, %struct.w1_master** %master.addr, align 8, !dbg !5305
  %max_slave_count = getelementptr inbounds %struct.w1_master, %struct.w1_master* %79, i32 0, i32 6, !dbg !5306
  %80 = load i32, i32* %max_slave_count, align 8, !dbg !5306
  store i32 %80, i32* %search_limit, align 4, !dbg !5307
  %81 = load i32, i32* %search_limit, align 4, !dbg !5308
  %cmp6 = icmp sgt i32 %81, 255, !dbg !5310
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !5311

if.then7:                                         ; preds = %if.end4
  store i32 0, i32* %search_limit, align 4, !dbg !5312
  br label %if.end8, !dbg !5313

if.end8:                                          ; preds = %if.then7, %if.end4
  %82 = load i8, i8* %search_type.addr, align 1, !dbg !5314
  %conv = zext i8 %82 to i32, !dbg !5314
  %83 = load i32, i32* %search_limit, align 4, !dbg !5315
  %shl = shl i32 %83, 8, !dbg !5316
  %or = or i32 %conv, %shl, !dbg !5317
  %conv9 = trunc i32 %or to i16, !dbg !5314
  store i16 %conv9, i16* %index, align 2, !dbg !5318
  %84 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !5319
  %85 = load i16, i16* %value, align 2, !dbg !5321
  %86 = load i16, i16* %index, align 2, !dbg !5322
  %call10 = call i32 @ds_send_control(%struct.ds_device* %84, i16 zeroext %85, i16 zeroext %86) #9, !dbg !5323
  %cmp11 = icmp slt i32 %call10, 0, !dbg !5324
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !5325

if.then13:                                        ; preds = %if.end8
  br label %search_out, !dbg !5326

if.end14:                                         ; preds = %if.end8
  br label %do.body, !dbg !5327

do.body:                                          ; preds = %do.cond, %if.end14
  %87 = load i64, i64* %jtime, align 8, !dbg !5328
  %call15 = call i64 @schedule_timeout(i64 %87) #9, !dbg !5330
  %88 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !5331
  %call16 = call i32 @ds_recv_status(%struct.ds_device* %88, %struct.ds_status* %st, i1 zeroext false) #9, !dbg !5332
  store i32 %call16, i32* %err, align 4, !dbg !5333
  %89 = load i32, i32* %err, align 4, !dbg !5334
  %cmp17 = icmp slt i32 %89, 0, !dbg !5336
  br i1 %cmp17, label %if.then22, label %lor.lhs.false, !dbg !5337

lor.lhs.false:                                    ; preds = %do.body
  %90 = load i32, i32* %err, align 4, !dbg !5338
  %conv19 = sext i32 %90 to i64, !dbg !5338
  %cmp20 = icmp ult i64 %conv19, 16, !dbg !5339
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !5340

if.then22:                                        ; preds = %lor.lhs.false, %do.body
  br label %do.end, !dbg !5341

if.end23:                                         ; preds = %lor.lhs.false
  %data_in_buffer_status = getelementptr inbounds %struct.ds_status, %struct.ds_status* %st, i32 0, i32 13, !dbg !5342
  %91 = load i8, i8* %data_in_buffer_status, align 1, !dbg !5342
  %tobool24 = icmp ne i8 %91, 0, !dbg !5344
  br i1 %tobool24, label %if.then25, label %if.end45, !dbg !5345

if.then25:                                        ; preds = %if.end23
  %92 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !5346
  %93 = load i64*, i64** %buf, align 8, !dbg !5348
  %94 = bitcast i64* %93 to i8*, !dbg !5349
  %call26 = call i32 @ds_recv_data(%struct.ds_device* %92, i8* %94, i32 128) #9, !dbg !5350
  store i32 %call26, i32* %err, align 4, !dbg !5351
  %95 = load i32, i32* %err, align 4, !dbg !5352
  %cmp27 = icmp slt i32 %95, 0, !dbg !5354
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !5355

if.then29:                                        ; preds = %if.then25
  br label %do.end, !dbg !5356

if.end30:                                         ; preds = %if.then25
  store i32 0, i32* %i, align 4, !dbg !5357
  br label %for.cond, !dbg !5359

for.cond:                                         ; preds = %for.inc, %if.end30
  %96 = load i32, i32* %i, align 4, !dbg !5360
  %97 = load i32, i32* %err, align 4, !dbg !5362
  %div = sdiv i32 %97, 8, !dbg !5363
  %cmp31 = icmp slt i32 %96, %div, !dbg !5364
  br i1 %cmp31, label %for.body, label %for.end, !dbg !5365

for.body:                                         ; preds = %for.cond
  %98 = load i32, i32* %found, align 4, !dbg !5366
  %inc = add i32 %98, 1, !dbg !5366
  store i32 %inc, i32* %found, align 4, !dbg !5366
  %99 = load i32, i32* %found, align 4, !dbg !5368
  %100 = load i32, i32* %search_limit, align 4, !dbg !5370
  %cmp33 = icmp sle i32 %99, %100, !dbg !5371
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !5372

if.then35:                                        ; preds = %for.body
  %101 = load void (%struct.w1_master*, i64)*, void (%struct.w1_master*, i64)** %callback.addr, align 8, !dbg !5373
  %102 = load %struct.w1_master*, %struct.w1_master** %master.addr, align 8, !dbg !5374
  %103 = load i64*, i64** %buf, align 8, !dbg !5375
  %104 = load i32, i32* %i, align 4, !dbg !5376
  %idxprom = sext i32 %104 to i64, !dbg !5375
  %arrayidx = getelementptr i64, i64* %103, i64 %idxprom, !dbg !5375
  %105 = load i64, i64* %arrayidx, align 8, !dbg !5375
  call void %101(%struct.w1_master* %102, i64 %105) #9, !dbg !5373
  br label %if.end36, !dbg !5373

if.end36:                                         ; preds = %if.then35, %for.body
  %106 = load i32, i32* %found, align 4, !dbg !5377
  %107 = load i32, i32* %search_limit, align 4, !dbg !5379
  %cmp37 = icmp eq i32 %106, %107, !dbg !5380
  br i1 %cmp37, label %if.then39, label %if.end43, !dbg !5381

if.then39:                                        ; preds = %if.end36
  %108 = load i64*, i64** %buf, align 8, !dbg !5382
  %109 = load i32, i32* %i, align 4, !dbg !5383
  %idxprom40 = sext i32 %109 to i64, !dbg !5382
  %arrayidx41 = getelementptr i64, i64* %108, i64 %idxprom40, !dbg !5382
  %110 = load i64, i64* %arrayidx41, align 8, !dbg !5382
  %111 = load %struct.w1_master*, %struct.w1_master** %master.addr, align 8, !dbg !5384
  %search_id42 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %111, i32 0, i32 13, !dbg !5385
  store i64 %110, i64* %search_id42, align 8, !dbg !5386
  br label %if.end43, !dbg !5384

if.end43:                                         ; preds = %if.then39, %if.end36
  br label %for.inc, !dbg !5387

for.inc:                                          ; preds = %if.end43
  %112 = load i32, i32* %i, align 4, !dbg !5388
  %inc44 = add i32 %112, 1, !dbg !5388
  store i32 %inc44, i32* %i, align 4, !dbg !5388
  br label %for.cond, !dbg !5389, !llvm.loop !5390

for.end:                                          ; preds = %for.cond
  br label %if.end45, !dbg !5392

if.end45:                                         ; preds = %for.end, %if.end23
  %113 = load %struct.w1_master*, %struct.w1_master** %master.addr, align 8, !dbg !5393
  %flags = getelementptr inbounds %struct.w1_master, %struct.w1_master* %113, i32 0, i32 18, !dbg !5395
  %call46 = call zeroext i1 @test_bit(i64 0, i64* %flags) #9, !dbg !5396
  br i1 %call46, label %if.then47, label %if.end48, !dbg !5397

if.then47:                                        ; preds = %if.end45
  br label %do.end, !dbg !5398

if.end48:                                         ; preds = %if.end45
  br label %do.cond, !dbg !5399

do.cond:                                          ; preds = %if.end48
  %status = getelementptr inbounds %struct.ds_status, %struct.ds_status* %st, i32 0, i32 8, !dbg !5400
  %114 = load i8, i8* %status, align 1, !dbg !5400
  %conv49 = zext i8 %114 to i32, !dbg !5401
  %and = and i32 %conv49, 48, !dbg !5402
  %tobool50 = icmp ne i32 %and, 0, !dbg !5403
  %lnot = xor i1 %tobool50, true, !dbg !5403
  br i1 %lnot, label %do.body, label %do.end, !dbg !5399, !llvm.loop !5404

do.end:                                           ; preds = %do.cond, %if.then47, %if.then29, %if.then22
  %115 = load i32, i32* %found, align 4, !dbg !5406
  %116 = load i32, i32* %search_limit, align 4, !dbg !5408
  %cmp51 = icmp sle i32 %115, %116, !dbg !5409
  br i1 %cmp51, label %if.then53, label %if.else, !dbg !5410

if.then53:                                        ; preds = %do.end
  %117 = load %struct.w1_master*, %struct.w1_master** %master.addr, align 8, !dbg !5411
  %search_id54 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %117, i32 0, i32 13, !dbg !5413
  store i64 0, i64* %search_id54, align 8, !dbg !5414
  br label %if.end62, !dbg !5415

if.else:                                          ; preds = %do.end
  %118 = load %struct.w1_master*, %struct.w1_master** %master.addr, align 8, !dbg !5416
  %flags55 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %118, i32 0, i32 18, !dbg !5418
  %call56 = call zeroext i1 @test_bit(i64 1, i64* %flags55) #9, !dbg !5419
  br i1 %call56, label %if.end61, label %if.then57, !dbg !5420

if.then57:                                        ; preds = %if.else
  %119 = load %struct.ds_device*, %struct.ds_device** %dev, align 8, !dbg !5421
  %udev = getelementptr inbounds %struct.ds_device, %struct.ds_device* %119, i32 0, i32 1, !dbg !5421
  %120 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5421
  %dev58 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %120, i32 0, i32 14, !dbg !5421
  %121 = load %struct.w1_master*, %struct.w1_master** %master.addr, align 8, !dbg !5421
  %max_slave_count59 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %121, i32 0, i32 6, !dbg !5421
  %122 = load i32, i32* %max_slave_count59, align 8, !dbg !5421
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev58, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.ds9490r_search, i64 0, i64 0), i32 %122) #10, !dbg !5421
  %123 = load %struct.w1_master*, %struct.w1_master** %master.addr, align 8, !dbg !5423
  %flags60 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %123, i32 0, i32 18, !dbg !5424
  call void @set_bit(i64 1, i64* %flags60) #9, !dbg !5425
  br label %if.end61, !dbg !5426

if.end61:                                         ; preds = %if.then57, %if.else
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then53
  br label %search_out, !dbg !5408

search_out:                                       ; preds = %if.end62, %if.then13, %if.then3
  call void @llvm.dbg.label(metadata !5427), !dbg !5428
  %124 = load %struct.w1_master*, %struct.w1_master** %master.addr, align 8, !dbg !5429
  %bus_mutex63 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %124, i32 0, i32 21, !dbg !5430
  call void @mutex_unlock(%struct.mutex* %bus_mutex63) #9, !dbg !5431
  %125 = load i64*, i64** %buf, align 8, !dbg !5432
  %126 = bitcast i64* %125 to i8*, !dbg !5432
  call void @kfree(i8* %126) #9, !dbg !5433
  br label %return, !dbg !5434

return:                                           ; preds = %search_out, %if.then
  ret void, !dbg !5434
}

; Function Attrs: noredzone
declare dso_local i32 @w1_add_master_device(%struct.w1_bus_master*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds_send_control_cmd(%struct.ds_device* %dev, i16 zeroext %value, i16 zeroext %index) #2 !dbg !5435 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.ds_device*, align 8
  %value.addr = alloca i16, align 2
  %index.addr = alloca i16, align 2
  %err = alloca i32, align 4
  store %struct.ds_device* %dev, %struct.ds_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev.addr, metadata !5438, metadata !DIExpression()), !dbg !5439
  store i16 %value, i16* %value.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %value.addr, metadata !5440, metadata !DIExpression()), !dbg !5441
  store i16 %index, i16* %index.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %index.addr, metadata !5442, metadata !DIExpression()), !dbg !5443
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5444, metadata !DIExpression()), !dbg !5445
  %0 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5446
  %udev = getelementptr inbounds %struct.ds_device, %struct.ds_device* %0, i32 0, i32 1, !dbg !5447
  %1 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5447
  %2 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5448
  %udev1 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %2, i32 0, i32 1, !dbg !5448
  %3 = load %struct.usb_device*, %struct.usb_device** %udev1, align 8, !dbg !5448
  %4 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5448
  %ep = getelementptr inbounds %struct.ds_device, %struct.ds_device* %4, i32 0, i32 3, !dbg !5448
  %arrayidx = getelementptr [4 x i32], [4 x i32]* %ep, i64 0, i64 0, !dbg !5448
  %5 = load i32, i32* %arrayidx, align 8, !dbg !5448
  %call = call i32 @__create_pipe(%struct.usb_device* %3, i32 %5) #9, !dbg !5448
  %or = or i32 -2147483648, %call, !dbg !5448
  %6 = load i16, i16* %value.addr, align 2, !dbg !5449
  %7 = load i16, i16* %index.addr, align 2, !dbg !5450
  %call2 = call i32 @usb_control_msg(%struct.usb_device* %1, i32 %or, i8 zeroext 0, i8 zeroext 64, i16 zeroext %6, i16 zeroext %7, i8* null, i16 zeroext 0, i32 1000) #9, !dbg !5451
  store i32 %call2, i32* %err, align 4, !dbg !5452
  %8 = load i32, i32* %err, align 4, !dbg !5453
  %cmp = icmp slt i32 %8, 0, !dbg !5455
  br i1 %cmp, label %if.then, label %if.end, !dbg !5456

if.then:                                          ; preds = %entry
  %9 = load i16, i16* %value.addr, align 2, !dbg !5457
  %conv = zext i16 %9 to i32, !dbg !5457
  %10 = load i16, i16* %index.addr, align 2, !dbg !5457
  %conv3 = zext i16 %10 to i32, !dbg !5457
  %11 = load i32, i32* %err, align 4, !dbg !5457
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0), i32 %conv, i32 %conv3, i32 %11) #10, !dbg !5457
  %12 = load i32, i32* %err, align 4, !dbg !5459
  store i32 %12, i32* %retval, align 4, !dbg !5460
  br label %return, !dbg !5460

if.end:                                           ; preds = %entry
  %13 = load i32, i32* %err, align 4, !dbg !5461
  store i32 %13, i32* %retval, align 4, !dbg !5462
  br label %return, !dbg !5462

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !5463
  ret i32 %14, !dbg !5463
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds_send_control_mode(%struct.ds_device* %dev, i16 zeroext %value, i16 zeroext %index) #2 !dbg !5464 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.ds_device*, align 8
  %value.addr = alloca i16, align 2
  %index.addr = alloca i16, align 2
  %err = alloca i32, align 4
  store %struct.ds_device* %dev, %struct.ds_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev.addr, metadata !5465, metadata !DIExpression()), !dbg !5466
  store i16 %value, i16* %value.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %value.addr, metadata !5467, metadata !DIExpression()), !dbg !5468
  store i16 %index, i16* %index.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %index.addr, metadata !5469, metadata !DIExpression()), !dbg !5470
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5471, metadata !DIExpression()), !dbg !5472
  %0 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5473
  %udev = getelementptr inbounds %struct.ds_device, %struct.ds_device* %0, i32 0, i32 1, !dbg !5474
  %1 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5474
  %2 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5475
  %udev1 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %2, i32 0, i32 1, !dbg !5475
  %3 = load %struct.usb_device*, %struct.usb_device** %udev1, align 8, !dbg !5475
  %4 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5475
  %ep = getelementptr inbounds %struct.ds_device, %struct.ds_device* %4, i32 0, i32 3, !dbg !5475
  %arrayidx = getelementptr [4 x i32], [4 x i32]* %ep, i64 0, i64 0, !dbg !5475
  %5 = load i32, i32* %arrayidx, align 8, !dbg !5475
  %call = call i32 @__create_pipe(%struct.usb_device* %3, i32 %5) #9, !dbg !5475
  %or = or i32 -2147483648, %call, !dbg !5475
  %6 = load i16, i16* %value.addr, align 2, !dbg !5476
  %7 = load i16, i16* %index.addr, align 2, !dbg !5477
  %call2 = call i32 @usb_control_msg(%struct.usb_device* %1, i32 %or, i8 zeroext 2, i8 zeroext 64, i16 zeroext %6, i16 zeroext %7, i8* null, i16 zeroext 0, i32 1000) #9, !dbg !5478
  store i32 %call2, i32* %err, align 4, !dbg !5479
  %8 = load i32, i32* %err, align 4, !dbg !5480
  %cmp = icmp slt i32 %8, 0, !dbg !5482
  br i1 %cmp, label %if.then, label %if.end, !dbg !5483

if.then:                                          ; preds = %entry
  %9 = load i16, i16* %value.addr, align 2, !dbg !5484
  %conv = zext i16 %9 to i32, !dbg !5484
  %10 = load i16, i16* %index.addr, align 2, !dbg !5484
  %conv3 = zext i16 %10 to i32, !dbg !5484
  %11 = load i32, i32* %err, align 4, !dbg !5484
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 %conv, i32 %conv3, i32 %11) #10, !dbg !5484
  %12 = load i32, i32* %err, align 4, !dbg !5486
  store i32 %12, i32* %retval, align 4, !dbg !5487
  br label %return, !dbg !5487

if.end:                                           ; preds = %entry
  %13 = load i32, i32* %err, align 4, !dbg !5488
  store i32 %13, i32* %retval, align 4, !dbg !5489
  br label %return, !dbg !5489

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !5490
  ret i32 %14, !dbg !5490
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds_send_control(%struct.ds_device* %dev, i16 zeroext %value, i16 zeroext %index) #2 !dbg !5491 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.ds_device*, align 8
  %value.addr = alloca i16, align 2
  %index.addr = alloca i16, align 2
  %err = alloca i32, align 4
  store %struct.ds_device* %dev, %struct.ds_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev.addr, metadata !5492, metadata !DIExpression()), !dbg !5493
  store i16 %value, i16* %value.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %value.addr, metadata !5494, metadata !DIExpression()), !dbg !5495
  store i16 %index, i16* %index.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %index.addr, metadata !5496, metadata !DIExpression()), !dbg !5497
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5498, metadata !DIExpression()), !dbg !5499
  %0 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5500
  %udev = getelementptr inbounds %struct.ds_device, %struct.ds_device* %0, i32 0, i32 1, !dbg !5501
  %1 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5501
  %2 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5502
  %udev1 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %2, i32 0, i32 1, !dbg !5502
  %3 = load %struct.usb_device*, %struct.usb_device** %udev1, align 8, !dbg !5502
  %4 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5502
  %ep = getelementptr inbounds %struct.ds_device, %struct.ds_device* %4, i32 0, i32 3, !dbg !5502
  %arrayidx = getelementptr [4 x i32], [4 x i32]* %ep, i64 0, i64 0, !dbg !5502
  %5 = load i32, i32* %arrayidx, align 8, !dbg !5502
  %call = call i32 @__create_pipe(%struct.usb_device* %3, i32 %5) #9, !dbg !5502
  %or = or i32 -2147483648, %call, !dbg !5502
  %6 = load i16, i16* %value.addr, align 2, !dbg !5503
  %7 = load i16, i16* %index.addr, align 2, !dbg !5504
  %call2 = call i32 @usb_control_msg(%struct.usb_device* %1, i32 %or, i8 zeroext 1, i8 zeroext 64, i16 zeroext %6, i16 zeroext %7, i8* null, i16 zeroext 0, i32 1000) #9, !dbg !5505
  store i32 %call2, i32* %err, align 4, !dbg !5506
  %8 = load i32, i32* %err, align 4, !dbg !5507
  %cmp = icmp slt i32 %8, 0, !dbg !5509
  br i1 %cmp, label %if.then, label %if.end, !dbg !5510

if.then:                                          ; preds = %entry
  %9 = load i16, i16* %value.addr, align 2, !dbg !5511
  %conv = zext i16 %9 to i32, !dbg !5511
  %10 = load i16, i16* %index.addr, align 2, !dbg !5511
  %conv3 = zext i16 %10 to i32, !dbg !5511
  %11 = load i32, i32* %err, align 4, !dbg !5511
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i32 %conv, i32 %conv3, i32 %11) #10, !dbg !5511
  %12 = load i32, i32* %err, align 4, !dbg !5513
  store i32 %12, i32* %retval, align 4, !dbg !5514
  br label %return, !dbg !5514

if.end:                                           ; preds = %entry
  %13 = load i32, i32* %err, align 4, !dbg !5515
  store i32 %13, i32* %retval, align 4, !dbg !5516
  br label %return, !dbg !5516

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !5517
  ret i32 %14, !dbg !5517
}

; Function Attrs: noredzone
declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i8 zeroext, i8 zeroext, i16 zeroext, i16 zeroext, i8*, i16 zeroext, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__create_pipe(%struct.usb_device* %dev, i32 %endpoint) #2 !dbg !5518 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5521, metadata !DIExpression()), !dbg !5522
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !5523, metadata !DIExpression()), !dbg !5524
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5525
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 0, !dbg !5526
  %1 = load i32, i32* %devnum, align 8, !dbg !5526
  %shl = shl i32 %1, 8, !dbg !5527
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !5528
  %shl1 = shl i32 %2, 15, !dbg !5529
  %or = or i32 %shl, %shl1, !dbg !5530
  ret i32 %or, !dbg !5531
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds_touch_bit(%struct.ds_device* %dev, i8 zeroext %bit, i8* %tbit) #2 !dbg !5532 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.ds_device*, align 8
  %bit.addr = alloca i8, align 1
  %tbit.addr = alloca i8*, align 8
  %err = alloca i32, align 4
  %st = alloca %struct.ds_status, align 1
  store %struct.ds_device* %dev, %struct.ds_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev.addr, metadata !5535, metadata !DIExpression()), !dbg !5536
  store i8 %bit, i8* %bit.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %bit.addr, metadata !5537, metadata !DIExpression()), !dbg !5538
  store i8* %tbit, i8** %tbit.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %tbit.addr, metadata !5539, metadata !DIExpression()), !dbg !5540
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5541, metadata !DIExpression()), !dbg !5542
  call void @llvm.dbg.declare(metadata %struct.ds_status* %st, metadata !5543, metadata !DIExpression()), !dbg !5544
  %0 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5545
  %1 = load i8, i8* %bit.addr, align 1, !dbg !5546
  %conv = zext i8 %1 to i32, !dbg !5546
  %tobool = icmp ne i32 %conv, 0, !dbg !5546
  %2 = zext i1 %tobool to i64, !dbg !5546
  %cond = select i1 %tobool, i32 8, i32 0, !dbg !5546
  %or = or i32 33, %cond, !dbg !5547
  %conv1 = trunc i32 %or to i16, !dbg !5548
  %call = call i32 @ds_send_control(%struct.ds_device* %0, i16 zeroext %conv1, i16 zeroext 0) #9, !dbg !5549
  store i32 %call, i32* %err, align 4, !dbg !5550
  %3 = load i32, i32* %err, align 4, !dbg !5551
  %tobool2 = icmp ne i32 %3, 0, !dbg !5551
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5553

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %err, align 4, !dbg !5554
  store i32 %4, i32* %retval, align 4, !dbg !5555
  br label %return, !dbg !5555

if.end:                                           ; preds = %entry
  %5 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5556
  %call3 = call i32 @ds_wait_status(%struct.ds_device* %5, %struct.ds_status* %st) #9, !dbg !5557
  %6 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5558
  %7 = load i8*, i8** %tbit.addr, align 8, !dbg !5559
  %call4 = call i32 @ds_recv_data(%struct.ds_device* %6, i8* %7, i32 1) #9, !dbg !5560
  store i32 %call4, i32* %err, align 4, !dbg !5561
  %8 = load i32, i32* %err, align 4, !dbg !5562
  %cmp = icmp slt i32 %8, 0, !dbg !5564
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !5565

if.then6:                                         ; preds = %if.end
  %9 = load i32, i32* %err, align 4, !dbg !5566
  store i32 %9, i32* %retval, align 4, !dbg !5567
  br label %return, !dbg !5567

if.end7:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5568
  br label %return, !dbg !5568

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !5569
  ret i32 %10, !dbg !5569
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds_wait_status(%struct.ds_device* %dev, %struct.ds_status* %st) #2 !dbg !5570 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.ds_device*, align 8
  %st.addr = alloca %struct.ds_status*, align 8
  %err = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.ds_device* %dev, %struct.ds_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev.addr, metadata !5574, metadata !DIExpression()), !dbg !5575
  store %struct.ds_status* %st, %struct.ds_status** %st.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ds_status** %st.addr, metadata !5576, metadata !DIExpression()), !dbg !5577
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5578, metadata !DIExpression()), !dbg !5579
  call void @llvm.dbg.declare(metadata i32* %count, metadata !5580, metadata !DIExpression()), !dbg !5581
  store i32 0, i32* %count, align 4, !dbg !5581
  br label %do.body, !dbg !5582

do.body:                                          ; preds = %land.end, %entry
  %0 = load %struct.ds_status*, %struct.ds_status** %st.addr, align 8, !dbg !5583
  %status = getelementptr inbounds %struct.ds_status, %struct.ds_status* %0, i32 0, i32 8, !dbg !5585
  store i8 0, i8* %status, align 1, !dbg !5586
  %1 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5587
  %2 = load %struct.ds_status*, %struct.ds_status** %st.addr, align 8, !dbg !5588
  %call = call i32 @ds_recv_status(%struct.ds_device* %1, %struct.ds_status* %2, i1 zeroext false) #9, !dbg !5589
  store i32 %call, i32* %err, align 4, !dbg !5590
  br label %do.cond, !dbg !5591

do.cond:                                          ; preds = %do.body
  %3 = load %struct.ds_status*, %struct.ds_status** %st.addr, align 8, !dbg !5592
  %status1 = getelementptr inbounds %struct.ds_status, %struct.ds_status* %3, i32 0, i32 8, !dbg !5593
  %4 = load i8, i8* %status1, align 1, !dbg !5593
  %conv = zext i8 %4 to i32, !dbg !5592
  %and = and i32 %conv, 32, !dbg !5594
  %tobool = icmp ne i32 %and, 0, !dbg !5594
  br i1 %tobool, label %land.end, label %land.lhs.true, !dbg !5595

land.lhs.true:                                    ; preds = %do.cond
  %5 = load i32, i32* %err, align 4, !dbg !5596
  %cmp = icmp slt i32 %5, 0, !dbg !5597
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !5598

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load i32, i32* %count, align 4, !dbg !5599
  %inc = add i32 %6, 1, !dbg !5599
  store i32 %inc, i32* %count, align 4, !dbg !5599
  %cmp3 = icmp slt i32 %inc, 100, !dbg !5600
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %do.cond
  %7 = phi i1 [ false, %land.lhs.true ], [ false, %do.cond ], [ %cmp3, %land.rhs ], !dbg !5601
  br i1 %7, label %do.body, label %do.end, !dbg !5591, !llvm.loop !5602

do.end:                                           ; preds = %land.end
  %8 = load i32, i32* %err, align 4, !dbg !5604
  %cmp5 = icmp sge i32 %8, 16, !dbg !5606
  br i1 %cmp5, label %land.lhs.true7, label %if.end, !dbg !5607

land.lhs.true7:                                   ; preds = %do.end
  %9 = load %struct.ds_status*, %struct.ds_status** %st.addr, align 8, !dbg !5608
  %status8 = getelementptr inbounds %struct.ds_status, %struct.ds_status* %9, i32 0, i32 8, !dbg !5609
  %10 = load i8, i8* %status8, align 1, !dbg !5609
  %conv9 = zext i8 %10 to i32, !dbg !5608
  %and10 = and i32 %conv9, 128, !dbg !5610
  %tobool11 = icmp ne i32 %and10, 0, !dbg !5610
  br i1 %tobool11, label %if.then, label %if.end, !dbg !5611

if.then:                                          ; preds = %land.lhs.true7
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !5612
  %11 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5614
  call void @ds_reset_device(%struct.ds_device* %11) #9, !dbg !5615
  store i32 101, i32* %count, align 4, !dbg !5616
  br label %if.end, !dbg !5617

if.end:                                           ; preds = %if.then, %land.lhs.true7, %do.end
  %12 = load i32, i32* %err, align 4, !dbg !5618
  %cmp13 = icmp sgt i32 %12, 16, !dbg !5620
  br i1 %cmp13, label %if.then20, label %lor.lhs.false, !dbg !5621

lor.lhs.false:                                    ; preds = %if.end
  %13 = load i32, i32* %count, align 4, !dbg !5622
  %cmp15 = icmp sge i32 %13, 100, !dbg !5623
  br i1 %cmp15, label %if.then20, label %lor.lhs.false17, !dbg !5624

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %14 = load i32, i32* %err, align 4, !dbg !5625
  %cmp18 = icmp slt i32 %14, 0, !dbg !5626
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !5627

if.then20:                                        ; preds = %lor.lhs.false17, %lor.lhs.false, %if.end
  %15 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5628
  %16 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5629
  %st_buf = getelementptr inbounds %struct.ds_device, %struct.ds_device* %16, i32 0, i32 6, !dbg !5630
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %st_buf, i64 0, i64 0, !dbg !5629
  %17 = load i32, i32* %err, align 4, !dbg !5631
  call void @ds_dump_status(%struct.ds_device* %15, i8* %arraydecay, i32 %17) #9, !dbg !5632
  br label %if.end21, !dbg !5632

if.end21:                                         ; preds = %if.then20, %lor.lhs.false17
  %18 = load i32, i32* %count, align 4, !dbg !5633
  %cmp22 = icmp sge i32 %18, 100, !dbg !5635
  br i1 %cmp22, label %if.then27, label %lor.lhs.false24, !dbg !5636

lor.lhs.false24:                                  ; preds = %if.end21
  %19 = load i32, i32* %err, align 4, !dbg !5637
  %cmp25 = icmp slt i32 %19, 0, !dbg !5638
  br i1 %cmp25, label %if.then27, label %if.else, !dbg !5639

if.then27:                                        ; preds = %lor.lhs.false24, %if.end21
  store i32 -1, i32* %retval, align 4, !dbg !5640
  br label %return, !dbg !5640

if.else:                                          ; preds = %lor.lhs.false24
  store i32 0, i32* %retval, align 4, !dbg !5641
  br label %return, !dbg !5641

return:                                           ; preds = %if.else, %if.then27
  %20 = load i32, i32* %retval, align 4, !dbg !5642
  ret i32 %20, !dbg !5642
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds_recv_data(%struct.ds_device* %dev, i8* %buf, i32 %size) #2 !dbg !5643 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.ds_device*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct.ds_device* %dev, %struct.ds_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev.addr, metadata !5646, metadata !DIExpression()), !dbg !5647
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5648, metadata !DIExpression()), !dbg !5649
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5650, metadata !DIExpression()), !dbg !5651
  call void @llvm.dbg.declare(metadata i32* %count, metadata !5652, metadata !DIExpression()), !dbg !5653
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5654, metadata !DIExpression()), !dbg !5655
  store i32 0, i32* %count, align 4, !dbg !5656
  %0 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5657
  %udev = getelementptr inbounds %struct.ds_device, %struct.ds_device* %0, i32 0, i32 1, !dbg !5658
  %1 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5658
  %2 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5659
  %udev1 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %2, i32 0, i32 1, !dbg !5659
  %3 = load %struct.usb_device*, %struct.usb_device** %udev1, align 8, !dbg !5659
  %4 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5659
  %ep = getelementptr inbounds %struct.ds_device, %struct.ds_device* %4, i32 0, i32 3, !dbg !5659
  %arrayidx = getelementptr [4 x i32], [4 x i32]* %ep, i64 0, i64 3, !dbg !5659
  %5 = load i32, i32* %arrayidx, align 4, !dbg !5659
  %call = call i32 @__create_pipe(%struct.usb_device* %3, i32 %5) #9, !dbg !5659
  %or = or i32 -1073741824, %call, !dbg !5659
  %or2 = or i32 %or, 128, !dbg !5659
  %6 = load i8*, i8** %buf.addr, align 8, !dbg !5660
  %7 = load i32, i32* %size.addr, align 4, !dbg !5661
  %call3 = call i32 @usb_bulk_msg(%struct.usb_device* %1, i32 %or2, i8* %6, i32 %7, i32* %count, i32 1000) #9, !dbg !5662
  store i32 %call3, i32* %err, align 4, !dbg !5663
  %8 = load i32, i32* %err, align 4, !dbg !5664
  %cmp = icmp slt i32 %8, 0, !dbg !5666
  br i1 %cmp, label %if.then, label %if.end, !dbg !5667

if.then:                                          ; preds = %entry
  %9 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5668
  %ep4 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %9, i32 0, i32 3, !dbg !5668
  %arrayidx5 = getelementptr [4 x i32], [4 x i32]* %ep4, i64 0, i64 3, !dbg !5668
  %10 = load i32, i32* %arrayidx5, align 4, !dbg !5668
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i64 0, i64 0), i32 %10) #10, !dbg !5668
  %11 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5670
  %udev7 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %11, i32 0, i32 1, !dbg !5671
  %12 = load %struct.usb_device*, %struct.usb_device** %udev7, align 8, !dbg !5671
  %13 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5672
  %udev8 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %13, i32 0, i32 1, !dbg !5672
  %14 = load %struct.usb_device*, %struct.usb_device** %udev8, align 8, !dbg !5672
  %15 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5672
  %ep9 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %15, i32 0, i32 3, !dbg !5672
  %arrayidx10 = getelementptr [4 x i32], [4 x i32]* %ep9, i64 0, i64 3, !dbg !5672
  %16 = load i32, i32* %arrayidx10, align 4, !dbg !5672
  %call11 = call i32 @__create_pipe(%struct.usb_device* %14, i32 %16) #9, !dbg !5672
  %or12 = or i32 -1073741824, %call11, !dbg !5672
  %or13 = or i32 %or12, 128, !dbg !5672
  %call14 = call i32 @usb_clear_halt(%struct.usb_device* %12, i32 %or13) #9, !dbg !5673
  %17 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5674
  %call15 = call i32 @ds_recv_status(%struct.ds_device* %17, %struct.ds_status* null, i1 zeroext true) #9, !dbg !5675
  %18 = load i32, i32* %err, align 4, !dbg !5676
  store i32 %18, i32* %retval, align 4, !dbg !5677
  br label %return, !dbg !5677

if.end:                                           ; preds = %entry
  %19 = load i32, i32* %count, align 4, !dbg !5678
  store i32 %19, i32* %retval, align 4, !dbg !5679
  br label %return, !dbg !5679

return:                                           ; preds = %if.end, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !5680
  ret i32 %20, !dbg !5680
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds_recv_status(%struct.ds_device* %dev, %struct.ds_status* %st, i1 zeroext %dump) #2 !dbg !5681 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.ds_device*, align 8
  %st.addr = alloca %struct.ds_status*, align 8
  %dump.addr = alloca i8, align 1
  %count = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct.ds_device* %dev, %struct.ds_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev.addr, metadata !5684, metadata !DIExpression()), !dbg !5685
  store %struct.ds_status* %st, %struct.ds_status** %st.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ds_status** %st.addr, metadata !5686, metadata !DIExpression()), !dbg !5687
  %frombool = zext i1 %dump to i8
  store i8 %frombool, i8* %dump.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %dump.addr, metadata !5688, metadata !DIExpression()), !dbg !5689
  call void @llvm.dbg.declare(metadata i32* %count, metadata !5690, metadata !DIExpression()), !dbg !5691
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5692, metadata !DIExpression()), !dbg !5693
  %0 = load %struct.ds_status*, %struct.ds_status** %st.addr, align 8, !dbg !5694
  %tobool = icmp ne %struct.ds_status* %0, null, !dbg !5694
  br i1 %tobool, label %if.then, label %if.end, !dbg !5696

if.then:                                          ; preds = %entry
  %1 = load %struct.ds_status*, %struct.ds_status** %st.addr, align 8, !dbg !5697
  %2 = bitcast %struct.ds_status* %1 to i8*, !dbg !5698
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 16, i1 false), !dbg !5698
  br label %if.end, !dbg !5698

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %count, align 4, !dbg !5699
  %3 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5700
  %udev = getelementptr inbounds %struct.ds_device, %struct.ds_device* %3, i32 0, i32 1, !dbg !5701
  %4 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5701
  %5 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5702
  %udev1 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %5, i32 0, i32 1, !dbg !5702
  %6 = load %struct.usb_device*, %struct.usb_device** %udev1, align 8, !dbg !5702
  %7 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5702
  %ep = getelementptr inbounds %struct.ds_device, %struct.ds_device* %7, i32 0, i32 3, !dbg !5702
  %arrayidx = getelementptr [4 x i32], [4 x i32]* %ep, i64 0, i64 1, !dbg !5702
  %8 = load i32, i32* %arrayidx, align 4, !dbg !5702
  %call = call i32 @__create_pipe(%struct.usb_device* %6, i32 %8) #9, !dbg !5702
  %or = or i32 1073741824, %call, !dbg !5702
  %or2 = or i32 %or, 128, !dbg !5702
  %9 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5703
  %st_buf = getelementptr inbounds %struct.ds_device, %struct.ds_device* %9, i32 0, i32 6, !dbg !5704
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %st_buf, i64 0, i64 0, !dbg !5703
  %call3 = call i32 @usb_interrupt_msg(%struct.usb_device* %4, i32 %or2, i8* %arraydecay, i32 32, i32* %count, i32 1000) #9, !dbg !5705
  store i32 %call3, i32* %err, align 4, !dbg !5706
  %10 = load i32, i32* %err, align 4, !dbg !5707
  %cmp = icmp slt i32 %10, 0, !dbg !5709
  br i1 %cmp, label %if.then4, label %if.end8, !dbg !5710

if.then4:                                         ; preds = %if.end
  %11 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5711
  %ep5 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %11, i32 0, i32 3, !dbg !5711
  %arrayidx6 = getelementptr [4 x i32], [4 x i32]* %ep5, i64 0, i64 1, !dbg !5711
  %12 = load i32, i32* %arrayidx6, align 4, !dbg !5711
  %13 = load i32, i32* %err, align 4, !dbg !5711
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0), i32 %12, i32 %13) #10, !dbg !5711
  %14 = load i32, i32* %err, align 4, !dbg !5713
  store i32 %14, i32* %retval, align 4, !dbg !5714
  br label %return, !dbg !5714

if.end8:                                          ; preds = %if.end
  %15 = load i8, i8* %dump.addr, align 1, !dbg !5715
  %tobool9 = trunc i8 %15 to i1, !dbg !5715
  br i1 %tobool9, label %if.then10, label %if.end13, !dbg !5717

if.then10:                                        ; preds = %if.end8
  %16 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5718
  %17 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5719
  %st_buf11 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %17, i32 0, i32 6, !dbg !5720
  %arraydecay12 = getelementptr inbounds [32 x i8], [32 x i8]* %st_buf11, i64 0, i64 0, !dbg !5719
  %18 = load i32, i32* %count, align 4, !dbg !5721
  call void @ds_dump_status(%struct.ds_device* %16, i8* %arraydecay12, i32 %18) #9, !dbg !5722
  br label %if.end13, !dbg !5722

if.end13:                                         ; preds = %if.then10, %if.end8
  %19 = load %struct.ds_status*, %struct.ds_status** %st.addr, align 8, !dbg !5723
  %tobool14 = icmp ne %struct.ds_status* %19, null, !dbg !5723
  br i1 %tobool14, label %land.lhs.true, label %if.end20, !dbg !5725

land.lhs.true:                                    ; preds = %if.end13
  %20 = load i32, i32* %count, align 4, !dbg !5726
  %conv = sext i32 %20 to i64, !dbg !5726
  %cmp15 = icmp uge i64 %conv, 16, !dbg !5727
  br i1 %cmp15, label %if.then17, label %if.end20, !dbg !5728

if.then17:                                        ; preds = %land.lhs.true
  %21 = load %struct.ds_status*, %struct.ds_status** %st.addr, align 8, !dbg !5729
  %22 = bitcast %struct.ds_status* %21 to i8*, !dbg !5730
  %23 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5731
  %st_buf18 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %23, i32 0, i32 6, !dbg !5732
  %arraydecay19 = getelementptr inbounds [32 x i8], [32 x i8]* %st_buf18, i64 0, i64 0, !dbg !5730
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 2 %arraydecay19, i64 16, i1 false), !dbg !5730
  br label %if.end20, !dbg !5730

if.end20:                                         ; preds = %if.then17, %land.lhs.true, %if.end13
  %24 = load i32, i32* %count, align 4, !dbg !5733
  store i32 %24, i32* %retval, align 4, !dbg !5734
  br label %return, !dbg !5734

return:                                           ; preds = %if.end20, %if.then4
  %25 = load i32, i32* %retval, align 4, !dbg !5735
  ret i32 %25, !dbg !5735
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ds_dump_status(%struct.ds_device* %dev, i8* %buf, i32 %count) #2 !dbg !5736 {
entry:
  %dev.addr = alloca %struct.ds_device*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.ds_device* %dev, %struct.ds_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev.addr, metadata !5739, metadata !DIExpression()), !dbg !5740
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5741, metadata !DIExpression()), !dbg !5742
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !5743, metadata !DIExpression()), !dbg !5744
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5745, metadata !DIExpression()), !dbg !5746
  %0 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5747
  %ep = getelementptr inbounds %struct.ds_device, %struct.ds_device* %0, i32 0, i32 3, !dbg !5747
  %arrayidx = getelementptr [4 x i32], [4 x i32]* %ep, i64 0, i64 1, !dbg !5747
  %1 = load i32, i32* %arrayidx, align 4, !dbg !5747
  %2 = load i32, i32* %count.addr, align 4, !dbg !5747
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 %1, i32 %2) #10, !dbg !5747
  store i32 0, i32* %i, align 4, !dbg !5748
  br label %for.cond, !dbg !5750

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !5751
  %4 = load i32, i32* %count.addr, align 4, !dbg !5753
  %cmp = icmp slt i32 %3, %4, !dbg !5754
  br i1 %cmp, label %for.body, label %for.end, !dbg !5755

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !5756
  %6 = load i32, i32* %i, align 4, !dbg !5756
  %idxprom = sext i32 %6 to i64, !dbg !5756
  %arrayidx1 = getelementptr i8, i8* %5, i64 %idxprom, !dbg !5756
  %7 = load i8, i8* %arrayidx1, align 1, !dbg !5756
  %conv = zext i8 %7 to i32, !dbg !5756
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32 %conv) #10, !dbg !5756
  br label %for.inc, !dbg !5756

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !5757
  %inc = add i32 %8, 1, !dbg !5757
  store i32 %inc, i32* %i, align 4, !dbg !5757
  br label %for.cond, !dbg !5758, !llvm.loop !5759

for.end:                                          ; preds = %for.cond
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)) #10, !dbg !5761
  %9 = load i32, i32* %count.addr, align 4, !dbg !5762
  %cmp4 = icmp sge i32 %9, 16, !dbg !5764
  br i1 %cmp4, label %if.then, label %if.end, !dbg !5765

if.then:                                          ; preds = %for.end
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !5766
  call void @ds_print_msg(i8* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 0) #9, !dbg !5768
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !5769
  call void @ds_print_msg(i8* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 1) #9, !dbg !5770
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !5771
  call void @ds_print_msg(i8* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 2) #9, !dbg !5772
  %13 = load i8*, i8** %buf.addr, align 8, !dbg !5773
  call void @ds_print_msg(i8* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i32 3) #9, !dbg !5774
  %14 = load i8*, i8** %buf.addr, align 8, !dbg !5775
  call void @ds_print_msg(i8* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0), i32 4) #9, !dbg !5776
  %15 = load i8*, i8** %buf.addr, align 8, !dbg !5777
  call void @ds_print_msg(i8* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i32 5) #9, !dbg !5778
  %16 = load i8*, i8** %buf.addr, align 8, !dbg !5779
  call void @ds_print_msg(i8* %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0), i32 6) #9, !dbg !5780
  %17 = load i8*, i8** %buf.addr, align 8, !dbg !5781
  call void @ds_print_msg(i8* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i32 7) #9, !dbg !5782
  %18 = load i8*, i8** %buf.addr, align 8, !dbg !5783
  call void @ds_print_msg(i8* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i32 8) #9, !dbg !5784
  %19 = load i8*, i8** %buf.addr, align 8, !dbg !5785
  call void @ds_print_msg(i8* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0), i32 9) #9, !dbg !5786
  %20 = load i8*, i8** %buf.addr, align 8, !dbg !5787
  call void @ds_print_msg(i8* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0), i32 10) #9, !dbg !5788
  %21 = load i8*, i8** %buf.addr, align 8, !dbg !5789
  call void @ds_print_msg(i8* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i64 0, i64 0), i32 11) #9, !dbg !5790
  %22 = load i8*, i8** %buf.addr, align 8, !dbg !5791
  call void @ds_print_msg(i8* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0), i32 12) #9, !dbg !5792
  %23 = load i8*, i8** %buf.addr, align 8, !dbg !5793
  call void @ds_print_msg(i8* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i64 0, i64 0), i32 13) #9, !dbg !5794
  %24 = load i8*, i8** %buf.addr, align 8, !dbg !5795
  call void @ds_print_msg(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i32 14) #9, !dbg !5796
  %25 = load i8*, i8** %buf.addr, align 8, !dbg !5797
  call void @ds_print_msg(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i32 15) #9, !dbg !5798
  br label %if.end, !dbg !5799

if.end:                                           ; preds = %if.then, %for.end
  store i32 16, i32* %i, align 4, !dbg !5800
  br label %for.cond6, !dbg !5802

for.cond6:                                        ; preds = %for.inc79, %if.end
  %26 = load i32, i32* %i, align 4, !dbg !5803
  %27 = load i32, i32* %count.addr, align 4, !dbg !5805
  %cmp7 = icmp slt i32 %26, %27, !dbg !5806
  br i1 %cmp7, label %for.body9, label %for.end81, !dbg !5807

for.body9:                                        ; preds = %for.cond6
  %28 = load i8*, i8** %buf.addr, align 8, !dbg !5808
  %29 = load i32, i32* %i, align 4, !dbg !5811
  %idxprom10 = sext i32 %29 to i64, !dbg !5808
  %arrayidx11 = getelementptr i8, i8* %28, i64 %idxprom10, !dbg !5808
  %30 = load i8, i8* %arrayidx11, align 1, !dbg !5808
  %conv12 = zext i8 %30 to i32, !dbg !5808
  %cmp13 = icmp eq i32 %conv12, 165, !dbg !5812
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !5813

if.then15:                                        ; preds = %for.body9
  %31 = load i8*, i8** %buf.addr, align 8, !dbg !5814
  %32 = load i32, i32* %i, align 4, !dbg !5816
  call void @ds_print_msg(i8* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0), i32 %32) #9, !dbg !5817
  br label %for.inc79, !dbg !5818

if.end16:                                         ; preds = %for.body9
  %33 = load i8*, i8** %buf.addr, align 8, !dbg !5819
  %34 = load i32, i32* %i, align 4, !dbg !5820
  call void @ds_print_msg(i8* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0), i32 %34) #9, !dbg !5821
  %35 = load i8*, i8** %buf.addr, align 8, !dbg !5822
  %36 = load i32, i32* %i, align 4, !dbg !5824
  %idxprom17 = sext i32 %36 to i64, !dbg !5822
  %arrayidx18 = getelementptr i8, i8* %35, i64 %idxprom17, !dbg !5822
  %37 = load i8, i8* %arrayidx18, align 1, !dbg !5822
  %conv19 = zext i8 %37 to i32, !dbg !5822
  %and = and i32 %conv19, 1, !dbg !5825
  %tobool = icmp ne i32 %and, 0, !dbg !5825
  br i1 %tobool, label %if.then20, label %if.end22, !dbg !5826

if.then20:                                        ; preds = %if.end16
  %call21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i64 0, i64 0)) #10, !dbg !5827
  br label %if.end22, !dbg !5827

if.end22:                                         ; preds = %if.then20, %if.end16
  %38 = load i8*, i8** %buf.addr, align 8, !dbg !5828
  %39 = load i32, i32* %i, align 4, !dbg !5830
  %idxprom23 = sext i32 %39 to i64, !dbg !5828
  %arrayidx24 = getelementptr i8, i8* %38, i64 %idxprom23, !dbg !5828
  %40 = load i8, i8* %arrayidx24, align 1, !dbg !5828
  %conv25 = zext i8 %40 to i32, !dbg !5828
  %and26 = and i32 %conv25, 2, !dbg !5831
  %tobool27 = icmp ne i32 %and26, 0, !dbg !5831
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !5832

if.then28:                                        ; preds = %if.end22
  %call29 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i64 0, i64 0)) #10, !dbg !5833
  br label %if.end30, !dbg !5833

if.end30:                                         ; preds = %if.then28, %if.end22
  %41 = load i8*, i8** %buf.addr, align 8, !dbg !5834
  %42 = load i32, i32* %i, align 4, !dbg !5836
  %idxprom31 = sext i32 %42 to i64, !dbg !5834
  %arrayidx32 = getelementptr i8, i8* %41, i64 %idxprom31, !dbg !5834
  %43 = load i8, i8* %arrayidx32, align 1, !dbg !5834
  %conv33 = zext i8 %43 to i32, !dbg !5834
  %and34 = and i32 %conv33, 4, !dbg !5837
  %tobool35 = icmp ne i32 %and34, 0, !dbg !5837
  br i1 %tobool35, label %if.then36, label %if.end38, !dbg !5838

if.then36:                                        ; preds = %if.end30
  %call37 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.36, i64 0, i64 0)) #10, !dbg !5839
  br label %if.end38, !dbg !5839

if.end38:                                         ; preds = %if.then36, %if.end30
  %44 = load i8*, i8** %buf.addr, align 8, !dbg !5840
  %45 = load i32, i32* %i, align 4, !dbg !5842
  %idxprom39 = sext i32 %45 to i64, !dbg !5840
  %arrayidx40 = getelementptr i8, i8* %44, i64 %idxprom39, !dbg !5840
  %46 = load i8, i8* %arrayidx40, align 1, !dbg !5840
  %conv41 = zext i8 %46 to i32, !dbg !5840
  %and42 = and i32 %conv41, 8, !dbg !5843
  %tobool43 = icmp ne i32 %and42, 0, !dbg !5843
  br i1 %tobool43, label %if.then44, label %if.end46, !dbg !5844

if.then44:                                        ; preds = %if.end38
  %call45 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0)) #10, !dbg !5845
  br label %if.end46, !dbg !5845

if.end46:                                         ; preds = %if.then44, %if.end38
  %47 = load i8*, i8** %buf.addr, align 8, !dbg !5846
  %48 = load i32, i32* %i, align 4, !dbg !5848
  %idxprom47 = sext i32 %48 to i64, !dbg !5846
  %arrayidx48 = getelementptr i8, i8* %47, i64 %idxprom47, !dbg !5846
  %49 = load i8, i8* %arrayidx48, align 1, !dbg !5846
  %conv49 = zext i8 %49 to i32, !dbg !5846
  %and50 = and i32 %conv49, 16, !dbg !5849
  %tobool51 = icmp ne i32 %and50, 0, !dbg !5849
  br i1 %tobool51, label %if.then52, label %if.end54, !dbg !5850

if.then52:                                        ; preds = %if.end46
  %call53 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0)) #10, !dbg !5851
  br label %if.end54, !dbg !5851

if.end54:                                         ; preds = %if.then52, %if.end46
  %50 = load i8*, i8** %buf.addr, align 8, !dbg !5852
  %51 = load i32, i32* %i, align 4, !dbg !5854
  %idxprom55 = sext i32 %51 to i64, !dbg !5852
  %arrayidx56 = getelementptr i8, i8* %50, i64 %idxprom55, !dbg !5852
  %52 = load i8, i8* %arrayidx56, align 1, !dbg !5852
  %conv57 = zext i8 %52 to i32, !dbg !5852
  %and58 = and i32 %conv57, 32, !dbg !5855
  %tobool59 = icmp ne i32 %and58, 0, !dbg !5855
  br i1 %tobool59, label %if.then60, label %if.end62, !dbg !5856

if.then60:                                        ; preds = %if.end54
  %call61 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0)) #10, !dbg !5857
  br label %if.end62, !dbg !5857

if.end62:                                         ; preds = %if.then60, %if.end54
  %53 = load i8*, i8** %buf.addr, align 8, !dbg !5858
  %54 = load i32, i32* %i, align 4, !dbg !5860
  %idxprom63 = sext i32 %54 to i64, !dbg !5858
  %arrayidx64 = getelementptr i8, i8* %53, i64 %idxprom63, !dbg !5858
  %55 = load i8, i8* %arrayidx64, align 1, !dbg !5858
  %conv65 = zext i8 %55 to i32, !dbg !5858
  %and66 = and i32 %conv65, 64, !dbg !5861
  %tobool67 = icmp ne i32 %and66, 0, !dbg !5861
  br i1 %tobool67, label %if.then68, label %if.end70, !dbg !5862

if.then68:                                        ; preds = %if.end62
  %call69 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !5863
  br label %if.end70, !dbg !5863

if.end70:                                         ; preds = %if.then68, %if.end62
  %56 = load i8*, i8** %buf.addr, align 8, !dbg !5864
  %57 = load i32, i32* %i, align 4, !dbg !5866
  %idxprom71 = sext i32 %57 to i64, !dbg !5864
  %arrayidx72 = getelementptr i8, i8* %56, i64 %idxprom71, !dbg !5864
  %58 = load i8, i8* %arrayidx72, align 1, !dbg !5864
  %conv73 = zext i8 %58 to i32, !dbg !5864
  %and74 = and i32 %conv73, 128, !dbg !5867
  %tobool75 = icmp ne i32 %and74, 0, !dbg !5867
  br i1 %tobool75, label %if.then76, label %if.end78, !dbg !5868

if.then76:                                        ; preds = %if.end70
  %call77 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.41, i64 0, i64 0)) #10, !dbg !5869
  br label %if.end78, !dbg !5869

if.end78:                                         ; preds = %if.then76, %if.end70
  br label %for.inc79, !dbg !5870

for.inc79:                                        ; preds = %if.end78, %if.then15
  %59 = load i32, i32* %i, align 4, !dbg !5871
  %inc80 = add i32 %59, 1, !dbg !5871
  store i32 %inc80, i32* %i, align 4, !dbg !5871
  br label %for.cond6, !dbg !5872, !llvm.loop !5873

for.end81:                                        ; preds = %for.cond6
  ret void, !dbg !5875
}

; Function Attrs: noredzone
declare dso_local i32 @usb_interrupt_msg(%struct.usb_device*, i32, i8*, i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ds_print_msg(i8* %buf, i8* %str, i32 %off) #2 !dbg !5876 {
entry:
  %buf.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %off.addr = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5879, metadata !DIExpression()), !dbg !5880
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !5881, metadata !DIExpression()), !dbg !5882
  store i32 %off, i32* %off.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %off.addr, metadata !5883, metadata !DIExpression()), !dbg !5884
  %0 = load i8*, i8** %str.addr, align 8, !dbg !5885
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !5885
  %2 = load i32, i32* %off.addr, align 4, !dbg !5885
  %idxprom = sext i32 %2 to i64, !dbg !5885
  %arrayidx = getelementptr i8, i8* %1, i64 %idxprom, !dbg !5885
  %3 = load i8, i8* %arrayidx, align 1, !dbg !5885
  %conv = zext i8 %3 to i32, !dbg !5885
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0), i8* %0, i32 %conv) #10, !dbg !5885
  ret void, !dbg !5886
}

; Function Attrs: noredzone
declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i8*, i32, i32*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_clear_halt(%struct.usb_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds_read_byte(%struct.ds_device* %dev, i8* %byte) #2 !dbg !5887 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.ds_device*, align 8
  %byte.addr = alloca i8*, align 8
  %err = alloca i32, align 4
  %st = alloca %struct.ds_status, align 1
  store %struct.ds_device* %dev, %struct.ds_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev.addr, metadata !5890, metadata !DIExpression()), !dbg !5891
  store i8* %byte, i8** %byte.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %byte.addr, metadata !5892, metadata !DIExpression()), !dbg !5893
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5894, metadata !DIExpression()), !dbg !5895
  call void @llvm.dbg.declare(metadata %struct.ds_status* %st, metadata !5896, metadata !DIExpression()), !dbg !5897
  %0 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5898
  %call = call i32 @ds_send_control(%struct.ds_device* %0, i16 zeroext 83, i16 zeroext 255) #9, !dbg !5899
  store i32 %call, i32* %err, align 4, !dbg !5900
  %1 = load i32, i32* %err, align 4, !dbg !5901
  %tobool = icmp ne i32 %1, 0, !dbg !5901
  br i1 %tobool, label %if.then, label %if.end, !dbg !5903

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %err, align 4, !dbg !5904
  store i32 %2, i32* %retval, align 4, !dbg !5905
  br label %return, !dbg !5905

if.end:                                           ; preds = %entry
  %3 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5906
  %call1 = call i32 @ds_wait_status(%struct.ds_device* %3, %struct.ds_status* %st) #9, !dbg !5907
  %4 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5908
  %5 = load i8*, i8** %byte.addr, align 8, !dbg !5909
  %call2 = call i32 @ds_recv_data(%struct.ds_device* %4, i8* %5, i32 1) #9, !dbg !5910
  store i32 %call2, i32* %err, align 4, !dbg !5911
  %6 = load i32, i32* %err, align 4, !dbg !5912
  %cmp = icmp slt i32 %6, 0, !dbg !5914
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !5915

if.then3:                                         ; preds = %if.end
  %7 = load i32, i32* %err, align 4, !dbg !5916
  store i32 %7, i32* %retval, align 4, !dbg !5917
  br label %return, !dbg !5917

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5918
  br label %return, !dbg !5918

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !5919
  ret i32 %8, !dbg !5919
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds_write_byte(%struct.ds_device* %dev, i8 zeroext %byte) #2 !dbg !5920 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.ds_device*, align 8
  %byte.addr = alloca i8, align 1
  %err = alloca i32, align 4
  %st = alloca %struct.ds_status, align 1
  store %struct.ds_device* %dev, %struct.ds_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev.addr, metadata !5923, metadata !DIExpression()), !dbg !5924
  store i8 %byte, i8* %byte.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %byte.addr, metadata !5925, metadata !DIExpression()), !dbg !5926
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5927, metadata !DIExpression()), !dbg !5928
  call void @llvm.dbg.declare(metadata %struct.ds_status* %st, metadata !5929, metadata !DIExpression()), !dbg !5930
  %0 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5931
  %1 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5932
  %spu_bit = getelementptr inbounds %struct.ds_device, %struct.ds_device* %1, i32 0, i32 5, !dbg !5933
  %2 = load i16, i16* %spu_bit, align 4, !dbg !5933
  %conv = zext i16 %2 to i32, !dbg !5932
  %or = or i32 83, %conv, !dbg !5934
  %conv1 = trunc i32 %or to i16, !dbg !5935
  %3 = load i8, i8* %byte.addr, align 1, !dbg !5936
  %conv2 = zext i8 %3 to i16, !dbg !5936
  %call = call i32 @ds_send_control(%struct.ds_device* %0, i16 zeroext %conv1, i16 zeroext %conv2) #9, !dbg !5937
  store i32 %call, i32* %err, align 4, !dbg !5938
  %4 = load i32, i32* %err, align 4, !dbg !5939
  %tobool = icmp ne i32 %4, 0, !dbg !5939
  br i1 %tobool, label %if.then, label %if.end, !dbg !5941

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %err, align 4, !dbg !5942
  store i32 %5, i32* %retval, align 4, !dbg !5943
  br label %return, !dbg !5943

if.end:                                           ; preds = %entry
  %6 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5944
  %spu_bit3 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %6, i32 0, i32 5, !dbg !5946
  %7 = load i16, i16* %spu_bit3, align 4, !dbg !5946
  %tobool4 = icmp ne i16 %7, 0, !dbg !5944
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5947

if.then5:                                         ; preds = %if.end
  %8 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5948
  %spu_sleep = getelementptr inbounds %struct.ds_device, %struct.ds_device* %8, i32 0, i32 4, !dbg !5949
  %9 = load i32, i32* %spu_sleep, align 8, !dbg !5949
  call void @msleep(i32 %9) #9, !dbg !5950
  br label %if.end6, !dbg !5950

if.end6:                                          ; preds = %if.then5, %if.end
  %10 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5951
  %call7 = call i32 @ds_wait_status(%struct.ds_device* %10, %struct.ds_status* %st) #9, !dbg !5952
  store i32 %call7, i32* %err, align 4, !dbg !5953
  %11 = load i32, i32* %err, align 4, !dbg !5954
  %tobool8 = icmp ne i32 %11, 0, !dbg !5954
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5956

if.then9:                                         ; preds = %if.end6
  %12 = load i32, i32* %err, align 4, !dbg !5957
  store i32 %12, i32* %retval, align 4, !dbg !5958
  br label %return, !dbg !5958

if.end10:                                         ; preds = %if.end6
  %13 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5959
  %14 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5960
  %byte_buf = getelementptr inbounds %struct.ds_device, %struct.ds_device* %14, i32 0, i32 7, !dbg !5961
  %call11 = call i32 @ds_recv_data(%struct.ds_device* %13, i8* %byte_buf, i32 1) #9, !dbg !5962
  store i32 %call11, i32* %err, align 4, !dbg !5963
  %15 = load i32, i32* %err, align 4, !dbg !5964
  %cmp = icmp slt i32 %15, 0, !dbg !5966
  br i1 %cmp, label %if.then13, label %if.end14, !dbg !5967

if.then13:                                        ; preds = %if.end10
  %16 = load i32, i32* %err, align 4, !dbg !5968
  store i32 %16, i32* %retval, align 4, !dbg !5969
  br label %return, !dbg !5969

if.end14:                                         ; preds = %if.end10
  %17 = load i8, i8* %byte.addr, align 1, !dbg !5970
  %conv15 = zext i8 %17 to i32, !dbg !5970
  %18 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5971
  %byte_buf16 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %18, i32 0, i32 7, !dbg !5972
  %19 = load i8, i8* %byte_buf16, align 2, !dbg !5972
  %conv17 = zext i8 %19 to i32, !dbg !5971
  %cmp18 = icmp eq i32 %conv15, %conv17, !dbg !5973
  %lnot = xor i1 %cmp18, true, !dbg !5974
  %lnot.ext = zext i1 %lnot to i32, !dbg !5974
  store i32 %lnot.ext, i32* %retval, align 4, !dbg !5975
  br label %return, !dbg !5975

return:                                           ; preds = %if.end14, %if.then13, %if.then9, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !5976
  ret i32 %20, !dbg !5976
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds_read_block(%struct.ds_device* %dev, i8* %buf, i32 %len) #2 !dbg !5977 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.ds_device*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %st = alloca %struct.ds_status, align 1
  %err = alloca i32, align 4
  store %struct.ds_device* %dev, %struct.ds_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev.addr, metadata !5980, metadata !DIExpression()), !dbg !5981
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5982, metadata !DIExpression()), !dbg !5983
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !5984, metadata !DIExpression()), !dbg !5985
  call void @llvm.dbg.declare(metadata %struct.ds_status* %st, metadata !5986, metadata !DIExpression()), !dbg !5987
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5988, metadata !DIExpression()), !dbg !5989
  %0 = load i32, i32* %len.addr, align 4, !dbg !5990
  %cmp = icmp sgt i32 %0, 65536, !dbg !5992
  br i1 %cmp, label %if.then, label %if.end, !dbg !5993

if.then:                                          ; preds = %entry
  store i32 -7, i32* %retval, align 4, !dbg !5994
  br label %return, !dbg !5994

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !5995
  %2 = load i32, i32* %len.addr, align 4, !dbg !5996
  %conv = sext i32 %2 to i64, !dbg !5996
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 -1, i64 %conv, i1 false), !dbg !5997
  %3 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !5998
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !5999
  %5 = load i32, i32* %len.addr, align 4, !dbg !6000
  %call = call i32 @ds_send_data(%struct.ds_device* %3, i8* %4, i32 %5) #9, !dbg !6001
  store i32 %call, i32* %err, align 4, !dbg !6002
  %6 = load i32, i32* %err, align 4, !dbg !6003
  %cmp1 = icmp slt i32 %6, 0, !dbg !6005
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !6006

if.then3:                                         ; preds = %if.end
  %7 = load i32, i32* %err, align 4, !dbg !6007
  store i32 %7, i32* %retval, align 4, !dbg !6008
  br label %return, !dbg !6008

if.end4:                                          ; preds = %if.end
  %8 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !6009
  %9 = load i32, i32* %len.addr, align 4, !dbg !6010
  %conv5 = trunc i32 %9 to i16, !dbg !6010
  %call6 = call i32 @ds_send_control(%struct.ds_device* %8, i16 zeroext 117, i16 zeroext %conv5) #9, !dbg !6011
  store i32 %call6, i32* %err, align 4, !dbg !6012
  %10 = load i32, i32* %err, align 4, !dbg !6013
  %tobool = icmp ne i32 %10, 0, !dbg !6013
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !6015

if.then7:                                         ; preds = %if.end4
  %11 = load i32, i32* %err, align 4, !dbg !6016
  store i32 %11, i32* %retval, align 4, !dbg !6017
  br label %return, !dbg !6017

if.end8:                                          ; preds = %if.end4
  %12 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !6018
  %call9 = call i32 @ds_wait_status(%struct.ds_device* %12, %struct.ds_status* %st) #9, !dbg !6019
  %13 = load i8*, i8** %buf.addr, align 8, !dbg !6020
  %14 = load i32, i32* %len.addr, align 4, !dbg !6021
  %conv10 = sext i32 %14 to i64, !dbg !6021
  call void @llvm.memset.p0i8.i64(i8* align 1 %13, i8 0, i64 %conv10, i1 false), !dbg !6022
  %15 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !6023
  %16 = load i8*, i8** %buf.addr, align 8, !dbg !6024
  %17 = load i32, i32* %len.addr, align 4, !dbg !6025
  %call11 = call i32 @ds_recv_data(%struct.ds_device* %15, i8* %16, i32 %17) #9, !dbg !6026
  store i32 %call11, i32* %err, align 4, !dbg !6027
  %18 = load i32, i32* %err, align 4, !dbg !6028
  store i32 %18, i32* %retval, align 4, !dbg !6029
  br label %return, !dbg !6029

return:                                           ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !6030
  ret i32 %19, !dbg !6030
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds_send_data(%struct.ds_device* %dev, i8* %buf, i32 %len) #2 !dbg !6031 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.ds_device*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct.ds_device* %dev, %struct.ds_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev.addr, metadata !6032, metadata !DIExpression()), !dbg !6033
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6034, metadata !DIExpression()), !dbg !6035
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !6036, metadata !DIExpression()), !dbg !6037
  call void @llvm.dbg.declare(metadata i32* %count, metadata !6038, metadata !DIExpression()), !dbg !6039
  call void @llvm.dbg.declare(metadata i32* %err, metadata !6040, metadata !DIExpression()), !dbg !6041
  store i32 0, i32* %count, align 4, !dbg !6042
  %0 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !6043
  %udev = getelementptr inbounds %struct.ds_device, %struct.ds_device* %0, i32 0, i32 1, !dbg !6044
  %1 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !6044
  %2 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !6045
  %udev1 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %2, i32 0, i32 1, !dbg !6045
  %3 = load %struct.usb_device*, %struct.usb_device** %udev1, align 8, !dbg !6045
  %4 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !6045
  %ep = getelementptr inbounds %struct.ds_device, %struct.ds_device* %4, i32 0, i32 3, !dbg !6045
  %arrayidx = getelementptr [4 x i32], [4 x i32]* %ep, i64 0, i64 2, !dbg !6045
  %5 = load i32, i32* %arrayidx, align 8, !dbg !6045
  %call = call i32 @__create_pipe(%struct.usb_device* %3, i32 %5) #9, !dbg !6045
  %or = or i32 -1073741824, %call, !dbg !6045
  %6 = load i8*, i8** %buf.addr, align 8, !dbg !6046
  %7 = load i32, i32* %len.addr, align 4, !dbg !6047
  %call2 = call i32 @usb_bulk_msg(%struct.usb_device* %1, i32 %or, i8* %6, i32 %7, i32* %count, i32 1000) #9, !dbg !6048
  store i32 %call2, i32* %err, align 4, !dbg !6049
  %8 = load i32, i32* %err, align 4, !dbg !6050
  %cmp = icmp slt i32 %8, 0, !dbg !6052
  br i1 %cmp, label %if.then, label %if.end, !dbg !6053

if.then:                                          ; preds = %entry
  %9 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !6054
  %ep3 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %9, i32 0, i32 3, !dbg !6054
  %arrayidx4 = getelementptr [4 x i32], [4 x i32]* %ep3, i64 0, i64 2, !dbg !6054
  %10 = load i32, i32* %arrayidx4, align 8, !dbg !6054
  %11 = load i32, i32* %err, align 4, !dbg !6054
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.44, i64 0, i64 0), i32 %10, i32 %11) #10, !dbg !6054
  %12 = load i32, i32* %err, align 4, !dbg !6056
  store i32 %12, i32* %retval, align 4, !dbg !6057
  br label %return, !dbg !6057

if.end:                                           ; preds = %entry
  %13 = load i32, i32* %err, align 4, !dbg !6058
  store i32 %13, i32* %retval, align 4, !dbg !6059
  br label %return, !dbg !6059

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !6060
  ret i32 %14, !dbg !6060
}

; Function Attrs: noredzone
declare dso_local i8* @kmemdup(i8*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds_write_block(%struct.ds_device* %dev, i8* %buf, i32 %len) #2 !dbg !6061 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.ds_device*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %st = alloca %struct.ds_status, align 1
  store %struct.ds_device* %dev, %struct.ds_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev.addr, metadata !6062, metadata !DIExpression()), !dbg !6063
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6064, metadata !DIExpression()), !dbg !6065
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !6066, metadata !DIExpression()), !dbg !6067
  call void @llvm.dbg.declare(metadata i32* %err, metadata !6068, metadata !DIExpression()), !dbg !6069
  call void @llvm.dbg.declare(metadata %struct.ds_status* %st, metadata !6070, metadata !DIExpression()), !dbg !6071
  %0 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !6072
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !6073
  %2 = load i32, i32* %len.addr, align 4, !dbg !6074
  %call = call i32 @ds_send_data(%struct.ds_device* %0, i8* %1, i32 %2) #9, !dbg !6075
  store i32 %call, i32* %err, align 4, !dbg !6076
  %3 = load i32, i32* %err, align 4, !dbg !6077
  %cmp = icmp slt i32 %3, 0, !dbg !6079
  br i1 %cmp, label %if.then, label %if.end, !dbg !6080

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %err, align 4, !dbg !6081
  store i32 %4, i32* %retval, align 4, !dbg !6082
  br label %return, !dbg !6082

if.end:                                           ; preds = %entry
  %5 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !6083
  %6 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !6084
  %spu_bit = getelementptr inbounds %struct.ds_device, %struct.ds_device* %6, i32 0, i32 5, !dbg !6085
  %7 = load i16, i16* %spu_bit, align 4, !dbg !6085
  %conv = zext i16 %7 to i32, !dbg !6084
  %or = or i32 117, %conv, !dbg !6086
  %conv1 = trunc i32 %or to i16, !dbg !6087
  %8 = load i32, i32* %len.addr, align 4, !dbg !6088
  %conv2 = trunc i32 %8 to i16, !dbg !6088
  %call3 = call i32 @ds_send_control(%struct.ds_device* %5, i16 zeroext %conv1, i16 zeroext %conv2) #9, !dbg !6089
  store i32 %call3, i32* %err, align 4, !dbg !6090
  %9 = load i32, i32* %err, align 4, !dbg !6091
  %tobool = icmp ne i32 %9, 0, !dbg !6091
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !6093

if.then4:                                         ; preds = %if.end
  %10 = load i32, i32* %err, align 4, !dbg !6094
  store i32 %10, i32* %retval, align 4, !dbg !6095
  br label %return, !dbg !6095

if.end5:                                          ; preds = %if.end
  %11 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !6096
  %spu_bit6 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %11, i32 0, i32 5, !dbg !6098
  %12 = load i16, i16* %spu_bit6, align 4, !dbg !6098
  %tobool7 = icmp ne i16 %12, 0, !dbg !6096
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !6099

if.then8:                                         ; preds = %if.end5
  %13 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !6100
  %spu_sleep = getelementptr inbounds %struct.ds_device, %struct.ds_device* %13, i32 0, i32 4, !dbg !6101
  %14 = load i32, i32* %spu_sleep, align 8, !dbg !6101
  call void @msleep(i32 %14) #9, !dbg !6102
  br label %if.end9, !dbg !6102

if.end9:                                          ; preds = %if.then8, %if.end5
  %15 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !6103
  %call10 = call i32 @ds_wait_status(%struct.ds_device* %15, %struct.ds_status* %st) #9, !dbg !6104
  %16 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !6105
  %17 = load i8*, i8** %buf.addr, align 8, !dbg !6106
  %18 = load i32, i32* %len.addr, align 4, !dbg !6107
  %call11 = call i32 @ds_recv_data(%struct.ds_device* %16, i8* %17, i32 %18) #9, !dbg !6108
  store i32 %call11, i32* %err, align 4, !dbg !6109
  %19 = load i32, i32* %err, align 4, !dbg !6110
  %cmp12 = icmp slt i32 %19, 0, !dbg !6112
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !6113

if.then14:                                        ; preds = %if.end9
  %20 = load i32, i32* %err, align 4, !dbg !6114
  store i32 %20, i32* %retval, align 4, !dbg !6115
  br label %return, !dbg !6115

if.end15:                                         ; preds = %if.end9
  %21 = load i32, i32* %err, align 4, !dbg !6116
  %22 = load i32, i32* %len.addr, align 4, !dbg !6117
  %cmp16 = icmp eq i32 %21, %22, !dbg !6118
  %lnot = xor i1 %cmp16, true, !dbg !6119
  %lnot.ext = zext i1 %lnot to i32, !dbg !6119
  store i32 %lnot.ext, i32* %retval, align 4, !dbg !6120
  br label %return, !dbg !6120

return:                                           ; preds = %if.end15, %if.then14, %if.then4, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !6121
  ret i32 %23, !dbg !6121
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds_reset(%struct.ds_device* %dev) #2 !dbg !6122 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.ds_device*, align 8
  %err = alloca i32, align 4
  store %struct.ds_device* %dev, %struct.ds_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev.addr, metadata !6123, metadata !DIExpression()), !dbg !6124
  call void @llvm.dbg.declare(metadata i32* %err, metadata !6125, metadata !DIExpression()), !dbg !6126
  %0 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !6127
  %call = call i32 @ds_send_control(%struct.ds_device* %0, i16 zeroext 67, i16 zeroext 0) #9, !dbg !6128
  store i32 %call, i32* %err, align 4, !dbg !6129
  %1 = load i32, i32* %err, align 4, !dbg !6130
  %tobool = icmp ne i32 %1, 0, !dbg !6130
  br i1 %tobool, label %if.then, label %if.end, !dbg !6132

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %err, align 4, !dbg !6133
  store i32 %2, i32* %retval, align 4, !dbg !6134
  br label %return, !dbg !6134

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6135
  br label %return, !dbg !6135

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !6136
  ret i32 %3, !dbg !6136
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ds_set_pullup(%struct.ds_device* %dev, i32 %delay) #2 !dbg !6137 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.ds_device*, align 8
  %delay.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %del = alloca i8, align 1
  %ms = alloca i32, align 4
  store %struct.ds_device* %dev, %struct.ds_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev.addr, metadata !6140, metadata !DIExpression()), !dbg !6141
  store i32 %delay, i32* %delay.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %delay.addr, metadata !6142, metadata !DIExpression()), !dbg !6143
  call void @llvm.dbg.declare(metadata i32* %err, metadata !6144, metadata !DIExpression()), !dbg !6145
  store i32 0, i32* %err, align 4, !dbg !6145
  call void @llvm.dbg.declare(metadata i8* %del, metadata !6146, metadata !DIExpression()), !dbg !6147
  %0 = load i32, i32* %delay.addr, align 4, !dbg !6148
  %shr = ashr i32 %0, 4, !dbg !6149
  %conv = trunc i32 %shr to i8, !dbg !6150
  %conv1 = zext i8 %conv to i32, !dbg !6150
  %add = add i32 1, %conv1, !dbg !6151
  %conv2 = trunc i32 %add to i8, !dbg !6152
  store i8 %conv2, i8* %del, align 1, !dbg !6147
  call void @llvm.dbg.declare(metadata i32* %ms, metadata !6153, metadata !DIExpression()), !dbg !6154
  %1 = load i8, i8* %del, align 1, !dbg !6155
  %conv3 = zext i8 %1 to i32, !dbg !6155
  %shl = shl i32 %conv3, 4, !dbg !6156
  store i32 %shl, i32* %ms, align 4, !dbg !6154
  %2 = load i32, i32* %delay.addr, align 4, !dbg !6157
  %tobool = icmp ne i32 %2, 0, !dbg !6157
  %3 = zext i1 %tobool to i64, !dbg !6157
  %cond = select i1 %tobool, i32 4096, i32 0, !dbg !6157
  %conv4 = trunc i32 %cond to i16, !dbg !6157
  %4 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !6158
  %spu_bit = getelementptr inbounds %struct.ds_device, %struct.ds_device* %4, i32 0, i32 5, !dbg !6159
  store i16 %conv4, i16* %spu_bit, align 4, !dbg !6160
  %5 = load i32, i32* %delay.addr, align 4, !dbg !6161
  %cmp = icmp eq i32 %5, 0, !dbg !6163
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6164

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %ms, align 4, !dbg !6165
  %7 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !6166
  %spu_sleep = getelementptr inbounds %struct.ds_device, %struct.ds_device* %7, i32 0, i32 4, !dbg !6167
  %8 = load i32, i32* %spu_sleep, align 8, !dbg !6167
  %cmp6 = icmp eq i32 %6, %8, !dbg !6168
  br i1 %cmp6, label %if.then, label %if.end, !dbg !6169

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load i32, i32* %err, align 4, !dbg !6170
  store i32 %9, i32* %retval, align 4, !dbg !6171
  br label %return, !dbg !6171

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !6172
  %11 = load i8, i8* %del, align 1, !dbg !6173
  %conv8 = zext i8 %11 to i16, !dbg !6173
  %call = call i32 @ds_send_control(%struct.ds_device* %10, i16 zeroext 19, i16 zeroext %conv8) #9, !dbg !6174
  store i32 %call, i32* %err, align 4, !dbg !6175
  %12 = load i32, i32* %err, align 4, !dbg !6176
  %tobool9 = icmp ne i32 %12, 0, !dbg !6176
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !6178

if.then10:                                        ; preds = %if.end
  %13 = load i32, i32* %err, align 4, !dbg !6179
  store i32 %13, i32* %retval, align 4, !dbg !6180
  br label %return, !dbg !6180

if.end11:                                         ; preds = %if.end
  %14 = load i32, i32* %ms, align 4, !dbg !6181
  %15 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !6182
  %spu_sleep12 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %15, i32 0, i32 4, !dbg !6183
  store i32 %14, i32* %spu_sleep12, align 8, !dbg !6184
  %16 = load i32, i32* %err, align 4, !dbg !6185
  store i32 %16, i32* %retval, align 4, !dbg !6186
  br label %return, !dbg !6186

return:                                           ; preds = %if.end11, %if.then10, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !6187
  ret i32 %17, !dbg !6187
}

; Function Attrs: noredzone
declare dso_local i64 @schedule_timeout(i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #2 !dbg !6188 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !6195, metadata !DIExpression()), !dbg !6197
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !6199, metadata !DIExpression()), !dbg !6200
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !6201, metadata !DIExpression()), !dbg !6202
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !6203, metadata !DIExpression()), !dbg !6205
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !6207, metadata !DIExpression()), !dbg !6208
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !6209, metadata !DIExpression()), !dbg !6217
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !6219, metadata !DIExpression()), !dbg !6220
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !6221, metadata !DIExpression()), !dbg !6222
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6223, metadata !DIExpression()), !dbg !6224
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !6225
  %1 = load i64, i64* %nr.addr, align 8, !dbg !6226
  %div = sdiv i64 %1, 64, !dbg !6226
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !6227
  %2 = bitcast i64* %add.ptr to i8*, !dbg !6225
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !6228
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6229
  %conv.i = trunc i64 %4 to i32, !dbg !6229
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #13, !dbg !6230
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !6231
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !6231
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #13, !dbg !6231
  %7 = load i64, i64* %nr.addr, align 8, !dbg !6232
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !6232
  br i1 %8, label %cond.true, label %cond.false, !dbg !6232

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !6232
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !6232
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !6233
  %and.i = and i64 %11, 63, !dbg !6234
  %shl.i = shl i64 1, %and.i, !dbg !6235
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !6236
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !6237
  %shr.i = ashr i64 %13, 6, !dbg !6238
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !6236
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !6236
  %and1.i = and i64 %shl.i, %14, !dbg !6239
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !6240
  %conv = zext i1 %cmp.i to i32, !dbg !6232
  br label %cond.end, !dbg !6232

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !6232
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !6232
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !6241
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !6242
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #11, !dbg !6243, !srcloc !6244
  store i8 %19, i8* %oldbit.i, align 1, !dbg !6243
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !6245
  %tobool.i = trunc i8 %20 to i1, !dbg !6245
  %conv2 = zext i1 %tobool.i to i32, !dbg !6232
  br label %cond.end, !dbg !6232

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6232
  %tobool = icmp ne i32 %cond, 0, !dbg !6232
  ret i1 %tobool, !dbg !6246
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #2 !dbg !6247 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !6252, metadata !DIExpression()), !dbg !6254
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !6256, metadata !DIExpression()), !dbg !6257
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !6258, metadata !DIExpression()), !dbg !6260
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !6262, metadata !DIExpression()), !dbg !6263
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !6264, metadata !DIExpression()), !dbg !6265
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6266, metadata !DIExpression()), !dbg !6267
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !6268
  %1 = load i64, i64* %nr.addr, align 8, !dbg !6269
  %div = sdiv i64 %1, 64, !dbg !6269
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !6270
  %2 = bitcast i64* %add.ptr to i8*, !dbg !6268
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !6271
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6272
  %conv.i = trunc i64 %4 to i32, !dbg !6272
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #13, !dbg !6273
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !6274
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !6274
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #13, !dbg !6274
  %7 = load i64, i64* %nr.addr, align 8, !dbg !6275
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !6276
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !6277
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #11, !dbg !6279
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !6280

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !6281
  %12 = bitcast i64* %11 to i8*, !dbg !6281
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !6281
  %shr.i = ashr i64 %13, 3, !dbg !6281
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !6281
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !6283
  %and.i = and i64 %14, 7, !dbg !6283
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !6283
  %shl.i = shl i32 1, %sh_prom.i, !dbg !6283
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #11, !dbg !6284, !srcloc !6285
  br label %arch_set_bit.exit, !dbg !6286

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !6287
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !6289
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #11, !dbg !6290, !srcloc !6291
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !6292
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #2 !dbg !6293 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !6294, metadata !DIExpression()), !dbg !6295
  %0 = load i32, i32* %m.addr, align 4, !dbg !6296
  %conv = zext i32 %0 to i64, !dbg !6296
  %add = add i64 %conv, 4, !dbg !6297
  %sub = sub i64 %add, 1, !dbg !6298
  %div = sdiv i64 %sub, 4, !dbg !6299
  ret i64 %div, !dbg !6300
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #2 !dbg !6301 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6305, metadata !DIExpression()), !dbg !6306
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6307, metadata !DIExpression()), !dbg !6308
  ret i1 true, !dbg !6309
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !6310 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6314, metadata !DIExpression()), !dbg !6315
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6316, metadata !DIExpression()), !dbg !6317
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6318, metadata !DIExpression()), !dbg !6319
  ret void, !dbg !6320
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !6321 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6322, metadata !DIExpression()), !dbg !6323
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6324, metadata !DIExpression()), !dbg !6325
  ret i1 true, !dbg !6326
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #2 !dbg !6327 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6330, metadata !DIExpression()), !dbg !6331
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6332, metadata !DIExpression()), !dbg !6333
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6334, metadata !DIExpression()), !dbg !6335
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6336
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6338
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6339
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #9, !dbg !6340
  br i1 %call, label %if.end, label %if.then, !dbg !6341

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6342

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6343
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6344
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !6345
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !6346
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6347
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6348
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !6349
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !6350
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6351
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6352
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !6353
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !6354
  br label %do.body, !dbg !6355

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6356

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6358

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6356

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6360
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6360
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !6360
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !6360
  br label %do.end7, !dbg !6360

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6356

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6362
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #2 !dbg !6363 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6366, metadata !DIExpression()), !dbg !6367
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6368, metadata !DIExpression()), !dbg !6369
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6370, metadata !DIExpression()), !dbg !6371
  ret i1 true, !dbg !6372
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_get_intfdata(%struct.usb_interface* %intf) #2 !dbg !6373 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !6376, metadata !DIExpression()), !dbg !6377
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !6378
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !6379
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #9, !dbg !6380
  ret i8* %call, !dbg !6381
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #2 !dbg !6382 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6385, metadata !DIExpression()), !dbg !6386
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6387
  call void @__list_del_entry(%struct.list_head* %0) #9, !dbg !6388
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6389
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !6390
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !6391
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6392
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !6393
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !6394
  ret void, !dbg !6395
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ds_w1_fini(%struct.ds_device* %dev) #2 !dbg !6396 {
entry:
  %dev.addr = alloca %struct.ds_device*, align 8
  store %struct.ds_device* %dev, %struct.ds_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ds_device** %dev.addr, metadata !6397, metadata !DIExpression()), !dbg !6398
  %0 = load %struct.ds_device*, %struct.ds_device** %dev.addr, align 8, !dbg !6399
  %master = getelementptr inbounds %struct.ds_device, %struct.ds_device* %0, i32 0, i32 8, !dbg !6400
  call void @w1_remove_master_device(%struct.w1_bus_master* %master) #9, !dbg !6401
  ret void, !dbg !6402
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !6403 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6408, metadata !DIExpression()), !dbg !6409
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6410
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !6411
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6411
  ret i8* %1, !dbg !6412
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #2 !dbg !6413 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6414, metadata !DIExpression()), !dbg !6415
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6416
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #9, !dbg !6418
  br i1 %call, label %if.end, label %if.then, !dbg !6419

if.then:                                          ; preds = %entry
  br label %return, !dbg !6420

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6421
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6422
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !6422
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6423
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6424
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6424
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #9, !dbg !6425
  br label %return, !dbg !6426

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6426
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #2 !dbg !6427 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6430, metadata !DIExpression()), !dbg !6431
  ret i1 true, !dbg !6432
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #2 !dbg !6433 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6434, metadata !DIExpression()), !dbg !6435
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6436, metadata !DIExpression()), !dbg !6437
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6438
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6439
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6440
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !6441
  br label %do.body, !dbg !6442

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6443

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6445

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6443

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6447
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6447
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6447
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !6447
  br label %do.end5, !dbg !6447

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6443

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6449
}

; Function Attrs: noredzone
declare dso_local void @w1_remove_master_device(%struct.w1_bus_master*) #1

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
!llvm.module.flags = !{!3916, !3917, !3918, !3919}
!llvm.ident = !{!3920}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ds_driver_init214", scope: !2, file: !3, line: 1087, type: !136, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !130, globals: !3822, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/w1/masters/ds2490.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !20, !25, !31, !37, !46, !54, !60, !66, !73, !81, !87, !99, !108, !113, !120, !125}
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
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "w1_master_flags", file: !126, line: 165, baseType: !7, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/linux/w1.h", directory: "/home/lizy2001/genbc/linux")
!127 = !{!128, !129}
!128 = !DIEnumerator(name: "W1_ABORT_SEARCH", value: 0, isUnsigned: true)
!129 = !DIEnumerator(name: "W1_WARN_MAX_COUNT", value: 1, isUnsigned: true)
!130 = !{!131, !134, !136, !137, !1229, !3815, !141, !270, !3816, !3817, !3819, !3820}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !133, line: 76, flags: DIFlagFwdDecl)
!133 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !135, line: 148, baseType: !7)
!135 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !6, line: 631, size: 10624, elements: !139)
!139 = !{!140, !142, !147, !152, !153, !154, !155, !156, !159, !160, !164, !165, !3556, !3597, !3598, !3615, !3676, !3758, !3759, !3761, !3762, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3797, !3798, !3799, !3804, !3811, !3812, !3813, !3814}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !138, file: !6, line: 632, baseType: !141, size: 32)
!141 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !138, file: !6, line: 633, baseType: !143, size: 128, offset: 32)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 128, elements: !145)
!144 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!145 = !{!146}
!146 = !DISubrange(count: 16)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !138, file: !6, line: 634, baseType: !148, size: 32, offset: 160)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !149, line: 21, baseType: !150)
!149 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !151, line: 27, baseType: !7)
!151 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!152 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !138, file: !6, line: 635, baseType: !87, size: 32, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !138, file: !6, line: 636, baseType: !99, size: 32, offset: 224)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !138, file: !6, line: 637, baseType: !7, size: 32, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !138, file: !6, line: 638, baseType: !7, size: 32, offset: 288)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !138, file: !6, line: 640, baseType: !157, size: 64, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !6, line: 474, flags: DIFlagFwdDecl)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !138, file: !6, line: 641, baseType: !141, size: 32, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !138, file: !6, line: 643, baseType: !161, size: 64, offset: 416)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 2)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !138, file: !6, line: 645, baseType: !137, size: 64, offset: 512)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !138, file: !6, line: 646, baseType: !166, size: 64, offset: 576)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !6, line: 424, size: 960, elements: !168)
!168 = !{!169, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3550, !3551, !3552, !3553, !3554, !3555}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !167, file: !6, line: 425, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !67, line: 461, size: 5568, elements: !172)
!172 = !{!173, !3174, !3175, !3178, !3179, !3230, !3321, !3322, !3323, !3324, !3325, !3334, !3439, !3452, !3455, !3456, !3460, !3462, !3463, !3464, !3468, !3474, !3475, !3478, !3482, !3485, !3486, !3487, !3488, !3489, !3521, !3522, !3523, !3526, !3529, !3530, !3531, !3532}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !171, file: !67, line: 462, baseType: !174, size: 512)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !175, line: 64, size: 512, elements: !176)
!175 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!176 = !{!177, !180, !186, !188, !248, !3025, !3164, !3169, !3170, !3171, !3172, !3173}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !174, file: !175, line: 65, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !174, file: !175, line: 66, baseType: !181, size: 128, offset: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !135, line: 178, size: 128, elements: !182)
!182 = !{!183, !185}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !181, file: !135, line: 179, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !181, file: !135, line: 179, baseType: !184, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !174, file: !175, line: 67, baseType: !187, size: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !174, file: !175, line: 68, baseType: !189, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !175, line: 192, size: 704, elements: !191)
!191 = !{!192, !193, !209, !210}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !190, file: !175, line: 193, baseType: !181, size: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !190, file: !175, line: 194, baseType: !194, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !195, line: 83, baseType: !196)
!195 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !195, line: 71, elements: !197)
!197 = !{!198}
!198 = !DIDerivedType(tag: DW_TAG_member, scope: !196, file: !195, line: 72, baseType: !199)
!199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !196, file: !195, line: 72, elements: !200)
!200 = !{!201}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !199, file: !195, line: 73, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !195, line: 20, elements: !203)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !202, file: !195, line: 21, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !206, line: 25, baseType: !207)
!206 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !206, line: 25, elements: !208)
!208 = !{}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !190, file: !175, line: 195, baseType: !174, size: 512, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !190, file: !175, line: 196, baseType: !211, size: 64, offset: 640)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !175, line: 156, size: 192, elements: !214)
!214 = !{!215, !220, !225}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !213, file: !175, line: 157, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!141, !189, !187}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !213, file: !175, line: 158, baseType: !221, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!178, !189, !187}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !213, file: !175, line: 159, baseType: !226, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!141, !189, !187, !230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !175, line: 148, size: 20736, elements: !232)
!232 = !{!233, !238, !242, !243, !247}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !231, file: !175, line: 149, baseType: !234, size: 192)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 192, elements: !236)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!236 = !{!237}
!237 = !DISubrange(count: 3)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !231, file: !175, line: 150, baseType: !239, size: 4096, offset: 192)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 4096, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !231, file: !175, line: 151, baseType: !141, size: 32, offset: 4288)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !231, file: !175, line: 152, baseType: !244, size: 16384, offset: 4320)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 16384, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 2048)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !231, file: !175, line: 153, baseType: !141, size: 32, offset: 20704)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !174, file: !175, line: 69, baseType: !249, size: 64, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !175, line: 138, size: 448, elements: !251)
!251 = !{!252, !256, !286, !288, !2985, !3015, !3019}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !250, file: !175, line: 139, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !187}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !250, file: !175, line: 140, baseType: !257, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !260, line: 230, size: 128, elements: !261)
!260 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!261 = !{!262, !278}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !259, file: !260, line: 231, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!266, !187, !271, !235}
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !135, line: 60, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !268, line: 73, baseType: !269)
!268 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !268, line: 15, baseType: !270)
!270 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !260, line: 30, size: 128, elements: !273)
!273 = !{!274, !275}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !272, file: !260, line: 31, baseType: !178, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !272, file: !260, line: 32, baseType: !276, size: 16, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !135, line: 19, baseType: !277)
!277 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !259, file: !260, line: 232, baseType: !279, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!266, !187, !271, !178, !282}
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !135, line: 55, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !268, line: 72, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !268, line: 16, baseType: !285)
!285 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !250, file: !175, line: 141, baseType: !287, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !250, file: !175, line: 142, baseType: !289, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !260, line: 84, size: 320, elements: !293)
!293 = !{!294, !295, !299, !2982, !2983}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !292, file: !260, line: 85, baseType: !178, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !292, file: !260, line: 86, baseType: !296, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!276, !187, !271, !141}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !292, file: !260, line: 88, baseType: !300, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!276, !187, !303, !141}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !260, line: 168, size: 448, elements: !305)
!305 = !{!306, !307, !308, !309, !2977, !2978}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !304, file: !260, line: 169, baseType: !272, size: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !304, file: !260, line: 170, baseType: !282, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !304, file: !260, line: 171, baseType: !136, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !304, file: !260, line: 172, baseType: !310, size: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!266, !313, !187, !303, !235, !488, !282}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !38, line: 916, size: 1856, align: 32, elements: !315)
!315 = !{!316, !334, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2960, !2961, !2970, !2971, !2972, !2973, !2974, !2975, !2976}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !314, file: !38, line: 920, baseType: !317, size: 128)
!317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !314, file: !38, line: 917, size: 128, elements: !318)
!318 = !{!319, !325}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !317, file: !38, line: 918, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !321, line: 58, size: 64, elements: !322)
!321 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !321, line: 59, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !317, file: !38, line: 919, baseType: !326, size: 128, align: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !135, line: 216, size: 128, align: 64, elements: !327)
!327 = !{!328, !330}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !326, file: !135, line: 217, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !326, file: !135, line: 218, baseType: !331, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !329}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !314, file: !38, line: 921, baseType: !335, size: 128, offset: 128)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !336, line: 8, size: 128, elements: !337)
!336 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!337 = !{!338, !342}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !335, file: !336, line: 9, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !341, line: 18, flags: DIFlagFwdDecl)
!341 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!342 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !335, file: !336, line: 10, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !341, line: 89, size: 1536, elements: !345)
!345 = !{!346, !347, !357, !365, !366, !385, !2910, !2912, !2924, !2925, !2926, !2927, !2928, !2934, !2935, !2936}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !344, file: !341, line: 91, baseType: !7, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !344, file: !341, line: 92, baseType: !348, size: 32, offset: 32)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !349, line: 277, baseType: !350)
!349 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !349, line: 277, size: 32, elements: !351)
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !350, file: !349, line: 277, baseType: !353, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !349, line: 70, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !349, line: 65, size: 32, elements: !355)
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !354, file: !349, line: 66, baseType: !7, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !344, file: !341, line: 93, baseType: !358, size: 128, offset: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !359, line: 38, size: 128, elements: !360)
!359 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!360 = !{!361, !363}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !359, line: 39, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !358, file: !359, line: 39, baseType: !364, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !344, file: !341, line: 94, baseType: !343, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !344, file: !341, line: 95, baseType: !367, size: 128, offset: 256)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !341, line: 47, size: 128, elements: !368)
!368 = !{!369, !381}
!369 = !DIDerivedType(tag: DW_TAG_member, scope: !367, file: !341, line: 48, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !367, file: !341, line: 48, size: 64, elements: !371)
!371 = !{!372, !377}
!372 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !341, line: 49, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !370, file: !341, line: 49, size: 64, elements: !374)
!374 = !{!375, !376}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !373, file: !341, line: 50, baseType: !148, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !373, file: !341, line: 50, baseType: !148, size: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !370, file: !341, line: 52, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !149, line: 23, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !151, line: 31, baseType: !380)
!380 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !367, file: !341, line: 54, baseType: !382, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!384 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !344, file: !341, line: 96, baseType: !386, size: 64, offset: 384)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !38, line: 610, size: 4224, elements: !388)
!388 = !{!389, !390, !391, !399, !406, !407, !555, !2621, !2622, !2623, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2886, !2894, !2895, !2896, !2906, !2907, !2908, !2909}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !387, file: !38, line: 611, baseType: !276, size: 16)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !387, file: !38, line: 612, baseType: !277, size: 16, offset: 16)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !387, file: !38, line: 613, baseType: !392, size: 32, offset: 32)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !393, line: 23, baseType: !394)
!393 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !393, line: 21, size: 32, elements: !395)
!395 = !{!396}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !394, file: !393, line: 22, baseType: !397, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !135, line: 32, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !268, line: 49, baseType: !7)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !387, file: !38, line: 614, baseType: !400, size: 32, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !393, line: 28, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !393, line: 26, size: 32, elements: !402)
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !401, file: !393, line: 27, baseType: !404, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !135, line: 33, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !268, line: 50, baseType: !7)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !387, file: !38, line: 615, baseType: !7, size: 32, offset: 96)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !387, file: !38, line: 622, baseType: !408, size: 64, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !38, line: 1864, size: 1536, align: 512, elements: !411)
!411 = !{!412, !416, !429, !433, !439, !443, !449, !453, !457, !461, !465, !466, !472, !476, !502, !531, !535, !541, !546, !550, !551}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !410, file: !38, line: 1865, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!343, !386, !343, !7}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !410, file: !38, line: 1866, baseType: !417, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!178, !343, !386, !420}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !422, line: 10, size: 128, elements: !423)
!422 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!423 = !{!424, !428}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !421, file: !422, line: 11, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !136}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !421, file: !422, line: 12, baseType: !136, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !410, file: !38, line: 1867, baseType: !430, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!141, !386, !141}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !410, file: !38, line: 1868, baseType: !434, size: 64, offset: 192)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!437, !386, !141}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !38, line: 581, flags: DIFlagFwdDecl)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !410, file: !38, line: 1870, baseType: !440, size: 64, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!141, !343, !235, !141}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !410, file: !38, line: 1872, baseType: !444, size: 64, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!141, !386, !343, !276, !447}
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !135, line: 30, baseType: !448)
!448 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !410, file: !38, line: 1873, baseType: !450, size: 64, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!141, !343, !386, !343}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !410, file: !38, line: 1874, baseType: !454, size: 64, offset: 448)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!141, !386, !343}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !410, file: !38, line: 1875, baseType: !458, size: 64, offset: 512)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!141, !386, !343, !178}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !410, file: !38, line: 1876, baseType: !462, size: 64, offset: 576)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!141, !386, !343, !276}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !410, file: !38, line: 1877, baseType: !454, size: 64, offset: 640)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !410, file: !38, line: 1878, baseType: !467, size: 64, offset: 704)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!141, !386, !343, !276, !470}
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !135, line: 16, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !135, line: 13, baseType: !148)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !410, file: !38, line: 1879, baseType: !473, size: 64, offset: 768)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!141, !386, !343, !386, !343, !7}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !410, file: !38, line: 1881, baseType: !477, size: 64, offset: 832)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!141, !343, !480}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !38, line: 219, size: 640, elements: !482)
!482 = !{!483, !484, !485, !486, !487, !491, !499, !500, !501}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !481, file: !38, line: 220, baseType: !7, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !481, file: !38, line: 221, baseType: !276, size: 16, offset: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !481, file: !38, line: 222, baseType: !392, size: 32, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !481, file: !38, line: 223, baseType: !400, size: 32, offset: 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !481, file: !38, line: 224, baseType: !488, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !135, line: 46, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !268, line: 88, baseType: !490)
!490 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !481, file: !38, line: 225, baseType: !492, size: 128, offset: 192)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !493, line: 13, size: 128, elements: !494)
!493 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!494 = !{!495, !498}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !492, file: !493, line: 14, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !493, line: 8, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !151, line: 30, baseType: !490)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !492, file: !493, line: 15, baseType: !270, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !481, file: !38, line: 226, baseType: !492, size: 128, offset: 320)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !481, file: !38, line: 227, baseType: !492, size: 128, offset: 448)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !481, file: !38, line: 234, baseType: !313, size: 64, offset: 576)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !410, file: !38, line: 1882, baseType: !503, size: 64, offset: 896)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!141, !506, !508, !148, !7}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !510, line: 22, size: 1152, elements: !511)
!510 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!511 = !{!512, !513, !514, !515, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !509, file: !510, line: 23, baseType: !148, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !509, file: !510, line: 24, baseType: !276, size: 16, offset: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !509, file: !510, line: 25, baseType: !7, size: 32, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !509, file: !510, line: 26, baseType: !516, size: 32, offset: 96)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !135, line: 104, baseType: !148)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !509, file: !510, line: 27, baseType: !378, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !509, file: !510, line: 28, baseType: !378, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !509, file: !510, line: 37, baseType: !378, size: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !509, file: !510, line: 38, baseType: !470, size: 32, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !509, file: !510, line: 39, baseType: !470, size: 32, offset: 352)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !509, file: !510, line: 40, baseType: !392, size: 32, offset: 384)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !509, file: !510, line: 41, baseType: !400, size: 32, offset: 416)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !509, file: !510, line: 42, baseType: !488, size: 64, offset: 448)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !509, file: !510, line: 43, baseType: !492, size: 128, offset: 512)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !509, file: !510, line: 44, baseType: !492, size: 128, offset: 640)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !509, file: !510, line: 45, baseType: !492, size: 128, offset: 768)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !509, file: !510, line: 46, baseType: !492, size: 128, offset: 896)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !509, file: !510, line: 47, baseType: !378, size: 64, offset: 1024)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !509, file: !510, line: 48, baseType: !378, size: 64, offset: 1088)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !410, file: !38, line: 1883, baseType: !532, size: 64, offset: 960)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!266, !343, !235, !282}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !410, file: !38, line: 1884, baseType: !536, size: 64, offset: 1024)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!141, !386, !539, !378, !378}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !38, line: 50, flags: DIFlagFwdDecl)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !410, file: !38, line: 1886, baseType: !542, size: 64, offset: 1088)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!141, !386, !545, !141}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !410, file: !38, line: 1887, baseType: !547, size: 64, offset: 1152)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!141, !386, !343, !313, !7, !276}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !410, file: !38, line: 1890, baseType: !462, size: 64, offset: 1216)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !410, file: !38, line: 1891, baseType: !552, size: 64, offset: 1280)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!141, !386, !437, !141}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !387, file: !38, line: 623, baseType: !556, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !38, line: 1416, size: 9472, elements: !558)
!558 = !{!559, !560, !561, !562, !563, !564, !611, !2228, !2310, !2393, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2409, !2413, !2414, !2417, !2418, !2421, !2422, !2423, !2464, !2491, !2492, !2493, !2494, !2495, !2496, !2499, !2501, !2508, !2509, !2511, !2512, !2513, !2572, !2573, !2588, !2589, !2590, !2591, !2592, !2595, !2596, !2597, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !557, file: !38, line: 1417, baseType: !181, size: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !557, file: !38, line: 1418, baseType: !470, size: 32, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !557, file: !38, line: 1419, baseType: !384, size: 8, offset: 160)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !557, file: !38, line: 1420, baseType: !285, size: 64, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !557, file: !38, line: 1421, baseType: !488, size: 64, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !557, file: !38, line: 1422, baseType: !565, size: 64, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !38, line: 2228, size: 576, elements: !567)
!567 = !{!568, !569, !570, !577, !581, !585, !589, !590, !591, !601, !604, !605, !606, !608, !609, !610}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !566, file: !38, line: 2229, baseType: !178, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !566, file: !38, line: 2230, baseType: !141, size: 32, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !566, file: !38, line: 2238, baseType: !571, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!141, !574}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !576, line: 28, flags: DIFlagFwdDecl)
!576 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!577 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !566, file: !38, line: 2239, baseType: !578, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !580)
!580 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !38, line: 70, flags: DIFlagFwdDecl)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !566, file: !38, line: 2240, baseType: !582, size: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!343, !565, !141, !178, !136}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !566, file: !38, line: 2242, baseType: !586, size: 64, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !556}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !566, file: !38, line: 2243, baseType: !131, size: 64, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !566, file: !38, line: 2244, baseType: !565, size: 64, offset: 448)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !566, file: !38, line: 2245, baseType: !592, size: 64, offset: 512)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !135, line: 182, size: 64, elements: !593)
!593 = !{!594}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !592, file: !135, line: 183, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !135, line: 186, size: 128, elements: !597)
!597 = !{!598, !599}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !596, file: !135, line: 187, baseType: !595, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !596, file: !135, line: 187, baseType: !600, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !566, file: !38, line: 2247, baseType: !602, offset: 576)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !603, line: 187, elements: !208)
!603 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!604 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !566, file: !38, line: 2248, baseType: !602, offset: 576)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !566, file: !38, line: 2249, baseType: !602, offset: 576)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !566, file: !38, line: 2250, baseType: !607, offset: 576)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !602, elements: !236)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !566, file: !38, line: 2252, baseType: !602, offset: 576)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !566, file: !38, line: 2253, baseType: !602, offset: 576)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !566, file: !38, line: 2254, baseType: !602, offset: 576)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !557, file: !38, line: 1423, baseType: !612, size: 64, offset: 384)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !614)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !38, line: 1935, size: 1472, elements: !615)
!615 = !{!616, !620, !624, !625, !629, !635, !639, !640, !641, !645, !649, !650, !651, !652, !658, !663, !664, !671, !672, !673, !674, !2212, !2227}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !614, file: !38, line: 1936, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!386, !556}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !614, file: !38, line: 1937, baseType: !621, size: 64, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !386}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !614, file: !38, line: 1938, baseType: !621, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !614, file: !38, line: 1940, baseType: !626, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{null, !386, !141}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !614, file: !38, line: 1941, baseType: !630, size: 64, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!141, !386, !633}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !38, line: 289, flags: DIFlagFwdDecl)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !614, file: !38, line: 1942, baseType: !636, size: 64, offset: 320)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!141, !386}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !614, file: !38, line: 1943, baseType: !621, size: 64, offset: 384)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !614, file: !38, line: 1944, baseType: !586, size: 64, offset: 448)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !614, file: !38, line: 1945, baseType: !642, size: 64, offset: 512)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!141, !556, !141}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !614, file: !38, line: 1946, baseType: !646, size: 64, offset: 576)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!141, !556}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !614, file: !38, line: 1947, baseType: !646, size: 64, offset: 640)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !614, file: !38, line: 1948, baseType: !646, size: 64, offset: 704)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !614, file: !38, line: 1949, baseType: !646, size: 64, offset: 768)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !614, file: !38, line: 1950, baseType: !653, size: 64, offset: 832)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!141, !343, !656}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !38, line: 57, flags: DIFlagFwdDecl)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !614, file: !38, line: 1951, baseType: !659, size: 64, offset: 896)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!141, !556, !662, !235}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !614, file: !38, line: 1952, baseType: !586, size: 64, offset: 960)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !614, file: !38, line: 1954, baseType: !665, size: 64, offset: 1024)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!141, !668, !343}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !670, line: 539, flags: DIFlagFwdDecl)
!670 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!671 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !614, file: !38, line: 1955, baseType: !665, size: 64, offset: 1088)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !614, file: !38, line: 1956, baseType: !665, size: 64, offset: 1152)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !614, file: !38, line: 1957, baseType: !665, size: 64, offset: 1216)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !614, file: !38, line: 1963, baseType: !675, size: 64, offset: 1280)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!141, !556, !678, !134}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !680, line: 68, size: 512, align: 128, elements: !681)
!680 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!681 = !{!682, !683, !2204, !2211}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !679, file: !680, line: 69, baseType: !285, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !680, line: 77, baseType: !684, size: 320, offset: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !679, file: !680, line: 77, size: 320, elements: !685)
!685 = !{!686, !873, !878, !906, !914, !920, !2196, !2203}
!686 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !680, line: 78, baseType: !687, size: 320)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !684, file: !680, line: 78, size: 320, elements: !688)
!688 = !{!689, !690, !871, !872}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !687, file: !680, line: 84, baseType: !181, size: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !687, file: !680, line: 86, baseType: !691, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !38, line: 451, size: 1216, align: 64, elements: !693)
!693 = !{!694, !695, !702, !703, !708, !723, !739, !740, !741, !742, !864, !865, !868, !869, !870}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !692, file: !38, line: 452, baseType: !386, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !692, file: !38, line: 453, baseType: !696, size: 128, offset: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !697, line: 292, size: 128, elements: !698)
!697 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!698 = !{!699, !700, !701}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !696, file: !697, line: 293, baseType: !194)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !696, file: !697, line: 295, baseType: !134, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !696, file: !697, line: 296, baseType: !136, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !692, file: !38, line: 454, baseType: !134, size: 32, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !692, file: !38, line: 455, baseType: !704, size: 32, offset: 224)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !135, line: 168, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 166, size: 32, elements: !706)
!706 = !{!707}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !705, file: !135, line: 167, baseType: !141, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !692, file: !38, line: 460, baseType: !709, size: 128, offset: 256)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !710, line: 125, size: 128, elements: !711)
!710 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!711 = !{!712, !722}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !709, file: !710, line: 126, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !710, line: 31, size: 64, elements: !714)
!714 = !{!715}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !713, file: !710, line: 32, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !710, line: 24, size: 192, align: 64, elements: !718)
!718 = !{!719, !720, !721}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !717, file: !710, line: 25, baseType: !285, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !717, file: !710, line: 26, baseType: !716, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !717, file: !710, line: 27, baseType: !716, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !709, file: !710, line: 127, baseType: !716, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !692, file: !38, line: 461, baseType: !724, size: 256, offset: 384)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !725, line: 35, size: 256, elements: !726)
!725 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!726 = !{!727, !735, !736, !738}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !724, file: !725, line: 36, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !729, line: 13, baseType: !730)
!729 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !135, line: 175, baseType: !731)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 173, size: 64, elements: !732)
!732 = !{!733}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !731, file: !135, line: 174, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !149, line: 22, baseType: !497)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !724, file: !725, line: 42, baseType: !728, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !724, file: !725, line: 46, baseType: !737, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !195, line: 29, baseType: !202)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !724, file: !725, line: 47, baseType: !181, size: 128, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !692, file: !38, line: 462, baseType: !285, size: 64, offset: 640)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !692, file: !38, line: 463, baseType: !285, size: 64, offset: 704)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !692, file: !38, line: 464, baseType: !285, size: 64, offset: 768)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !692, file: !38, line: 465, baseType: !743, size: 64, offset: 832)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !745)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !38, line: 367, size: 1408, elements: !746)
!746 = !{!747, !751, !755, !759, !763, !767, !773, !779, !783, !788, !792, !796, !800, !828, !832, !838, !839, !840, !844, !849, !853, !860}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !745, file: !38, line: 368, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!141, !678, !633}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !745, file: !38, line: 369, baseType: !752, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!141, !313, !678}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !745, file: !38, line: 372, baseType: !756, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!141, !691, !633}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !745, file: !38, line: 375, baseType: !760, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!141, !678}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !745, file: !38, line: 381, baseType: !764, size: 64, offset: 256)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!141, !313, !691, !184, !7}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !745, file: !38, line: 383, baseType: !768, size: 64, offset: 320)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !771}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !38, line: 290, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !745, file: !38, line: 385, baseType: !774, size: 64, offset: 384)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!141, !313, !691, !488, !7, !7, !777, !778}
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !745, file: !38, line: 388, baseType: !780, size: 64, offset: 448)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!141, !313, !691, !488, !7, !7, !678, !136}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !745, file: !38, line: 393, baseType: !784, size: 64, offset: 512)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!787, !691, !787}
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !135, line: 125, baseType: !378)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !745, file: !38, line: 394, baseType: !789, size: 64, offset: 576)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !678, !7, !7}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !745, file: !38, line: 395, baseType: !793, size: 64, offset: 640)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!141, !678, !134}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !745, file: !38, line: 396, baseType: !797, size: 64, offset: 704)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !678}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !745, file: !38, line: 397, baseType: !801, size: 64, offset: 768)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!266, !804, !826}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !38, line: 320, size: 384, elements: !806)
!806 = !{!807, !808, !809, !813, !814, !815, !818, !819}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !805, file: !38, line: 321, baseType: !313, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !805, file: !38, line: 326, baseType: !488, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !805, file: !38, line: 327, baseType: !810, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{null, !804, !270, !270}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !805, file: !38, line: 328, baseType: !136, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !805, file: !38, line: 329, baseType: !141, size: 32, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !805, file: !38, line: 330, baseType: !816, size: 16, offset: 288)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !149, line: 19, baseType: !817)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !151, line: 24, baseType: !277)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !805, file: !38, line: 331, baseType: !816, size: 16, offset: 304)
!819 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !38, line: 332, baseType: !820, size: 64, offset: 320)
!820 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !805, file: !38, line: 332, size: 64, elements: !821)
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !820, file: !38, line: 333, baseType: !7, size: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !820, file: !38, line: 334, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !38, line: 334, flags: DIFlagFwdDecl)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !38, line: 64, flags: DIFlagFwdDecl)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !745, file: !38, line: 402, baseType: !829, size: 64, offset: 832)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!141, !691, !678, !678, !13}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !745, file: !38, line: 404, baseType: !833, size: 64, offset: 896)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!447, !678, !836}
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !837, line: 305, baseType: !7)
!837 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!838 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !745, file: !38, line: 405, baseType: !797, size: 64, offset: 960)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !745, file: !38, line: 406, baseType: !760, size: 64, offset: 1024)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !745, file: !38, line: 407, baseType: !841, size: 64, offset: 1088)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!141, !678, !285, !285}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !745, file: !38, line: 409, baseType: !845, size: 64, offset: 1152)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{null, !678, !848, !848}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !745, file: !38, line: 410, baseType: !850, size: 64, offset: 1216)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!141, !691, !678}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !745, file: !38, line: 413, baseType: !854, size: 64, offset: 1280)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!141, !857, !313, !859}
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !38, line: 61, flags: DIFlagFwdDecl)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !745, file: !38, line: 415, baseType: !861, size: 64, offset: 1344)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !313}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !692, file: !38, line: 466, baseType: !285, size: 64, offset: 896)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !692, file: !38, line: 467, baseType: !866, size: 32, offset: 960)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !867, line: 8, baseType: !148)
!867 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!868 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !692, file: !38, line: 468, baseType: !194, offset: 992)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !692, file: !38, line: 469, baseType: !181, size: 128, offset: 1024)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !692, file: !38, line: 470, baseType: !136, size: 64, offset: 1152)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !687, file: !680, line: 87, baseType: !285, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !687, file: !680, line: 94, baseType: !285, size: 64, offset: 256)
!873 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !680, line: 96, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !684, file: !680, line: 96, size: 64, elements: !875)
!875 = !{!876}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !874, file: !680, line: 101, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !135, line: 143, baseType: !378)
!878 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !680, line: 103, baseType: !879, size: 320)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !684, file: !680, line: 103, size: 320, elements: !880)
!880 = !{!881, !891, !894, !895}
!881 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !680, line: 104, baseType: !882, size: 128)
!882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !879, file: !680, line: 104, size: 128, elements: !883)
!883 = !{!884, !885}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !882, file: !680, line: 105, baseType: !181, size: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !680, line: 106, baseType: !886, size: 128)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !680, line: 106, size: 128, elements: !887)
!887 = !{!888, !889, !890}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !886, file: !680, line: 107, baseType: !678, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !886, file: !680, line: 109, baseType: !141, size: 32, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !886, file: !680, line: 110, baseType: !141, size: 32, offset: 96)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !879, file: !680, line: 117, baseType: !892, size: 64, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !680, line: 117, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !879, file: !680, line: 119, baseType: !136, size: 64, offset: 192)
!895 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !680, line: 120, baseType: !896, size: 64, offset: 256)
!896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !879, file: !680, line: 120, size: 64, elements: !897)
!897 = !{!898, !899, !900}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !896, file: !680, line: 121, baseType: !136, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !896, file: !680, line: 122, baseType: !285, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, scope: !896, file: !680, line: 123, baseType: !901, size: 32)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !896, file: !680, line: 123, size: 32, elements: !902)
!902 = !{!903, !904, !905}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !901, file: !680, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !901, file: !680, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !901, file: !680, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!906 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !680, line: 130, baseType: !907, size: 192)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !684, file: !680, line: 130, size: 192, elements: !908)
!908 = !{!909, !910, !911, !912, !913}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !907, file: !680, line: 131, baseType: !285, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !907, file: !680, line: 134, baseType: !384, size: 8, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !907, file: !680, line: 135, baseType: !384, size: 8, offset: 72)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !907, file: !680, line: 136, baseType: !704, size: 32, offset: 96)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !907, file: !680, line: 137, baseType: !7, size: 32, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !680, line: 139, baseType: !915, size: 256)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !684, file: !680, line: 139, size: 256, elements: !916)
!916 = !{!917, !918, !919}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !915, file: !680, line: 140, baseType: !285, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !915, file: !680, line: 141, baseType: !704, size: 32, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !915, file: !680, line: 143, baseType: !181, size: 128, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !680, line: 145, baseType: !921, size: 256)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !684, file: !680, line: 145, size: 256, elements: !922)
!922 = !{!923, !924, !926, !927, !2195}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !921, file: !680, line: 146, baseType: !285, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !921, file: !680, line: 147, baseType: !925, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !670, line: 509, baseType: !678)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !921, file: !680, line: 148, baseType: !285, size: 64, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, scope: !921, file: !680, line: 149, baseType: !928, size: 64, offset: 192)
!928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !921, file: !680, line: 149, size: 64, elements: !929)
!929 = !{!930, !2194}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !928, file: !680, line: 150, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !680, line: 388, size: 7296, elements: !933)
!933 = !{!934, !2190}
!934 = !DIDerivedType(tag: DW_TAG_member, scope: !932, file: !680, line: 389, baseType: !935, size: 7296)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !932, file: !680, line: 389, size: 7296, elements: !936)
!936 = !{!937, !975, !976, !977, !981, !982, !983, !984, !985, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1026, !1034, !1037, !1083, !1084, !2174, !2175, !2178, !2179, !2180, !2183, !2184, !2185, !2188, !2189}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !935, file: !680, line: 390, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !680, line: 305, size: 1472, elements: !940)
!940 = !{!941, !942, !943, !944, !945, !946, !947, !948, !955, !956, !961, !962, !965, !969, !970, !971, !972, !973}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !939, file: !680, line: 308, baseType: !285, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !939, file: !680, line: 309, baseType: !285, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !939, file: !680, line: 313, baseType: !938, size: 64, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !939, file: !680, line: 313, baseType: !938, size: 64, offset: 192)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !939, file: !680, line: 315, baseType: !717, size: 192, align: 64, offset: 256)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !939, file: !680, line: 323, baseType: !285, size: 64, offset: 448)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !939, file: !680, line: 327, baseType: !931, size: 64, offset: 512)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !939, file: !680, line: 333, baseType: !949, size: 64, offset: 576)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !670, line: 284, baseType: !950)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !670, line: 284, size: 64, elements: !951)
!951 = !{!952}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !950, file: !670, line: 284, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !954, line: 19, baseType: !285)
!954 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!955 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !939, file: !680, line: 334, baseType: !285, size: 64, offset: 640)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !939, file: !680, line: 343, baseType: !957, size: 256, offset: 704)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !939, file: !680, line: 340, size: 256, elements: !958)
!958 = !{!959, !960}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !957, file: !680, line: 341, baseType: !717, size: 192, align: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !957, file: !680, line: 342, baseType: !285, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !939, file: !680, line: 351, baseType: !181, size: 128, offset: 960)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !939, file: !680, line: 353, baseType: !963, size: 64, offset: 1088)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !680, line: 353, flags: DIFlagFwdDecl)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !939, file: !680, line: 356, baseType: !966, size: 64, offset: 1152)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !968)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !680, line: 356, flags: DIFlagFwdDecl)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !939, file: !680, line: 359, baseType: !285, size: 64, offset: 1216)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !939, file: !680, line: 361, baseType: !313, size: 64, offset: 1280)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !939, file: !680, line: 362, baseType: !136, size: 64, offset: 1344)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !939, file: !680, line: 365, baseType: !728, size: 64, offset: 1408)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !939, file: !680, line: 373, baseType: !974, offset: 1472)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !680, line: 296, elements: !208)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !935, file: !680, line: 391, baseType: !713, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !935, file: !680, line: 392, baseType: !378, size: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !935, file: !680, line: 394, baseType: !978, size: 64, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!285, !313, !285, !285, !285, !285}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !935, file: !680, line: 398, baseType: !285, size: 64, offset: 256)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !935, file: !680, line: 399, baseType: !285, size: 64, offset: 320)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !935, file: !680, line: 405, baseType: !285, size: 64, offset: 384)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !935, file: !680, line: 406, baseType: !285, size: 64, offset: 448)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !935, file: !680, line: 407, baseType: !986, size: 64, offset: 512)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !670, line: 286, baseType: !988)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !670, line: 286, size: 64, elements: !989)
!989 = !{!990}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !988, file: !670, line: 286, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !954, line: 18, baseType: !285)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !935, file: !680, line: 416, baseType: !704, size: 32, offset: 576)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !935, file: !680, line: 428, baseType: !704, size: 32, offset: 608)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !935, file: !680, line: 437, baseType: !704, size: 32, offset: 640)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !935, file: !680, line: 447, baseType: !704, size: 32, offset: 672)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !935, file: !680, line: 450, baseType: !728, size: 64, offset: 704)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !935, file: !680, line: 452, baseType: !141, size: 32, offset: 768)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !935, file: !680, line: 454, baseType: !194, offset: 800)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !935, file: !680, line: 457, baseType: !724, size: 256, offset: 832)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !935, file: !680, line: 459, baseType: !181, size: 128, offset: 1088)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !935, file: !680, line: 466, baseType: !285, size: 64, offset: 1216)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !935, file: !680, line: 467, baseType: !285, size: 64, offset: 1280)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !935, file: !680, line: 469, baseType: !285, size: 64, offset: 1344)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !935, file: !680, line: 470, baseType: !285, size: 64, offset: 1408)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !935, file: !680, line: 471, baseType: !730, size: 64, offset: 1472)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !935, file: !680, line: 472, baseType: !285, size: 64, offset: 1536)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !935, file: !680, line: 473, baseType: !285, size: 64, offset: 1600)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !935, file: !680, line: 474, baseType: !285, size: 64, offset: 1664)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !935, file: !680, line: 475, baseType: !285, size: 64, offset: 1728)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !935, file: !680, line: 477, baseType: !194, offset: 1792)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !935, file: !680, line: 478, baseType: !285, size: 64, offset: 1792)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !935, file: !680, line: 478, baseType: !285, size: 64, offset: 1856)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !935, file: !680, line: 478, baseType: !285, size: 64, offset: 1920)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !935, file: !680, line: 478, baseType: !285, size: 64, offset: 1984)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !935, file: !680, line: 479, baseType: !285, size: 64, offset: 2048)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !935, file: !680, line: 479, baseType: !285, size: 64, offset: 2112)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !935, file: !680, line: 479, baseType: !285, size: 64, offset: 2176)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !935, file: !680, line: 480, baseType: !285, size: 64, offset: 2240)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !935, file: !680, line: 480, baseType: !285, size: 64, offset: 2304)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !935, file: !680, line: 480, baseType: !285, size: 64, offset: 2368)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !935, file: !680, line: 480, baseType: !285, size: 64, offset: 2432)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !935, file: !680, line: 482, baseType: !1023, size: 2816, offset: 2496)
!1023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 2816, elements: !1024)
!1024 = !{!1025}
!1025 = !DISubrange(count: 44)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !935, file: !680, line: 488, baseType: !1027, size: 256, offset: 5312)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1028, line: 60, size: 256, elements: !1029)
!1028 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1029 = !{!1030}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1027, file: !1028, line: 61, baseType: !1031, size: 256)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, size: 256, elements: !1032)
!1032 = !{!1033}
!1033 = !DISubrange(count: 4)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !935, file: !680, line: 490, baseType: !1035, size: 64, offset: 5568)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !680, line: 490, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !935, file: !680, line: 493, baseType: !1038, size: 896, offset: 5632)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1039, line: 53, baseType: !1040)
!1039 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1039, line: 13, size: 896, elements: !1041)
!1041 = !{!1042, !1043, !1044, !1045, !1048, !1049, !1056, !1057, !1077, !1078, !1079}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1040, file: !1039, line: 18, baseType: !378, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1040, file: !1039, line: 28, baseType: !730, size: 64, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1040, file: !1039, line: 31, baseType: !724, size: 256, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1040, file: !1039, line: 32, baseType: !1046, size: 64, offset: 384)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1039, line: 32, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1040, file: !1039, line: 37, baseType: !277, size: 16, offset: 448)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1040, file: !1039, line: 40, baseType: !1050, size: 192, offset: 512)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1051, line: 53, size: 192, elements: !1052)
!1051 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1052 = !{!1053, !1054, !1055}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1050, file: !1051, line: 54, baseType: !728, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1050, file: !1051, line: 55, baseType: !194, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1050, file: !1051, line: 59, baseType: !181, size: 128, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1040, file: !1039, line: 41, baseType: !136, size: 64, offset: 704)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1040, file: !1039, line: 42, baseType: !1058, size: 64, offset: 768)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1060)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1061, line: 13, size: 896, elements: !1062)
!1061 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1062 = !{!1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1060, file: !1061, line: 14, baseType: !136, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1060, file: !1061, line: 15, baseType: !285, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1060, file: !1061, line: 17, baseType: !285, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1060, file: !1061, line: 17, baseType: !285, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1060, file: !1061, line: 19, baseType: !270, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1060, file: !1061, line: 21, baseType: !270, size: 64, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1060, file: !1061, line: 22, baseType: !270, size: 64, offset: 384)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1060, file: !1061, line: 23, baseType: !270, size: 64, offset: 448)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1060, file: !1061, line: 24, baseType: !270, size: 64, offset: 512)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1060, file: !1061, line: 25, baseType: !270, size: 64, offset: 576)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1060, file: !1061, line: 26, baseType: !270, size: 64, offset: 640)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1060, file: !1061, line: 27, baseType: !270, size: 64, offset: 704)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1060, file: !1061, line: 28, baseType: !270, size: 64, offset: 768)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1060, file: !1061, line: 29, baseType: !270, size: 64, offset: 832)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1040, file: !1039, line: 44, baseType: !704, size: 32, offset: 832)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1040, file: !1039, line: 50, baseType: !816, size: 16, offset: 864)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1040, file: !1039, line: 51, baseType: !1080, size: 16, offset: 880)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !149, line: 18, baseType: !1081)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !151, line: 23, baseType: !1082)
!1082 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !935, file: !680, line: 495, baseType: !285, size: 64, offset: 6528)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !935, file: !680, line: 497, baseType: !1085, size: 64, offset: 6592)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !680, line: 381, size: 384, elements: !1087)
!1087 = !{!1088, !1089, !2173}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1086, file: !680, line: 382, baseType: !704, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1086, file: !680, line: 383, baseType: !1090, size: 128, offset: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !680, line: 376, size: 128, elements: !1091)
!1091 = !{!1092, !2171}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1090, file: !680, line: 377, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1095, line: 640, size: 48640, elements: !1096)
!1095 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1096 = !{!1097, !1103, !1105, !1106, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1123, !1141, !1152, !1237, !1238, !1239, !1250, !1251, !1253, !1254, !1255, !1256, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1335, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1373, !1375, !1376, !1377, !1389, !1390, !1391, !1392, !1393, !1394, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1418, !1423, !1605, !1606, !1607, !1608, !1609, !1612, !1615, !1618, !1621, !1625, !1726, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1772, !1773, !1774, !1775, !1776, !1781, !1782, !1783, !1786, !1787, !1790, !1793, !1796, !1799, !1842, !1845, !1846, !1925, !1926, !1929, !1930, !1933, !1934, !1935, !1939, !1940, !1941, !1954, !1955, !1956, !1966, !1971, !1974, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1094, file: !1095, line: 646, baseType: !1098, size: 128)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1099, line: 56, size: 128, elements: !1100)
!1099 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1100 = !{!1101, !1102}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1098, file: !1099, line: 57, baseType: !285, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1098, file: !1099, line: 58, baseType: !148, size: 32, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1094, file: !1095, line: 649, baseType: !1104, size: 64, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !270)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1094, file: !1095, line: 657, baseType: !136, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1094, file: !1095, line: 658, baseType: !1107, size: 32, offset: 256)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1108, line: 113, baseType: !1109)
!1108 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1108, line: 111, size: 32, elements: !1110)
!1110 = !{!1111}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1109, file: !1108, line: 112, baseType: !704, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1094, file: !1095, line: 660, baseType: !7, size: 32, offset: 288)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1094, file: !1095, line: 661, baseType: !7, size: 32, offset: 320)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1094, file: !1095, line: 684, baseType: !141, size: 32, offset: 352)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1094, file: !1095, line: 686, baseType: !141, size: 32, offset: 384)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1094, file: !1095, line: 687, baseType: !141, size: 32, offset: 416)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1094, file: !1095, line: 688, baseType: !141, size: 32, offset: 448)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1094, file: !1095, line: 689, baseType: !7, size: 32, offset: 480)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1094, file: !1095, line: 691, baseType: !1120, size: 64, offset: 512)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1122)
!1122 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1095, line: 691, flags: DIFlagFwdDecl)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1094, file: !1095, line: 692, baseType: !1124, size: 832, offset: 576)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1095, line: 451, size: 832, elements: !1125)
!1125 = !{!1126, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1124, file: !1095, line: 453, baseType: !1127, size: 128)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1095, line: 325, size: 128, elements: !1128)
!1128 = !{!1129, !1130}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1127, file: !1095, line: 326, baseType: !285, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1127, file: !1095, line: 327, baseType: !148, size: 32, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1124, file: !1095, line: 454, baseType: !717, size: 192, align: 64, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1124, file: !1095, line: 455, baseType: !181, size: 128, offset: 320)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1124, file: !1095, line: 456, baseType: !7, size: 32, offset: 448)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1124, file: !1095, line: 458, baseType: !378, size: 64, offset: 512)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1124, file: !1095, line: 459, baseType: !378, size: 64, offset: 576)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1124, file: !1095, line: 460, baseType: !378, size: 64, offset: 640)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1124, file: !1095, line: 461, baseType: !378, size: 64, offset: 704)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1124, file: !1095, line: 463, baseType: !378, size: 64, offset: 768)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1124, file: !1095, line: 465, baseType: !1140, offset: 832)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1095, line: 415, elements: !208)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1094, file: !1095, line: 693, baseType: !1142, size: 384, offset: 1408)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1095, line: 489, size: 384, elements: !1143)
!1143 = !{!1144, !1145, !1146, !1147, !1148, !1149, !1150}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1142, file: !1095, line: 490, baseType: !181, size: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1142, file: !1095, line: 491, baseType: !285, size: 64, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1142, file: !1095, line: 492, baseType: !285, size: 64, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1142, file: !1095, line: 493, baseType: !7, size: 32, offset: 256)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1142, file: !1095, line: 494, baseType: !277, size: 16, offset: 288)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1142, file: !1095, line: 495, baseType: !277, size: 16, offset: 304)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1142, file: !1095, line: 497, baseType: !1151, size: 64, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1094, file: !1095, line: 697, baseType: !1153, size: 1792, offset: 1792)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1095, line: 507, size: 1792, elements: !1154)
!1154 = !{!1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1234, !1235}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1153, file: !1095, line: 508, baseType: !717, size: 192, align: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1153, file: !1095, line: 515, baseType: !378, size: 64, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1153, file: !1095, line: 516, baseType: !378, size: 64, offset: 256)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1153, file: !1095, line: 517, baseType: !378, size: 64, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1153, file: !1095, line: 518, baseType: !378, size: 64, offset: 384)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1153, file: !1095, line: 519, baseType: !378, size: 64, offset: 448)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1153, file: !1095, line: 526, baseType: !734, size: 64, offset: 512)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1153, file: !1095, line: 527, baseType: !378, size: 64, offset: 576)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1153, file: !1095, line: 528, baseType: !7, size: 32, offset: 640)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1153, file: !1095, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1153, file: !1095, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1153, file: !1095, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1153, file: !1095, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1153, file: !1095, line: 563, baseType: !1169, size: 512, offset: 704)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !21, line: 118, size: 512, elements: !1170)
!1170 = !{!1171, !1179, !1180, !1185, !1228, !1231, !1232, !1233}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1169, file: !21, line: 119, baseType: !1172, size: 256)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1173, line: 9, size: 256, elements: !1174)
!1173 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1174 = !{!1175, !1176}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1172, file: !1173, line: 10, baseType: !717, size: 192, align: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1172, file: !1173, line: 11, baseType: !1177, size: 64, offset: 192)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1178, line: 29, baseType: !734)
!1178 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1169, file: !21, line: 120, baseType: !1177, size: 64, offset: 256)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1169, file: !21, line: 121, baseType: !1181, size: 64, offset: 320)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!20, !1184}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1169, file: !21, line: 122, baseType: !1186, size: 64, offset: 384)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !21, line: 159, size: 512, align: 512, elements: !1188)
!1188 = !{!1189, !1209, !1210, !1213, !1218, !1219, !1223, !1227}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1187, file: !21, line: 160, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !21, line: 214, size: 4608, align: 512, elements: !1192)
!1192 = !{!1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1191, file: !21, line: 215, baseType: !737)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1191, file: !21, line: 216, baseType: !7, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1191, file: !21, line: 217, baseType: !7, size: 32, offset: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1191, file: !21, line: 218, baseType: !7, size: 32, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1191, file: !21, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1191, file: !21, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1191, file: !21, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1191, file: !21, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1191, file: !21, line: 233, baseType: !1177, size: 64, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1191, file: !21, line: 234, baseType: !1184, size: 64, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1191, file: !21, line: 235, baseType: !1177, size: 64, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1191, file: !21, line: 236, baseType: !1184, size: 64, offset: 320)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1191, file: !21, line: 237, baseType: !1206, size: 4096, offset: 512)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1187, size: 4096, elements: !1207)
!1207 = !{!1208}
!1208 = !DISubrange(count: 8)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1187, file: !21, line: 161, baseType: !7, size: 32, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1187, file: !21, line: 162, baseType: !1211, size: 32, offset: 96)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !135, line: 27, baseType: !1212)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !268, line: 96, baseType: !141)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1187, file: !21, line: 163, baseType: !1214, size: 32, offset: 128)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !349, line: 276, baseType: !1215)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !349, line: 276, size: 32, elements: !1216)
!1216 = !{!1217}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1215, file: !349, line: 276, baseType: !353, size: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1187, file: !21, line: 164, baseType: !1184, size: 64, offset: 192)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1187, file: !21, line: 165, baseType: !1220, size: 128, offset: 256)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1173, line: 14, size: 128, elements: !1221)
!1221 = !{!1222}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1220, file: !1173, line: 15, baseType: !709, size: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1187, file: !21, line: 166, baseType: !1224, size: 64, offset: 384)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!1177}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1187, file: !21, line: 167, baseType: !1177, size: 64, offset: 448)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1169, file: !21, line: 123, baseType: !1229, size: 8, offset: 448)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !149, line: 17, baseType: !1230)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !151, line: 21, baseType: !384)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1169, file: !21, line: 124, baseType: !1229, size: 8, offset: 456)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1169, file: !21, line: 125, baseType: !1229, size: 8, offset: 464)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1169, file: !21, line: 126, baseType: !1229, size: 8, offset: 472)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1153, file: !1095, line: 572, baseType: !1169, size: 512, offset: 1216)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1153, file: !1095, line: 580, baseType: !1236, size: 64, offset: 1728)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1094, file: !1095, line: 721, baseType: !7, size: 32, offset: 3584)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1094, file: !1095, line: 722, baseType: !141, size: 32, offset: 3616)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1094, file: !1095, line: 723, baseType: !1240, size: 64, offset: 3648)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1242)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1243, line: 17, baseType: !1244)
!1243 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1243, line: 17, size: 64, elements: !1245)
!1245 = !{!1246}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1244, file: !1243, line: 17, baseType: !1247, size: 64)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 64, elements: !1248)
!1248 = !{!1249}
!1249 = !DISubrange(count: 1)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1094, file: !1095, line: 724, baseType: !1242, size: 64, offset: 3712)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1094, file: !1095, line: 749, baseType: !1252, offset: 3776)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1095, line: 290, elements: !208)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1094, file: !1095, line: 751, baseType: !181, size: 128, offset: 3776)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1094, file: !1095, line: 757, baseType: !931, size: 64, offset: 3904)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1094, file: !1095, line: 758, baseType: !931, size: 64, offset: 3968)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1094, file: !1095, line: 761, baseType: !1257, size: 320, offset: 4032)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1028, line: 34, size: 320, elements: !1258)
!1258 = !{!1259, !1260}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1257, file: !1028, line: 35, baseType: !378, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1257, file: !1028, line: 36, baseType: !1261, size: 256, offset: 64)
!1261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !938, size: 256, elements: !1032)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1094, file: !1095, line: 766, baseType: !141, size: 32, offset: 4352)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1094, file: !1095, line: 767, baseType: !141, size: 32, offset: 4384)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1094, file: !1095, line: 768, baseType: !141, size: 32, offset: 4416)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1094, file: !1095, line: 770, baseType: !141, size: 32, offset: 4448)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1094, file: !1095, line: 772, baseType: !285, size: 64, offset: 4480)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1094, file: !1095, line: 775, baseType: !7, size: 32, offset: 4544)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1094, file: !1095, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1094, file: !1095, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1094, file: !1095, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1094, file: !1095, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1094, file: !1095, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1094, file: !1095, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1094, file: !1095, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1094, file: !1095, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1094, file: !1095, line: 831, baseType: !285, size: 64, offset: 4672)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1094, file: !1095, line: 833, baseType: !1278, size: 384, offset: 4736)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !26, line: 25, size: 384, elements: !1279)
!1279 = !{!1280, !1285}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1278, file: !26, line: 26, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!270, !1284}
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, scope: !1278, file: !26, line: 27, baseType: !1286, size: 320, offset: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1278, file: !26, line: 27, size: 320, elements: !1287)
!1287 = !{!1288, !1298, !1325}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1286, file: !26, line: 36, baseType: !1289, size: 320)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1286, file: !26, line: 29, size: 320, elements: !1290)
!1290 = !{!1291, !1293, !1294, !1295, !1296, !1297}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1289, file: !26, line: 30, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1289, file: !26, line: 31, baseType: !148, size: 32, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1289, file: !26, line: 32, baseType: !148, size: 32, offset: 96)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1289, file: !26, line: 33, baseType: !148, size: 32, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1289, file: !26, line: 34, baseType: !378, size: 64, offset: 192)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1289, file: !26, line: 35, baseType: !1292, size: 64, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1286, file: !26, line: 46, baseType: !1299, size: 192)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1286, file: !26, line: 38, size: 192, elements: !1300)
!1300 = !{!1301, !1302, !1303, !1324}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1299, file: !26, line: 39, baseType: !1211, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1299, file: !26, line: 40, baseType: !25, size: 32, offset: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1299, file: !26, line: 41, baseType: !1304, size: 64, offset: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1299, file: !26, line: 41, size: 64, elements: !1305)
!1305 = !{!1306, !1314}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1304, file: !26, line: 42, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1309, line: 7, size: 128, elements: !1310)
!1309 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1310 = !{!1311, !1313}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1308, file: !1309, line: 8, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !268, line: 93, baseType: !490)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1308, file: !1309, line: 9, baseType: !490, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1304, file: !26, line: 43, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1317, line: 7, size: 64, elements: !1318)
!1317 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1318 = !{!1319, !1323}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1316, file: !1317, line: 8, baseType: !1320, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1317, line: 5, baseType: !1321)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !149, line: 20, baseType: !1322)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !151, line: 26, baseType: !141)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1316, file: !1317, line: 9, baseType: !1321, size: 32, offset: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1299, file: !26, line: 45, baseType: !378, size: 64, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1286, file: !26, line: 54, baseType: !1326, size: 256)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1286, file: !26, line: 48, size: 256, elements: !1327)
!1327 = !{!1328, !1331, !1332, !1333, !1334}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1326, file: !26, line: 49, baseType: !1329, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !26, line: 14, flags: DIFlagFwdDecl)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1326, file: !26, line: 50, baseType: !141, size: 32, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1326, file: !26, line: 51, baseType: !141, size: 32, offset: 96)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1326, file: !26, line: 52, baseType: !285, size: 64, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1326, file: !26, line: 53, baseType: !285, size: 64, offset: 192)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1094, file: !1095, line: 835, baseType: !1336, size: 32, offset: 5120)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !135, line: 22, baseType: !1337)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !268, line: 28, baseType: !141)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1094, file: !1095, line: 836, baseType: !1336, size: 32, offset: 5152)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1094, file: !1095, line: 840, baseType: !285, size: 64, offset: 5184)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1094, file: !1095, line: 849, baseType: !1093, size: 64, offset: 5248)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1094, file: !1095, line: 852, baseType: !1093, size: 64, offset: 5312)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1094, file: !1095, line: 857, baseType: !181, size: 128, offset: 5376)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1094, file: !1095, line: 858, baseType: !181, size: 128, offset: 5504)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1094, file: !1095, line: 859, baseType: !1093, size: 64, offset: 5632)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1094, file: !1095, line: 867, baseType: !181, size: 128, offset: 5696)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1094, file: !1095, line: 868, baseType: !181, size: 128, offset: 5824)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1094, file: !1095, line: 871, baseType: !1348, size: 64, offset: 5952)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !47, line: 59, size: 768, elements: !1350)
!1350 = !{!1351, !1352, !1353, !1354, !1356, !1357, !1364, !1365}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1349, file: !47, line: 61, baseType: !1107, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1349, file: !47, line: 62, baseType: !7, size: 32, offset: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1349, file: !47, line: 63, baseType: !194, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1349, file: !47, line: 65, baseType: !1355, size: 256, offset: 64)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !592, size: 256, elements: !1032)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1349, file: !47, line: 66, baseType: !592, size: 64, offset: 320)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1349, file: !47, line: 68, baseType: !1358, size: 128, offset: 384)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1359, line: 40, baseType: !1360)
!1359 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1359, line: 36, size: 128, elements: !1361)
!1361 = !{!1362, !1363}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1360, file: !1359, line: 37, baseType: !194)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1360, file: !1359, line: 38, baseType: !181, size: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1349, file: !47, line: 69, baseType: !326, size: 128, align: 64, offset: 512)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1349, file: !47, line: 70, baseType: !1366, size: 128, offset: 640)
!1366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1367, size: 128, elements: !1248)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !47, line: 54, size: 128, elements: !1368)
!1368 = !{!1369, !1370}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1367, file: !47, line: 55, baseType: !141, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1367, file: !47, line: 56, baseType: !1371, size: 64, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !47, line: 56, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1094, file: !1095, line: 872, baseType: !1374, size: 512, offset: 6016)
!1374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 512, elements: !1032)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1094, file: !1095, line: 873, baseType: !181, size: 128, offset: 6528)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1094, file: !1095, line: 874, baseType: !181, size: 128, offset: 6656)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1094, file: !1095, line: 876, baseType: !1378, size: 64, offset: 6784)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1380, line: 26, size: 192, elements: !1381)
!1380 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1381 = !{!1382, !1383}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1379, file: !1380, line: 27, baseType: !7, size: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1379, file: !1380, line: 28, baseType: !1384, size: 128, offset: 64)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1385, line: 43, size: 128, elements: !1386)
!1385 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1386 = !{!1387, !1388}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1384, file: !1385, line: 44, baseType: !737)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1384, file: !1385, line: 45, baseType: !181, size: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1094, file: !1095, line: 879, baseType: !662, size: 64, offset: 6848)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1094, file: !1095, line: 882, baseType: !662, size: 64, offset: 6912)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1094, file: !1095, line: 884, baseType: !378, size: 64, offset: 6976)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1094, file: !1095, line: 885, baseType: !378, size: 64, offset: 7040)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1094, file: !1095, line: 890, baseType: !378, size: 64, offset: 7104)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1094, file: !1095, line: 891, baseType: !1395, size: 128, offset: 7168)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1095, line: 242, size: 128, elements: !1396)
!1396 = !{!1397, !1398, !1399}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1395, file: !1095, line: 244, baseType: !378, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1395, file: !1095, line: 245, baseType: !378, size: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1395, file: !1095, line: 246, baseType: !737, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1094, file: !1095, line: 900, baseType: !285, size: 64, offset: 7296)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1094, file: !1095, line: 901, baseType: !285, size: 64, offset: 7360)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1094, file: !1095, line: 904, baseType: !378, size: 64, offset: 7424)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1094, file: !1095, line: 907, baseType: !378, size: 64, offset: 7488)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1094, file: !1095, line: 910, baseType: !285, size: 64, offset: 7552)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1094, file: !1095, line: 911, baseType: !285, size: 64, offset: 7616)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1094, file: !1095, line: 914, baseType: !1407, size: 640, offset: 7680)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1408, line: 123, size: 640, elements: !1409)
!1408 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1409 = !{!1410, !1416, !1417}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1407, file: !1408, line: 124, baseType: !1411, size: 576)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1412, size: 576, elements: !236)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1408, line: 108, size: 192, elements: !1413)
!1413 = !{!1414, !1415}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1412, file: !1408, line: 109, baseType: !378, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1412, file: !1408, line: 110, baseType: !1220, size: 128, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1407, file: !1408, line: 125, baseType: !7, size: 32, offset: 576)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1407, file: !1408, line: 126, baseType: !7, size: 32, offset: 608)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1094, file: !1095, line: 917, baseType: !1419, size: 192, offset: 8320)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1408, line: 134, size: 192, elements: !1420)
!1420 = !{!1421, !1422}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1419, file: !1408, line: 135, baseType: !326, size: 128, align: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1419, file: !1408, line: 136, baseType: !7, size: 32, offset: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1094, file: !1095, line: 923, baseType: !1424, size: 64, offset: 8512)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1426)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1427, line: 111, size: 1280, elements: !1428)
!1427 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1428 = !{!1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1446, !1447, !1448, !1449, !1450, !1451, !1558, !1559, !1560, !1561, !1587, !1590, !1600}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1426, file: !1427, line: 112, baseType: !704, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1426, file: !1427, line: 120, baseType: !392, size: 32, offset: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1426, file: !1427, line: 121, baseType: !400, size: 32, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1426, file: !1427, line: 122, baseType: !392, size: 32, offset: 96)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1426, file: !1427, line: 123, baseType: !400, size: 32, offset: 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1426, file: !1427, line: 124, baseType: !392, size: 32, offset: 160)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1426, file: !1427, line: 125, baseType: !400, size: 32, offset: 192)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1426, file: !1427, line: 126, baseType: !392, size: 32, offset: 224)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1426, file: !1427, line: 127, baseType: !400, size: 32, offset: 256)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1426, file: !1427, line: 128, baseType: !7, size: 32, offset: 288)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1426, file: !1427, line: 129, baseType: !1440, size: 64, offset: 320)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1441, line: 26, baseType: !1442)
!1441 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1441, line: 24, size: 64, elements: !1443)
!1443 = !{!1444}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1442, file: !1441, line: 25, baseType: !1445, size: 64)
!1445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 64, elements: !162)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1426, file: !1427, line: 130, baseType: !1440, size: 64, offset: 384)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1426, file: !1427, line: 131, baseType: !1440, size: 64, offset: 448)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1426, file: !1427, line: 132, baseType: !1440, size: 64, offset: 512)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1426, file: !1427, line: 133, baseType: !1440, size: 64, offset: 576)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1426, file: !1427, line: 135, baseType: !384, size: 8, offset: 640)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1426, file: !1427, line: 137, baseType: !1452, size: 64, offset: 704)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1454, line: 189, size: 1664, elements: !1455)
!1454 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1455 = !{!1456, !1457, !1460, !1465, !1466, !1469, !1470, !1475, !1476, !1477, !1478, !1480, !1481, !1482, !1483, !1484, !1522, !1543}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1453, file: !1454, line: 190, baseType: !1107, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1453, file: !1454, line: 191, baseType: !1458, size: 32, offset: 32)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1454, line: 28, baseType: !1459)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !135, line: 98, baseType: !1321)
!1460 = !DIDerivedType(tag: DW_TAG_member, scope: !1453, file: !1454, line: 192, baseType: !1461, size: 192, offset: 64)
!1461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1453, file: !1454, line: 192, size: 192, elements: !1462)
!1462 = !{!1463, !1464}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1461, file: !1454, line: 193, baseType: !181, size: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1461, file: !1454, line: 194, baseType: !717, size: 192, align: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1453, file: !1454, line: 199, baseType: !724, size: 256, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1453, file: !1454, line: 200, baseType: !1467, size: 64, offset: 512)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1454, line: 200, flags: DIFlagFwdDecl)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1453, file: !1454, line: 201, baseType: !136, size: 64, offset: 576)
!1470 = !DIDerivedType(tag: DW_TAG_member, scope: !1453, file: !1454, line: 202, baseType: !1471, size: 64, offset: 640)
!1471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1453, file: !1454, line: 202, size: 64, elements: !1472)
!1472 = !{!1473, !1474}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1471, file: !1454, line: 203, baseType: !496, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1471, file: !1454, line: 204, baseType: !496, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1453, file: !1454, line: 206, baseType: !496, size: 64, offset: 704)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1453, file: !1454, line: 207, baseType: !392, size: 32, offset: 768)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1453, file: !1454, line: 208, baseType: !400, size: 32, offset: 800)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1453, file: !1454, line: 209, baseType: !1479, size: 32, offset: 832)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1454, line: 31, baseType: !516)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1453, file: !1454, line: 210, baseType: !277, size: 16, offset: 864)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1453, file: !1454, line: 211, baseType: !277, size: 16, offset: 880)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1453, file: !1454, line: 215, baseType: !1082, size: 16, offset: 896)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1453, file: !1454, line: 222, baseType: !285, size: 64, offset: 960)
!1484 = !DIDerivedType(tag: DW_TAG_member, scope: !1453, file: !1454, line: 239, baseType: !1485, size: 320, offset: 1024)
!1485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1453, file: !1454, line: 239, size: 320, elements: !1486)
!1486 = !{!1487, !1514}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1485, file: !1454, line: 240, baseType: !1488, size: 320)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1454, line: 108, size: 320, elements: !1489)
!1489 = !{!1490, !1491, !1503, !1506, !1513}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1488, file: !1454, line: 110, baseType: !285, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, scope: !1488, file: !1454, line: 111, baseType: !1492, size: 64, offset: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1488, file: !1454, line: 111, size: 64, elements: !1493)
!1493 = !{!1494, !1502}
!1494 = !DIDerivedType(tag: DW_TAG_member, scope: !1492, file: !1454, line: 112, baseType: !1495, size: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1492, file: !1454, line: 112, size: 64, elements: !1496)
!1496 = !{!1497, !1498}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1495, file: !1454, line: 114, baseType: !816, size: 16)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1495, file: !1454, line: 115, baseType: !1499, size: 48, offset: 16)
!1499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 48, elements: !1500)
!1500 = !{!1501}
!1501 = !DISubrange(count: 6)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1492, file: !1454, line: 121, baseType: !285, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1488, file: !1454, line: 123, baseType: !1504, size: 64, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1454, line: 96, flags: DIFlagFwdDecl)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1488, file: !1454, line: 124, baseType: !1507, size: 64, offset: 192)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1454, line: 102, size: 192, elements: !1509)
!1509 = !{!1510, !1511, !1512}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1508, file: !1454, line: 103, baseType: !326, size: 128, align: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1508, file: !1454, line: 104, baseType: !1107, size: 32, offset: 128)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1508, file: !1454, line: 105, baseType: !447, size: 8, offset: 160)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1488, file: !1454, line: 125, baseType: !178, size: 64, offset: 256)
!1514 = !DIDerivedType(tag: DW_TAG_member, scope: !1485, file: !1454, line: 241, baseType: !1515, size: 320)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1485, file: !1454, line: 241, size: 320, elements: !1516)
!1516 = !{!1517, !1518, !1519, !1520, !1521}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1515, file: !1454, line: 242, baseType: !285, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1515, file: !1454, line: 243, baseType: !285, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1515, file: !1454, line: 244, baseType: !1504, size: 64, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1515, file: !1454, line: 245, baseType: !1507, size: 64, offset: 192)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1515, file: !1454, line: 246, baseType: !235, size: 64, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_member, scope: !1453, file: !1454, line: 254, baseType: !1523, size: 256, offset: 1344)
!1523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1453, file: !1454, line: 254, size: 256, elements: !1524)
!1524 = !{!1525, !1531}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1523, file: !1454, line: 255, baseType: !1526, size: 256)
!1526 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1454, line: 128, size: 256, elements: !1527)
!1527 = !{!1528, !1529}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1526, file: !1454, line: 129, baseType: !136, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1526, file: !1454, line: 130, baseType: !1530, size: 256)
!1530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 256, elements: !1032)
!1531 = !DIDerivedType(tag: DW_TAG_member, scope: !1523, file: !1454, line: 256, baseType: !1532, size: 256)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1523, file: !1454, line: 256, size: 256, elements: !1533)
!1533 = !{!1534, !1535}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1532, file: !1454, line: 258, baseType: !181, size: 128)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1532, file: !1454, line: 259, baseType: !1536, size: 128, offset: 128)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1537, line: 22, size: 128, elements: !1538)
!1537 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1538 = !{!1539, !1542}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1536, file: !1537, line: 23, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1537, line: 23, flags: DIFlagFwdDecl)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1536, file: !1537, line: 24, baseType: !285, size: 64, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1453, file: !1454, line: 274, baseType: !1544, size: 64, offset: 1600)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1454, line: 170, size: 192, elements: !1546)
!1546 = !{!1547, !1556, !1557}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1545, file: !1454, line: 171, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1454, line: 165, baseType: !1549)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!141, !1452, !1552, !1554, !1452}
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1505)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1526)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1545, file: !1454, line: 172, baseType: !1452, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1545, file: !1454, line: 173, baseType: !1504, size: 64, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1426, file: !1427, line: 138, baseType: !1452, size: 64, offset: 768)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1426, file: !1427, line: 139, baseType: !1452, size: 64, offset: 832)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1426, file: !1427, line: 140, baseType: !1452, size: 64, offset: 896)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1426, file: !1427, line: 145, baseType: !1562, size: 64, offset: 960)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1564, line: 13, size: 896, elements: !1565)
!1564 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1565 = !{!1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1563, file: !1564, line: 14, baseType: !1107, size: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1563, file: !1564, line: 15, baseType: !704, size: 32, offset: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1563, file: !1564, line: 16, baseType: !704, size: 32, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1563, file: !1564, line: 21, baseType: !728, size: 64, offset: 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1563, file: !1564, line: 27, baseType: !285, size: 64, offset: 192)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1563, file: !1564, line: 28, baseType: !285, size: 64, offset: 256)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1563, file: !1564, line: 29, baseType: !728, size: 64, offset: 320)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1563, file: !1564, line: 32, baseType: !596, size: 128, offset: 384)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1563, file: !1564, line: 33, baseType: !392, size: 32, offset: 512)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1563, file: !1564, line: 37, baseType: !728, size: 64, offset: 576)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1563, file: !1564, line: 44, baseType: !1577, size: 256, offset: 640)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1578, line: 15, size: 256, elements: !1579)
!1578 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1579 = !{!1580, !1581, !1582, !1583, !1584, !1585, !1586}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1577, file: !1578, line: 16, baseType: !737)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1577, file: !1578, line: 18, baseType: !141, size: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1577, file: !1578, line: 19, baseType: !141, size: 32, offset: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1577, file: !1578, line: 20, baseType: !141, size: 32, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1577, file: !1578, line: 21, baseType: !141, size: 32, offset: 96)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1577, file: !1578, line: 22, baseType: !285, size: 64, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1577, file: !1578, line: 23, baseType: !285, size: 64, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1426, file: !1427, line: 146, baseType: !1588, size: 64, offset: 1024)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !393, line: 18, flags: DIFlagFwdDecl)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1426, file: !1427, line: 147, baseType: !1591, size: 64, offset: 1088)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1427, line: 25, size: 64, elements: !1593)
!1593 = !{!1594, !1595, !1596}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1592, file: !1427, line: 26, baseType: !704, size: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1592, file: !1427, line: 27, baseType: !141, size: 32, offset: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1592, file: !1427, line: 28, baseType: !1597, offset: 64)
!1597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, elements: !1598)
!1598 = !{!1599}
!1599 = !DISubrange(count: 0)
!1600 = !DIDerivedType(tag: DW_TAG_member, scope: !1426, file: !1427, line: 149, baseType: !1601, size: 128, offset: 1152)
!1601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1426, file: !1427, line: 149, size: 128, elements: !1602)
!1602 = !{!1603, !1604}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1601, file: !1427, line: 150, baseType: !141, size: 32)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1601, file: !1427, line: 151, baseType: !326, size: 128, align: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1094, file: !1095, line: 926, baseType: !1424, size: 64, offset: 8576)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1094, file: !1095, line: 929, baseType: !1424, size: 64, offset: 8640)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1094, file: !1095, line: 933, baseType: !1452, size: 64, offset: 8704)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1094, file: !1095, line: 943, baseType: !143, size: 128, offset: 8768)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1094, file: !1095, line: 945, baseType: !1610, size: 64, offset: 8896)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1095, line: 49, flags: DIFlagFwdDecl)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1094, file: !1095, line: 956, baseType: !1613, size: 64, offset: 8960)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1095, line: 45, flags: DIFlagFwdDecl)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1094, file: !1095, line: 959, baseType: !1616, size: 64, offset: 9024)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1095, line: 959, flags: DIFlagFwdDecl)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1094, file: !1095, line: 962, baseType: !1619, size: 64, offset: 9088)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1095, line: 66, flags: DIFlagFwdDecl)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1094, file: !1095, line: 966, baseType: !1622, size: 64, offset: 9152)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1624, line: 35, flags: DIFlagFwdDecl)
!1624 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1094, file: !1095, line: 969, baseType: !1626, size: 64, offset: 9216)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1628, line: 82, size: 7296, elements: !1629)
!1628 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1629 = !{!1630, !1631, !1632, !1633, !1634, !1635, !1636, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1665, !1674, !1675, !1677, !1678, !1679, !1682, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1712, !1713, !1720, !1721, !1722, !1723, !1724, !1725}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1627, file: !1628, line: 83, baseType: !1107, size: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1627, file: !1628, line: 84, baseType: !704, size: 32, offset: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1627, file: !1628, line: 85, baseType: !141, size: 32, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1627, file: !1628, line: 86, baseType: !181, size: 128, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1627, file: !1628, line: 88, baseType: !1358, size: 128, offset: 256)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1627, file: !1628, line: 91, baseType: !1093, size: 64, offset: 384)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1627, file: !1628, line: 94, baseType: !1637, size: 192, offset: 448)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1638, line: 30, size: 192, elements: !1639)
!1638 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1639 = !{!1640, !1641}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1637, file: !1638, line: 31, baseType: !181, size: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1637, file: !1638, line: 32, baseType: !1642, size: 64, offset: 128)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1643, line: 25, baseType: !1644)
!1643 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1643, line: 23, size: 64, elements: !1645)
!1645 = !{!1646}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1644, file: !1643, line: 24, baseType: !1247, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1627, file: !1628, line: 97, baseType: !592, size: 64, offset: 640)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1627, file: !1628, line: 100, baseType: !141, size: 32, offset: 704)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1627, file: !1628, line: 106, baseType: !141, size: 32, offset: 736)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1627, file: !1628, line: 107, baseType: !1093, size: 64, offset: 768)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1627, file: !1628, line: 110, baseType: !141, size: 32, offset: 832)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1627, file: !1628, line: 111, baseType: !7, size: 32, offset: 864)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1627, file: !1628, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1627, file: !1628, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1627, file: !1628, line: 128, baseType: !141, size: 32, offset: 928)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1627, file: !1628, line: 129, baseType: !181, size: 128, offset: 960)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1627, file: !1628, line: 132, baseType: !1169, size: 512, offset: 1088)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1627, file: !1628, line: 133, baseType: !1177, size: 64, offset: 1600)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1627, file: !1628, line: 140, baseType: !1660, size: 256, offset: 1664)
!1660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1661, size: 256, elements: !162)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1628, line: 38, size: 128, elements: !1662)
!1662 = !{!1663, !1664}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1661, file: !1628, line: 39, baseType: !378, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1661, file: !1628, line: 40, baseType: !378, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1627, file: !1628, line: 146, baseType: !1666, size: 192, offset: 1920)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1628, line: 66, size: 192, elements: !1667)
!1667 = !{!1668}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1666, file: !1628, line: 67, baseType: !1669, size: 192)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1628, line: 47, size: 192, elements: !1670)
!1670 = !{!1671, !1672, !1673}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1669, file: !1628, line: 48, baseType: !730, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1669, file: !1628, line: 49, baseType: !730, size: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1669, file: !1628, line: 50, baseType: !730, size: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1627, file: !1628, line: 150, baseType: !1407, size: 640, offset: 2112)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1627, file: !1628, line: 153, baseType: !1676, size: 256, offset: 2752)
!1676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1348, size: 256, elements: !1032)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1627, file: !1628, line: 159, baseType: !1348, size: 64, offset: 3008)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1627, file: !1628, line: 162, baseType: !141, size: 32, offset: 3072)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1627, file: !1628, line: 164, baseType: !1680, size: 64, offset: 3136)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1628, line: 164, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1627, file: !1628, line: 175, baseType: !1683, size: 32, offset: 3200)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !349, line: 805, baseType: !1684)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !349, line: 798, size: 32, elements: !1685)
!1685 = !{!1686, !1687}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1684, file: !349, line: 803, baseType: !348, size: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1684, file: !349, line: 804, baseType: !194, offset: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1627, file: !1628, line: 176, baseType: !378, size: 64, offset: 3264)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1627, file: !1628, line: 176, baseType: !378, size: 64, offset: 3328)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1627, file: !1628, line: 176, baseType: !378, size: 64, offset: 3392)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1627, file: !1628, line: 176, baseType: !378, size: 64, offset: 3456)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1627, file: !1628, line: 177, baseType: !378, size: 64, offset: 3520)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1627, file: !1628, line: 178, baseType: !378, size: 64, offset: 3584)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1627, file: !1628, line: 179, baseType: !1395, size: 128, offset: 3648)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1627, file: !1628, line: 180, baseType: !285, size: 64, offset: 3776)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1627, file: !1628, line: 180, baseType: !285, size: 64, offset: 3840)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1627, file: !1628, line: 180, baseType: !285, size: 64, offset: 3904)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1627, file: !1628, line: 180, baseType: !285, size: 64, offset: 3968)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1627, file: !1628, line: 181, baseType: !285, size: 64, offset: 4032)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1627, file: !1628, line: 181, baseType: !285, size: 64, offset: 4096)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1627, file: !1628, line: 181, baseType: !285, size: 64, offset: 4160)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1627, file: !1628, line: 181, baseType: !285, size: 64, offset: 4224)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1627, file: !1628, line: 182, baseType: !285, size: 64, offset: 4288)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1627, file: !1628, line: 182, baseType: !285, size: 64, offset: 4352)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1627, file: !1628, line: 182, baseType: !285, size: 64, offset: 4416)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1627, file: !1628, line: 182, baseType: !285, size: 64, offset: 4480)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1627, file: !1628, line: 183, baseType: !285, size: 64, offset: 4544)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1627, file: !1628, line: 183, baseType: !285, size: 64, offset: 4608)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1627, file: !1628, line: 184, baseType: !1710, offset: 4672)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1711, line: 12, elements: !208)
!1711 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1627, file: !1628, line: 192, baseType: !380, size: 64, offset: 4672)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1627, file: !1628, line: 203, baseType: !1714, size: 2048, offset: 4736)
!1714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1715, size: 2048, elements: !145)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1716, line: 43, size: 128, elements: !1717)
!1716 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1717 = !{!1718, !1719}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1715, file: !1716, line: 44, baseType: !284, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1715, file: !1716, line: 45, baseType: !284, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1627, file: !1628, line: 220, baseType: !447, size: 8, offset: 6784)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1627, file: !1628, line: 221, baseType: !1082, size: 16, offset: 6800)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1627, file: !1628, line: 222, baseType: !1082, size: 16, offset: 6816)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1627, file: !1628, line: 224, baseType: !931, size: 64, offset: 6848)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1627, file: !1628, line: 227, baseType: !1050, size: 192, offset: 6912)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1627, file: !1628, line: 233, baseType: !1050, size: 192, offset: 7104)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1094, file: !1095, line: 970, baseType: !1727, size: 64, offset: 9280)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1628, line: 20, size: 16576, elements: !1729)
!1729 = !{!1730, !1731, !1732, !1733}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1728, file: !1628, line: 21, baseType: !194)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1728, file: !1628, line: 22, baseType: !1107, size: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1728, file: !1628, line: 23, baseType: !1358, size: 128, offset: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1728, file: !1628, line: 24, baseType: !1734, size: 16384, offset: 192)
!1734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1735, size: 16384, elements: !240)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1638, line: 49, size: 256, elements: !1736)
!1736 = !{!1737}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1735, file: !1638, line: 50, baseType: !1738, size: 256)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1638, line: 35, size: 256, elements: !1739)
!1739 = !{!1740, !1747, !1748, !1754}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1738, file: !1638, line: 37, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1742, line: 19, baseType: !1743)
!1742 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1742, line: 18, baseType: !1745)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{null, !141}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1738, file: !1638, line: 38, baseType: !285, size: 64, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1738, file: !1638, line: 44, baseType: !1749, size: 64, offset: 128)
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1742, line: 22, baseType: !1750)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1742, line: 21, baseType: !1752)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{null}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1738, file: !1638, line: 46, baseType: !1642, size: 64, offset: 192)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1094, file: !1095, line: 971, baseType: !1642, size: 64, offset: 9344)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1094, file: !1095, line: 972, baseType: !1642, size: 64, offset: 9408)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1094, file: !1095, line: 974, baseType: !1642, size: 64, offset: 9472)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1094, file: !1095, line: 975, baseType: !1637, size: 192, offset: 9536)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1094, file: !1095, line: 976, baseType: !285, size: 64, offset: 9728)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1094, file: !1095, line: 977, baseType: !282, size: 64, offset: 9792)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1094, file: !1095, line: 978, baseType: !7, size: 32, offset: 9856)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1094, file: !1095, line: 980, baseType: !329, size: 64, offset: 9920)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1094, file: !1095, line: 989, baseType: !1764, size: 128, offset: 9984)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1765, line: 35, size: 128, elements: !1766)
!1765 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1766 = !{!1767, !1768, !1769}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1764, file: !1765, line: 36, baseType: !141, size: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1764, file: !1765, line: 37, baseType: !704, size: 32, offset: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1764, file: !1765, line: 38, baseType: !1770, size: 64, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1765, line: 23, flags: DIFlagFwdDecl)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1094, file: !1095, line: 992, baseType: !378, size: 64, offset: 10112)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1094, file: !1095, line: 993, baseType: !378, size: 64, offset: 10176)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1094, file: !1095, line: 996, baseType: !194, offset: 10240)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1094, file: !1095, line: 999, baseType: !737, offset: 10240)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1094, file: !1095, line: 1001, baseType: !1777, size: 64, offset: 10240)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1095, line: 636, size: 64, elements: !1778)
!1778 = !{!1779}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1777, file: !1095, line: 637, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1094, file: !1095, line: 1005, baseType: !709, size: 128, offset: 10304)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1094, file: !1095, line: 1007, baseType: !1093, size: 64, offset: 10432)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1094, file: !1095, line: 1009, baseType: !1784, size: 64, offset: 10496)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1095, line: 1009, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1094, file: !1095, line: 1043, baseType: !136, size: 64, offset: 10560)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1094, file: !1095, line: 1046, baseType: !1788, size: 64, offset: 10624)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1095, line: 41, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1094, file: !1095, line: 1050, baseType: !1791, size: 64, offset: 10688)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1095, line: 42, flags: DIFlagFwdDecl)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1094, file: !1095, line: 1054, baseType: !1794, size: 64, offset: 10752)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1095, line: 55, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1094, file: !1095, line: 1056, baseType: !1797, size: 64, offset: 10816)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1095, line: 40, flags: DIFlagFwdDecl)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1094, file: !1095, line: 1058, baseType: !1800, size: 64, offset: 10880)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1802, line: 99, size: 704, elements: !1803)
!1802 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1803 = !{!1804, !1805, !1806, !1807, !1808, !1809, !1810, !1829, !1830}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1801, file: !1802, line: 100, baseType: !728, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1801, file: !1802, line: 101, baseType: !704, size: 32, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1801, file: !1802, line: 102, baseType: !704, size: 32, offset: 96)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1801, file: !1802, line: 105, baseType: !194, offset: 128)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1801, file: !1802, line: 107, baseType: !277, size: 16, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1801, file: !1802, line: 109, baseType: !696, size: 128, offset: 192)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1801, file: !1802, line: 110, baseType: !1811, size: 64, offset: 320)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1802, line: 73, size: 448, elements: !1813)
!1813 = !{!1814, !1817, !1818, !1823, !1828}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1812, file: !1802, line: 74, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1802, line: 74, flags: DIFlagFwdDecl)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1812, file: !1802, line: 75, baseType: !1800, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, scope: !1812, file: !1802, line: 83, baseType: !1819, size: 128, offset: 128)
!1819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1812, file: !1802, line: 83, size: 128, elements: !1820)
!1820 = !{!1821, !1822}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1819, file: !1802, line: 84, baseType: !181, size: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1819, file: !1802, line: 85, baseType: !892, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, scope: !1812, file: !1802, line: 87, baseType: !1824, size: 128, offset: 256)
!1824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1812, file: !1802, line: 87, size: 128, elements: !1825)
!1825 = !{!1826, !1827}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1824, file: !1802, line: 88, baseType: !596, size: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1824, file: !1802, line: 89, baseType: !326, size: 128, align: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1812, file: !1802, line: 92, baseType: !7, size: 32, offset: 384)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1801, file: !1802, line: 111, baseType: !592, size: 64, offset: 384)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1801, file: !1802, line: 113, baseType: !1831, size: 256, offset: 448)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1832, line: 102, size: 256, elements: !1833)
!1832 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1833 = !{!1834, !1835, !1836}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1831, file: !1832, line: 103, baseType: !728, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1831, file: !1832, line: 104, baseType: !181, size: 128, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1831, file: !1832, line: 105, baseType: !1837, size: 64, offset: 192)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1832, line: 21, baseType: !1838)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{null, !1841}
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1094, file: !1095, line: 1061, baseType: !1843, size: 64, offset: 10944)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1095, line: 43, flags: DIFlagFwdDecl)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1094, file: !1095, line: 1064, baseType: !285, size: 64, offset: 11008)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1094, file: !1095, line: 1065, baseType: !1847, size: 64, offset: 11072)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1638, line: 14, baseType: !1849)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1638, line: 12, size: 384, elements: !1850)
!1850 = !{!1851}
!1851 = !DIDerivedType(tag: DW_TAG_member, scope: !1849, file: !1638, line: 13, baseType: !1852, size: 384)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1849, file: !1638, line: 13, size: 384, elements: !1853)
!1853 = !{!1854, !1855, !1856, !1857}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1852, file: !1638, line: 13, baseType: !141, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1852, file: !1638, line: 13, baseType: !141, size: 32, offset: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1852, file: !1638, line: 13, baseType: !141, size: 32, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1852, file: !1638, line: 13, baseType: !1858, size: 256, offset: 128)
!1858 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1859, line: 32, size: 256, elements: !1860)
!1859 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1860 = !{!1861, !1866, !1879, !1885, !1894, !1914, !1919}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1858, file: !1859, line: 37, baseType: !1862, size: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1858, file: !1859, line: 34, size: 64, elements: !1863)
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1862, file: !1859, line: 35, baseType: !1337, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1862, file: !1859, line: 36, baseType: !398, size: 32, offset: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1858, file: !1859, line: 45, baseType: !1867, size: 192)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1858, file: !1859, line: 40, size: 192, elements: !1868)
!1868 = !{!1869, !1871, !1872, !1878}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1867, file: !1859, line: 41, baseType: !1870, size: 32)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !268, line: 95, baseType: !141)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1867, file: !1859, line: 42, baseType: !141, size: 32, offset: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1867, file: !1859, line: 43, baseType: !1873, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1859, line: 11, baseType: !1874)
!1874 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1859, line: 8, size: 64, elements: !1875)
!1875 = !{!1876, !1877}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1874, file: !1859, line: 9, baseType: !141, size: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1874, file: !1859, line: 10, baseType: !136, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1867, file: !1859, line: 44, baseType: !141, size: 32, offset: 128)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1858, file: !1859, line: 52, baseType: !1880, size: 128)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1858, file: !1859, line: 48, size: 128, elements: !1881)
!1881 = !{!1882, !1883, !1884}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1880, file: !1859, line: 49, baseType: !1337, size: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1880, file: !1859, line: 50, baseType: !398, size: 32, offset: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1880, file: !1859, line: 51, baseType: !1873, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1858, file: !1859, line: 61, baseType: !1886, size: 256)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1858, file: !1859, line: 55, size: 256, elements: !1887)
!1887 = !{!1888, !1889, !1890, !1891, !1893}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1886, file: !1859, line: 56, baseType: !1337, size: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1886, file: !1859, line: 57, baseType: !398, size: 32, offset: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1886, file: !1859, line: 58, baseType: !141, size: 32, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1886, file: !1859, line: 59, baseType: !1892, size: 64, offset: 128)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !268, line: 94, baseType: !269)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1886, file: !1859, line: 60, baseType: !1892, size: 64, offset: 192)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1858, file: !1859, line: 95, baseType: !1895, size: 256)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1858, file: !1859, line: 64, size: 256, elements: !1896)
!1896 = !{!1897, !1898}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1895, file: !1859, line: 65, baseType: !136, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, scope: !1895, file: !1859, line: 77, baseType: !1899, size: 192, offset: 64)
!1899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1895, file: !1859, line: 77, size: 192, elements: !1900)
!1900 = !{!1901, !1902, !1909}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1899, file: !1859, line: 82, baseType: !1082, size: 16)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1899, file: !1859, line: 88, baseType: !1903, size: 192)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1899, file: !1859, line: 84, size: 192, elements: !1904)
!1904 = !{!1905, !1907, !1908}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1903, file: !1859, line: 85, baseType: !1906, size: 64)
!1906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 64, elements: !1207)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1903, file: !1859, line: 86, baseType: !136, size: 64, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1903, file: !1859, line: 87, baseType: !136, size: 64, offset: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1899, file: !1859, line: 93, baseType: !1910, size: 96)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1899, file: !1859, line: 90, size: 96, elements: !1911)
!1911 = !{!1912, !1913}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1910, file: !1859, line: 91, baseType: !1906, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1910, file: !1859, line: 92, baseType: !150, size: 32, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1858, file: !1859, line: 101, baseType: !1915, size: 128)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1858, file: !1859, line: 98, size: 128, elements: !1916)
!1916 = !{!1917, !1918}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1915, file: !1859, line: 99, baseType: !270, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1915, file: !1859, line: 100, baseType: !141, size: 32, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1858, file: !1859, line: 108, baseType: !1920, size: 128)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1858, file: !1859, line: 104, size: 128, elements: !1921)
!1921 = !{!1922, !1923, !1924}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1920, file: !1859, line: 105, baseType: !136, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1920, file: !1859, line: 106, baseType: !141, size: 32, offset: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1920, file: !1859, line: 107, baseType: !7, size: 32, offset: 96)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1094, file: !1095, line: 1067, baseType: !1710, offset: 11136)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1094, file: !1095, line: 1099, baseType: !1927, size: 64, offset: 11136)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1095, line: 56, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1094, file: !1095, line: 1103, baseType: !181, size: 128, offset: 11200)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1094, file: !1095, line: 1104, baseType: !1931, size: 64, offset: 11328)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1095, line: 46, flags: DIFlagFwdDecl)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1094, file: !1095, line: 1105, baseType: !1050, size: 192, offset: 11392)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1094, file: !1095, line: 1106, baseType: !7, size: 32, offset: 11584)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1094, file: !1095, line: 1109, baseType: !1936, size: 128, offset: 11648)
!1936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1937, size: 128, elements: !162)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1095, line: 51, flags: DIFlagFwdDecl)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1094, file: !1095, line: 1110, baseType: !1050, size: 192, offset: 11776)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1094, file: !1095, line: 1111, baseType: !181, size: 128, offset: 11968)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1094, file: !1095, line: 1173, baseType: !1942, size: 64, offset: 12096)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1944, line: 62, size: 256, align: 256, elements: !1945)
!1944 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1945 = !{!1946, !1947, !1948, !1953}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1943, file: !1944, line: 75, baseType: !150, size: 32)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1943, file: !1944, line: 90, baseType: !150, size: 32, offset: 32)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1943, file: !1944, line: 124, baseType: !1949, size: 64, offset: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1943, file: !1944, line: 109, size: 64, elements: !1950)
!1950 = !{!1951, !1952}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1949, file: !1944, line: 110, baseType: !379, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1949, file: !1944, line: 112, baseType: !379, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1943, file: !1944, line: 144, baseType: !150, size: 32, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1094, file: !1095, line: 1174, baseType: !148, size: 32, offset: 12160)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1094, file: !1095, line: 1179, baseType: !285, size: 64, offset: 12224)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1094, file: !1095, line: 1182, baseType: !1957, size: 128, offset: 12288)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1028, line: 76, size: 128, elements: !1958)
!1958 = !{!1959, !1964, !1965}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1957, file: !1028, line: 85, baseType: !1960, size: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1961, line: 7, size: 64, elements: !1962)
!1961 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1962 = !{!1963}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1960, file: !1961, line: 12, baseType: !1244, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1957, file: !1028, line: 88, baseType: !447, size: 8, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1957, file: !1028, line: 95, baseType: !447, size: 8, offset: 72)
!1966 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !1095, line: 1184, baseType: !1967, size: 128, offset: 12416)
!1967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1094, file: !1095, line: 1184, size: 128, elements: !1968)
!1968 = !{!1969, !1970}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1967, file: !1095, line: 1185, baseType: !1107, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1967, file: !1095, line: 1186, baseType: !326, size: 128, align: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1094, file: !1095, line: 1190, baseType: !1972, size: 64, offset: 12544)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1095, line: 53, flags: DIFlagFwdDecl)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1094, file: !1095, line: 1192, baseType: !1975, size: 128, offset: 12608)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1028, line: 64, size: 128, elements: !1976)
!1976 = !{!1977, !1978, !1979}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1975, file: !1028, line: 65, baseType: !678, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1975, file: !1028, line: 67, baseType: !150, size: 32, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1975, file: !1028, line: 68, baseType: !150, size: 32, offset: 96)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1094, file: !1095, line: 1206, baseType: !141, size: 32, offset: 12736)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1094, file: !1095, line: 1207, baseType: !141, size: 32, offset: 12768)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1094, file: !1095, line: 1209, baseType: !285, size: 64, offset: 12800)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1094, file: !1095, line: 1219, baseType: !378, size: 64, offset: 12864)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1094, file: !1095, line: 1220, baseType: !378, size: 64, offset: 12928)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1094, file: !1095, line: 1317, baseType: !141, size: 32, offset: 12992)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1094, file: !1095, line: 1319, baseType: !1093, size: 64, offset: 13056)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1094, file: !1095, line: 1322, baseType: !1988, size: 64, offset: 13120)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1095, line: 1322, flags: DIFlagFwdDecl)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1094, file: !1095, line: 1326, baseType: !1107, size: 32, offset: 13184)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1094, file: !1095, line: 1342, baseType: !136, size: 64, offset: 13248)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1094, file: !1095, line: 1343, baseType: !379, size: 64, offset: 13312)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1094, file: !1095, line: 1344, baseType: !378, size: 64, offset: 13376)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1094, file: !1095, line: 1345, baseType: !379, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1094, file: !1095, line: 1346, baseType: !379, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1094, file: !1095, line: 1347, baseType: !379, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1094, file: !1095, line: 1348, baseType: !326, size: 128, align: 64, offset: 13504)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1094, file: !1095, line: 1358, baseType: !1999, size: 34816, offset: 13824)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2000, line: 485, size: 34816, elements: !2001)
!2000 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2001 = !{!2002, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2031, !2032, !2033, !2034, !2035, !2036, !2039, !2040, !2041}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1999, file: !2000, line: 487, baseType: !2003, size: 192)
!2003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2004, size: 192, elements: !236)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2005, line: 16, size: 64, elements: !2006)
!2005 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2006 = !{!2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2004, file: !2005, line: 17, baseType: !816, size: 16)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2004, file: !2005, line: 18, baseType: !816, size: 16, offset: 16)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2004, file: !2005, line: 19, baseType: !816, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2004, file: !2005, line: 19, baseType: !816, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2004, file: !2005, line: 19, baseType: !816, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2004, file: !2005, line: 19, baseType: !816, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2004, file: !2005, line: 19, baseType: !816, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2004, file: !2005, line: 20, baseType: !816, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2004, file: !2005, line: 20, baseType: !816, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2004, file: !2005, line: 20, baseType: !816, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2004, file: !2005, line: 20, baseType: !816, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2004, file: !2005, line: 20, baseType: !816, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2004, file: !2005, line: 20, baseType: !816, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1999, file: !2000, line: 491, baseType: !285, size: 64, offset: 192)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1999, file: !2000, line: 495, baseType: !277, size: 16, offset: 256)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1999, file: !2000, line: 496, baseType: !277, size: 16, offset: 272)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1999, file: !2000, line: 497, baseType: !277, size: 16, offset: 288)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1999, file: !2000, line: 498, baseType: !277, size: 16, offset: 304)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1999, file: !2000, line: 502, baseType: !285, size: 64, offset: 320)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1999, file: !2000, line: 503, baseType: !285, size: 64, offset: 384)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1999, file: !2000, line: 514, baseType: !2028, size: 256, offset: 448)
!2028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2029, size: 256, elements: !1032)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2000, line: 483, flags: DIFlagFwdDecl)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1999, file: !2000, line: 516, baseType: !285, size: 64, offset: 704)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1999, file: !2000, line: 518, baseType: !285, size: 64, offset: 768)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1999, file: !2000, line: 520, baseType: !285, size: 64, offset: 832)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1999, file: !2000, line: 521, baseType: !285, size: 64, offset: 896)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1999, file: !2000, line: 522, baseType: !285, size: 64, offset: 960)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1999, file: !2000, line: 528, baseType: !2037, size: 64, offset: 1024)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2000, line: 10, flags: DIFlagFwdDecl)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1999, file: !2000, line: 535, baseType: !285, size: 64, offset: 1088)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1999, file: !2000, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1999, file: !2000, line: 540, baseType: !2042, size: 33280, offset: 1536)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2043, line: 317, size: 33280, elements: !2044)
!2043 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2044 = !{!2045, !2046, !2047}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2042, file: !2043, line: 330, baseType: !7, size: 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2042, file: !2043, line: 337, baseType: !285, size: 64, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2042, file: !2043, line: 348, baseType: !2048, size: 32768, offset: 512)
!2048 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2043, line: 304, size: 32768, elements: !2049)
!2049 = !{!2050, !2065, !2104, !2154, !2167}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2048, file: !2043, line: 305, baseType: !2051, size: 896)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2043, line: 12, size: 896, elements: !2052)
!2052 = !{!2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2064}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2051, file: !2043, line: 13, baseType: !148, size: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2051, file: !2043, line: 14, baseType: !148, size: 32, offset: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2051, file: !2043, line: 15, baseType: !148, size: 32, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2051, file: !2043, line: 16, baseType: !148, size: 32, offset: 96)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2051, file: !2043, line: 17, baseType: !148, size: 32, offset: 128)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2051, file: !2043, line: 18, baseType: !148, size: 32, offset: 160)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2051, file: !2043, line: 19, baseType: !148, size: 32, offset: 192)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2051, file: !2043, line: 22, baseType: !2061, size: 640, offset: 224)
!2061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 640, elements: !2062)
!2062 = !{!2063}
!2063 = !DISubrange(count: 20)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2051, file: !2043, line: 25, baseType: !148, size: 32, offset: 864)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2048, file: !2043, line: 306, baseType: !2066, size: 4096, align: 128)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2043, line: 34, size: 4096, align: 128, elements: !2067)
!2067 = !{!2068, !2069, !2070, !2071, !2072, !2087, !2088, !2089, !2093, !2095, !2099}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2066, file: !2043, line: 35, baseType: !816, size: 16)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2066, file: !2043, line: 36, baseType: !816, size: 16, offset: 16)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2066, file: !2043, line: 37, baseType: !816, size: 16, offset: 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2066, file: !2043, line: 38, baseType: !816, size: 16, offset: 48)
!2072 = !DIDerivedType(tag: DW_TAG_member, scope: !2066, file: !2043, line: 39, baseType: !2073, size: 128, offset: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2066, file: !2043, line: 39, size: 128, elements: !2074)
!2074 = !{!2075, !2080}
!2075 = !DIDerivedType(tag: DW_TAG_member, scope: !2073, file: !2043, line: 40, baseType: !2076, size: 128)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2073, file: !2043, line: 40, size: 128, elements: !2077)
!2077 = !{!2078, !2079}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2076, file: !2043, line: 41, baseType: !378, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2076, file: !2043, line: 42, baseType: !378, size: 64, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, scope: !2073, file: !2043, line: 44, baseType: !2081, size: 128)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2073, file: !2043, line: 44, size: 128, elements: !2082)
!2082 = !{!2083, !2084, !2085, !2086}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2081, file: !2043, line: 45, baseType: !148, size: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2081, file: !2043, line: 46, baseType: !148, size: 32, offset: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2081, file: !2043, line: 47, baseType: !148, size: 32, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2081, file: !2043, line: 48, baseType: !148, size: 32, offset: 96)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2066, file: !2043, line: 51, baseType: !148, size: 32, offset: 192)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2066, file: !2043, line: 52, baseType: !148, size: 32, offset: 224)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2066, file: !2043, line: 55, baseType: !2090, size: 1024, offset: 256)
!2090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 1024, elements: !2091)
!2091 = !{!2092}
!2092 = !DISubrange(count: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2066, file: !2043, line: 58, baseType: !2094, size: 2048, offset: 1280)
!2094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 2048, elements: !240)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2066, file: !2043, line: 60, baseType: !2096, size: 384, offset: 3328)
!2096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 384, elements: !2097)
!2097 = !{!2098}
!2098 = !DISubrange(count: 12)
!2099 = !DIDerivedType(tag: DW_TAG_member, scope: !2066, file: !2043, line: 62, baseType: !2100, size: 384, offset: 3712)
!2100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2066, file: !2043, line: 62, size: 384, elements: !2101)
!2101 = !{!2102, !2103}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2100, file: !2043, line: 63, baseType: !2096, size: 384)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2100, file: !2043, line: 64, baseType: !2096, size: 384)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2048, file: !2043, line: 307, baseType: !2105, size: 1088)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2043, line: 79, size: 1088, elements: !2106)
!2106 = !{!2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2153}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2105, file: !2043, line: 80, baseType: !148, size: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2105, file: !2043, line: 81, baseType: !148, size: 32, offset: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2105, file: !2043, line: 82, baseType: !148, size: 32, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2105, file: !2043, line: 83, baseType: !148, size: 32, offset: 96)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2105, file: !2043, line: 84, baseType: !148, size: 32, offset: 128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2105, file: !2043, line: 85, baseType: !148, size: 32, offset: 160)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2105, file: !2043, line: 86, baseType: !148, size: 32, offset: 192)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2105, file: !2043, line: 88, baseType: !2061, size: 640, offset: 224)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2105, file: !2043, line: 89, baseType: !1229, size: 8, offset: 864)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2105, file: !2043, line: 90, baseType: !1229, size: 8, offset: 872)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2105, file: !2043, line: 91, baseType: !1229, size: 8, offset: 880)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2105, file: !2043, line: 92, baseType: !1229, size: 8, offset: 888)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2105, file: !2043, line: 93, baseType: !1229, size: 8, offset: 896)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2105, file: !2043, line: 94, baseType: !1229, size: 8, offset: 904)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2105, file: !2043, line: 95, baseType: !2122, size: 64, offset: 960)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2124, line: 11, size: 128, elements: !2125)
!2124 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2125 = !{!2126, !2127}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2123, file: !2124, line: 12, baseType: !270, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2123, file: !2124, line: 13, baseType: !2128, size: 64, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2130, line: 56, size: 1344, elements: !2131)
!2130 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2131 = !{!2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2129, file: !2130, line: 61, baseType: !285, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2129, file: !2130, line: 62, baseType: !285, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2129, file: !2130, line: 63, baseType: !285, size: 64, offset: 128)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2129, file: !2130, line: 64, baseType: !285, size: 64, offset: 192)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2129, file: !2130, line: 65, baseType: !285, size: 64, offset: 256)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2129, file: !2130, line: 66, baseType: !285, size: 64, offset: 320)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2129, file: !2130, line: 68, baseType: !285, size: 64, offset: 384)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2129, file: !2130, line: 69, baseType: !285, size: 64, offset: 448)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2129, file: !2130, line: 70, baseType: !285, size: 64, offset: 512)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2129, file: !2130, line: 71, baseType: !285, size: 64, offset: 576)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2129, file: !2130, line: 72, baseType: !285, size: 64, offset: 640)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2129, file: !2130, line: 73, baseType: !285, size: 64, offset: 704)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2129, file: !2130, line: 74, baseType: !285, size: 64, offset: 768)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2129, file: !2130, line: 75, baseType: !285, size: 64, offset: 832)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2129, file: !2130, line: 76, baseType: !285, size: 64, offset: 896)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2129, file: !2130, line: 81, baseType: !285, size: 64, offset: 960)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2129, file: !2130, line: 83, baseType: !285, size: 64, offset: 1024)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2129, file: !2130, line: 84, baseType: !285, size: 64, offset: 1088)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2129, file: !2130, line: 85, baseType: !285, size: 64, offset: 1152)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2129, file: !2130, line: 86, baseType: !285, size: 64, offset: 1216)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2129, file: !2130, line: 87, baseType: !285, size: 64, offset: 1280)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2105, file: !2043, line: 96, baseType: !148, size: 32, offset: 1024)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2048, file: !2043, line: 308, baseType: !2155, size: 4608, align: 512)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2043, line: 289, size: 4608, align: 512, elements: !2156)
!2156 = !{!2157, !2158, !2165}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2155, file: !2043, line: 290, baseType: !2066, size: 4096, align: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2155, file: !2043, line: 291, baseType: !2159, size: 512, offset: 4096)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2043, line: 268, size: 512, elements: !2160)
!2160 = !{!2161, !2162, !2163}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2159, file: !2043, line: 269, baseType: !378, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2159, file: !2043, line: 270, baseType: !378, size: 64, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2159, file: !2043, line: 271, baseType: !2164, size: 384, offset: 128)
!2164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 384, elements: !1500)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2155, file: !2043, line: 292, baseType: !2166, offset: 4608)
!2166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1229, elements: !1598)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2048, file: !2043, line: 309, baseType: !2168, size: 32768)
!2168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1229, size: 32768, elements: !2169)
!2169 = !{!2170}
!2170 = !DISubrange(count: 4096)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1090, file: !680, line: 378, baseType: !2172, size: 64, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1086, file: !680, line: 384, baseType: !1379, size: 192, offset: 192)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !935, file: !680, line: 500, baseType: !194, offset: 6656)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !935, file: !680, line: 501, baseType: !2176, size: 64, offset: 6656)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !680, line: 387, flags: DIFlagFwdDecl)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !935, file: !680, line: 516, baseType: !1588, size: 64, offset: 6720)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !935, file: !680, line: 519, baseType: !313, size: 64, offset: 6784)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !935, file: !680, line: 521, baseType: !2181, size: 64, offset: 6848)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !680, line: 521, flags: DIFlagFwdDecl)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !935, file: !680, line: 545, baseType: !704, size: 32, offset: 6912)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !935, file: !680, line: 548, baseType: !447, size: 8, offset: 6944)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !935, file: !680, line: 550, baseType: !2186, offset: 6952)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2187, line: 142, elements: !208)
!2187 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !935, file: !680, line: 554, baseType: !1831, size: 256, offset: 6976)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !935, file: !680, line: 557, baseType: !148, size: 32, offset: 7232)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !932, file: !680, line: 565, baseType: !2191, offset: 7296)
!2191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, elements: !2192)
!2192 = !{!2193}
!2193 = !DISubrange(count: -1)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !928, file: !680, line: 151, baseType: !704, size: 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !921, file: !680, line: 156, baseType: !194, offset: 256)
!2196 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !680, line: 159, baseType: !2197, size: 128)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !684, file: !680, line: 159, size: 128, elements: !2198)
!2198 = !{!2199, !2202}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2197, file: !680, line: 161, baseType: !2200, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !680, line: 161, flags: DIFlagFwdDecl)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2197, file: !680, line: 162, baseType: !136, size: 64, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !684, file: !680, line: 176, baseType: !326, size: 128, align: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !680, line: 179, baseType: !2205, size: 32, offset: 384)
!2205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !679, file: !680, line: 179, size: 32, elements: !2206)
!2206 = !{!2207, !2208, !2209, !2210}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2205, file: !680, line: 184, baseType: !704, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2205, file: !680, line: 192, baseType: !7, size: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2205, file: !680, line: 194, baseType: !7, size: 32)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2205, file: !680, line: 195, baseType: !141, size: 32)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !679, file: !680, line: 199, baseType: !704, size: 32, offset: 416)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !614, file: !38, line: 1964, baseType: !2213, size: 64, offset: 1344)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!270, !556, !2216}
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2218, line: 12, size: 256, elements: !2219)
!2218 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2219 = !{!2220, !2221, !2222, !2223, !2224}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2217, file: !2218, line: 13, baseType: !134, size: 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2217, file: !2218, line: 16, baseType: !141, size: 32, offset: 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2217, file: !2218, line: 23, baseType: !285, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2217, file: !2218, line: 30, baseType: !285, size: 64, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2217, file: !2218, line: 33, baseType: !2225, size: 64, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !680, line: 27, flags: DIFlagFwdDecl)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !614, file: !38, line: 1966, baseType: !2213, size: 64, offset: 1408)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !557, file: !38, line: 1424, baseType: !2229, size: 64, offset: 448)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2231)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !32, line: 322, size: 704, elements: !2232)
!2232 = !{!2233, !2279, !2283, !2287, !2288, !2289, !2290, !2291, !2296, !2301, !2305}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2231, file: !32, line: 323, baseType: !2234, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!141, !2237}
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !32, line: 294, size: 1600, elements: !2239)
!2239 = !{!2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2264, !2265, !2266}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2238, file: !32, line: 295, baseType: !596, size: 128)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2238, file: !32, line: 296, baseType: !181, size: 128, offset: 128)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2238, file: !32, line: 297, baseType: !181, size: 128, offset: 256)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2238, file: !32, line: 298, baseType: !181, size: 128, offset: 384)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2238, file: !32, line: 299, baseType: !1050, size: 192, offset: 512)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2238, file: !32, line: 300, baseType: !194, offset: 704)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2238, file: !32, line: 301, baseType: !704, size: 32, offset: 704)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2238, file: !32, line: 302, baseType: !556, size: 64, offset: 768)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2238, file: !32, line: 303, baseType: !2249, size: 64, offset: 832)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !32, line: 68, size: 64, elements: !2250)
!2250 = !{!2251, !2263}
!2251 = !DIDerivedType(tag: DW_TAG_member, scope: !2249, file: !32, line: 69, baseType: !2252, size: 32)
!2252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2249, file: !32, line: 69, size: 32, elements: !2253)
!2253 = !{!2254, !2255, !2256}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2252, file: !32, line: 70, baseType: !392, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2252, file: !32, line: 71, baseType: !400, size: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2252, file: !32, line: 72, baseType: !2257, size: 32)
!2257 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2258, line: 24, baseType: !2259)
!2258 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2258, line: 22, size: 32, elements: !2260)
!2260 = !{!2261}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2259, file: !2258, line: 23, baseType: !2262, size: 32)
!2262 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2258, line: 20, baseType: !398)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2249, file: !32, line: 74, baseType: !31, size: 32, offset: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2238, file: !32, line: 304, baseType: !488, size: 64, offset: 896)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2238, file: !32, line: 305, baseType: !285, size: 64, offset: 960)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2238, file: !32, line: 306, baseType: !2267, size: 576, offset: 1024)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !32, line: 205, size: 576, elements: !2268)
!2268 = !{!2269, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2267, file: !32, line: 206, baseType: !2270, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !32, line: 66, baseType: !490)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2267, file: !32, line: 207, baseType: !2270, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2267, file: !32, line: 208, baseType: !2270, size: 64, offset: 128)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2267, file: !32, line: 209, baseType: !2270, size: 64, offset: 192)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2267, file: !32, line: 210, baseType: !2270, size: 64, offset: 256)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2267, file: !32, line: 211, baseType: !2270, size: 64, offset: 320)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2267, file: !32, line: 212, baseType: !2270, size: 64, offset: 384)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2267, file: !32, line: 213, baseType: !496, size: 64, offset: 448)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2267, file: !32, line: 214, baseType: !496, size: 64, offset: 512)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2231, file: !32, line: 324, baseType: !2280, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!2237, !556, !141}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2231, file: !32, line: 325, baseType: !2284, size: 64, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{null, !2237}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2231, file: !32, line: 326, baseType: !2234, size: 64, offset: 192)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2231, file: !32, line: 327, baseType: !2234, size: 64, offset: 256)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2231, file: !32, line: 328, baseType: !2234, size: 64, offset: 320)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2231, file: !32, line: 329, baseType: !642, size: 64, offset: 384)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2231, file: !32, line: 332, baseType: !2292, size: 64, offset: 448)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!2295, !386}
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2231, file: !32, line: 333, baseType: !2297, size: 64, offset: 512)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!141, !386, !2300}
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2231, file: !32, line: 335, baseType: !2302, size: 64, offset: 576)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!141, !386, !2295}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2231, file: !32, line: 337, baseType: !2306, size: 64, offset: 640)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!141, !556, !2309}
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !557, file: !38, line: 1425, baseType: !2311, size: 64, offset: 512)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2313)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !32, line: 428, size: 704, elements: !2314)
!2314 = !{!2315, !2319, !2320, !2324, !2325, !2326, !2341, !2364, !2368, !2369, !2392}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2313, file: !32, line: 429, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!141, !556, !141, !141, !506}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2313, file: !32, line: 430, baseType: !642, size: 64, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2313, file: !32, line: 431, baseType: !2321, size: 64, offset: 128)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!141, !556, !7}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2313, file: !32, line: 432, baseType: !2321, size: 64, offset: 192)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2313, file: !32, line: 433, baseType: !642, size: 64, offset: 256)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2313, file: !32, line: 434, baseType: !2327, size: 64, offset: 320)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!141, !556, !141, !2330}
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !32, line: 415, size: 256, elements: !2332)
!2332 = !{!2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2331, file: !32, line: 416, baseType: !141, size: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2331, file: !32, line: 417, baseType: !7, size: 32, offset: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2331, file: !32, line: 418, baseType: !7, size: 32, offset: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2331, file: !32, line: 420, baseType: !7, size: 32, offset: 96)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2331, file: !32, line: 421, baseType: !7, size: 32, offset: 128)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2331, file: !32, line: 422, baseType: !7, size: 32, offset: 160)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2331, file: !32, line: 423, baseType: !7, size: 32, offset: 192)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2331, file: !32, line: 424, baseType: !7, size: 32, offset: 224)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2313, file: !32, line: 435, baseType: !2342, size: 64, offset: 384)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!141, !556, !2249, !2345}
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !32, line: 343, size: 960, elements: !2347)
!2347 = !{!2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2346, file: !32, line: 344, baseType: !141, size: 32)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2346, file: !32, line: 345, baseType: !378, size: 64, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2346, file: !32, line: 346, baseType: !378, size: 64, offset: 128)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2346, file: !32, line: 347, baseType: !378, size: 64, offset: 192)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2346, file: !32, line: 348, baseType: !378, size: 64, offset: 256)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2346, file: !32, line: 349, baseType: !378, size: 64, offset: 320)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2346, file: !32, line: 350, baseType: !378, size: 64, offset: 384)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2346, file: !32, line: 351, baseType: !734, size: 64, offset: 448)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2346, file: !32, line: 353, baseType: !734, size: 64, offset: 512)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2346, file: !32, line: 354, baseType: !141, size: 32, offset: 576)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2346, file: !32, line: 355, baseType: !141, size: 32, offset: 608)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2346, file: !32, line: 356, baseType: !378, size: 64, offset: 640)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2346, file: !32, line: 357, baseType: !378, size: 64, offset: 704)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2346, file: !32, line: 358, baseType: !378, size: 64, offset: 768)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2346, file: !32, line: 359, baseType: !734, size: 64, offset: 832)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2346, file: !32, line: 360, baseType: !141, size: 32, offset: 896)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2313, file: !32, line: 436, baseType: !2365, size: 64, offset: 448)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!141, !556, !2309, !2345}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2313, file: !32, line: 438, baseType: !2342, size: 64, offset: 512)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2313, file: !32, line: 439, baseType: !2370, size: 64, offset: 576)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!141, !556, !2373}
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !32, line: 409, size: 1408, elements: !2375)
!2375 = !{!2376, !2377}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2374, file: !32, line: 410, baseType: !7, size: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2374, file: !32, line: 411, baseType: !2378, size: 1344, offset: 64)
!2378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2379, size: 1344, elements: !236)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !32, line: 395, size: 448, elements: !2380)
!2380 = !{!2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2391}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2379, file: !32, line: 396, baseType: !7, size: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2379, file: !32, line: 397, baseType: !7, size: 32, offset: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2379, file: !32, line: 399, baseType: !7, size: 32, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2379, file: !32, line: 400, baseType: !7, size: 32, offset: 96)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2379, file: !32, line: 401, baseType: !7, size: 32, offset: 128)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2379, file: !32, line: 402, baseType: !7, size: 32, offset: 160)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2379, file: !32, line: 403, baseType: !7, size: 32, offset: 192)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2379, file: !32, line: 404, baseType: !380, size: 64, offset: 256)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2379, file: !32, line: 405, baseType: !2390, size: 64, offset: 320)
!2390 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !135, line: 126, baseType: !378)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2379, file: !32, line: 406, baseType: !2390, size: 64, offset: 384)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2313, file: !32, line: 440, baseType: !2321, size: 64, offset: 640)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !557, file: !38, line: 1426, baseType: !2394, size: 64, offset: 576)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2396)
!2396 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !38, line: 49, flags: DIFlagFwdDecl)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !557, file: !38, line: 1427, baseType: !285, size: 64, offset: 640)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !557, file: !38, line: 1428, baseType: !285, size: 64, offset: 704)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !557, file: !38, line: 1429, baseType: !285, size: 64, offset: 768)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !557, file: !38, line: 1430, baseType: !343, size: 64, offset: 832)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !557, file: !38, line: 1431, baseType: !724, size: 256, offset: 896)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !557, file: !38, line: 1432, baseType: !141, size: 32, offset: 1152)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !557, file: !38, line: 1433, baseType: !704, size: 32, offset: 1184)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !557, file: !38, line: 1437, baseType: !2405, size: 64, offset: 1216)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2408)
!2408 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !38, line: 1437, flags: DIFlagFwdDecl)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !557, file: !38, line: 1449, baseType: !2410, size: 64, offset: 1280)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !359, line: 34, size: 64, elements: !2411)
!2411 = !{!2412}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2410, file: !359, line: 35, baseType: !362, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !557, file: !38, line: 1450, baseType: !181, size: 128, offset: 1344)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !557, file: !38, line: 1451, baseType: !2415, size: 64, offset: 1472)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !38, line: 699, flags: DIFlagFwdDecl)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !557, file: !38, line: 1452, baseType: !1797, size: 64, offset: 1536)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !557, file: !38, line: 1453, baseType: !2419, size: 64, offset: 1600)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !38, line: 1453, flags: DIFlagFwdDecl)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !557, file: !38, line: 1454, baseType: !596, size: 128, offset: 1664)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !557, file: !38, line: 1455, baseType: !7, size: 32, offset: 1792)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !557, file: !38, line: 1456, baseType: !2424, size: 2432, offset: 1856)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !32, line: 518, size: 2432, elements: !2425)
!2425 = !{!2426, !2427, !2428, !2430, !2462}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2424, file: !32, line: 519, baseType: !7, size: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2424, file: !32, line: 520, baseType: !724, size: 256, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2424, file: !32, line: 521, baseType: !2429, size: 192, offset: 320)
!2429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 192, elements: !236)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2424, file: !32, line: 522, baseType: !2431, size: 1728, offset: 512)
!2431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2432, size: 1728, elements: !236)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !32, line: 222, size: 576, elements: !2433)
!2433 = !{!2434, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2432, file: !32, line: 223, baseType: !2435, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !32, line: 443, size: 256, elements: !2437)
!2437 = !{!2438, !2439, !2452, !2453}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2436, file: !32, line: 444, baseType: !141, size: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2436, file: !32, line: 445, baseType: !2440, size: 64, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2442)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !32, line: 310, size: 512, elements: !2443)
!2443 = !{!2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2442, file: !32, line: 311, baseType: !642, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2442, file: !32, line: 312, baseType: !642, size: 64, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2442, file: !32, line: 313, baseType: !642, size: 64, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2442, file: !32, line: 314, baseType: !642, size: 64, offset: 192)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2442, file: !32, line: 315, baseType: !2234, size: 64, offset: 256)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2442, file: !32, line: 316, baseType: !2234, size: 64, offset: 320)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2442, file: !32, line: 317, baseType: !2234, size: 64, offset: 384)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2442, file: !32, line: 318, baseType: !2306, size: 64, offset: 448)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2436, file: !32, line: 446, baseType: !131, size: 64, offset: 128)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2436, file: !32, line: 447, baseType: !2435, size: 64, offset: 192)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2432, file: !32, line: 224, baseType: !141, size: 32, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2432, file: !32, line: 226, baseType: !181, size: 128, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2432, file: !32, line: 227, baseType: !285, size: 64, offset: 256)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2432, file: !32, line: 228, baseType: !7, size: 32, offset: 320)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2432, file: !32, line: 229, baseType: !7, size: 32, offset: 352)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2432, file: !32, line: 230, baseType: !2270, size: 64, offset: 384)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2432, file: !32, line: 231, baseType: !2270, size: 64, offset: 448)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2432, file: !32, line: 232, baseType: !136, size: 64, offset: 512)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2424, file: !32, line: 523, baseType: !2463, size: 192, offset: 2240)
!2463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2440, size: 192, elements: !236)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !557, file: !38, line: 1458, baseType: !2465, size: 2112, offset: 4288)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !38, line: 1410, size: 2112, elements: !2466)
!2466 = !{!2467, !2468, !2469}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2465, file: !38, line: 1411, baseType: !141, size: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2465, file: !38, line: 1412, baseType: !1358, size: 128, offset: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2465, file: !38, line: 1413, baseType: !2470, size: 1920, offset: 192)
!2470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2471, size: 1920, elements: !236)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2472, line: 12, size: 640, elements: !2473)
!2472 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2473 = !{!2474, !2482, !2484, !2489, !2490}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2471, file: !2472, line: 13, baseType: !2475, size: 320)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2476, line: 17, size: 320, elements: !2477)
!2476 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2477 = !{!2478, !2479, !2480, !2481}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2475, file: !2476, line: 18, baseType: !141, size: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2475, file: !2476, line: 19, baseType: !141, size: 32, offset: 32)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2475, file: !2476, line: 20, baseType: !1358, size: 128, offset: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2475, file: !2476, line: 22, baseType: !326, size: 128, align: 64, offset: 192)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2471, file: !2472, line: 14, baseType: !2483, size: 64, offset: 320)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2471, file: !2472, line: 15, baseType: !2485, size: 64, offset: 384)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2486, line: 16, size: 64, elements: !2487)
!2486 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2487 = !{!2488}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2485, file: !2486, line: 17, baseType: !1093, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2471, file: !2472, line: 16, baseType: !1358, size: 128, offset: 448)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2471, file: !2472, line: 17, baseType: !704, size: 32, offset: 576)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !557, file: !38, line: 1465, baseType: !136, size: 64, offset: 6400)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !557, file: !38, line: 1468, baseType: !148, size: 32, offset: 6464)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !557, file: !38, line: 1470, baseType: !496, size: 64, offset: 6528)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !557, file: !38, line: 1471, baseType: !496, size: 64, offset: 6592)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !557, file: !38, line: 1473, baseType: !150, size: 32, offset: 6656)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !557, file: !38, line: 1474, baseType: !2497, size: 64, offset: 6720)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !38, line: 603, flags: DIFlagFwdDecl)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !557, file: !38, line: 1477, baseType: !2500, size: 256, offset: 6784)
!2500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 256, elements: !2091)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !557, file: !38, line: 1478, baseType: !2502, size: 128, offset: 7040)
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2503, line: 18, baseType: !2504)
!2503 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2503, line: 16, size: 128, elements: !2505)
!2505 = !{!2506}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2504, file: !2503, line: 17, baseType: !2507, size: 128)
!2507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1230, size: 128, elements: !145)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !557, file: !38, line: 1480, baseType: !7, size: 32, offset: 7168)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !557, file: !38, line: 1481, baseType: !2510, size: 32, offset: 7200)
!2510 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !135, line: 150, baseType: !7)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !557, file: !38, line: 1487, baseType: !1050, size: 192, offset: 7232)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !557, file: !38, line: 1493, baseType: !178, size: 64, offset: 7424)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !557, file: !38, line: 1495, baseType: !2514, size: 64, offset: 7488)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2516)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !341, line: 135, size: 1024, align: 512, elements: !2517)
!2517 = !{!2518, !2522, !2523, !2530, !2536, !2540, !2544, !2548, !2549, !2553, !2557, !2562, !2566}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2516, file: !341, line: 136, baseType: !2519, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!141, !343, !7}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2516, file: !341, line: 137, baseType: !2519, size: 64, offset: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2516, file: !341, line: 138, baseType: !2524, size: 64, offset: 128)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!141, !2527, !2529}
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2516, file: !341, line: 139, baseType: !2531, size: 64, offset: 192)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!141, !2527, !7, !178, !2534}
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2516, file: !341, line: 141, baseType: !2537, size: 64, offset: 256)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!141, !2527}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2516, file: !341, line: 142, baseType: !2541, size: 64, offset: 320)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!141, !343}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2516, file: !341, line: 143, baseType: !2545, size: 64, offset: 384)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{null, !343}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2516, file: !341, line: 144, baseType: !2545, size: 64, offset: 448)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2516, file: !341, line: 145, baseType: !2550, size: 64, offset: 512)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{null, !343, !386}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2516, file: !341, line: 146, baseType: !2554, size: 64, offset: 576)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!235, !343, !235, !141}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2516, file: !341, line: 147, baseType: !2558, size: 64, offset: 640)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!339, !2561}
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2516, file: !341, line: 148, baseType: !2563, size: 64, offset: 704)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!141, !506, !447}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2516, file: !341, line: 149, baseType: !2567, size: 64, offset: 768)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!343, !343, !2570}
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !557, file: !38, line: 1500, baseType: !141, size: 32, offset: 7552)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !557, file: !38, line: 1502, baseType: !2574, size: 448, offset: 7616)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2218, line: 60, size: 448, elements: !2575)
!2575 = !{!2576, !2581, !2582, !2583, !2584, !2585, !2586}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2574, file: !2218, line: 61, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!285, !2580, !2216}
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2574, file: !2218, line: 63, baseType: !2577, size: 64, offset: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2574, file: !2218, line: 66, baseType: !270, size: 64, offset: 128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2574, file: !2218, line: 67, baseType: !141, size: 32, offset: 192)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2574, file: !2218, line: 68, baseType: !7, size: 32, offset: 224)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2574, file: !2218, line: 71, baseType: !181, size: 128, offset: 256)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2574, file: !2218, line: 77, baseType: !2587, size: 64, offset: 384)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !557, file: !38, line: 1505, baseType: !728, size: 64, offset: 8064)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !557, file: !38, line: 1508, baseType: !728, size: 64, offset: 8128)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !557, file: !38, line: 1511, baseType: !141, size: 32, offset: 8192)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !557, file: !38, line: 1514, baseType: !866, size: 32, offset: 8224)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !557, file: !38, line: 1517, baseType: !2593, size: 64, offset: 8256)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1832, line: 18, flags: DIFlagFwdDecl)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !557, file: !38, line: 1518, baseType: !592, size: 64, offset: 8320)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !557, file: !38, line: 1525, baseType: !1588, size: 64, offset: 8384)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !557, file: !38, line: 1532, baseType: !2598, size: 64, offset: 8448)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2599, line: 52, size: 64, elements: !2600)
!2599 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2600 = !{!2601}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2598, file: !2599, line: 53, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2599, line: 40, size: 256, elements: !2604)
!2604 = !{!2605, !2606, !2611}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2603, file: !2599, line: 42, baseType: !194)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2603, file: !2599, line: 44, baseType: !2607, size: 192)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2599, line: 28, size: 192, elements: !2608)
!2608 = !{!2609, !2610}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2607, file: !2599, line: 29, baseType: !181, size: 128)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2607, file: !2599, line: 31, baseType: !270, size: 64, offset: 128)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2603, file: !2599, line: 49, baseType: !270, size: 64, offset: 192)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !557, file: !38, line: 1533, baseType: !2598, size: 64, offset: 8512)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !557, file: !38, line: 1534, baseType: !326, size: 128, align: 64, offset: 8576)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !557, file: !38, line: 1535, baseType: !1831, size: 256, offset: 8704)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !557, file: !38, line: 1537, baseType: !1050, size: 192, offset: 8960)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !557, file: !38, line: 1542, baseType: !141, size: 32, offset: 9152)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !557, file: !38, line: 1545, baseType: !194, offset: 9184)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !557, file: !38, line: 1546, baseType: !181, size: 128, offset: 9216)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !557, file: !38, line: 1548, baseType: !194, offset: 9344)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !557, file: !38, line: 1549, baseType: !181, size: 128, offset: 9344)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !387, file: !38, line: 624, baseType: !691, size: 64, offset: 256)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !387, file: !38, line: 631, baseType: !285, size: 64, offset: 320)
!2623 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !38, line: 639, baseType: !2624, size: 32, offset: 384)
!2624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !387, file: !38, line: 639, size: 32, elements: !2625)
!2625 = !{!2626, !2628}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2624, file: !38, line: 640, baseType: !2627, size: 32)
!2627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2624, file: !38, line: 641, baseType: !7, size: 32)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !387, file: !38, line: 643, baseType: !470, size: 32, offset: 416)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !387, file: !38, line: 644, baseType: !488, size: 64, offset: 448)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !387, file: !38, line: 645, baseType: !492, size: 128, offset: 512)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !387, file: !38, line: 646, baseType: !492, size: 128, offset: 640)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !387, file: !38, line: 647, baseType: !492, size: 128, offset: 768)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !387, file: !38, line: 648, baseType: !194, offset: 896)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !387, file: !38, line: 649, baseType: !277, size: 16, offset: 896)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !387, file: !38, line: 650, baseType: !1229, size: 8, offset: 912)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !387, file: !38, line: 651, baseType: !1229, size: 8, offset: 920)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !387, file: !38, line: 652, baseType: !2390, size: 64, offset: 960)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !387, file: !38, line: 659, baseType: !285, size: 64, offset: 1024)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !387, file: !38, line: 660, baseType: !724, size: 256, offset: 1088)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !387, file: !38, line: 662, baseType: !285, size: 64, offset: 1344)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !387, file: !38, line: 663, baseType: !285, size: 64, offset: 1408)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !387, file: !38, line: 665, baseType: !596, size: 128, offset: 1472)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !387, file: !38, line: 666, baseType: !181, size: 128, offset: 1600)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !387, file: !38, line: 675, baseType: !181, size: 128, offset: 1728)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !387, file: !38, line: 676, baseType: !181, size: 128, offset: 1856)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !387, file: !38, line: 677, baseType: !181, size: 128, offset: 1984)
!2648 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !38, line: 678, baseType: !2649, size: 128, offset: 2112)
!2649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !387, file: !38, line: 678, size: 128, elements: !2650)
!2650 = !{!2651, !2652}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2649, file: !38, line: 679, baseType: !592, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2649, file: !38, line: 680, baseType: !326, size: 128, align: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !387, file: !38, line: 682, baseType: !730, size: 64, offset: 2240)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !387, file: !38, line: 683, baseType: !730, size: 64, offset: 2304)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !387, file: !38, line: 684, baseType: !704, size: 32, offset: 2368)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !387, file: !38, line: 685, baseType: !704, size: 32, offset: 2400)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !387, file: !38, line: 686, baseType: !704, size: 32, offset: 2432)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !387, file: !38, line: 688, baseType: !704, size: 32, offset: 2464)
!2659 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !38, line: 690, baseType: !2660, size: 64, offset: 2496)
!2660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !387, file: !38, line: 690, size: 64, elements: !2661)
!2661 = !{!2662, !2885}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2660, file: !38, line: 691, baseType: !2663, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2665)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !38, line: 1822, size: 2048, elements: !2666)
!2666 = !{!2667, !2668, !2672, !2677, !2681, !2682, !2683, !2687, !2700, !2701, !2709, !2713, !2714, !2718, !2719, !2723, !2728, !2729, !2733, !2737, !2845, !2849, !2850, !2854, !2855, !2859, !2863, !2868, !2872, !2876, !2880, !2884}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2665, file: !38, line: 1823, baseType: !131, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2665, file: !38, line: 1824, baseType: !2669, size: 64, offset: 64)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!488, !313, !488, !141}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2665, file: !38, line: 1825, baseType: !2673, size: 64, offset: 128)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!266, !313, !235, !282, !2676}
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2665, file: !38, line: 1826, baseType: !2678, size: 64, offset: 192)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!266, !313, !178, !282, !2676}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2665, file: !38, line: 1827, baseType: !801, size: 64, offset: 256)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2665, file: !38, line: 1828, baseType: !801, size: 64, offset: 320)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2665, file: !38, line: 1829, baseType: !2684, size: 64, offset: 384)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!141, !804, !447}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2665, file: !38, line: 1830, baseType: !2688, size: 64, offset: 448)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!141, !313, !2691}
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !38, line: 1776, size: 128, elements: !2693)
!2693 = !{!2694, !2699}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2692, file: !38, line: 1777, baseType: !2695, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !38, line: 1773, baseType: !2696)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!141, !2691, !178, !141, !488, !378, !7}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2692, file: !38, line: 1778, baseType: !488, size: 64, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2665, file: !38, line: 1831, baseType: !2688, size: 64, offset: 512)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2665, file: !38, line: 1832, baseType: !2702, size: 64, offset: 576)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!2705, !313, !2707}
!2705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2706, line: 52, baseType: !7)
!2706 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !576, line: 27, flags: DIFlagFwdDecl)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2665, file: !38, line: 1833, baseType: !2710, size: 64, offset: 640)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!270, !313, !7, !285}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2665, file: !38, line: 1834, baseType: !2710, size: 64, offset: 704)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2665, file: !38, line: 1835, baseType: !2715, size: 64, offset: 768)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!141, !313, !938}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2665, file: !38, line: 1836, baseType: !285, size: 64, offset: 832)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2665, file: !38, line: 1837, baseType: !2720, size: 64, offset: 896)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!141, !386, !313}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2665, file: !38, line: 1838, baseType: !2724, size: 64, offset: 960)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!141, !313, !2727}
!2727 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !38, line: 1007, baseType: !136)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2665, file: !38, line: 1839, baseType: !2720, size: 64, offset: 1024)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2665, file: !38, line: 1840, baseType: !2730, size: 64, offset: 1088)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!141, !313, !488, !488, !141}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2665, file: !38, line: 1841, baseType: !2734, size: 64, offset: 1152)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!141, !141, !313, !141}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2665, file: !38, line: 1842, baseType: !2738, size: 64, offset: 1216)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!141, !313, !141, !2741}
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !38, line: 1062, size: 1664, elements: !2743)
!2743 = !{!2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2775, !2776, !2777, !2790, !2821}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2742, file: !38, line: 1063, baseType: !2741, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2742, file: !38, line: 1064, baseType: !181, size: 128, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2742, file: !38, line: 1065, baseType: !596, size: 128, offset: 192)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2742, file: !38, line: 1066, baseType: !181, size: 128, offset: 320)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2742, file: !38, line: 1069, baseType: !181, size: 128, offset: 448)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2742, file: !38, line: 1072, baseType: !2727, size: 64, offset: 576)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2742, file: !38, line: 1073, baseType: !7, size: 32, offset: 640)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2742, file: !38, line: 1074, baseType: !384, size: 8, offset: 672)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2742, file: !38, line: 1075, baseType: !7, size: 32, offset: 704)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2742, file: !38, line: 1076, baseType: !141, size: 32, offset: 736)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2742, file: !38, line: 1077, baseType: !1358, size: 128, offset: 768)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2742, file: !38, line: 1078, baseType: !313, size: 64, offset: 896)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2742, file: !38, line: 1079, baseType: !488, size: 64, offset: 960)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2742, file: !38, line: 1080, baseType: !488, size: 64, offset: 1024)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2742, file: !38, line: 1082, baseType: !2759, size: 64, offset: 1088)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !38, line: 1314, size: 320, elements: !2761)
!2761 = !{!2762, !2770, !2771, !2772, !2773, !2774}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2760, file: !38, line: 1315, baseType: !2763)
!2763 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2764, line: 20, baseType: !2765)
!2764 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2764, line: 11, elements: !2766)
!2766 = !{!2767}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2765, file: !2764, line: 12, baseType: !2768)
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !206, line: 33, baseType: !2769)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !206, line: 31, elements: !208)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2760, file: !38, line: 1316, baseType: !141, size: 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2760, file: !38, line: 1317, baseType: !141, size: 32, offset: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2760, file: !38, line: 1318, baseType: !2759, size: 64, offset: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2760, file: !38, line: 1319, baseType: !313, size: 64, offset: 128)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2760, file: !38, line: 1320, baseType: !326, size: 128, align: 64, offset: 192)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2742, file: !38, line: 1084, baseType: !285, size: 64, offset: 1152)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2742, file: !38, line: 1085, baseType: !285, size: 64, offset: 1216)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2742, file: !38, line: 1087, baseType: !2778, size: 64, offset: 1280)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2780)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !38, line: 1011, size: 128, elements: !2781)
!2781 = !{!2782, !2786}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2780, file: !38, line: 1012, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{null, !2741, !2741}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2780, file: !38, line: 1013, baseType: !2787, size: 64, offset: 64)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{null, !2741}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2742, file: !38, line: 1088, baseType: !2791, size: 64, offset: 1344)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2793)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !38, line: 1016, size: 512, elements: !2794)
!2794 = !{!2795, !2799, !2803, !2804, !2808, !2812, !2816, !2820}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2793, file: !38, line: 1017, baseType: !2796, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!2727, !2727}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2793, file: !38, line: 1018, baseType: !2800, size: 64, offset: 64)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{null, !2727}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2793, file: !38, line: 1019, baseType: !2787, size: 64, offset: 128)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2793, file: !38, line: 1020, baseType: !2805, size: 64, offset: 192)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!141, !2741, !141}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2793, file: !38, line: 1021, baseType: !2809, size: 64, offset: 256)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!447, !2741}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2793, file: !38, line: 1022, baseType: !2813, size: 64, offset: 320)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!141, !2741, !141, !184}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2793, file: !38, line: 1023, baseType: !2817, size: 64, offset: 384)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{null, !2741, !778}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2793, file: !38, line: 1024, baseType: !2809, size: 64, offset: 448)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2742, file: !38, line: 1097, baseType: !2822, size: 256, offset: 1408)
!2822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2742, file: !38, line: 1089, size: 256, elements: !2823)
!2823 = !{!2824, !2833, !2839}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2822, file: !38, line: 1090, baseType: !2825, size: 256)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2826, line: 10, size: 256, elements: !2827)
!2826 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2827 = !{!2828, !2829, !2832}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2825, file: !2826, line: 11, baseType: !148, size: 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2825, file: !2826, line: 12, baseType: !2830, size: 64, offset: 64)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2826, line: 5, flags: DIFlagFwdDecl)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2825, file: !2826, line: 13, baseType: !181, size: 128, offset: 128)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2822, file: !38, line: 1091, baseType: !2834, size: 64)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2826, line: 17, size: 64, elements: !2835)
!2835 = !{!2836}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2834, file: !2826, line: 18, baseType: !2837, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2826, line: 16, flags: DIFlagFwdDecl)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2822, file: !38, line: 1096, baseType: !2840, size: 192)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2822, file: !38, line: 1092, size: 192, elements: !2841)
!2841 = !{!2842, !2843, !2844}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2840, file: !38, line: 1093, baseType: !181, size: 128)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2840, file: !38, line: 1094, baseType: !141, size: 32, offset: 128)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2840, file: !38, line: 1095, baseType: !7, size: 32, offset: 160)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2665, file: !38, line: 1843, baseType: !2846, size: 64, offset: 1280)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!266, !313, !678, !141, !282, !2676, !141}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2665, file: !38, line: 1844, baseType: !978, size: 64, offset: 1344)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2665, file: !38, line: 1845, baseType: !2851, size: 64, offset: 1408)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!141, !141}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2665, file: !38, line: 1846, baseType: !2738, size: 64, offset: 1472)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2665, file: !38, line: 1847, baseType: !2856, size: 64, offset: 1536)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!266, !1972, !313, !2676, !282, !7}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2665, file: !38, line: 1848, baseType: !2860, size: 64, offset: 1600)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!266, !313, !2676, !1972, !282, !7}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2665, file: !38, line: 1849, baseType: !2864, size: 64, offset: 1664)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!141, !313, !270, !2867, !778}
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2665, file: !38, line: 1850, baseType: !2869, size: 64, offset: 1728)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!270, !313, !141, !488, !488}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2665, file: !38, line: 1852, baseType: !2873, size: 64, offset: 1792)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{null, !668, !313}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2665, file: !38, line: 1856, baseType: !2877, size: 64, offset: 1856)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!266, !313, !488, !313, !488, !282, !7}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2665, file: !38, line: 1858, baseType: !2881, size: 64, offset: 1920)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!488, !313, !488, !313, !488, !488, !7}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2665, file: !38, line: 1861, baseType: !2730, size: 64, offset: 1984)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2660, file: !38, line: 692, baseType: !621, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !387, file: !38, line: 694, baseType: !2887, size: 64, offset: 2560)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !38, line: 1100, size: 384, elements: !2889)
!2889 = !{!2890, !2891, !2892, !2893}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2888, file: !38, line: 1101, baseType: !194)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2888, file: !38, line: 1102, baseType: !181, size: 128)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2888, file: !38, line: 1103, baseType: !181, size: 128, offset: 128)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2888, file: !38, line: 1104, baseType: !181, size: 128, offset: 256)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !387, file: !38, line: 695, baseType: !692, size: 1216, align: 64, offset: 2624)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !387, file: !38, line: 696, baseType: !181, size: 128, offset: 3840)
!2896 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !38, line: 697, baseType: !2897, size: 64, offset: 3968)
!2897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !387, file: !38, line: 697, size: 64, elements: !2898)
!2898 = !{!2899, !2900, !2901, !2904, !2905}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2897, file: !38, line: 698, baseType: !1972, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2897, file: !38, line: 699, baseType: !2415, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2897, file: !38, line: 700, baseType: !2902, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !38, line: 700, flags: DIFlagFwdDecl)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2897, file: !38, line: 701, baseType: !235, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2897, file: !38, line: 702, baseType: !7, size: 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !387, file: !38, line: 705, baseType: !150, size: 32, offset: 4032)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !387, file: !38, line: 708, baseType: !150, size: 32, offset: 4064)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !387, file: !38, line: 709, baseType: !2497, size: 64, offset: 4096)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !387, file: !38, line: 720, baseType: !136, size: 64, offset: 4160)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !344, file: !341, line: 98, baseType: !2911, size: 256, offset: 448)
!2911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 256, elements: !2091)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !344, file: !341, line: 101, baseType: !2913, size: 32, offset: 704)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2914, line: 25, size: 32, elements: !2915)
!2914 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2915 = !{!2916}
!2916 = !DIDerivedType(tag: DW_TAG_member, scope: !2913, file: !2914, line: 26, baseType: !2917, size: 32)
!2917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2913, file: !2914, line: 26, size: 32, elements: !2918)
!2918 = !{!2919}
!2919 = !DIDerivedType(tag: DW_TAG_member, scope: !2917, file: !2914, line: 30, baseType: !2920, size: 32)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2917, file: !2914, line: 30, size: 32, elements: !2921)
!2921 = !{!2922, !2923}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2920, file: !2914, line: 31, baseType: !194)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2920, file: !2914, line: 32, baseType: !141, size: 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !344, file: !341, line: 102, baseType: !2514, size: 64, offset: 768)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !344, file: !341, line: 103, baseType: !556, size: 64, offset: 832)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !344, file: !341, line: 104, baseType: !285, size: 64, offset: 896)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !344, file: !341, line: 105, baseType: !136, size: 64, offset: 960)
!2928 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !341, line: 107, baseType: !2929, size: 128, offset: 1024)
!2929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !341, line: 107, size: 128, elements: !2930)
!2930 = !{!2931, !2932}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2929, file: !341, line: 108, baseType: !181, size: 128)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2929, file: !341, line: 109, baseType: !2933, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !344, file: !341, line: 111, baseType: !181, size: 128, offset: 1152)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !344, file: !341, line: 112, baseType: !181, size: 128, offset: 1280)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !344, file: !341, line: 120, baseType: !2937, size: 128, offset: 1408)
!2937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !341, line: 116, size: 128, elements: !2938)
!2938 = !{!2939, !2940, !2941}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2937, file: !341, line: 117, baseType: !596, size: 128)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2937, file: !341, line: 118, baseType: !358, size: 128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2937, file: !341, line: 119, baseType: !326, size: 128, align: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !314, file: !38, line: 922, baseType: !386, size: 64, offset: 256)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !314, file: !38, line: 923, baseType: !2663, size: 64, offset: 320)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !314, file: !38, line: 929, baseType: !194, offset: 384)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !314, file: !38, line: 930, baseType: !37, size: 32, offset: 384)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !314, file: !38, line: 931, baseType: !728, size: 64, offset: 448)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !314, file: !38, line: 932, baseType: !7, size: 32, offset: 512)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !314, file: !38, line: 933, baseType: !2510, size: 32, offset: 544)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !314, file: !38, line: 934, baseType: !1050, size: 192, offset: 576)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !314, file: !38, line: 935, baseType: !488, size: 64, offset: 768)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !314, file: !38, line: 936, baseType: !2952, size: 192, offset: 832)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !38, line: 885, size: 192, elements: !2953)
!2953 = !{!2954, !2955, !2956, !2957, !2958, !2959}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2952, file: !38, line: 886, baseType: !2763)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2952, file: !38, line: 887, baseType: !1348, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2952, file: !38, line: 888, baseType: !46, size: 32, offset: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2952, file: !38, line: 889, baseType: !392, size: 32, offset: 96)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2952, file: !38, line: 889, baseType: !392, size: 32, offset: 128)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2952, file: !38, line: 890, baseType: !141, size: 32, offset: 160)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !314, file: !38, line: 937, baseType: !1424, size: 64, offset: 1024)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !314, file: !38, line: 938, baseType: !2962, size: 256, offset: 1088)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !38, line: 896, size: 256, elements: !2963)
!2963 = !{!2964, !2965, !2966, !2967, !2968, !2969}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2962, file: !38, line: 897, baseType: !285, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2962, file: !38, line: 898, baseType: !7, size: 32, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2962, file: !38, line: 899, baseType: !7, size: 32, offset: 96)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2962, file: !38, line: 902, baseType: !7, size: 32, offset: 128)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2962, file: !38, line: 903, baseType: !7, size: 32, offset: 160)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2962, file: !38, line: 904, baseType: !488, size: 64, offset: 192)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !314, file: !38, line: 940, baseType: !378, size: 64, offset: 1344)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !314, file: !38, line: 945, baseType: !136, size: 64, offset: 1408)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !314, file: !38, line: 949, baseType: !181, size: 128, offset: 1472)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !314, file: !38, line: 950, baseType: !181, size: 128, offset: 1600)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !314, file: !38, line: 952, baseType: !691, size: 64, offset: 1728)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !314, file: !38, line: 953, baseType: !866, size: 32, offset: 1792)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !314, file: !38, line: 954, baseType: !866, size: 32, offset: 1824)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !304, file: !260, line: 174, baseType: !310, size: 64, offset: 320)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !304, file: !260, line: 176, baseType: !2979, size: 64, offset: 384)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!141, !313, !187, !303, !938}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !292, file: !260, line: 90, baseType: !287, size: 64, offset: 192)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !292, file: !260, line: 91, baseType: !2984, size: 64, offset: 256)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !250, file: !175, line: 143, baseType: !2986, size: 64, offset: 256)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!2989, !187}
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2991)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !55, line: 39, size: 384, elements: !2992)
!2992 = !{!2993, !2994, !2998, !3002, !3010, !3014}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2991, file: !55, line: 40, baseType: !54, size: 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2991, file: !55, line: 41, baseType: !2995, size: 64, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!447}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2991, file: !55, line: 42, baseType: !2999, size: 64, offset: 128)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!136}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2991, file: !55, line: 43, baseType: !3003, size: 64, offset: 192)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!3006, !3008}
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !55, line: 19, flags: DIFlagFwdDecl)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2991, file: !55, line: 44, baseType: !3011, size: 64, offset: 256)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!3006}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2991, file: !55, line: 45, baseType: !425, size: 64, offset: 320)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !250, file: !175, line: 144, baseType: !3016, size: 64, offset: 320)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!3006, !187}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !250, file: !175, line: 145, baseType: !3020, size: 64, offset: 384)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{null, !187, !3023, !3024}
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !174, file: !175, line: 70, baseType: !3026, size: 64, offset: 384)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !576, line: 123, size: 1024, elements: !3028)
!3028 = !{!3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3157, !3158, !3159, !3160, !3161}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3027, file: !576, line: 124, baseType: !704, size: 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3027, file: !576, line: 125, baseType: !704, size: 32, offset: 32)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3027, file: !576, line: 135, baseType: !3026, size: 64, offset: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3027, file: !576, line: 136, baseType: !178, size: 64, offset: 128)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3027, file: !576, line: 138, baseType: !717, size: 192, align: 64, offset: 192)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3027, file: !576, line: 140, baseType: !3006, size: 64, offset: 384)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3027, file: !576, line: 141, baseType: !7, size: 32, offset: 448)
!3036 = !DIDerivedType(tag: DW_TAG_member, scope: !3027, file: !576, line: 142, baseType: !3037, size: 256, offset: 512)
!3037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3027, file: !576, line: 142, size: 256, elements: !3038)
!3038 = !{!3039, !3085, !3089}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3037, file: !576, line: 143, baseType: !3040, size: 192)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !576, line: 91, size: 192, elements: !3041)
!3041 = !{!3042, !3043, !3044}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3040, file: !576, line: 92, baseType: !285, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3040, file: !576, line: 94, baseType: !713, size: 64, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3040, file: !576, line: 100, baseType: !3045, size: 64, offset: 128)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !576, line: 180, size: 704, elements: !3047)
!3047 = !{!3048, !3049, !3050, !3057, !3058, !3059, !3083, !3084}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3046, file: !576, line: 182, baseType: !3026, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3046, file: !576, line: 183, baseType: !7, size: 32, offset: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3046, file: !576, line: 186, baseType: !3051, size: 192, offset: 128)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3052, line: 19, size: 192, elements: !3053)
!3052 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3053 = !{!3054, !3055, !3056}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3051, file: !3052, line: 20, baseType: !696, size: 128)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3051, file: !3052, line: 21, baseType: !7, size: 32, offset: 128)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3051, file: !3052, line: 22, baseType: !7, size: 32, offset: 160)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3046, file: !576, line: 187, baseType: !148, size: 32, offset: 320)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3046, file: !576, line: 188, baseType: !148, size: 32, offset: 352)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3046, file: !576, line: 189, baseType: !3060, size: 64, offset: 384)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !576, line: 168, size: 320, elements: !3062)
!3062 = !{!3063, !3067, !3071, !3075, !3079}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3061, file: !576, line: 169, baseType: !3064, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!141, !668, !3045}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3061, file: !576, line: 171, baseType: !3068, size: 64, offset: 64)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!141, !3026, !178, !276}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3061, file: !576, line: 173, baseType: !3072, size: 64, offset: 128)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!141, !3026}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3061, file: !576, line: 174, baseType: !3076, size: 64, offset: 192)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!141, !3026, !3026, !178}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3061, file: !576, line: 176, baseType: !3080, size: 64, offset: 256)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!141, !668, !3026, !3045}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3046, file: !576, line: 192, baseType: !181, size: 128, offset: 448)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3046, file: !576, line: 194, baseType: !1358, size: 128, offset: 576)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3037, file: !576, line: 144, baseType: !3086, size: 64)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !576, line: 103, size: 64, elements: !3087)
!3087 = !{!3088}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3086, file: !576, line: 104, baseType: !3026, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3037, file: !576, line: 145, baseType: !3090, size: 256)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !576, line: 107, size: 256, elements: !3091)
!3091 = !{!3092, !3152, !3155, !3156}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3090, file: !576, line: 108, baseType: !3093, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3095)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !576, line: 217, size: 768, elements: !3096)
!3096 = !{!3097, !3117, !3121, !3125, !3129, !3133, !3137, !3141, !3142, !3143, !3144, !3148}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3095, file: !576, line: 222, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!141, !3101}
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !576, line: 197, size: 1088, elements: !3103)
!3103 = !{!3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3102, file: !576, line: 199, baseType: !3026, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3102, file: !576, line: 200, baseType: !313, size: 64, offset: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3102, file: !576, line: 201, baseType: !668, size: 64, offset: 128)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3102, file: !576, line: 202, baseType: !136, size: 64, offset: 192)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3102, file: !576, line: 205, baseType: !1050, size: 192, offset: 256)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3102, file: !576, line: 206, baseType: !1050, size: 192, offset: 448)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3102, file: !576, line: 207, baseType: !141, size: 32, offset: 640)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3102, file: !576, line: 208, baseType: !181, size: 128, offset: 704)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3102, file: !576, line: 209, baseType: !235, size: 64, offset: 832)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3102, file: !576, line: 211, baseType: !282, size: 64, offset: 896)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3102, file: !576, line: 212, baseType: !447, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3102, file: !576, line: 213, baseType: !447, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3102, file: !576, line: 214, baseType: !966, size: 64, offset: 1024)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3095, file: !576, line: 223, baseType: !3118, size: 64, offset: 64)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{null, !3101}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3095, file: !576, line: 236, baseType: !3122, size: 64, offset: 128)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!141, !668, !136}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3095, file: !576, line: 238, baseType: !3126, size: 64, offset: 192)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!136, !668, !2676}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3095, file: !576, line: 239, baseType: !3130, size: 64, offset: 256)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!136, !668, !136, !2676}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3095, file: !576, line: 240, baseType: !3134, size: 64, offset: 320)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{null, !668, !136}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3095, file: !576, line: 242, baseType: !3138, size: 64, offset: 384)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!266, !3101, !235, !282, !488}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3095, file: !576, line: 252, baseType: !282, size: 64, offset: 448)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3095, file: !576, line: 259, baseType: !447, size: 8, offset: 512)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3095, file: !576, line: 260, baseType: !3138, size: 64, offset: 576)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3095, file: !576, line: 263, baseType: !3145, size: 64, offset: 640)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!2705, !3101, !2707}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3095, file: !576, line: 266, baseType: !3149, size: 64, offset: 704)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!141, !3101, !938}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3090, file: !576, line: 109, baseType: !3153, size: 64, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !576, line: 31, flags: DIFlagFwdDecl)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3090, file: !576, line: 110, baseType: !488, size: 64, offset: 128)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3090, file: !576, line: 111, baseType: !3026, size: 64, offset: 192)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3027, file: !576, line: 148, baseType: !136, size: 64, offset: 768)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3027, file: !576, line: 154, baseType: !378, size: 64, offset: 832)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3027, file: !576, line: 156, baseType: !277, size: 16, offset: 896)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3027, file: !576, line: 157, baseType: !276, size: 16, offset: 912)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3027, file: !576, line: 158, baseType: !3162, size: 64, offset: 960)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !576, line: 32, flags: DIFlagFwdDecl)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !174, file: !175, line: 71, baseType: !3165, size: 32, offset: 448)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3166, line: 19, size: 32, elements: !3167)
!3166 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3167 = !{!3168}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3165, file: !3166, line: 20, baseType: !1107, size: 32)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !174, file: !175, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !174, file: !175, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !174, file: !175, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !174, file: !175, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !174, file: !175, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !171, file: !67, line: 463, baseType: !170, size: 64, offset: 512)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !171, file: !67, line: 465, baseType: !3176, size: 64, offset: 576)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !67, line: 36, flags: DIFlagFwdDecl)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !171, file: !67, line: 467, baseType: !178, size: 64, offset: 640)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !171, file: !67, line: 468, baseType: !3180, size: 64, offset: 704)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3182)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !67, line: 87, size: 384, elements: !3183)
!3183 = !{!3184, !3185, !3186, !3190, !3195, !3199}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3182, file: !67, line: 88, baseType: !178, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3182, file: !67, line: 89, baseType: !289, size: 64, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3182, file: !67, line: 90, baseType: !3187, size: 64, offset: 128)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!141, !170, !230}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3182, file: !67, line: 91, baseType: !3191, size: 64, offset: 192)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!235, !170, !3194, !3023, !3024}
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3182, file: !67, line: 93, baseType: !3196, size: 64, offset: 256)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{null, !170}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3182, file: !67, line: 95, baseType: !3200, size: 64, offset: 320)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3202)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !74, line: 278, size: 1472, elements: !3203)
!3203 = !{!3204, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3202, file: !74, line: 279, baseType: !3205, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!141, !170}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3202, file: !74, line: 280, baseType: !3196, size: 64, offset: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3202, file: !74, line: 281, baseType: !3205, size: 64, offset: 128)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3202, file: !74, line: 282, baseType: !3205, size: 64, offset: 192)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3202, file: !74, line: 283, baseType: !3205, size: 64, offset: 256)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3202, file: !74, line: 284, baseType: !3205, size: 64, offset: 320)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3202, file: !74, line: 285, baseType: !3205, size: 64, offset: 384)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3202, file: !74, line: 286, baseType: !3205, size: 64, offset: 448)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3202, file: !74, line: 287, baseType: !3205, size: 64, offset: 512)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3202, file: !74, line: 288, baseType: !3205, size: 64, offset: 576)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3202, file: !74, line: 289, baseType: !3205, size: 64, offset: 640)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3202, file: !74, line: 290, baseType: !3205, size: 64, offset: 704)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3202, file: !74, line: 291, baseType: !3205, size: 64, offset: 768)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3202, file: !74, line: 292, baseType: !3205, size: 64, offset: 832)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3202, file: !74, line: 293, baseType: !3205, size: 64, offset: 896)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3202, file: !74, line: 294, baseType: !3205, size: 64, offset: 960)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3202, file: !74, line: 295, baseType: !3205, size: 64, offset: 1024)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3202, file: !74, line: 296, baseType: !3205, size: 64, offset: 1088)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3202, file: !74, line: 297, baseType: !3205, size: 64, offset: 1152)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3202, file: !74, line: 298, baseType: !3205, size: 64, offset: 1216)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3202, file: !74, line: 299, baseType: !3205, size: 64, offset: 1280)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3202, file: !74, line: 300, baseType: !3205, size: 64, offset: 1344)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3202, file: !74, line: 301, baseType: !3205, size: 64, offset: 1408)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !171, file: !67, line: 470, baseType: !3231, size: 64, offset: 768)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3233, line: 82, size: 1408, elements: !3234)
!3233 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3234 = !{!3235, !3236, !3237, !3238, !3239, !3240, !3241, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3316, !3319, !3320}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3232, file: !3233, line: 83, baseType: !178, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3232, file: !3233, line: 84, baseType: !178, size: 64, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3232, file: !3233, line: 85, baseType: !170, size: 64, offset: 128)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3232, file: !3233, line: 86, baseType: !289, size: 64, offset: 192)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3232, file: !3233, line: 87, baseType: !289, size: 64, offset: 256)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3232, file: !3233, line: 88, baseType: !289, size: 64, offset: 320)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3232, file: !3233, line: 90, baseType: !3242, size: 64, offset: 384)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!141, !170, !3245}
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !61, line: 95, size: 1152, elements: !3247)
!3247 = !{!3248, !3249, !3250, !3251, !3252, !3253, !3254, !3267, !3280, !3281, !3282, !3283, !3284, !3292, !3293, !3294, !3295, !3296, !3297}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3246, file: !61, line: 96, baseType: !178, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3246, file: !61, line: 97, baseType: !3231, size: 64, offset: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3246, file: !61, line: 99, baseType: !131, size: 64, offset: 128)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3246, file: !61, line: 100, baseType: !178, size: 64, offset: 192)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3246, file: !61, line: 102, baseType: !447, size: 8, offset: 256)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3246, file: !61, line: 103, baseType: !60, size: 32, offset: 288)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3246, file: !61, line: 105, baseType: !3255, size: 64, offset: 320)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3257)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3258, line: 262, size: 1600, elements: !3259)
!3258 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3259 = !{!3260, !3261, !3262, !3266}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3257, file: !3258, line: 263, baseType: !2500, size: 256)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3257, file: !3258, line: 264, baseType: !2500, size: 256, offset: 256)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3257, file: !3258, line: 265, baseType: !3263, size: 1024, offset: 512)
!3263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 1024, elements: !3264)
!3264 = !{!3265}
!3265 = !DISubrange(count: 128)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3257, file: !3258, line: 266, baseType: !3006, size: 64, offset: 1536)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3246, file: !61, line: 106, baseType: !3268, size: 64, offset: 384)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3270)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3258, line: 210, size: 256, elements: !3271)
!3271 = !{!3272, !3276, !3278, !3279}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3270, file: !3258, line: 211, baseType: !3273, size: 72)
!3273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1230, size: 72, elements: !3274)
!3274 = !{!3275}
!3275 = !DISubrange(count: 9)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3270, file: !3258, line: 212, baseType: !3277, size: 64, offset: 128)
!3277 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3258, line: 14, baseType: !285)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3270, file: !3258, line: 213, baseType: !150, size: 32, offset: 192)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3270, file: !3258, line: 214, baseType: !150, size: 32, offset: 224)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3246, file: !61, line: 108, baseType: !3205, size: 64, offset: 448)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3246, file: !61, line: 109, baseType: !3196, size: 64, offset: 512)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3246, file: !61, line: 110, baseType: !3205, size: 64, offset: 576)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3246, file: !61, line: 111, baseType: !3196, size: 64, offset: 640)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3246, file: !61, line: 112, baseType: !3285, size: 64, offset: 704)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!141, !170, !3288}
!3288 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !74, line: 52, baseType: !3289)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !74, line: 50, size: 32, elements: !3290)
!3290 = !{!3291}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3289, file: !74, line: 51, baseType: !141, size: 32)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3246, file: !61, line: 113, baseType: !3205, size: 64, offset: 768)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3246, file: !61, line: 114, baseType: !289, size: 64, offset: 832)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3246, file: !61, line: 115, baseType: !289, size: 64, offset: 896)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3246, file: !61, line: 117, baseType: !3200, size: 64, offset: 960)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3246, file: !61, line: 118, baseType: !3196, size: 64, offset: 1024)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3246, file: !61, line: 120, baseType: !3298, size: 64, offset: 1088)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !61, line: 120, flags: DIFlagFwdDecl)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3232, file: !3233, line: 91, baseType: !3187, size: 64, offset: 448)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3232, file: !3233, line: 92, baseType: !3205, size: 64, offset: 512)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3232, file: !3233, line: 93, baseType: !3196, size: 64, offset: 576)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3232, file: !3233, line: 94, baseType: !3205, size: 64, offset: 640)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3232, file: !3233, line: 95, baseType: !3196, size: 64, offset: 704)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3232, file: !3233, line: 97, baseType: !3205, size: 64, offset: 768)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3232, file: !3233, line: 98, baseType: !3205, size: 64, offset: 832)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3232, file: !3233, line: 100, baseType: !3285, size: 64, offset: 896)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3232, file: !3233, line: 101, baseType: !3205, size: 64, offset: 960)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3232, file: !3233, line: 103, baseType: !3205, size: 64, offset: 1024)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3232, file: !3233, line: 105, baseType: !3205, size: 64, offset: 1088)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3232, file: !3233, line: 107, baseType: !3200, size: 64, offset: 1152)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3232, file: !3233, line: 109, baseType: !3313, size: 64, offset: 1216)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3315)
!3315 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3233, line: 109, flags: DIFlagFwdDecl)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3232, file: !3233, line: 111, baseType: !3317, size: 64, offset: 1280)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3233, line: 111, flags: DIFlagFwdDecl)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3232, file: !3233, line: 112, baseType: !602, offset: 1344)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3232, file: !3233, line: 114, baseType: !447, size: 8, offset: 1344)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !171, file: !67, line: 471, baseType: !3245, size: 64, offset: 832)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !171, file: !67, line: 473, baseType: !136, size: 64, offset: 896)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !171, file: !67, line: 475, baseType: !136, size: 64, offset: 960)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !171, file: !67, line: 480, baseType: !1050, size: 192, offset: 1024)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !171, file: !67, line: 484, baseType: !3326, size: 576, offset: 1216)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !67, line: 361, size: 576, elements: !3327)
!3327 = !{!3328, !3329, !3330, !3331, !3332, !3333}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3326, file: !67, line: 362, baseType: !181, size: 128)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3326, file: !67, line: 363, baseType: !181, size: 128, offset: 128)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3326, file: !67, line: 364, baseType: !181, size: 128, offset: 256)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3326, file: !67, line: 365, baseType: !181, size: 128, offset: 384)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3326, file: !67, line: 366, baseType: !447, size: 8, offset: 512)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3326, file: !67, line: 367, baseType: !66, size: 32, offset: 544)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !171, file: !67, line: 485, baseType: !3335, size: 2304, offset: 1792)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !74, line: 565, size: 2304, elements: !3336)
!3336 = !{!3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3432, !3436}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3335, file: !74, line: 566, baseType: !3288, size: 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3335, file: !74, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3335, file: !74, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3335, file: !74, line: 569, baseType: !447, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3335, file: !74, line: 570, baseType: !447, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3335, file: !74, line: 571, baseType: !447, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3335, file: !74, line: 572, baseType: !447, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3335, file: !74, line: 573, baseType: !447, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3335, file: !74, line: 574, baseType: !447, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3335, file: !74, line: 575, baseType: !447, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3335, file: !74, line: 576, baseType: !447, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3335, file: !74, line: 577, baseType: !148, size: 32, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3335, file: !74, line: 578, baseType: !194, offset: 96)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3335, file: !74, line: 580, baseType: !181, size: 128, offset: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3335, file: !74, line: 581, baseType: !1379, size: 192, offset: 256)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3335, file: !74, line: 582, baseType: !3353, size: 64, offset: 448)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3355, line: 43, size: 1472, elements: !3356)
!3355 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3356 = !{!3357, !3358, !3359, !3360, !3361, !3364, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3354, file: !3355, line: 44, baseType: !178, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3354, file: !3355, line: 45, baseType: !141, size: 32, offset: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3354, file: !3355, line: 46, baseType: !181, size: 128, offset: 128)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3354, file: !3355, line: 47, baseType: !194, offset: 256)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3354, file: !3355, line: 48, baseType: !3362, size: 64, offset: 256)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !74, line: 533, flags: DIFlagFwdDecl)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3354, file: !3355, line: 49, baseType: !3365, size: 320, offset: 320)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3366, line: 11, size: 320, elements: !3367)
!3366 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3367 = !{!3368, !3369, !3370, !3375}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3365, file: !3366, line: 16, baseType: !596, size: 128)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3365, file: !3366, line: 17, baseType: !285, size: 64, offset: 128)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3365, file: !3366, line: 18, baseType: !3371, size: 64, offset: 192)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{null, !3374}
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3365, file: !3366, line: 19, baseType: !148, size: 32, offset: 256)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3354, file: !3355, line: 50, baseType: !285, size: 64, offset: 640)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3354, file: !3355, line: 51, baseType: !1177, size: 64, offset: 704)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3354, file: !3355, line: 52, baseType: !1177, size: 64, offset: 768)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3354, file: !3355, line: 53, baseType: !1177, size: 64, offset: 832)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3354, file: !3355, line: 54, baseType: !1177, size: 64, offset: 896)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3354, file: !3355, line: 55, baseType: !1177, size: 64, offset: 960)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3354, file: !3355, line: 56, baseType: !285, size: 64, offset: 1024)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3354, file: !3355, line: 57, baseType: !285, size: 64, offset: 1088)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3354, file: !3355, line: 58, baseType: !285, size: 64, offset: 1152)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3354, file: !3355, line: 59, baseType: !285, size: 64, offset: 1216)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3354, file: !3355, line: 60, baseType: !285, size: 64, offset: 1280)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3354, file: !3355, line: 61, baseType: !170, size: 64, offset: 1344)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3354, file: !3355, line: 62, baseType: !447, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3354, file: !3355, line: 63, baseType: !447, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3335, file: !74, line: 583, baseType: !447, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3335, file: !74, line: 584, baseType: !447, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3335, file: !74, line: 585, baseType: !447, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3335, file: !74, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3335, file: !74, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3335, file: !74, line: 592, baseType: !1169, size: 512, offset: 576)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3335, file: !74, line: 593, baseType: !378, size: 64, offset: 1088)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3335, file: !74, line: 594, baseType: !1831, size: 256, offset: 1152)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3335, file: !74, line: 595, baseType: !1358, size: 128, offset: 1408)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3335, file: !74, line: 596, baseType: !3362, size: 64, offset: 1536)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3335, file: !74, line: 597, baseType: !704, size: 32, offset: 1600)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3335, file: !74, line: 598, baseType: !704, size: 32, offset: 1632)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3335, file: !74, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3335, file: !74, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3335, file: !74, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3335, file: !74, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3335, file: !74, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3335, file: !74, line: 604, baseType: !447, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3335, file: !74, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3335, file: !74, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3335, file: !74, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3335, file: !74, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3335, file: !74, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3335, file: !74, line: 610, baseType: !7, size: 32, offset: 1696)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3335, file: !74, line: 611, baseType: !73, size: 32, offset: 1728)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3335, file: !74, line: 612, baseType: !81, size: 32, offset: 1760)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3335, file: !74, line: 613, baseType: !141, size: 32, offset: 1792)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3335, file: !74, line: 614, baseType: !141, size: 32, offset: 1824)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3335, file: !74, line: 615, baseType: !378, size: 64, offset: 1856)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3335, file: !74, line: 616, baseType: !378, size: 64, offset: 1920)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3335, file: !74, line: 617, baseType: !378, size: 64, offset: 1984)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3335, file: !74, line: 618, baseType: !378, size: 64, offset: 2048)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3335, file: !74, line: 620, baseType: !3423, size: 64, offset: 2112)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !74, line: 536, size: 256, elements: !3425)
!3425 = !{!3426, !3427, !3428, !3429}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3424, file: !74, line: 537, baseType: !194)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3424, file: !74, line: 538, baseType: !7, size: 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3424, file: !74, line: 540, baseType: !181, size: 128, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3424, file: !74, line: 543, baseType: !3430, size: 64, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !74, line: 534, flags: DIFlagFwdDecl)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3335, file: !74, line: 621, baseType: !3433, size: 64, offset: 2176)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{null, !170, !1321}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3335, file: !74, line: 622, baseType: !3437, size: 64, offset: 2240)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !74, line: 622, flags: DIFlagFwdDecl)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !171, file: !67, line: 486, baseType: !3440, size: 64, offset: 4096)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !74, line: 642, size: 1792, elements: !3442)
!3442 = !{!3443, !3444, !3445, !3449, !3450, !3451}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3441, file: !74, line: 643, baseType: !3202, size: 1472)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3441, file: !74, line: 644, baseType: !3205, size: 64, offset: 1472)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3441, file: !74, line: 645, baseType: !3446, size: 64, offset: 1536)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{null, !170, !447}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3441, file: !74, line: 646, baseType: !3205, size: 64, offset: 1600)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3441, file: !74, line: 647, baseType: !3196, size: 64, offset: 1664)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3441, file: !74, line: 648, baseType: !3196, size: 64, offset: 1728)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !171, file: !67, line: 493, baseType: !3453, size: 64, offset: 4160)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !67, line: 493, flags: DIFlagFwdDecl)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !171, file: !67, line: 499, baseType: !181, size: 128, offset: 4224)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !171, file: !67, line: 502, baseType: !3457, size: 64, offset: 4352)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3459)
!3459 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !67, line: 502, flags: DIFlagFwdDecl)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !171, file: !67, line: 504, baseType: !3461, size: 64, offset: 4416)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !171, file: !67, line: 505, baseType: !378, size: 64, offset: 4480)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !171, file: !67, line: 510, baseType: !378, size: 64, offset: 4544)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !171, file: !67, line: 511, baseType: !3465, size: 64, offset: 4608)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3467)
!3467 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !67, line: 511, flags: DIFlagFwdDecl)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !171, file: !67, line: 513, baseType: !3469, size: 64, offset: 4672)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !67, line: 288, size: 128, elements: !3471)
!3471 = !{!3472, !3473}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3470, file: !67, line: 293, baseType: !7, size: 32)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3470, file: !67, line: 294, baseType: !285, size: 64, offset: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !171, file: !67, line: 515, baseType: !181, size: 128, offset: 4736)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !171, file: !67, line: 526, baseType: !3476, offset: 4864)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3477, line: 5, elements: !208)
!3477 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !171, file: !67, line: 528, baseType: !3479, size: 64, offset: 4864)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3481, line: 14, flags: DIFlagFwdDecl)
!3481 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !171, file: !67, line: 529, baseType: !3483, size: 64, offset: 4928)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3233, line: 22, flags: DIFlagFwdDecl)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !171, file: !67, line: 534, baseType: !470, size: 32, offset: 4992)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !171, file: !67, line: 535, baseType: !148, size: 32, offset: 5024)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !171, file: !67, line: 537, baseType: !194, offset: 5056)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !171, file: !67, line: 538, baseType: !181, size: 128, offset: 5056)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !171, file: !67, line: 540, baseType: !3490, size: 64, offset: 5184)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3492, line: 54, size: 960, elements: !3493)
!3492 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3493 = !{!3494, !3495, !3496, !3497, !3498, !3499, !3500, !3504, !3508, !3509, !3510, !3511, !3515, !3519, !3520}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3491, file: !3492, line: 55, baseType: !178, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3491, file: !3492, line: 56, baseType: !131, size: 64, offset: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3491, file: !3492, line: 58, baseType: !289, size: 64, offset: 128)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3491, file: !3492, line: 59, baseType: !289, size: 64, offset: 192)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3491, file: !3492, line: 60, baseType: !187, size: 64, offset: 256)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3491, file: !3492, line: 62, baseType: !3187, size: 64, offset: 320)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3491, file: !3492, line: 63, baseType: !3501, size: 64, offset: 384)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!235, !170, !3194}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3491, file: !3492, line: 65, baseType: !3505, size: 64, offset: 448)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{null, !3490}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3491, file: !3492, line: 66, baseType: !3196, size: 64, offset: 512)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3491, file: !3492, line: 68, baseType: !3205, size: 64, offset: 576)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3491, file: !3492, line: 70, baseType: !2989, size: 64, offset: 640)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3491, file: !3492, line: 71, baseType: !3512, size: 64, offset: 704)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!3006, !170}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3491, file: !3492, line: 73, baseType: !3516, size: 64, offset: 768)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{null, !170, !3023, !3024}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3491, file: !3492, line: 75, baseType: !3200, size: 64, offset: 832)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3491, file: !3492, line: 77, baseType: !3317, size: 64, offset: 896)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !171, file: !67, line: 541, baseType: !289, size: 64, offset: 5248)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !171, file: !67, line: 543, baseType: !3196, size: 64, offset: 5312)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !171, file: !67, line: 544, baseType: !3524, size: 64, offset: 5376)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !67, line: 45, flags: DIFlagFwdDecl)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !171, file: !67, line: 545, baseType: !3527, size: 64, offset: 5440)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !67, line: 47, flags: DIFlagFwdDecl)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !171, file: !67, line: 547, baseType: !447, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !171, file: !67, line: 548, baseType: !447, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !171, file: !67, line: 549, baseType: !447, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !171, file: !67, line: 550, baseType: !447, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !167, file: !6, line: 426, baseType: !170, size: 64, offset: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !167, file: !6, line: 427, baseType: !141, size: 32, offset: 128)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !167, file: !6, line: 428, baseType: !178, size: 64, offset: 192)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !167, file: !6, line: 429, baseType: !1229, size: 8, offset: 256)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !167, file: !6, line: 433, baseType: !1229, size: 8, offset: 264)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !167, file: !6, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !167, file: !6, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !167, file: !6, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !167, file: !6, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !167, file: !6, line: 442, baseType: !7, size: 32, offset: 288)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !167, file: !6, line: 444, baseType: !141, size: 32, offset: 320)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !167, file: !6, line: 446, baseType: !1050, size: 192, offset: 384)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !167, file: !6, line: 448, baseType: !3546, size: 128, offset: 576)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !6, line: 417, size: 128, elements: !3547)
!3547 = !{!3548}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !3546, file: !6, line: 418, baseType: !3549, size: 128)
!3549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 128, elements: !162)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !167, file: !6, line: 449, baseType: !137, size: 64, offset: 704)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !167, file: !6, line: 450, baseType: !166, size: 64, offset: 768)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !167, file: !6, line: 452, baseType: !141, size: 32, offset: 832)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !167, file: !6, line: 459, baseType: !141, size: 32, offset: 864)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !167, file: !6, line: 460, baseType: !141, size: 32, offset: 896)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !167, file: !6, line: 462, baseType: !7, size: 32, offset: 928)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !138, file: !6, line: 647, baseType: !3557, size: 640, offset: 640)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !6, line: 67, size: 640, elements: !3558)
!3558 = !{!3559, !3571, !3579, !3587, !3588, !3589, !3592, !3594, !3595, !3596}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3557, file: !6, line: 68, baseType: !3560, size: 72)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !88, line: 407, size: 72, elements: !3561)
!3561 = !{!3562, !3563, !3564, !3565, !3566, !3568, !3569, !3570}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3560, file: !88, line: 408, baseType: !1230, size: 8)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3560, file: !88, line: 409, baseType: !1230, size: 8, offset: 8)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !3560, file: !88, line: 411, baseType: !1230, size: 8, offset: 16)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3560, file: !88, line: 412, baseType: !1230, size: 8, offset: 24)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !3560, file: !88, line: 413, baseType: !3567, size: 16, offset: 32)
!3567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !2706, line: 29, baseType: !817)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !3560, file: !88, line: 414, baseType: !1230, size: 8, offset: 48)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !3560, file: !88, line: 418, baseType: !1230, size: 8, offset: 56)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !3560, file: !88, line: 419, baseType: !1230, size: 8, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !3557, file: !6, line: 69, baseType: !3572, size: 48, offset: 72)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !88, line: 689, size: 48, elements: !3573)
!3573 = !{!3574, !3575, !3576, !3577, !3578}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3572, file: !88, line: 690, baseType: !1230, size: 8)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3572, file: !88, line: 691, baseType: !1230, size: 8, offset: 8)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !3572, file: !88, line: 693, baseType: !1230, size: 8, offset: 16)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3572, file: !88, line: 694, baseType: !1230, size: 8, offset: 24)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !3572, file: !88, line: 695, baseType: !3567, size: 16, offset: 32)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !3557, file: !6, line: 70, baseType: !3580, size: 64, offset: 120)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !88, line: 677, size: 64, elements: !3581)
!3581 = !{!3582, !3583, !3584, !3585}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3580, file: !88, line: 678, baseType: !1230, size: 8)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3580, file: !88, line: 679, baseType: !1230, size: 8, offset: 8)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !3580, file: !88, line: 680, baseType: !3567, size: 16, offset: 16)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !3580, file: !88, line: 681, baseType: !3586, size: 32, offset: 32)
!3586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2706, line: 31, baseType: !150)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3557, file: !6, line: 71, baseType: !181, size: 128, offset: 192)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3557, file: !6, line: 72, baseType: !136, size: 64, offset: 320)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !3557, file: !6, line: 73, baseType: !3590, size: 64, offset: 384)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !6, line: 48, flags: DIFlagFwdDecl)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3557, file: !6, line: 75, baseType: !3593, size: 64, offset: 448)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3557, file: !6, line: 76, baseType: !141, size: 32, offset: 512)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3557, file: !6, line: 77, baseType: !141, size: 32, offset: 544)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3557, file: !6, line: 78, baseType: !141, size: 32, offset: 576)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !138, file: !6, line: 649, baseType: !171, size: 5568, offset: 1280)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !138, file: !6, line: 651, baseType: !3599, size: 144, offset: 6848)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !88, line: 289, size: 144, elements: !3600)
!3600 = !{!3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3599, file: !88, line: 290, baseType: !1230, size: 8)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3599, file: !88, line: 291, baseType: !1230, size: 8, offset: 8)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !3599, file: !88, line: 293, baseType: !3567, size: 16, offset: 16)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3599, file: !88, line: 294, baseType: !1230, size: 8, offset: 32)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3599, file: !88, line: 295, baseType: !1230, size: 8, offset: 40)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3599, file: !88, line: 296, baseType: !1230, size: 8, offset: 48)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !3599, file: !88, line: 297, baseType: !1230, size: 8, offset: 56)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3599, file: !88, line: 298, baseType: !3567, size: 16, offset: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3599, file: !88, line: 299, baseType: !3567, size: 16, offset: 80)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !3599, file: !88, line: 300, baseType: !3567, size: 16, offset: 96)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !3599, file: !88, line: 301, baseType: !1230, size: 8, offset: 112)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !3599, file: !88, line: 302, baseType: !1230, size: 8, offset: 120)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !3599, file: !88, line: 303, baseType: !1230, size: 8, offset: 128)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !3599, file: !88, line: 304, baseType: !1230, size: 8, offset: 136)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !138, file: !6, line: 652, baseType: !3616, size: 64, offset: 7040)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !6, line: 396, size: 384, elements: !3618)
!3618 = !{!3619, !3627, !3635, !3647, !3660, !3669}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3617, file: !6, line: 397, baseType: !3620, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !88, line: 844, size: 40, elements: !3622)
!3622 = !{!3623, !3624, !3625, !3626}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3621, file: !88, line: 845, baseType: !1230, size: 8)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3621, file: !88, line: 846, baseType: !1230, size: 8, offset: 8)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3621, file: !88, line: 848, baseType: !3567, size: 16, offset: 16)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !3621, file: !88, line: 849, baseType: !1230, size: 8, offset: 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !3617, file: !6, line: 400, baseType: !3628, size: 64, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !88, line: 895, size: 56, elements: !3630)
!3630 = !{!3631, !3632, !3633, !3634}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3629, file: !88, line: 896, baseType: !1230, size: 8)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3629, file: !88, line: 897, baseType: !1230, size: 8, offset: 8)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3629, file: !88, line: 898, baseType: !1230, size: 8, offset: 16)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3629, file: !88, line: 899, baseType: !3586, size: 32, offset: 24)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !3617, file: !6, line: 401, baseType: !3636, size: 64, offset: 128)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !88, line: 917, size: 80, elements: !3638)
!3638 = !{!3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3637, file: !88, line: 918, baseType: !1230, size: 8)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3637, file: !88, line: 919, baseType: !1230, size: 8, offset: 8)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3637, file: !88, line: 920, baseType: !1230, size: 8, offset: 16)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3637, file: !88, line: 921, baseType: !1230, size: 8, offset: 24)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !3637, file: !88, line: 923, baseType: !3567, size: 16, offset: 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !3637, file: !88, line: 928, baseType: !1230, size: 8, offset: 48)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !3637, file: !88, line: 929, baseType: !1230, size: 8, offset: 56)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !3637, file: !88, line: 930, baseType: !3567, size: 16, offset: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !3617, file: !6, line: 402, baseType: !3648, size: 64, offset: 192)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !88, line: 955, size: 128, elements: !3650)
!3650 = !{!3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3649, file: !88, line: 956, baseType: !1230, size: 8)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3649, file: !88, line: 957, baseType: !1230, size: 8, offset: 8)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3649, file: !88, line: 958, baseType: !1230, size: 8, offset: 16)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3649, file: !88, line: 959, baseType: !1230, size: 8, offset: 24)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3649, file: !88, line: 960, baseType: !3586, size: 32, offset: 32)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !3649, file: !88, line: 963, baseType: !3567, size: 16, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !3649, file: !88, line: 967, baseType: !3567, size: 16, offset: 80)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !3649, file: !88, line: 968, baseType: !3659, size: 32, offset: 96)
!3659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3586, size: 32, elements: !1248)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !3617, file: !6, line: 403, baseType: !3661, size: 64, offset: 256)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !88, line: 940, size: 160, elements: !3663)
!3663 = !{!3664, !3665, !3666, !3667, !3668}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3662, file: !88, line: 941, baseType: !1230, size: 8)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3662, file: !88, line: 942, baseType: !1230, size: 8, offset: 8)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3662, file: !88, line: 943, baseType: !1230, size: 8, offset: 16)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3662, file: !88, line: 944, baseType: !1230, size: 8, offset: 24)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !3662, file: !88, line: 945, baseType: !2507, size: 128, offset: 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !3617, file: !6, line: 404, baseType: !3670, size: 64, offset: 320)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !88, line: 1080, size: 24, elements: !3672)
!3672 = !{!3673, !3674, !3675}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3671, file: !88, line: 1081, baseType: !1230, size: 8)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3671, file: !88, line: 1082, baseType: !1230, size: 8, offset: 8)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3671, file: !88, line: 1083, baseType: !1230, size: 8, offset: 16)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !138, file: !6, line: 653, baseType: !3677, size: 64, offset: 7104)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !6, line: 374, size: 5440, elements: !3679)
!3679 = !{!3680, !3691, !3692, !3705, !3747, !3756, !3757}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3678, file: !6, line: 375, baseType: !3681, size: 72)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !88, line: 349, size: 72, elements: !3682)
!3682 = !{!3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3681, file: !88, line: 350, baseType: !1230, size: 8)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3681, file: !88, line: 351, baseType: !1230, size: 8, offset: 8)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3681, file: !88, line: 353, baseType: !3567, size: 16, offset: 16)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !3681, file: !88, line: 354, baseType: !1230, size: 8, offset: 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !3681, file: !88, line: 355, baseType: !1230, size: 8, offset: 40)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !3681, file: !88, line: 356, baseType: !1230, size: 8, offset: 48)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3681, file: !88, line: 357, baseType: !1230, size: 8, offset: 56)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !3681, file: !88, line: 358, baseType: !1230, size: 8, offset: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3678, file: !6, line: 377, baseType: !235, size: 64, offset: 128)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3678, file: !6, line: 381, baseType: !3693, size: 1024, offset: 192)
!3693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3694, size: 1024, elements: !145)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !88, line: 783, size: 64, elements: !3696)
!3696 = !{!3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3695, file: !88, line: 784, baseType: !1230, size: 8)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3695, file: !88, line: 785, baseType: !1230, size: 8, offset: 8)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !3695, file: !88, line: 787, baseType: !1230, size: 8, offset: 16)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !3695, file: !88, line: 788, baseType: !1230, size: 8, offset: 24)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !3695, file: !88, line: 789, baseType: !1230, size: 8, offset: 32)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !3695, file: !88, line: 790, baseType: !1230, size: 8, offset: 40)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !3695, file: !88, line: 791, baseType: !1230, size: 8, offset: 48)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !3695, file: !88, line: 792, baseType: !1230, size: 8, offset: 56)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !3678, file: !6, line: 385, baseType: !3706, size: 2048, offset: 1216)
!3706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3707, size: 2048, elements: !2091)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !6, line: 232, size: 6272, elements: !3709)
!3709 = !{!3710, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3708, file: !6, line: 235, baseType: !3711, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !6, line: 82, size: 320, elements: !3713)
!3713 = !{!3714, !3726, !3727, !3728, !3730}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3712, file: !6, line: 83, baseType: !3715, size: 72)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !88, line: 389, size: 72, elements: !3716)
!3716 = !{!3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3715, file: !88, line: 390, baseType: !1230, size: 8)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3715, file: !88, line: 391, baseType: !1230, size: 8, offset: 8)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3715, file: !88, line: 393, baseType: !1230, size: 8, offset: 16)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !3715, file: !88, line: 394, baseType: !1230, size: 8, offset: 24)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !3715, file: !88, line: 395, baseType: !1230, size: 8, offset: 32)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3715, file: !88, line: 396, baseType: !1230, size: 8, offset: 40)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3715, file: !88, line: 397, baseType: !1230, size: 8, offset: 48)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3715, file: !88, line: 398, baseType: !1230, size: 8, offset: 56)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !3715, file: !88, line: 399, baseType: !1230, size: 8, offset: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3712, file: !6, line: 85, baseType: !141, size: 32, offset: 96)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3712, file: !6, line: 86, baseType: !3593, size: 64, offset: 128)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !3712, file: !6, line: 91, baseType: !3729, size: 64, offset: 192)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3712, file: !6, line: 93, baseType: !235, size: 64, offset: 256)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !3708, file: !6, line: 237, baseType: !3711, size: 64, offset: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3708, file: !6, line: 239, baseType: !7, size: 32, offset: 128)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3708, file: !6, line: 243, baseType: !3694, size: 64, offset: 192)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3708, file: !6, line: 245, baseType: !141, size: 32, offset: 256)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !3708, file: !6, line: 247, baseType: !5, size: 32, offset: 288)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !3708, file: !6, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !3708, file: !6, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !3708, file: !6, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !3708, file: !6, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !3708, file: !6, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !3708, file: !6, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !3708, file: !6, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !3708, file: !6, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3708, file: !6, line: 257, baseType: !171, size: 5568, offset: 384)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !3708, file: !6, line: 258, baseType: !170, size: 64, offset: 5952)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !3708, file: !6, line: 259, baseType: !1831, size: 256, offset: 6016)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !3678, file: !6, line: 389, baseType: !3748, size: 2048, offset: 3264)
!3748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3749, size: 2048, elements: !2091)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !6, line: 322, size: 64, elements: !3751)
!3751 = !{!3752, !3753, !3754}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3750, file: !6, line: 323, baseType: !7, size: 32)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3750, file: !6, line: 324, baseType: !3165, size: 32, offset: 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3750, file: !6, line: 328, baseType: !3755, offset: 64)
!3755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3712, elements: !2192)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3678, file: !6, line: 391, baseType: !3593, size: 64, offset: 5312)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3678, file: !6, line: 392, baseType: !141, size: 32, offset: 5376)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !138, file: !6, line: 655, baseType: !3677, size: 64, offset: 7168)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !138, file: !6, line: 656, baseType: !3760, size: 1024, offset: 7232)
!3760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3729, size: 1024, elements: !145)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !138, file: !6, line: 657, baseType: !3760, size: 1024, offset: 8256)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !138, file: !6, line: 659, baseType: !3763, size: 64, offset: 9280)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !138, file: !6, line: 661, baseType: !277, size: 16, offset: 9344)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !138, file: !6, line: 662, baseType: !1229, size: 8, offset: 9360)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !138, file: !6, line: 663, baseType: !1229, size: 8, offset: 9368)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !138, file: !6, line: 664, baseType: !1229, size: 8, offset: 9376)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !138, file: !6, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !138, file: !6, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !138, file: !6, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !138, file: !6, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !138, file: !6, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !138, file: !6, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !138, file: !6, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !138, file: !6, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !138, file: !6, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !138, file: !6, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !138, file: !6, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !138, file: !6, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !138, file: !6, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !138, file: !6, line: 679, baseType: !141, size: 32, offset: 9408)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !138, file: !6, line: 682, baseType: !235, size: 64, offset: 9472)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !138, file: !6, line: 683, baseType: !235, size: 64, offset: 9536)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !138, file: !6, line: 684, baseType: !235, size: 64, offset: 9600)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !138, file: !6, line: 686, baseType: !181, size: 128, offset: 9664)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !138, file: !6, line: 688, baseType: !141, size: 32, offset: 9792)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !138, file: !6, line: 690, baseType: !148, size: 32, offset: 9824)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !138, file: !6, line: 691, baseType: !704, size: 32, offset: 9856)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !138, file: !6, line: 693, baseType: !285, size: 64, offset: 9920)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !138, file: !6, line: 696, baseType: !285, size: 64, offset: 9984)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !138, file: !6, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !138, file: !6, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !138, file: !6, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !138, file: !6, line: 702, baseType: !3795, size: 64, offset: 10112)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !6, line: 28, flags: DIFlagFwdDecl)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !138, file: !6, line: 703, baseType: !141, size: 32, offset: 10176)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !138, file: !6, line: 704, baseType: !108, size: 32, offset: 10208)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !138, file: !6, line: 705, baseType: !3800, size: 64, offset: 10240)
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !6, line: 502, size: 64, elements: !3801)
!3801 = !{!3802, !3803}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !3800, file: !6, line: 506, baseType: !7, size: 32)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3800, file: !6, line: 512, baseType: !141, size: 32, offset: 32)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !138, file: !6, line: 706, baseType: !3805, size: 128, offset: 10304)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !6, line: 522, size: 128, elements: !3806)
!3806 = !{!3807, !3808, !3809, !3810}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !3805, file: !6, line: 529, baseType: !7, size: 32)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !3805, file: !6, line: 535, baseType: !7, size: 32, offset: 32)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !3805, file: !6, line: 545, baseType: !7, size: 32, offset: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3805, file: !6, line: 551, baseType: !141, size: 32, offset: 96)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !138, file: !6, line: 707, baseType: !3805, size: 128, offset: 10432)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !138, file: !6, line: 708, baseType: !7, size: 32, offset: 10560)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !138, file: !6, line: 710, baseType: !816, size: 16, offset: 10592)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !138, file: !6, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !144)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !184)
!3822 = !{!0, !3823, !3828, !3833, !3838, !3843, !3848, !3909, !3911, !3913}
!3823 = !DIGlobalVariableExpression(var: !3824, expr: !DIExpression())
!3824 = distinct !DIGlobalVariable(name: "__exitcall_ds_driver_exit", scope: !2, file: !3, line: 1087, type: !3825, isLocal: true, isDefinition: true)
!3825 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3826, line: 117, baseType: !3827)
!3826 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!3828 = !DIGlobalVariableExpression(var: !3829, expr: !DIExpression())
!3829 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author215", scope: !2, file: !3, line: 1089, type: !3830, isLocal: true, isDefinition: true, align: 8)
!3830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 392, elements: !3831)
!3831 = !{!3832}
!3832 = !DISubrange(count: 49)
!3833 = !DIGlobalVariableExpression(var: !3834, expr: !DIExpression())
!3834 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description216", scope: !2, file: !3, line: 1090, type: !3835, isLocal: true, isDefinition: true, align: 8)
!3835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 520, elements: !3836)
!3836 = !{!3837}
!3837 = !DISubrange(count: 65)
!3838 = !DIGlobalVariableExpression(var: !3839, expr: !DIExpression())
!3839 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file217", scope: !2, file: !3, line: 1091, type: !3840, isLocal: true, isDefinition: true, align: 8)
!3840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 304, elements: !3841)
!3841 = !{!3842}
!3842 = !DISubrange(count: 38)
!3843 = !DIGlobalVariableExpression(var: !3844, expr: !DIExpression())
!3844 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license218", scope: !2, file: !3, line: 1091, type: !3845, isLocal: true, isDefinition: true, align: 8)
!3845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 152, elements: !3846)
!3846 = !{!3847}
!3847 = !DISubrange(count: 19)
!3848 = !DIGlobalVariableExpression(var: !3849, expr: !DIExpression())
!3849 = distinct !DIGlobalVariable(name: "ds_driver", scope: !2, file: !3, line: 1081, type: !3850, isLocal: true, isDefinition: true)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !6, line: 1184, size: 2112, elements: !3851)
!3851 = !{!3852, !3853, !3874, !3878, !3882, !3886, !3890, !3891, !3892, !3893, !3894, !3895, !3900, !3905, !3906, !3907, !3908}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3850, file: !6, line: 1185, baseType: !178, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3850, file: !6, line: 1187, baseType: !3854, size: 64, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!141, !3707, !3857}
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3859)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3258, line: 121, size: 256, elements: !3860)
!3860 = !{!3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !3859, file: !3258, line: 123, baseType: !817, size: 16)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3859, file: !3258, line: 126, baseType: !817, size: 16, offset: 16)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3859, file: !3258, line: 127, baseType: !817, size: 16, offset: 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !3859, file: !3258, line: 128, baseType: !817, size: 16, offset: 48)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !3859, file: !3258, line: 129, baseType: !817, size: 16, offset: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3859, file: !3258, line: 132, baseType: !1230, size: 8, offset: 80)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3859, file: !3258, line: 133, baseType: !1230, size: 8, offset: 88)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3859, file: !3258, line: 134, baseType: !1230, size: 8, offset: 96)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3859, file: !3258, line: 137, baseType: !1230, size: 8, offset: 104)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3859, file: !3258, line: 138, baseType: !1230, size: 8, offset: 112)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3859, file: !3258, line: 139, baseType: !1230, size: 8, offset: 120)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3859, file: !3258, line: 142, baseType: !1230, size: 8, offset: 128)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3859, file: !3258, line: 145, baseType: !3277, size: 64, align: 64, offset: 192)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3850, file: !6, line: 1190, baseType: !3875, size: 64, offset: 128)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{null, !3707}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3850, file: !6, line: 1192, baseType: !3879, size: 64, offset: 192)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!141, !3707, !7, !136}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3850, file: !6, line: 1195, baseType: !3883, size: 64, offset: 256)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!141, !3707, !3288}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3850, file: !6, line: 1196, baseType: !3887, size: 64, offset: 320)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!141, !3707}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !3850, file: !6, line: 1197, baseType: !3887, size: 64, offset: 384)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !3850, file: !6, line: 1199, baseType: !3887, size: 64, offset: 448)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !3850, file: !6, line: 1200, baseType: !3887, size: 64, offset: 512)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3850, file: !6, line: 1202, baseType: !3857, size: 64, offset: 576)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3850, file: !6, line: 1203, baseType: !289, size: 64, offset: 640)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3850, file: !6, line: 1205, baseType: !3896, size: 128, offset: 704)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !6, line: 1091, size: 128, elements: !3897)
!3897 = !{!3898, !3899}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3896, file: !6, line: 1092, baseType: !194)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3896, file: !6, line: 1093, baseType: !181, size: 128)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !3850, file: !6, line: 1206, baseType: !3901, size: 1216, offset: 832)
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !6, line: 1113, size: 1216, elements: !3902)
!3902 = !{!3903, !3904}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3901, file: !6, line: 1114, baseType: !3246, size: 1152)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !3901, file: !6, line: 1115, baseType: !141, size: 32, offset: 1152)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !3850, file: !6, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !3850, file: !6, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !3850, file: !6, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !3850, file: !6, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!3909 = !DIGlobalVariableExpression(var: !3910, expr: !DIExpression())
!3910 = distinct !DIGlobalVariable(name: "ds_mutex", scope: !2, file: !3, line: 166, type: !1050, isLocal: true, isDefinition: true)
!3911 = !DIGlobalVariableExpression(var: !3912, expr: !DIExpression())
!3912 = distinct !DIGlobalVariable(name: "ds_devices", scope: !2, file: !3, line: 165, type: !181, isLocal: true, isDefinition: true)
!3913 = !DIGlobalVariableExpression(var: !3914, expr: !DIExpression())
!3914 = distinct !DIGlobalVariable(name: "ds_id_table", scope: !2, file: !3, line: 1075, type: !3915, isLocal: true, isDefinition: true)
!3915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3858, size: 512, elements: !162)
!3916 = !{i32 7, !"Dwarf Version", i32 4}
!3917 = !{i32 2, !"Debug Info Version", i32 3}
!3918 = !{i32 1, !"wchar_size", i32 2}
!3919 = !{i32 1, !"Code Model", i32 2}
!3920 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3921 = distinct !DISubprogram(name: "ds_driver_init", scope: !3, file: !3, line: 1087, type: !3922, scopeLine: 1087, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!141}
!3924 = !DILocation(line: 1087, column: 1, scope: !3921)
!3925 = distinct !DISubprogram(name: "ds_driver_exit", scope: !3, file: !3, line: 1087, type: !1752, scopeLine: 1087, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!3926 = !DILocation(line: 1087, column: 1, scope: !3925)
!3927 = distinct !DISubprogram(name: "ds_probe", scope: !3, file: !3, line: 972, type: !3855, scopeLine: 974, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!3928 = !DILocalVariable(name: "intf", arg: 1, scope: !3927, file: !3, line: 972, type: !3707)
!3929 = !DILocation(line: 972, column: 43, scope: !3927)
!3930 = !DILocalVariable(name: "udev_id", arg: 2, scope: !3927, file: !3, line: 973, type: !3857)
!3931 = !DILocation(line: 973, column: 35, scope: !3927)
!3932 = !DILocalVariable(name: "udev", scope: !3927, file: !3, line: 975, type: !137)
!3933 = !DILocation(line: 975, column: 21, scope: !3927)
!3934 = !DILocation(line: 975, column: 48, scope: !3927)
!3935 = !DILocation(line: 975, column: 28, scope: !3927)
!3936 = !DILocalVariable(name: "endpoint", scope: !3927, file: !3, line: 976, type: !3937)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3938 = !DILocation(line: 976, column: 34, scope: !3927)
!3939 = !DILocalVariable(name: "iface_desc", scope: !3927, file: !3, line: 977, type: !3711)
!3940 = !DILocation(line: 977, column: 29, scope: !3927)
!3941 = !DILocalVariable(name: "dev", scope: !3927, file: !3, line: 978, type: !3942)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ds_device", file: !3, line: 123, size: 1536, elements: !3944)
!3944 = !{!3945, !3946, !3947, !3948, !3950, !3951, !3952, !3954, !3955}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "ds_entry", scope: !3943, file: !3, line: 124, baseType: !181, size: 128)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "udev", scope: !3943, file: !3, line: 126, baseType: !137, size: 64, offset: 128)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !3943, file: !3, line: 127, baseType: !3707, size: 64, offset: 192)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !3943, file: !3, line: 129, baseType: !3949, size: 128, offset: 256)
!3949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 128, elements: !1032)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "spu_sleep", scope: !3943, file: !3, line: 134, baseType: !141, size: 32, offset: 384)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "spu_bit", scope: !3943, file: !3, line: 138, baseType: !816, size: 16, offset: 416)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "st_buf", scope: !3943, file: !3, line: 140, baseType: !3953, size: 256, offset: 432)
!3953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1229, size: 256, elements: !2091)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf", scope: !3943, file: !3, line: 141, baseType: !1229, size: 8, offset: 688)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !3943, file: !3, line: 143, baseType: !3956, size: 832, offset: 704)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "w1_bus_master", file: !126, line: 131, size: 832, elements: !3957)
!3957 = !{!3958, !3959, !3963, !3967, !3971, !3972, !3973, !3977, !3983, !3984, !3985, !3989, !4027}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3956, file: !126, line: 132, baseType: !136, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "read_bit", scope: !3956, file: !126, line: 134, baseType: !3960, size: 64, offset: 64)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!1229, !136}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "write_bit", scope: !3956, file: !126, line: 136, baseType: !3964, size: 64, offset: 128)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{null, !136, !1229}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "touch_bit", scope: !3956, file: !126, line: 138, baseType: !3968, size: 64, offset: 192)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{!1229, !136, !1229}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "read_byte", scope: !3956, file: !126, line: 140, baseType: !3960, size: 64, offset: 256)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "write_byte", scope: !3956, file: !126, line: 142, baseType: !3964, size: 64, offset: 320)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "read_block", scope: !3956, file: !126, line: 144, baseType: !3974, size: 64, offset: 384)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!1229, !136, !3815, !141}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "write_block", scope: !3956, file: !126, line: 146, baseType: !3978, size: 64, offset: 448)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{null, !136, !3981, !141}
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1229)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "triplet", scope: !3956, file: !126, line: 148, baseType: !3968, size: 64, offset: 512)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "reset_bus", scope: !3956, file: !126, line: 150, baseType: !3960, size: 64, offset: 576)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "set_pullup", scope: !3956, file: !126, line: 152, baseType: !3986, size: 64, offset: 640)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!1229, !136, !141}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !3956, file: !126, line: 154, baseType: !3990, size: 64, offset: 704)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{null, !136, !3993, !1229, !4023}
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "w1_master", file: !126, line: 199, size: 7680, elements: !3995)
!3995 = !{!3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4022}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "w1_master_entry", scope: !3994, file: !126, line: 200, baseType: !181, size: 128)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3994, file: !126, line: 201, baseType: !131, size: 64, offset: 128)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3994, file: !126, line: 202, baseType: !2911, size: 256, offset: 192)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "list_mutex", scope: !3994, file: !126, line: 208, baseType: !1050, size: 192, offset: 448)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "slist", scope: !3994, file: !126, line: 209, baseType: !181, size: 128, offset: 640)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "async_list", scope: !3994, file: !126, line: 210, baseType: !181, size: 128, offset: 768)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "max_slave_count", scope: !3994, file: !126, line: 211, baseType: !141, size: 32, offset: 896)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "slave_count", scope: !3994, file: !126, line: 211, baseType: !141, size: 32, offset: 928)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "attempts", scope: !3994, file: !126, line: 212, baseType: !285, size: 64, offset: 960)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ttl", scope: !3994, file: !126, line: 213, baseType: !141, size: 32, offset: 1024)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !3994, file: !126, line: 214, baseType: !141, size: 32, offset: 1056)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3994, file: !126, line: 215, baseType: !148, size: 32, offset: 1088)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "search_count", scope: !3994, file: !126, line: 216, baseType: !141, size: 32, offset: 1120)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "search_id", scope: !3994, file: !126, line: 218, baseType: !378, size: 64, offset: 1152)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3994, file: !126, line: 220, baseType: !704, size: 32, offset: 1216)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3994, file: !126, line: 222, baseType: !136, size: 64, offset: 1280)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "enable_pullup", scope: !3994, file: !126, line: 225, baseType: !141, size: 32, offset: 1344)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "pullup_duration", scope: !3994, file: !126, line: 227, baseType: !141, size: 32, offset: 1376)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3994, file: !126, line: 229, baseType: !270, size: 64, offset: 1408)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3994, file: !126, line: 231, baseType: !1093, size: 64, offset: 1472)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3994, file: !126, line: 232, baseType: !1050, size: 192, offset: 1536)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mutex", scope: !3994, file: !126, line: 233, baseType: !1050, size: 192, offset: 1728)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3994, file: !126, line: 235, baseType: !3245, size: 64, offset: 1920)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3994, file: !126, line: 236, baseType: !171, size: 5568, offset: 1984)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master", scope: !3994, file: !126, line: 238, baseType: !4021, size: 64, offset: 7552)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3994, file: !126, line: 240, baseType: !148, size: 32, offset: 7616)
!4023 = !DIDerivedType(tag: DW_TAG_typedef, name: "w1_slave_found_callback", file: !126, line: 81, baseType: !4024)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{null, !3993, !378}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !3956, file: !126, line: 157, baseType: !235, size: 64, offset: 768)
!4028 = !DILocation(line: 978, column: 20, scope: !3927)
!4029 = !DILocalVariable(name: "i", scope: !3927, file: !3, line: 979, type: !141)
!4030 = !DILocation(line: 979, column: 6, scope: !3927)
!4031 = !DILocalVariable(name: "err", scope: !3927, file: !3, line: 979, type: !141)
!4032 = !DILocation(line: 979, column: 9, scope: !3927)
!4033 = !DILocalVariable(name: "alt", scope: !3927, file: !3, line: 979, type: !141)
!4034 = !DILocation(line: 979, column: 14, scope: !3927)
!4035 = !DILocation(line: 981, column: 8, scope: !3927)
!4036 = !DILocation(line: 981, column: 6, scope: !3927)
!4037 = !DILocation(line: 982, column: 7, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 982, column: 6)
!4039 = !DILocation(line: 982, column: 6, scope: !3927)
!4040 = !DILocation(line: 983, column: 3, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 982, column: 12)
!4042 = !DILocation(line: 984, column: 3, scope: !4041)
!4043 = !DILocation(line: 986, column: 26, scope: !3927)
!4044 = !DILocation(line: 986, column: 14, scope: !3927)
!4045 = !DILocation(line: 986, column: 2, scope: !3927)
!4046 = !DILocation(line: 986, column: 7, scope: !3927)
!4047 = !DILocation(line: 986, column: 12, scope: !3927)
!4048 = !DILocation(line: 987, column: 7, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 987, column: 6)
!4050 = !DILocation(line: 987, column: 12, scope: !4049)
!4051 = !DILocation(line: 987, column: 6, scope: !3927)
!4052 = !DILocation(line: 988, column: 7, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4049, file: !3, line: 987, column: 18)
!4054 = !DILocation(line: 989, column: 3, scope: !4053)
!4055 = !DILocation(line: 991, column: 9, scope: !3927)
!4056 = !DILocation(line: 991, column: 14, scope: !3927)
!4057 = !DILocation(line: 991, column: 2, scope: !3927)
!4058 = !DILocation(line: 993, column: 19, scope: !3927)
!4059 = !DILocation(line: 993, column: 25, scope: !3927)
!4060 = !DILocation(line: 993, column: 2, scope: !3927)
!4061 = !DILocation(line: 995, column: 32, scope: !3927)
!4062 = !DILocation(line: 995, column: 37, scope: !3927)
!4063 = !DILocation(line: 995, column: 8, scope: !3927)
!4064 = !DILocation(line: 995, column: 6, scope: !3927)
!4065 = !DILocation(line: 996, column: 6, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 996, column: 6)
!4067 = !DILocation(line: 996, column: 6, scope: !3927)
!4068 = !DILocation(line: 997, column: 3, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4066, file: !3, line: 996, column: 11)
!4070 = !DILocation(line: 999, column: 3, scope: !4069)
!4071 = !DILocation(line: 1003, column: 6, scope: !3927)
!4072 = !DILocation(line: 1004, column: 26, scope: !3927)
!4073 = !DILocation(line: 1004, column: 31, scope: !3927)
!4074 = !DILocation(line: 1005, column: 3, scope: !3927)
!4075 = !DILocation(line: 1005, column: 9, scope: !3927)
!4076 = !DILocation(line: 1005, column: 25, scope: !3927)
!4077 = !DILocation(line: 1005, column: 30, scope: !3927)
!4078 = !DILocation(line: 1005, column: 48, scope: !3927)
!4079 = !DILocation(line: 1004, column: 8, scope: !3927)
!4080 = !DILocation(line: 1004, column: 6, scope: !3927)
!4081 = !DILocation(line: 1006, column: 6, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 1006, column: 6)
!4083 = !DILocation(line: 1006, column: 6, scope: !3927)
!4084 = !DILocation(line: 1007, column: 3, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4082, file: !3, line: 1006, column: 11)
!4086 = !DILocation(line: 1010, column: 3, scope: !4085)
!4087 = !DILocation(line: 1013, column: 15, scope: !3927)
!4088 = !DILocation(line: 1013, column: 21, scope: !3927)
!4089 = !DILocation(line: 1013, column: 13, scope: !3927)
!4090 = !DILocation(line: 1014, column: 6, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 1014, column: 6)
!4092 = !DILocation(line: 1014, column: 18, scope: !4091)
!4093 = !DILocation(line: 1014, column: 23, scope: !4091)
!4094 = !DILocation(line: 1014, column: 37, scope: !4091)
!4095 = !DILocation(line: 1014, column: 6, scope: !3927)
!4096 = !DILocation(line: 1015, column: 3, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4091, file: !3, line: 1014, column: 50)
!4098 = !DILocation(line: 1017, column: 7, scope: !4097)
!4099 = !DILocation(line: 1018, column: 3, scope: !4097)
!4100 = !DILocation(line: 1025, column: 9, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 1025, column: 2)
!4102 = !DILocation(line: 1025, column: 7, scope: !4101)
!4103 = !DILocation(line: 1025, column: 14, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4101, file: !3, line: 1025, column: 2)
!4105 = !DILocation(line: 1025, column: 18, scope: !4104)
!4106 = !DILocation(line: 1025, column: 30, scope: !4104)
!4107 = !DILocation(line: 1025, column: 35, scope: !4104)
!4108 = !DILocation(line: 1025, column: 16, scope: !4104)
!4109 = !DILocation(line: 1025, column: 2, scope: !4101)
!4110 = !DILocation(line: 1026, column: 15, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4104, file: !3, line: 1025, column: 55)
!4112 = !DILocation(line: 1026, column: 27, scope: !4111)
!4113 = !DILocation(line: 1026, column: 36, scope: !4111)
!4114 = !DILocation(line: 1026, column: 39, scope: !4111)
!4115 = !DILocation(line: 1026, column: 12, scope: !4111)
!4116 = !DILocation(line: 1028, column: 18, scope: !4111)
!4117 = !DILocation(line: 1028, column: 28, scope: !4111)
!4118 = !DILocation(line: 1028, column: 3, scope: !4111)
!4119 = !DILocation(line: 1028, column: 8, scope: !4111)
!4120 = !DILocation(line: 1028, column: 11, scope: !4111)
!4121 = !DILocation(line: 1028, column: 12, scope: !4111)
!4122 = !DILocation(line: 1028, column: 16, scope: !4111)
!4123 = !DILocation(line: 1035, column: 2, scope: !4111)
!4124 = !DILocation(line: 1025, column: 50, scope: !4104)
!4125 = !DILocation(line: 1025, column: 2, scope: !4104)
!4126 = distinct !{!4126, !4109, !4127}
!4127 = !DILocation(line: 1035, column: 2, scope: !4101)
!4128 = !DILocation(line: 1037, column: 19, scope: !3927)
!4129 = !DILocation(line: 1037, column: 8, scope: !3927)
!4130 = !DILocation(line: 1037, column: 6, scope: !3927)
!4131 = !DILocation(line: 1038, column: 6, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 1038, column: 6)
!4133 = !DILocation(line: 1038, column: 6, scope: !3927)
!4134 = !DILocation(line: 1039, column: 3, scope: !4132)
!4135 = !DILocation(line: 1041, column: 2, scope: !3927)
!4136 = !DILocation(line: 1042, column: 17, scope: !3927)
!4137 = !DILocation(line: 1042, column: 22, scope: !3927)
!4138 = !DILocation(line: 1042, column: 2, scope: !3927)
!4139 = !DILocation(line: 1043, column: 2, scope: !3927)
!4140 = !DILocation(line: 1045, column: 2, scope: !3927)
!4141 = !DILabel(scope: !3927, name: "err_out_clear", file: !3, line: 1047)
!4142 = !DILocation(line: 1047, column: 1, scope: !3927)
!4143 = !DILocation(line: 1048, column: 19, scope: !3927)
!4144 = !DILocation(line: 1048, column: 2, scope: !3927)
!4145 = !DILocation(line: 1049, column: 14, scope: !3927)
!4146 = !DILocation(line: 1049, column: 19, scope: !3927)
!4147 = !DILocation(line: 1049, column: 2, scope: !3927)
!4148 = !DILabel(scope: !3927, name: "err_out_free", file: !3, line: 1050)
!4149 = !DILocation(line: 1050, column: 1, scope: !3927)
!4150 = !DILocation(line: 1051, column: 8, scope: !3927)
!4151 = !DILocation(line: 1051, column: 2, scope: !3927)
!4152 = !DILocation(line: 1052, column: 9, scope: !3927)
!4153 = !DILocation(line: 1052, column: 2, scope: !3927)
!4154 = !DILocation(line: 1053, column: 1, scope: !3927)
!4155 = distinct !DISubprogram(name: "ds_disconnect", scope: !3, file: !3, line: 1055, type: !3876, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4156 = !DILocalVariable(name: "intf", arg: 1, scope: !4155, file: !3, line: 1055, type: !3707)
!4157 = !DILocation(line: 1055, column: 49, scope: !4155)
!4158 = !DILocalVariable(name: "dev", scope: !4155, file: !3, line: 1057, type: !3942)
!4159 = !DILocation(line: 1057, column: 20, scope: !4155)
!4160 = !DILocation(line: 1059, column: 25, scope: !4155)
!4161 = !DILocation(line: 1059, column: 8, scope: !4155)
!4162 = !DILocation(line: 1059, column: 6, scope: !4155)
!4163 = !DILocation(line: 1060, column: 7, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4155, file: !3, line: 1060, column: 6)
!4165 = !DILocation(line: 1060, column: 6, scope: !4155)
!4166 = !DILocation(line: 1061, column: 3, scope: !4164)
!4167 = !DILocation(line: 1063, column: 2, scope: !4155)
!4168 = !DILocation(line: 1064, column: 12, scope: !4155)
!4169 = !DILocation(line: 1064, column: 17, scope: !4155)
!4170 = !DILocation(line: 1064, column: 2, scope: !4155)
!4171 = !DILocation(line: 1065, column: 2, scope: !4155)
!4172 = !DILocation(line: 1067, column: 13, scope: !4155)
!4173 = !DILocation(line: 1067, column: 2, scope: !4155)
!4174 = !DILocation(line: 1069, column: 19, scope: !4155)
!4175 = !DILocation(line: 1069, column: 2, scope: !4155)
!4176 = !DILocation(line: 1071, column: 14, scope: !4155)
!4177 = !DILocation(line: 1071, column: 19, scope: !4155)
!4178 = !DILocation(line: 1071, column: 2, scope: !4155)
!4179 = !DILocation(line: 1072, column: 8, scope: !4155)
!4180 = !DILocation(line: 1072, column: 2, scope: !4155)
!4181 = !DILocation(line: 1073, column: 1, scope: !4155)
!4182 = distinct !DISubprogram(name: "interface_to_usbdev", scope: !6, file: !6, line: 715, type: !4183, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!137, !3707}
!4185 = !DILocalVariable(name: "intf", arg: 1, scope: !4182, file: !6, line: 715, type: !3707)
!4186 = !DILocation(line: 715, column: 76, scope: !4182)
!4187 = !DILocalVariable(name: "__mptr", scope: !4188, file: !6, line: 717, type: !136)
!4188 = distinct !DILexicalBlock(scope: !4182, file: !6, line: 717, column: 9)
!4189 = !DILocation(line: 717, column: 9, scope: !4188)
!4190 = !DILocation(line: 717, column: 9, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4188, file: !6, line: 717, column: 9)
!4192 = !DILocation(line: 717, column: 2, scope: !4182)
!4193 = distinct !DISubprogram(name: "kzalloc", scope: !114, file: !114, line: 662, type: !4194, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!136, !282, !134}
!4196 = !DILocalVariable(name: "s", arg: 1, scope: !4197, file: !114, line: 445, type: !892)
!4197 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !114, file: !114, line: 445, type: !4198, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!136, !892, !134, !282}
!4200 = !DILocation(line: 445, column: 72, scope: !4197, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 552, column: 10, scope: !4202, inlinedAt: !4205)
!4202 = distinct !DILexicalBlock(scope: !4203, file: !114, line: 540, column: 34)
!4203 = distinct !DILexicalBlock(scope: !4204, file: !114, line: 540, column: 6)
!4204 = distinct !DISubprogram(name: "kmalloc", scope: !114, file: !114, line: 538, type: !4194, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4205 = distinct !DILocation(line: 664, column: 9, scope: !4193)
!4206 = !DILocalVariable(name: "flags", arg: 2, scope: !4197, file: !114, line: 446, type: !134)
!4207 = !DILocation(line: 446, column: 9, scope: !4197, inlinedAt: !4201)
!4208 = !DILocalVariable(name: "size", arg: 3, scope: !4197, file: !114, line: 446, type: !282)
!4209 = !DILocation(line: 446, column: 23, scope: !4197, inlinedAt: !4201)
!4210 = !DILocalVariable(name: "ret", scope: !4197, file: !114, line: 448, type: !136)
!4211 = !DILocation(line: 448, column: 8, scope: !4197, inlinedAt: !4201)
!4212 = !DILocalVariable(name: "flags", arg: 1, scope: !4213, file: !114, line: 318, type: !134)
!4213 = distinct !DISubprogram(name: "kmalloc_type", scope: !114, file: !114, line: 318, type: !4214, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!113, !134}
!4216 = !DILocation(line: 318, column: 67, scope: !4213, inlinedAt: !4217)
!4217 = distinct !DILocation(line: 553, column: 20, scope: !4202, inlinedAt: !4205)
!4218 = !DILocalVariable(name: "size", arg: 1, scope: !4219, file: !114, line: 346, type: !282)
!4219 = distinct !DISubprogram(name: "kmalloc_index", scope: !114, file: !114, line: 346, type: !4220, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!7, !282}
!4222 = !DILocation(line: 346, column: 58, scope: !4219, inlinedAt: !4223)
!4223 = distinct !DILocation(line: 547, column: 11, scope: !4202, inlinedAt: !4205)
!4224 = !DILocalVariable(name: "size", arg: 1, scope: !4225, file: !114, line: 472, type: !282)
!4225 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !114, file: !114, line: 472, type: !4226, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!136, !282, !134, !7}
!4228 = !DILocation(line: 472, column: 28, scope: !4225, inlinedAt: !4229)
!4229 = distinct !DILocation(line: 481, column: 9, scope: !4230, inlinedAt: !4231)
!4230 = distinct !DISubprogram(name: "kmalloc_large", scope: !114, file: !114, line: 478, type: !4194, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4231 = distinct !DILocation(line: 545, column: 11, scope: !4232, inlinedAt: !4205)
!4232 = distinct !DILexicalBlock(scope: !4202, file: !114, line: 544, column: 7)
!4233 = !DILocalVariable(name: "flags", arg: 2, scope: !4225, file: !114, line: 472, type: !134)
!4234 = !DILocation(line: 472, column: 40, scope: !4225, inlinedAt: !4229)
!4235 = !DILocalVariable(name: "order", arg: 3, scope: !4225, file: !114, line: 472, type: !7)
!4236 = !DILocation(line: 472, column: 60, scope: !4225, inlinedAt: !4229)
!4237 = !DILocalVariable(name: "size", arg: 1, scope: !4230, file: !114, line: 478, type: !282)
!4238 = !DILocation(line: 478, column: 51, scope: !4230, inlinedAt: !4231)
!4239 = !DILocalVariable(name: "flags", arg: 2, scope: !4230, file: !114, line: 478, type: !134)
!4240 = !DILocation(line: 478, column: 63, scope: !4230, inlinedAt: !4231)
!4241 = !DILocalVariable(name: "order", scope: !4230, file: !114, line: 480, type: !7)
!4242 = !DILocation(line: 480, column: 15, scope: !4230, inlinedAt: !4231)
!4243 = !DILocalVariable(name: "size", arg: 1, scope: !4204, file: !114, line: 538, type: !282)
!4244 = !DILocation(line: 538, column: 45, scope: !4204, inlinedAt: !4205)
!4245 = !DILocalVariable(name: "flags", arg: 2, scope: !4204, file: !114, line: 538, type: !134)
!4246 = !DILocation(line: 538, column: 57, scope: !4204, inlinedAt: !4205)
!4247 = !DILocalVariable(name: "index", scope: !4202, file: !114, line: 542, type: !7)
!4248 = !DILocation(line: 542, column: 16, scope: !4202, inlinedAt: !4205)
!4249 = !DILocalVariable(name: "size", arg: 1, scope: !4193, file: !114, line: 662, type: !282)
!4250 = !DILocation(line: 662, column: 36, scope: !4193)
!4251 = !DILocalVariable(name: "flags", arg: 2, scope: !4193, file: !114, line: 662, type: !134)
!4252 = !DILocation(line: 662, column: 48, scope: !4193)
!4253 = !DILocation(line: 664, column: 17, scope: !4193)
!4254 = !DILocation(line: 664, column: 23, scope: !4193)
!4255 = !DILocation(line: 664, column: 29, scope: !4193)
!4256 = !DILocation(line: 540, column: 27, scope: !4203, inlinedAt: !4205)
!4257 = !DILocation(line: 540, column: 6, scope: !4203, inlinedAt: !4205)
!4258 = !DILocation(line: 540, column: 6, scope: !4204, inlinedAt: !4205)
!4259 = !DILocation(line: 544, column: 7, scope: !4232, inlinedAt: !4205)
!4260 = !DILocation(line: 544, column: 12, scope: !4232, inlinedAt: !4205)
!4261 = !DILocation(line: 544, column: 7, scope: !4202, inlinedAt: !4205)
!4262 = !DILocation(line: 545, column: 25, scope: !4232, inlinedAt: !4205)
!4263 = !DILocation(line: 545, column: 31, scope: !4232, inlinedAt: !4205)
!4264 = !DILocation(line: 480, column: 33, scope: !4230, inlinedAt: !4231)
!4265 = !DILocation(line: 480, column: 23, scope: !4230, inlinedAt: !4231)
!4266 = !DILocation(line: 481, column: 29, scope: !4230, inlinedAt: !4231)
!4267 = !DILocation(line: 481, column: 35, scope: !4230, inlinedAt: !4231)
!4268 = !DILocation(line: 481, column: 42, scope: !4230, inlinedAt: !4231)
!4269 = !DILocation(line: 474, column: 23, scope: !4225, inlinedAt: !4229)
!4270 = !DILocation(line: 474, column: 29, scope: !4225, inlinedAt: !4229)
!4271 = !DILocation(line: 474, column: 36, scope: !4225, inlinedAt: !4229)
!4272 = !DILocation(line: 474, column: 9, scope: !4225, inlinedAt: !4229)
!4273 = !DILocation(line: 545, column: 4, scope: !4232, inlinedAt: !4205)
!4274 = !DILocation(line: 547, column: 25, scope: !4202, inlinedAt: !4205)
!4275 = !DILocation(line: 348, column: 7, scope: !4276, inlinedAt: !4223)
!4276 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 348, column: 6)
!4277 = !DILocation(line: 348, column: 6, scope: !4219, inlinedAt: !4223)
!4278 = !DILocation(line: 349, column: 3, scope: !4276, inlinedAt: !4223)
!4279 = !DILocation(line: 351, column: 6, scope: !4280, inlinedAt: !4223)
!4280 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 351, column: 6)
!4281 = !DILocation(line: 351, column: 11, scope: !4280, inlinedAt: !4223)
!4282 = !DILocation(line: 351, column: 6, scope: !4219, inlinedAt: !4223)
!4283 = !DILocation(line: 352, column: 3, scope: !4280, inlinedAt: !4223)
!4284 = !DILocation(line: 354, column: 32, scope: !4285, inlinedAt: !4223)
!4285 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 354, column: 6)
!4286 = !DILocation(line: 354, column: 37, scope: !4285, inlinedAt: !4223)
!4287 = !DILocation(line: 354, column: 42, scope: !4285, inlinedAt: !4223)
!4288 = !DILocation(line: 354, column: 45, scope: !4285, inlinedAt: !4223)
!4289 = !DILocation(line: 354, column: 50, scope: !4285, inlinedAt: !4223)
!4290 = !DILocation(line: 354, column: 6, scope: !4219, inlinedAt: !4223)
!4291 = !DILocation(line: 355, column: 3, scope: !4285, inlinedAt: !4223)
!4292 = !DILocation(line: 356, column: 32, scope: !4293, inlinedAt: !4223)
!4293 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 356, column: 6)
!4294 = !DILocation(line: 356, column: 37, scope: !4293, inlinedAt: !4223)
!4295 = !DILocation(line: 356, column: 43, scope: !4293, inlinedAt: !4223)
!4296 = !DILocation(line: 356, column: 46, scope: !4293, inlinedAt: !4223)
!4297 = !DILocation(line: 356, column: 51, scope: !4293, inlinedAt: !4223)
!4298 = !DILocation(line: 356, column: 6, scope: !4219, inlinedAt: !4223)
!4299 = !DILocation(line: 357, column: 3, scope: !4293, inlinedAt: !4223)
!4300 = !DILocation(line: 358, column: 6, scope: !4301, inlinedAt: !4223)
!4301 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 358, column: 6)
!4302 = !DILocation(line: 358, column: 11, scope: !4301, inlinedAt: !4223)
!4303 = !DILocation(line: 358, column: 6, scope: !4219, inlinedAt: !4223)
!4304 = !DILocation(line: 358, column: 26, scope: !4301, inlinedAt: !4223)
!4305 = !DILocation(line: 359, column: 6, scope: !4306, inlinedAt: !4223)
!4306 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 359, column: 6)
!4307 = !DILocation(line: 359, column: 11, scope: !4306, inlinedAt: !4223)
!4308 = !DILocation(line: 359, column: 6, scope: !4219, inlinedAt: !4223)
!4309 = !DILocation(line: 359, column: 26, scope: !4306, inlinedAt: !4223)
!4310 = !DILocation(line: 360, column: 6, scope: !4311, inlinedAt: !4223)
!4311 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 360, column: 6)
!4312 = !DILocation(line: 360, column: 11, scope: !4311, inlinedAt: !4223)
!4313 = !DILocation(line: 360, column: 6, scope: !4219, inlinedAt: !4223)
!4314 = !DILocation(line: 360, column: 26, scope: !4311, inlinedAt: !4223)
!4315 = !DILocation(line: 361, column: 6, scope: !4316, inlinedAt: !4223)
!4316 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 361, column: 6)
!4317 = !DILocation(line: 361, column: 11, scope: !4316, inlinedAt: !4223)
!4318 = !DILocation(line: 361, column: 6, scope: !4219, inlinedAt: !4223)
!4319 = !DILocation(line: 361, column: 26, scope: !4316, inlinedAt: !4223)
!4320 = !DILocation(line: 362, column: 6, scope: !4321, inlinedAt: !4223)
!4321 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 362, column: 6)
!4322 = !DILocation(line: 362, column: 11, scope: !4321, inlinedAt: !4223)
!4323 = !DILocation(line: 362, column: 6, scope: !4219, inlinedAt: !4223)
!4324 = !DILocation(line: 362, column: 26, scope: !4321, inlinedAt: !4223)
!4325 = !DILocation(line: 363, column: 6, scope: !4326, inlinedAt: !4223)
!4326 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 363, column: 6)
!4327 = !DILocation(line: 363, column: 11, scope: !4326, inlinedAt: !4223)
!4328 = !DILocation(line: 363, column: 6, scope: !4219, inlinedAt: !4223)
!4329 = !DILocation(line: 363, column: 26, scope: !4326, inlinedAt: !4223)
!4330 = !DILocation(line: 364, column: 6, scope: !4331, inlinedAt: !4223)
!4331 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 364, column: 6)
!4332 = !DILocation(line: 364, column: 11, scope: !4331, inlinedAt: !4223)
!4333 = !DILocation(line: 364, column: 6, scope: !4219, inlinedAt: !4223)
!4334 = !DILocation(line: 364, column: 26, scope: !4331, inlinedAt: !4223)
!4335 = !DILocation(line: 365, column: 6, scope: !4336, inlinedAt: !4223)
!4336 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 365, column: 6)
!4337 = !DILocation(line: 365, column: 11, scope: !4336, inlinedAt: !4223)
!4338 = !DILocation(line: 365, column: 6, scope: !4219, inlinedAt: !4223)
!4339 = !DILocation(line: 365, column: 26, scope: !4336, inlinedAt: !4223)
!4340 = !DILocation(line: 366, column: 6, scope: !4341, inlinedAt: !4223)
!4341 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 366, column: 6)
!4342 = !DILocation(line: 366, column: 11, scope: !4341, inlinedAt: !4223)
!4343 = !DILocation(line: 366, column: 6, scope: !4219, inlinedAt: !4223)
!4344 = !DILocation(line: 366, column: 26, scope: !4341, inlinedAt: !4223)
!4345 = !DILocation(line: 367, column: 6, scope: !4346, inlinedAt: !4223)
!4346 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 367, column: 6)
!4347 = !DILocation(line: 367, column: 11, scope: !4346, inlinedAt: !4223)
!4348 = !DILocation(line: 367, column: 6, scope: !4219, inlinedAt: !4223)
!4349 = !DILocation(line: 367, column: 26, scope: !4346, inlinedAt: !4223)
!4350 = !DILocation(line: 368, column: 6, scope: !4351, inlinedAt: !4223)
!4351 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 368, column: 6)
!4352 = !DILocation(line: 368, column: 11, scope: !4351, inlinedAt: !4223)
!4353 = !DILocation(line: 368, column: 6, scope: !4219, inlinedAt: !4223)
!4354 = !DILocation(line: 368, column: 26, scope: !4351, inlinedAt: !4223)
!4355 = !DILocation(line: 369, column: 6, scope: !4356, inlinedAt: !4223)
!4356 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 369, column: 6)
!4357 = !DILocation(line: 369, column: 11, scope: !4356, inlinedAt: !4223)
!4358 = !DILocation(line: 369, column: 6, scope: !4219, inlinedAt: !4223)
!4359 = !DILocation(line: 369, column: 26, scope: !4356, inlinedAt: !4223)
!4360 = !DILocation(line: 370, column: 6, scope: !4361, inlinedAt: !4223)
!4361 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 370, column: 6)
!4362 = !DILocation(line: 370, column: 11, scope: !4361, inlinedAt: !4223)
!4363 = !DILocation(line: 370, column: 6, scope: !4219, inlinedAt: !4223)
!4364 = !DILocation(line: 370, column: 26, scope: !4361, inlinedAt: !4223)
!4365 = !DILocation(line: 371, column: 6, scope: !4366, inlinedAt: !4223)
!4366 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 371, column: 6)
!4367 = !DILocation(line: 371, column: 11, scope: !4366, inlinedAt: !4223)
!4368 = !DILocation(line: 371, column: 6, scope: !4219, inlinedAt: !4223)
!4369 = !DILocation(line: 371, column: 26, scope: !4366, inlinedAt: !4223)
!4370 = !DILocation(line: 372, column: 6, scope: !4371, inlinedAt: !4223)
!4371 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 372, column: 6)
!4372 = !DILocation(line: 372, column: 11, scope: !4371, inlinedAt: !4223)
!4373 = !DILocation(line: 372, column: 6, scope: !4219, inlinedAt: !4223)
!4374 = !DILocation(line: 372, column: 26, scope: !4371, inlinedAt: !4223)
!4375 = !DILocation(line: 373, column: 6, scope: !4376, inlinedAt: !4223)
!4376 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 373, column: 6)
!4377 = !DILocation(line: 373, column: 11, scope: !4376, inlinedAt: !4223)
!4378 = !DILocation(line: 373, column: 6, scope: !4219, inlinedAt: !4223)
!4379 = !DILocation(line: 373, column: 26, scope: !4376, inlinedAt: !4223)
!4380 = !DILocation(line: 374, column: 6, scope: !4381, inlinedAt: !4223)
!4381 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 374, column: 6)
!4382 = !DILocation(line: 374, column: 11, scope: !4381, inlinedAt: !4223)
!4383 = !DILocation(line: 374, column: 6, scope: !4219, inlinedAt: !4223)
!4384 = !DILocation(line: 374, column: 26, scope: !4381, inlinedAt: !4223)
!4385 = !DILocation(line: 375, column: 6, scope: !4386, inlinedAt: !4223)
!4386 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 375, column: 6)
!4387 = !DILocation(line: 375, column: 11, scope: !4386, inlinedAt: !4223)
!4388 = !DILocation(line: 375, column: 6, scope: !4219, inlinedAt: !4223)
!4389 = !DILocation(line: 375, column: 27, scope: !4386, inlinedAt: !4223)
!4390 = !DILocation(line: 376, column: 6, scope: !4391, inlinedAt: !4223)
!4391 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 376, column: 6)
!4392 = !DILocation(line: 376, column: 11, scope: !4391, inlinedAt: !4223)
!4393 = !DILocation(line: 376, column: 6, scope: !4219, inlinedAt: !4223)
!4394 = !DILocation(line: 376, column: 32, scope: !4391, inlinedAt: !4223)
!4395 = !DILocation(line: 377, column: 6, scope: !4396, inlinedAt: !4223)
!4396 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 377, column: 6)
!4397 = !DILocation(line: 377, column: 11, scope: !4396, inlinedAt: !4223)
!4398 = !DILocation(line: 377, column: 6, scope: !4219, inlinedAt: !4223)
!4399 = !DILocation(line: 377, column: 32, scope: !4396, inlinedAt: !4223)
!4400 = !DILocation(line: 378, column: 6, scope: !4401, inlinedAt: !4223)
!4401 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 378, column: 6)
!4402 = !DILocation(line: 378, column: 11, scope: !4401, inlinedAt: !4223)
!4403 = !DILocation(line: 378, column: 6, scope: !4219, inlinedAt: !4223)
!4404 = !DILocation(line: 378, column: 32, scope: !4401, inlinedAt: !4223)
!4405 = !DILocation(line: 379, column: 6, scope: !4406, inlinedAt: !4223)
!4406 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 379, column: 6)
!4407 = !DILocation(line: 379, column: 11, scope: !4406, inlinedAt: !4223)
!4408 = !DILocation(line: 379, column: 6, scope: !4219, inlinedAt: !4223)
!4409 = !DILocation(line: 379, column: 33, scope: !4406, inlinedAt: !4223)
!4410 = !DILocation(line: 380, column: 6, scope: !4411, inlinedAt: !4223)
!4411 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 380, column: 6)
!4412 = !DILocation(line: 380, column: 11, scope: !4411, inlinedAt: !4223)
!4413 = !DILocation(line: 380, column: 6, scope: !4219, inlinedAt: !4223)
!4414 = !DILocation(line: 380, column: 33, scope: !4411, inlinedAt: !4223)
!4415 = !DILocation(line: 381, column: 6, scope: !4416, inlinedAt: !4223)
!4416 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 381, column: 6)
!4417 = !DILocation(line: 381, column: 11, scope: !4416, inlinedAt: !4223)
!4418 = !DILocation(line: 381, column: 6, scope: !4219, inlinedAt: !4223)
!4419 = !DILocation(line: 381, column: 33, scope: !4416, inlinedAt: !4223)
!4420 = !DILocation(line: 382, column: 2, scope: !4421, inlinedAt: !4223)
!4421 = distinct !DILexicalBlock(scope: !4422, file: !114, line: 382, column: 2)
!4422 = distinct !DILexicalBlock(scope: !4219, file: !114, line: 382, column: 2)
!4423 = !{i32 -2142614273, i32 -2142614244, i32 -2142614198, i32 -2142614140, i32 -2142614086, i32 -2142614032, i32 -2142613977, i32 -2142613946}
!4424 = !DILocation(line: 382, column: 2, scope: !4425, inlinedAt: !4223)
!4425 = distinct !DILexicalBlock(scope: !4426, file: !114, line: 382, column: 2)
!4426 = distinct !DILexicalBlock(scope: !4422, file: !114, line: 382, column: 2)
!4427 = !{i32 -2142613503, i32 -2142613496, i32 -2142613442, i32 -2142613411, i32 -2142613381}
!4428 = !DILocation(line: 382, column: 2, scope: !4426, inlinedAt: !4223)
!4429 = !DILocation(line: 386, column: 1, scope: !4219, inlinedAt: !4223)
!4430 = !DILocation(line: 547, column: 9, scope: !4202, inlinedAt: !4205)
!4431 = !DILocation(line: 549, column: 8, scope: !4432, inlinedAt: !4205)
!4432 = distinct !DILexicalBlock(scope: !4202, file: !114, line: 549, column: 7)
!4433 = !DILocation(line: 549, column: 7, scope: !4202, inlinedAt: !4205)
!4434 = !DILocation(line: 550, column: 4, scope: !4432, inlinedAt: !4205)
!4435 = !DILocation(line: 553, column: 33, scope: !4202, inlinedAt: !4205)
!4436 = !DILocation(line: 325, column: 6, scope: !4437, inlinedAt: !4217)
!4437 = distinct !DILexicalBlock(scope: !4213, file: !114, line: 325, column: 6)
!4438 = !DILocation(line: 325, column: 6, scope: !4213, inlinedAt: !4217)
!4439 = !DILocation(line: 326, column: 3, scope: !4437, inlinedAt: !4217)
!4440 = !DILocation(line: 332, column: 9, scope: !4213, inlinedAt: !4217)
!4441 = !DILocation(line: 332, column: 15, scope: !4213, inlinedAt: !4217)
!4442 = !DILocation(line: 332, column: 2, scope: !4213, inlinedAt: !4217)
!4443 = !DILocation(line: 336, column: 1, scope: !4213, inlinedAt: !4217)
!4444 = !DILocation(line: 553, column: 5, scope: !4202, inlinedAt: !4205)
!4445 = !DILocation(line: 553, column: 41, scope: !4202, inlinedAt: !4205)
!4446 = !DILocation(line: 554, column: 5, scope: !4202, inlinedAt: !4205)
!4447 = !DILocation(line: 554, column: 12, scope: !4202, inlinedAt: !4205)
!4448 = !DILocation(line: 448, column: 31, scope: !4197, inlinedAt: !4201)
!4449 = !DILocation(line: 448, column: 34, scope: !4197, inlinedAt: !4201)
!4450 = !DILocation(line: 448, column: 14, scope: !4197, inlinedAt: !4201)
!4451 = !DILocation(line: 450, column: 22, scope: !4197, inlinedAt: !4201)
!4452 = !DILocation(line: 450, column: 25, scope: !4197, inlinedAt: !4201)
!4453 = !DILocation(line: 450, column: 30, scope: !4197, inlinedAt: !4201)
!4454 = !DILocation(line: 450, column: 36, scope: !4197, inlinedAt: !4201)
!4455 = !DILocation(line: 450, column: 8, scope: !4197, inlinedAt: !4201)
!4456 = !DILocation(line: 450, column: 6, scope: !4197, inlinedAt: !4201)
!4457 = !DILocation(line: 451, column: 9, scope: !4197, inlinedAt: !4201)
!4458 = !DILocation(line: 552, column: 3, scope: !4202, inlinedAt: !4205)
!4459 = !DILocation(line: 557, column: 19, scope: !4204, inlinedAt: !4205)
!4460 = !DILocation(line: 557, column: 25, scope: !4204, inlinedAt: !4205)
!4461 = !DILocation(line: 557, column: 9, scope: !4204, inlinedAt: !4205)
!4462 = !DILocation(line: 557, column: 2, scope: !4204, inlinedAt: !4205)
!4463 = !DILocation(line: 558, column: 1, scope: !4204, inlinedAt: !4205)
!4464 = !DILocation(line: 664, column: 2, scope: !4193)
!4465 = distinct !DISubprogram(name: "usb_set_intfdata", scope: !6, file: !6, line: 268, type: !4466, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{null, !3707, !136}
!4468 = !DILocalVariable(name: "intf", arg: 1, scope: !4465, file: !6, line: 268, type: !3707)
!4469 = !DILocation(line: 268, column: 59, scope: !4465)
!4470 = !DILocalVariable(name: "data", arg: 2, scope: !4465, file: !6, line: 268, type: !136)
!4471 = !DILocation(line: 268, column: 71, scope: !4465)
!4472 = !DILocation(line: 270, column: 19, scope: !4465)
!4473 = !DILocation(line: 270, column: 25, scope: !4465)
!4474 = !DILocation(line: 270, column: 30, scope: !4465)
!4475 = !DILocation(line: 270, column: 2, scope: !4465)
!4476 = !DILocation(line: 271, column: 1, scope: !4465)
!4477 = distinct !DISubprogram(name: "ds_w1_init", scope: !3, file: !3, line: 929, type: !4478, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{!141, !3942}
!4480 = !DILocalVariable(name: "dev", arg: 1, scope: !4477, file: !3, line: 929, type: !3942)
!4481 = !DILocation(line: 929, column: 41, scope: !4477)
!4482 = !DILocation(line: 931, column: 10, scope: !4477)
!4483 = !DILocation(line: 931, column: 15, scope: !4477)
!4484 = !DILocation(line: 931, column: 2, scope: !4477)
!4485 = !DILocation(line: 943, column: 18, scope: !4477)
!4486 = !DILocation(line: 943, column: 2, scope: !4477)
!4487 = !DILocation(line: 945, column: 21, scope: !4477)
!4488 = !DILocation(line: 945, column: 2, scope: !4477)
!4489 = !DILocation(line: 945, column: 7, scope: !4477)
!4490 = !DILocation(line: 945, column: 14, scope: !4477)
!4491 = !DILocation(line: 945, column: 19, scope: !4477)
!4492 = !DILocation(line: 946, column: 2, scope: !4477)
!4493 = !DILocation(line: 946, column: 7, scope: !4477)
!4494 = !DILocation(line: 946, column: 14, scope: !4477)
!4495 = !DILocation(line: 946, column: 24, scope: !4477)
!4496 = !DILocation(line: 956, column: 2, scope: !4477)
!4497 = !DILocation(line: 956, column: 7, scope: !4477)
!4498 = !DILocation(line: 956, column: 14, scope: !4477)
!4499 = !DILocation(line: 956, column: 24, scope: !4477)
!4500 = !DILocation(line: 957, column: 2, scope: !4477)
!4501 = !DILocation(line: 957, column: 7, scope: !4477)
!4502 = !DILocation(line: 957, column: 14, scope: !4477)
!4503 = !DILocation(line: 957, column: 25, scope: !4477)
!4504 = !DILocation(line: 958, column: 2, scope: !4477)
!4505 = !DILocation(line: 958, column: 7, scope: !4477)
!4506 = !DILocation(line: 958, column: 14, scope: !4477)
!4507 = !DILocation(line: 958, column: 25, scope: !4477)
!4508 = !DILocation(line: 959, column: 2, scope: !4477)
!4509 = !DILocation(line: 959, column: 7, scope: !4477)
!4510 = !DILocation(line: 959, column: 14, scope: !4477)
!4511 = !DILocation(line: 959, column: 26, scope: !4477)
!4512 = !DILocation(line: 960, column: 2, scope: !4477)
!4513 = !DILocation(line: 960, column: 7, scope: !4477)
!4514 = !DILocation(line: 960, column: 14, scope: !4477)
!4515 = !DILocation(line: 960, column: 24, scope: !4477)
!4516 = !DILocation(line: 961, column: 2, scope: !4477)
!4517 = !DILocation(line: 961, column: 7, scope: !4477)
!4518 = !DILocation(line: 961, column: 14, scope: !4477)
!4519 = !DILocation(line: 961, column: 25, scope: !4477)
!4520 = !DILocation(line: 962, column: 2, scope: !4477)
!4521 = !DILocation(line: 962, column: 7, scope: !4477)
!4522 = !DILocation(line: 962, column: 14, scope: !4477)
!4523 = !DILocation(line: 962, column: 21, scope: !4477)
!4524 = !DILocation(line: 964, column: 31, scope: !4477)
!4525 = !DILocation(line: 964, column: 36, scope: !4477)
!4526 = !DILocation(line: 964, column: 9, scope: !4477)
!4527 = !DILocation(line: 964, column: 2, scope: !4477)
!4528 = distinct !DISubprogram(name: "list_add_tail", scope: !4529, file: !4529, line: 98, type: !4530, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4529 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4530 = !DISubroutineType(types: !4531)
!4531 = !{null, !184, !184}
!4532 = !DILocalVariable(name: "new", arg: 1, scope: !4528, file: !4529, line: 98, type: !184)
!4533 = !DILocation(line: 98, column: 52, scope: !4528)
!4534 = !DILocalVariable(name: "head", arg: 2, scope: !4528, file: !4529, line: 98, type: !184)
!4535 = !DILocation(line: 98, column: 75, scope: !4528)
!4536 = !DILocation(line: 100, column: 13, scope: !4528)
!4537 = !DILocation(line: 100, column: 18, scope: !4528)
!4538 = !DILocation(line: 100, column: 24, scope: !4528)
!4539 = !DILocation(line: 100, column: 30, scope: !4528)
!4540 = !DILocation(line: 100, column: 2, scope: !4528)
!4541 = !DILocation(line: 101, column: 1, scope: !4528)
!4542 = distinct !DISubprogram(name: "get_order", scope: !4543, file: !4543, line: 29, type: !4544, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4543 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!141, !285}
!4546 = !DILocalVariable(name: "x", arg: 1, scope: !4547, file: !4548, line: 366, type: !379)
!4547 = distinct !DISubprogram(name: "fls64", scope: !4548, file: !4548, line: 366, type: !4549, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4548 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!141, !379}
!4551 = !DILocation(line: 366, column: 40, scope: !4547, inlinedAt: !4552)
!4552 = distinct !DILocation(line: 46, column: 9, scope: !4542)
!4553 = !DILocalVariable(name: "bitpos", scope: !4547, file: !4548, line: 368, type: !141)
!4554 = !DILocation(line: 368, column: 6, scope: !4547, inlinedAt: !4552)
!4555 = !DILocalVariable(name: "size", arg: 1, scope: !4542, file: !4543, line: 29, type: !285)
!4556 = !DILocation(line: 29, column: 63, scope: !4542)
!4557 = !DILocation(line: 31, column: 27, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4542, file: !4543, line: 31, column: 6)
!4559 = !DILocation(line: 31, column: 6, scope: !4558)
!4560 = !DILocation(line: 31, column: 6, scope: !4542)
!4561 = !DILocation(line: 32, column: 8, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4563, file: !4543, line: 32, column: 7)
!4563 = distinct !DILexicalBlock(scope: !4558, file: !4543, line: 31, column: 34)
!4564 = !DILocation(line: 32, column: 7, scope: !4563)
!4565 = !DILocation(line: 33, column: 4, scope: !4562)
!4566 = !DILocation(line: 35, column: 7, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4563, file: !4543, line: 35, column: 7)
!4568 = !DILocation(line: 35, column: 12, scope: !4567)
!4569 = !DILocation(line: 35, column: 7, scope: !4563)
!4570 = !DILocation(line: 36, column: 4, scope: !4567)
!4571 = !DILocation(line: 38, column: 10, scope: !4563)
!4572 = !DILocation(line: 38, column: 28, scope: !4563)
!4573 = !DILocation(line: 38, column: 41, scope: !4563)
!4574 = !DILocation(line: 38, column: 3, scope: !4563)
!4575 = !DILocation(line: 41, column: 6, scope: !4542)
!4576 = !DILocation(line: 42, column: 7, scope: !4542)
!4577 = !DILocation(line: 46, column: 15, scope: !4542)
!4578 = !DILocation(line: 374, column: 2, scope: !4547, inlinedAt: !4552)
!4579 = !DILocation(line: 376, column: 14, scope: !4547, inlinedAt: !4552)
!4580 = !{i32 322598}
!4581 = !DILocation(line: 377, column: 9, scope: !4547, inlinedAt: !4552)
!4582 = !DILocation(line: 377, column: 16, scope: !4547, inlinedAt: !4552)
!4583 = !DILocation(line: 46, column: 2, scope: !4542)
!4584 = !DILocation(line: 48, column: 1, scope: !4542)
!4585 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4586, file: !4586, line: 30, type: !4587, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4586 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!141, !378}
!4589 = !DILocation(line: 366, column: 40, scope: !4547, inlinedAt: !4590)
!4590 = distinct !DILocation(line: 32, column: 9, scope: !4585)
!4591 = !DILocation(line: 368, column: 6, scope: !4547, inlinedAt: !4590)
!4592 = !DILocalVariable(name: "n", arg: 1, scope: !4585, file: !4586, line: 30, type: !378)
!4593 = !DILocation(line: 30, column: 21, scope: !4585)
!4594 = !DILocation(line: 32, column: 15, scope: !4585)
!4595 = !DILocation(line: 374, column: 2, scope: !4547, inlinedAt: !4590)
!4596 = !DILocation(line: 376, column: 14, scope: !4547, inlinedAt: !4590)
!4597 = !DILocation(line: 377, column: 9, scope: !4547, inlinedAt: !4590)
!4598 = !DILocation(line: 377, column: 16, scope: !4547, inlinedAt: !4590)
!4599 = !DILocation(line: 32, column: 18, scope: !4585)
!4600 = !DILocation(line: 32, column: 2, scope: !4585)
!4601 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4602, file: !4602, line: 137, type: !4603, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4602 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!136, !892, !3006, !282, !134}
!4605 = !DILocalVariable(name: "s", arg: 1, scope: !4601, file: !4602, line: 137, type: !892)
!4606 = !DILocation(line: 137, column: 54, scope: !4601)
!4607 = !DILocalVariable(name: "object", arg: 2, scope: !4601, file: !4602, line: 137, type: !3006)
!4608 = !DILocation(line: 137, column: 69, scope: !4601)
!4609 = !DILocalVariable(name: "size", arg: 3, scope: !4601, file: !4602, line: 138, type: !282)
!4610 = !DILocation(line: 138, column: 12, scope: !4601)
!4611 = !DILocalVariable(name: "flags", arg: 4, scope: !4601, file: !4602, line: 138, type: !134)
!4612 = !DILocation(line: 138, column: 24, scope: !4601)
!4613 = !DILocation(line: 140, column: 17, scope: !4601)
!4614 = !DILocation(line: 140, column: 2, scope: !4601)
!4615 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !67, file: !67, line: 660, type: !4616, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{null, !170, !136}
!4618 = !DILocalVariable(name: "dev", arg: 1, scope: !4615, file: !67, line: 660, type: !170)
!4619 = !DILocation(line: 660, column: 51, scope: !4615)
!4620 = !DILocalVariable(name: "data", arg: 2, scope: !4615, file: !67, line: 660, type: !136)
!4621 = !DILocation(line: 660, column: 62, scope: !4615)
!4622 = !DILocation(line: 662, column: 21, scope: !4615)
!4623 = !DILocation(line: 662, column: 2, scope: !4615)
!4624 = !DILocation(line: 662, column: 7, scope: !4615)
!4625 = !DILocation(line: 662, column: 19, scope: !4615)
!4626 = !DILocation(line: 663, column: 1, scope: !4615)
!4627 = distinct !DISubprogram(name: "ds_reset_device", scope: !3, file: !3, line: 300, type: !4628, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{null, !3942}
!4630 = !DILocalVariable(name: "dev", arg: 1, scope: !4627, file: !3, line: 300, type: !3942)
!4631 = !DILocation(line: 300, column: 47, scope: !4627)
!4632 = !DILocation(line: 302, column: 22, scope: !4627)
!4633 = !DILocation(line: 302, column: 2, scope: !4627)
!4634 = !DILocation(line: 306, column: 27, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 306, column: 6)
!4636 = !DILocation(line: 306, column: 6, scope: !4635)
!4637 = !DILocation(line: 306, column: 6, scope: !4627)
!4638 = !DILocation(line: 307, column: 3, scope: !4635)
!4639 = !DILocation(line: 309, column: 6, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 309, column: 6)
!4641 = !DILocation(line: 309, column: 11, scope: !4640)
!4642 = !DILocation(line: 309, column: 6, scope: !4627)
!4643 = !DILocalVariable(name: "del", scope: !4644, file: !3, line: 311, type: !1229)
!4644 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 309, column: 22)
!4645 = !DILocation(line: 311, column: 6, scope: !4644)
!4646 = !DILocation(line: 311, column: 12, scope: !4644)
!4647 = !DILocation(line: 311, column: 17, scope: !4644)
!4648 = !DILocation(line: 311, column: 26, scope: !4644)
!4649 = !DILocation(line: 312, column: 23, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4644, file: !3, line: 312, column: 7)
!4651 = !DILocation(line: 312, column: 57, scope: !4650)
!4652 = !DILocation(line: 312, column: 7, scope: !4650)
!4653 = !DILocation(line: 312, column: 7, scope: !4644)
!4654 = !DILocation(line: 313, column: 4, scope: !4650)
!4655 = !DILocation(line: 314, column: 2, scope: !4644)
!4656 = !DILocation(line: 315, column: 1, scope: !4627)
!4657 = distinct !DISubprogram(name: "ds9490r_touch_bit", scope: !3, file: !3, line: 818, type: !3969, scopeLine: 819, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4658 = !DILocalVariable(name: "data", arg: 1, scope: !4657, file: !3, line: 818, type: !136)
!4659 = !DILocation(line: 818, column: 35, scope: !4657)
!4660 = !DILocalVariable(name: "bit", arg: 2, scope: !4657, file: !3, line: 818, type: !1229)
!4661 = !DILocation(line: 818, column: 44, scope: !4657)
!4662 = !DILocalVariable(name: "dev", scope: !4657, file: !3, line: 820, type: !3942)
!4663 = !DILocation(line: 820, column: 20, scope: !4657)
!4664 = !DILocation(line: 820, column: 26, scope: !4657)
!4665 = !DILocation(line: 822, column: 19, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4657, file: !3, line: 822, column: 6)
!4667 = !DILocation(line: 822, column: 24, scope: !4666)
!4668 = !DILocation(line: 822, column: 30, scope: !4666)
!4669 = !DILocation(line: 822, column: 35, scope: !4666)
!4670 = !DILocation(line: 822, column: 6, scope: !4666)
!4671 = !DILocation(line: 822, column: 6, scope: !4657)
!4672 = !DILocation(line: 823, column: 3, scope: !4666)
!4673 = !DILocation(line: 825, column: 9, scope: !4657)
!4674 = !DILocation(line: 825, column: 14, scope: !4657)
!4675 = !DILocation(line: 825, column: 2, scope: !4657)
!4676 = !DILocation(line: 826, column: 1, scope: !4657)
!4677 = distinct !DISubprogram(name: "ds9490r_read_byte", scope: !3, file: !3, line: 856, type: !3961, scopeLine: 857, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4678 = !DILocalVariable(name: "data", arg: 1, scope: !4677, file: !3, line: 856, type: !136)
!4679 = !DILocation(line: 856, column: 35, scope: !4677)
!4680 = !DILocalVariable(name: "dev", scope: !4677, file: !3, line: 858, type: !3942)
!4681 = !DILocation(line: 858, column: 20, scope: !4677)
!4682 = !DILocation(line: 858, column: 26, scope: !4677)
!4683 = !DILocalVariable(name: "err", scope: !4677, file: !3, line: 859, type: !141)
!4684 = !DILocation(line: 859, column: 6, scope: !4677)
!4685 = !DILocation(line: 861, column: 21, scope: !4677)
!4686 = !DILocation(line: 861, column: 27, scope: !4677)
!4687 = !DILocation(line: 861, column: 32, scope: !4677)
!4688 = !DILocation(line: 861, column: 8, scope: !4677)
!4689 = !DILocation(line: 861, column: 6, scope: !4677)
!4690 = !DILocation(line: 862, column: 6, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4677, file: !3, line: 862, column: 6)
!4692 = !DILocation(line: 862, column: 6, scope: !4677)
!4693 = !DILocation(line: 863, column: 3, scope: !4691)
!4694 = !DILocation(line: 865, column: 9, scope: !4677)
!4695 = !DILocation(line: 865, column: 14, scope: !4677)
!4696 = !DILocation(line: 865, column: 2, scope: !4677)
!4697 = !DILocation(line: 866, column: 1, scope: !4677)
!4698 = distinct !DISubprogram(name: "ds9490r_write_byte", scope: !3, file: !3, line: 849, type: !3965, scopeLine: 850, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4699 = !DILocalVariable(name: "data", arg: 1, scope: !4698, file: !3, line: 849, type: !136)
!4700 = !DILocation(line: 849, column: 38, scope: !4698)
!4701 = !DILocalVariable(name: "byte", arg: 2, scope: !4698, file: !3, line: 849, type: !1229)
!4702 = !DILocation(line: 849, column: 47, scope: !4698)
!4703 = !DILocalVariable(name: "dev", scope: !4698, file: !3, line: 851, type: !3942)
!4704 = !DILocation(line: 851, column: 20, scope: !4698)
!4705 = !DILocation(line: 851, column: 26, scope: !4698)
!4706 = !DILocation(line: 853, column: 16, scope: !4698)
!4707 = !DILocation(line: 853, column: 21, scope: !4698)
!4708 = !DILocation(line: 853, column: 2, scope: !4698)
!4709 = !DILocation(line: 854, column: 1, scope: !4698)
!4710 = distinct !DISubprogram(name: "ds9490r_read_block", scope: !3, file: !3, line: 885, type: !3975, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4711 = !DILocation(line: 445, column: 72, scope: !4197, inlinedAt: !4712)
!4712 = distinct !DILocation(line: 552, column: 10, scope: !4202, inlinedAt: !4713)
!4713 = distinct !DILocation(line: 894, column: 9, scope: !4710)
!4714 = !DILocation(line: 446, column: 9, scope: !4197, inlinedAt: !4712)
!4715 = !DILocation(line: 446, column: 23, scope: !4197, inlinedAt: !4712)
!4716 = !DILocation(line: 448, column: 8, scope: !4197, inlinedAt: !4712)
!4717 = !DILocation(line: 318, column: 67, scope: !4213, inlinedAt: !4718)
!4718 = distinct !DILocation(line: 553, column: 20, scope: !4202, inlinedAt: !4713)
!4719 = !DILocation(line: 346, column: 58, scope: !4219, inlinedAt: !4720)
!4720 = distinct !DILocation(line: 547, column: 11, scope: !4202, inlinedAt: !4713)
!4721 = !DILocation(line: 472, column: 28, scope: !4225, inlinedAt: !4722)
!4722 = distinct !DILocation(line: 481, column: 9, scope: !4230, inlinedAt: !4723)
!4723 = distinct !DILocation(line: 545, column: 11, scope: !4232, inlinedAt: !4713)
!4724 = !DILocation(line: 472, column: 40, scope: !4225, inlinedAt: !4722)
!4725 = !DILocation(line: 472, column: 60, scope: !4225, inlinedAt: !4722)
!4726 = !DILocation(line: 478, column: 51, scope: !4230, inlinedAt: !4723)
!4727 = !DILocation(line: 478, column: 63, scope: !4230, inlinedAt: !4723)
!4728 = !DILocation(line: 480, column: 15, scope: !4230, inlinedAt: !4723)
!4729 = !DILocation(line: 538, column: 45, scope: !4204, inlinedAt: !4713)
!4730 = !DILocation(line: 538, column: 57, scope: !4204, inlinedAt: !4713)
!4731 = !DILocation(line: 542, column: 16, scope: !4202, inlinedAt: !4713)
!4732 = !DILocalVariable(name: "data", arg: 1, scope: !4710, file: !3, line: 885, type: !136)
!4733 = !DILocation(line: 885, column: 36, scope: !4710)
!4734 = !DILocalVariable(name: "buf", arg: 2, scope: !4710, file: !3, line: 885, type: !3815)
!4735 = !DILocation(line: 885, column: 46, scope: !4710)
!4736 = !DILocalVariable(name: "len", arg: 3, scope: !4710, file: !3, line: 885, type: !141)
!4737 = !DILocation(line: 885, column: 55, scope: !4710)
!4738 = !DILocalVariable(name: "dev", scope: !4710, file: !3, line: 887, type: !3942)
!4739 = !DILocation(line: 887, column: 20, scope: !4710)
!4740 = !DILocation(line: 887, column: 26, scope: !4710)
!4741 = !DILocalVariable(name: "err", scope: !4710, file: !3, line: 888, type: !141)
!4742 = !DILocation(line: 888, column: 6, scope: !4710)
!4743 = !DILocalVariable(name: "tbuf", scope: !4710, file: !3, line: 889, type: !3815)
!4744 = !DILocation(line: 889, column: 6, scope: !4710)
!4745 = !DILocation(line: 891, column: 6, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4710, file: !3, line: 891, column: 6)
!4747 = !DILocation(line: 891, column: 10, scope: !4746)
!4748 = !DILocation(line: 891, column: 6, scope: !4710)
!4749 = !DILocation(line: 892, column: 3, scope: !4746)
!4750 = !DILocation(line: 894, column: 17, scope: !4710)
!4751 = !DILocation(line: 540, column: 27, scope: !4203, inlinedAt: !4713)
!4752 = !DILocation(line: 540, column: 6, scope: !4203, inlinedAt: !4713)
!4753 = !DILocation(line: 540, column: 6, scope: !4204, inlinedAt: !4713)
!4754 = !DILocation(line: 544, column: 7, scope: !4232, inlinedAt: !4713)
!4755 = !DILocation(line: 544, column: 12, scope: !4232, inlinedAt: !4713)
!4756 = !DILocation(line: 544, column: 7, scope: !4202, inlinedAt: !4713)
!4757 = !DILocation(line: 545, column: 25, scope: !4232, inlinedAt: !4713)
!4758 = !DILocation(line: 545, column: 31, scope: !4232, inlinedAt: !4713)
!4759 = !DILocation(line: 480, column: 33, scope: !4230, inlinedAt: !4723)
!4760 = !DILocation(line: 480, column: 23, scope: !4230, inlinedAt: !4723)
!4761 = !DILocation(line: 481, column: 29, scope: !4230, inlinedAt: !4723)
!4762 = !DILocation(line: 481, column: 35, scope: !4230, inlinedAt: !4723)
!4763 = !DILocation(line: 481, column: 42, scope: !4230, inlinedAt: !4723)
!4764 = !DILocation(line: 474, column: 23, scope: !4225, inlinedAt: !4722)
!4765 = !DILocation(line: 474, column: 29, scope: !4225, inlinedAt: !4722)
!4766 = !DILocation(line: 474, column: 36, scope: !4225, inlinedAt: !4722)
!4767 = !DILocation(line: 474, column: 9, scope: !4225, inlinedAt: !4722)
!4768 = !DILocation(line: 545, column: 4, scope: !4232, inlinedAt: !4713)
!4769 = !DILocation(line: 547, column: 25, scope: !4202, inlinedAt: !4713)
!4770 = !DILocation(line: 348, column: 7, scope: !4276, inlinedAt: !4720)
!4771 = !DILocation(line: 348, column: 6, scope: !4219, inlinedAt: !4720)
!4772 = !DILocation(line: 349, column: 3, scope: !4276, inlinedAt: !4720)
!4773 = !DILocation(line: 351, column: 6, scope: !4280, inlinedAt: !4720)
!4774 = !DILocation(line: 351, column: 11, scope: !4280, inlinedAt: !4720)
!4775 = !DILocation(line: 351, column: 6, scope: !4219, inlinedAt: !4720)
!4776 = !DILocation(line: 352, column: 3, scope: !4280, inlinedAt: !4720)
!4777 = !DILocation(line: 354, column: 32, scope: !4285, inlinedAt: !4720)
!4778 = !DILocation(line: 354, column: 37, scope: !4285, inlinedAt: !4720)
!4779 = !DILocation(line: 354, column: 42, scope: !4285, inlinedAt: !4720)
!4780 = !DILocation(line: 354, column: 45, scope: !4285, inlinedAt: !4720)
!4781 = !DILocation(line: 354, column: 50, scope: !4285, inlinedAt: !4720)
!4782 = !DILocation(line: 354, column: 6, scope: !4219, inlinedAt: !4720)
!4783 = !DILocation(line: 355, column: 3, scope: !4285, inlinedAt: !4720)
!4784 = !DILocation(line: 356, column: 32, scope: !4293, inlinedAt: !4720)
!4785 = !DILocation(line: 356, column: 37, scope: !4293, inlinedAt: !4720)
!4786 = !DILocation(line: 356, column: 43, scope: !4293, inlinedAt: !4720)
!4787 = !DILocation(line: 356, column: 46, scope: !4293, inlinedAt: !4720)
!4788 = !DILocation(line: 356, column: 51, scope: !4293, inlinedAt: !4720)
!4789 = !DILocation(line: 356, column: 6, scope: !4219, inlinedAt: !4720)
!4790 = !DILocation(line: 357, column: 3, scope: !4293, inlinedAt: !4720)
!4791 = !DILocation(line: 358, column: 6, scope: !4301, inlinedAt: !4720)
!4792 = !DILocation(line: 358, column: 11, scope: !4301, inlinedAt: !4720)
!4793 = !DILocation(line: 358, column: 6, scope: !4219, inlinedAt: !4720)
!4794 = !DILocation(line: 358, column: 26, scope: !4301, inlinedAt: !4720)
!4795 = !DILocation(line: 359, column: 6, scope: !4306, inlinedAt: !4720)
!4796 = !DILocation(line: 359, column: 11, scope: !4306, inlinedAt: !4720)
!4797 = !DILocation(line: 359, column: 6, scope: !4219, inlinedAt: !4720)
!4798 = !DILocation(line: 359, column: 26, scope: !4306, inlinedAt: !4720)
!4799 = !DILocation(line: 360, column: 6, scope: !4311, inlinedAt: !4720)
!4800 = !DILocation(line: 360, column: 11, scope: !4311, inlinedAt: !4720)
!4801 = !DILocation(line: 360, column: 6, scope: !4219, inlinedAt: !4720)
!4802 = !DILocation(line: 360, column: 26, scope: !4311, inlinedAt: !4720)
!4803 = !DILocation(line: 361, column: 6, scope: !4316, inlinedAt: !4720)
!4804 = !DILocation(line: 361, column: 11, scope: !4316, inlinedAt: !4720)
!4805 = !DILocation(line: 361, column: 6, scope: !4219, inlinedAt: !4720)
!4806 = !DILocation(line: 361, column: 26, scope: !4316, inlinedAt: !4720)
!4807 = !DILocation(line: 362, column: 6, scope: !4321, inlinedAt: !4720)
!4808 = !DILocation(line: 362, column: 11, scope: !4321, inlinedAt: !4720)
!4809 = !DILocation(line: 362, column: 6, scope: !4219, inlinedAt: !4720)
!4810 = !DILocation(line: 362, column: 26, scope: !4321, inlinedAt: !4720)
!4811 = !DILocation(line: 363, column: 6, scope: !4326, inlinedAt: !4720)
!4812 = !DILocation(line: 363, column: 11, scope: !4326, inlinedAt: !4720)
!4813 = !DILocation(line: 363, column: 6, scope: !4219, inlinedAt: !4720)
!4814 = !DILocation(line: 363, column: 26, scope: !4326, inlinedAt: !4720)
!4815 = !DILocation(line: 364, column: 6, scope: !4331, inlinedAt: !4720)
!4816 = !DILocation(line: 364, column: 11, scope: !4331, inlinedAt: !4720)
!4817 = !DILocation(line: 364, column: 6, scope: !4219, inlinedAt: !4720)
!4818 = !DILocation(line: 364, column: 26, scope: !4331, inlinedAt: !4720)
!4819 = !DILocation(line: 365, column: 6, scope: !4336, inlinedAt: !4720)
!4820 = !DILocation(line: 365, column: 11, scope: !4336, inlinedAt: !4720)
!4821 = !DILocation(line: 365, column: 6, scope: !4219, inlinedAt: !4720)
!4822 = !DILocation(line: 365, column: 26, scope: !4336, inlinedAt: !4720)
!4823 = !DILocation(line: 366, column: 6, scope: !4341, inlinedAt: !4720)
!4824 = !DILocation(line: 366, column: 11, scope: !4341, inlinedAt: !4720)
!4825 = !DILocation(line: 366, column: 6, scope: !4219, inlinedAt: !4720)
!4826 = !DILocation(line: 366, column: 26, scope: !4341, inlinedAt: !4720)
!4827 = !DILocation(line: 367, column: 6, scope: !4346, inlinedAt: !4720)
!4828 = !DILocation(line: 367, column: 11, scope: !4346, inlinedAt: !4720)
!4829 = !DILocation(line: 367, column: 6, scope: !4219, inlinedAt: !4720)
!4830 = !DILocation(line: 367, column: 26, scope: !4346, inlinedAt: !4720)
!4831 = !DILocation(line: 368, column: 6, scope: !4351, inlinedAt: !4720)
!4832 = !DILocation(line: 368, column: 11, scope: !4351, inlinedAt: !4720)
!4833 = !DILocation(line: 368, column: 6, scope: !4219, inlinedAt: !4720)
!4834 = !DILocation(line: 368, column: 26, scope: !4351, inlinedAt: !4720)
!4835 = !DILocation(line: 369, column: 6, scope: !4356, inlinedAt: !4720)
!4836 = !DILocation(line: 369, column: 11, scope: !4356, inlinedAt: !4720)
!4837 = !DILocation(line: 369, column: 6, scope: !4219, inlinedAt: !4720)
!4838 = !DILocation(line: 369, column: 26, scope: !4356, inlinedAt: !4720)
!4839 = !DILocation(line: 370, column: 6, scope: !4361, inlinedAt: !4720)
!4840 = !DILocation(line: 370, column: 11, scope: !4361, inlinedAt: !4720)
!4841 = !DILocation(line: 370, column: 6, scope: !4219, inlinedAt: !4720)
!4842 = !DILocation(line: 370, column: 26, scope: !4361, inlinedAt: !4720)
!4843 = !DILocation(line: 371, column: 6, scope: !4366, inlinedAt: !4720)
!4844 = !DILocation(line: 371, column: 11, scope: !4366, inlinedAt: !4720)
!4845 = !DILocation(line: 371, column: 6, scope: !4219, inlinedAt: !4720)
!4846 = !DILocation(line: 371, column: 26, scope: !4366, inlinedAt: !4720)
!4847 = !DILocation(line: 372, column: 6, scope: !4371, inlinedAt: !4720)
!4848 = !DILocation(line: 372, column: 11, scope: !4371, inlinedAt: !4720)
!4849 = !DILocation(line: 372, column: 6, scope: !4219, inlinedAt: !4720)
!4850 = !DILocation(line: 372, column: 26, scope: !4371, inlinedAt: !4720)
!4851 = !DILocation(line: 373, column: 6, scope: !4376, inlinedAt: !4720)
!4852 = !DILocation(line: 373, column: 11, scope: !4376, inlinedAt: !4720)
!4853 = !DILocation(line: 373, column: 6, scope: !4219, inlinedAt: !4720)
!4854 = !DILocation(line: 373, column: 26, scope: !4376, inlinedAt: !4720)
!4855 = !DILocation(line: 374, column: 6, scope: !4381, inlinedAt: !4720)
!4856 = !DILocation(line: 374, column: 11, scope: !4381, inlinedAt: !4720)
!4857 = !DILocation(line: 374, column: 6, scope: !4219, inlinedAt: !4720)
!4858 = !DILocation(line: 374, column: 26, scope: !4381, inlinedAt: !4720)
!4859 = !DILocation(line: 375, column: 6, scope: !4386, inlinedAt: !4720)
!4860 = !DILocation(line: 375, column: 11, scope: !4386, inlinedAt: !4720)
!4861 = !DILocation(line: 375, column: 6, scope: !4219, inlinedAt: !4720)
!4862 = !DILocation(line: 375, column: 27, scope: !4386, inlinedAt: !4720)
!4863 = !DILocation(line: 376, column: 6, scope: !4391, inlinedAt: !4720)
!4864 = !DILocation(line: 376, column: 11, scope: !4391, inlinedAt: !4720)
!4865 = !DILocation(line: 376, column: 6, scope: !4219, inlinedAt: !4720)
!4866 = !DILocation(line: 376, column: 32, scope: !4391, inlinedAt: !4720)
!4867 = !DILocation(line: 377, column: 6, scope: !4396, inlinedAt: !4720)
!4868 = !DILocation(line: 377, column: 11, scope: !4396, inlinedAt: !4720)
!4869 = !DILocation(line: 377, column: 6, scope: !4219, inlinedAt: !4720)
!4870 = !DILocation(line: 377, column: 32, scope: !4396, inlinedAt: !4720)
!4871 = !DILocation(line: 378, column: 6, scope: !4401, inlinedAt: !4720)
!4872 = !DILocation(line: 378, column: 11, scope: !4401, inlinedAt: !4720)
!4873 = !DILocation(line: 378, column: 6, scope: !4219, inlinedAt: !4720)
!4874 = !DILocation(line: 378, column: 32, scope: !4401, inlinedAt: !4720)
!4875 = !DILocation(line: 379, column: 6, scope: !4406, inlinedAt: !4720)
!4876 = !DILocation(line: 379, column: 11, scope: !4406, inlinedAt: !4720)
!4877 = !DILocation(line: 379, column: 6, scope: !4219, inlinedAt: !4720)
!4878 = !DILocation(line: 379, column: 33, scope: !4406, inlinedAt: !4720)
!4879 = !DILocation(line: 380, column: 6, scope: !4411, inlinedAt: !4720)
!4880 = !DILocation(line: 380, column: 11, scope: !4411, inlinedAt: !4720)
!4881 = !DILocation(line: 380, column: 6, scope: !4219, inlinedAt: !4720)
!4882 = !DILocation(line: 380, column: 33, scope: !4411, inlinedAt: !4720)
!4883 = !DILocation(line: 381, column: 6, scope: !4416, inlinedAt: !4720)
!4884 = !DILocation(line: 381, column: 11, scope: !4416, inlinedAt: !4720)
!4885 = !DILocation(line: 381, column: 6, scope: !4219, inlinedAt: !4720)
!4886 = !DILocation(line: 381, column: 33, scope: !4416, inlinedAt: !4720)
!4887 = !DILocation(line: 382, column: 2, scope: !4421, inlinedAt: !4720)
!4888 = !DILocation(line: 382, column: 2, scope: !4425, inlinedAt: !4720)
!4889 = !DILocation(line: 382, column: 2, scope: !4426, inlinedAt: !4720)
!4890 = !DILocation(line: 386, column: 1, scope: !4219, inlinedAt: !4720)
!4891 = !DILocation(line: 547, column: 9, scope: !4202, inlinedAt: !4713)
!4892 = !DILocation(line: 549, column: 8, scope: !4432, inlinedAt: !4713)
!4893 = !DILocation(line: 549, column: 7, scope: !4202, inlinedAt: !4713)
!4894 = !DILocation(line: 550, column: 4, scope: !4432, inlinedAt: !4713)
!4895 = !DILocation(line: 553, column: 33, scope: !4202, inlinedAt: !4713)
!4896 = !DILocation(line: 325, column: 6, scope: !4437, inlinedAt: !4718)
!4897 = !DILocation(line: 325, column: 6, scope: !4213, inlinedAt: !4718)
!4898 = !DILocation(line: 326, column: 3, scope: !4437, inlinedAt: !4718)
!4899 = !DILocation(line: 332, column: 9, scope: !4213, inlinedAt: !4718)
!4900 = !DILocation(line: 332, column: 15, scope: !4213, inlinedAt: !4718)
!4901 = !DILocation(line: 332, column: 2, scope: !4213, inlinedAt: !4718)
!4902 = !DILocation(line: 336, column: 1, scope: !4213, inlinedAt: !4718)
!4903 = !DILocation(line: 553, column: 5, scope: !4202, inlinedAt: !4713)
!4904 = !DILocation(line: 553, column: 41, scope: !4202, inlinedAt: !4713)
!4905 = !DILocation(line: 554, column: 5, scope: !4202, inlinedAt: !4713)
!4906 = !DILocation(line: 554, column: 12, scope: !4202, inlinedAt: !4713)
!4907 = !DILocation(line: 448, column: 31, scope: !4197, inlinedAt: !4712)
!4908 = !DILocation(line: 448, column: 34, scope: !4197, inlinedAt: !4712)
!4909 = !DILocation(line: 448, column: 14, scope: !4197, inlinedAt: !4712)
!4910 = !DILocation(line: 450, column: 22, scope: !4197, inlinedAt: !4712)
!4911 = !DILocation(line: 450, column: 25, scope: !4197, inlinedAt: !4712)
!4912 = !DILocation(line: 450, column: 30, scope: !4197, inlinedAt: !4712)
!4913 = !DILocation(line: 450, column: 36, scope: !4197, inlinedAt: !4712)
!4914 = !DILocation(line: 450, column: 8, scope: !4197, inlinedAt: !4712)
!4915 = !DILocation(line: 450, column: 6, scope: !4197, inlinedAt: !4712)
!4916 = !DILocation(line: 451, column: 9, scope: !4197, inlinedAt: !4712)
!4917 = !DILocation(line: 552, column: 3, scope: !4202, inlinedAt: !4713)
!4918 = !DILocation(line: 557, column: 19, scope: !4204, inlinedAt: !4713)
!4919 = !DILocation(line: 557, column: 25, scope: !4204, inlinedAt: !4713)
!4920 = !DILocation(line: 557, column: 9, scope: !4204, inlinedAt: !4713)
!4921 = !DILocation(line: 557, column: 2, scope: !4204, inlinedAt: !4713)
!4922 = !DILocation(line: 558, column: 1, scope: !4204, inlinedAt: !4713)
!4923 = !DILocation(line: 894, column: 7, scope: !4710)
!4924 = !DILocation(line: 895, column: 7, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4710, file: !3, line: 895, column: 6)
!4926 = !DILocation(line: 895, column: 6, scope: !4710)
!4927 = !DILocation(line: 896, column: 3, scope: !4925)
!4928 = !DILocation(line: 898, column: 22, scope: !4710)
!4929 = !DILocation(line: 898, column: 27, scope: !4710)
!4930 = !DILocation(line: 898, column: 33, scope: !4710)
!4931 = !DILocation(line: 898, column: 8, scope: !4710)
!4932 = !DILocation(line: 898, column: 6, scope: !4710)
!4933 = !DILocation(line: 899, column: 6, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4710, file: !3, line: 899, column: 6)
!4935 = !DILocation(line: 899, column: 10, scope: !4934)
!4936 = !DILocation(line: 899, column: 6, scope: !4710)
!4937 = !DILocation(line: 900, column: 10, scope: !4934)
!4938 = !DILocation(line: 900, column: 15, scope: !4934)
!4939 = !DILocation(line: 900, column: 21, scope: !4934)
!4940 = !DILocation(line: 900, column: 3, scope: !4934)
!4941 = !DILocation(line: 902, column: 8, scope: !4710)
!4942 = !DILocation(line: 902, column: 2, scope: !4710)
!4943 = !DILocation(line: 904, column: 9, scope: !4710)
!4944 = !DILocation(line: 904, column: 13, scope: !4710)
!4945 = !DILocation(line: 904, column: 20, scope: !4710)
!4946 = !DILocation(line: 904, column: 2, scope: !4710)
!4947 = !DILocation(line: 905, column: 1, scope: !4710)
!4948 = distinct !DISubprogram(name: "ds9490r_write_block", scope: !3, file: !3, line: 868, type: !3979, scopeLine: 869, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4949 = !DILocalVariable(name: "data", arg: 1, scope: !4948, file: !3, line: 868, type: !136)
!4950 = !DILocation(line: 868, column: 39, scope: !4948)
!4951 = !DILocalVariable(name: "buf", arg: 2, scope: !4948, file: !3, line: 868, type: !3981)
!4952 = !DILocation(line: 868, column: 55, scope: !4948)
!4953 = !DILocalVariable(name: "len", arg: 3, scope: !4948, file: !3, line: 868, type: !141)
!4954 = !DILocation(line: 868, column: 64, scope: !4948)
!4955 = !DILocalVariable(name: "dev", scope: !4948, file: !3, line: 870, type: !3942)
!4956 = !DILocation(line: 870, column: 20, scope: !4948)
!4957 = !DILocation(line: 870, column: 26, scope: !4948)
!4958 = !DILocalVariable(name: "tbuf", scope: !4948, file: !3, line: 871, type: !3815)
!4959 = !DILocation(line: 871, column: 6, scope: !4948)
!4960 = !DILocation(line: 873, column: 6, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4948, file: !3, line: 873, column: 6)
!4962 = !DILocation(line: 873, column: 10, scope: !4961)
!4963 = !DILocation(line: 873, column: 6, scope: !4948)
!4964 = !DILocation(line: 874, column: 3, scope: !4961)
!4965 = !DILocation(line: 876, column: 17, scope: !4948)
!4966 = !DILocation(line: 876, column: 22, scope: !4948)
!4967 = !DILocation(line: 876, column: 9, scope: !4948)
!4968 = !DILocation(line: 876, column: 7, scope: !4948)
!4969 = !DILocation(line: 877, column: 7, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4948, file: !3, line: 877, column: 6)
!4971 = !DILocation(line: 877, column: 6, scope: !4948)
!4972 = !DILocation(line: 878, column: 3, scope: !4970)
!4973 = !DILocation(line: 880, column: 17, scope: !4948)
!4974 = !DILocation(line: 880, column: 22, scope: !4948)
!4975 = !DILocation(line: 880, column: 28, scope: !4948)
!4976 = !DILocation(line: 880, column: 2, scope: !4948)
!4977 = !DILocation(line: 882, column: 8, scope: !4948)
!4978 = !DILocation(line: 882, column: 2, scope: !4948)
!4979 = !DILocation(line: 883, column: 1, scope: !4948)
!4980 = distinct !DISubprogram(name: "ds9490r_reset", scope: !3, file: !3, line: 907, type: !3961, scopeLine: 908, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4981 = !DILocalVariable(name: "data", arg: 1, scope: !4980, file: !3, line: 907, type: !136)
!4982 = !DILocation(line: 907, column: 31, scope: !4980)
!4983 = !DILocalVariable(name: "dev", scope: !4980, file: !3, line: 909, type: !3942)
!4984 = !DILocation(line: 909, column: 20, scope: !4980)
!4985 = !DILocation(line: 909, column: 26, scope: !4980)
!4986 = !DILocalVariable(name: "err", scope: !4980, file: !3, line: 910, type: !141)
!4987 = !DILocation(line: 910, column: 6, scope: !4980)
!4988 = !DILocation(line: 912, column: 17, scope: !4980)
!4989 = !DILocation(line: 912, column: 8, scope: !4980)
!4990 = !DILocation(line: 912, column: 6, scope: !4980)
!4991 = !DILocation(line: 913, column: 6, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4980, file: !3, line: 913, column: 6)
!4993 = !DILocation(line: 913, column: 6, scope: !4980)
!4994 = !DILocation(line: 914, column: 3, scope: !4992)
!4995 = !DILocation(line: 916, column: 2, scope: !4980)
!4996 = !DILocation(line: 917, column: 1, scope: !4980)
!4997 = distinct !DISubprogram(name: "ds9490r_set_pullup", scope: !3, file: !3, line: 919, type: !3987, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4998 = !DILocalVariable(name: "data", arg: 1, scope: !4997, file: !3, line: 919, type: !136)
!4999 = !DILocation(line: 919, column: 36, scope: !4997)
!5000 = !DILocalVariable(name: "delay", arg: 2, scope: !4997, file: !3, line: 919, type: !141)
!5001 = !DILocation(line: 919, column: 46, scope: !4997)
!5002 = !DILocalVariable(name: "dev", scope: !4997, file: !3, line: 921, type: !3942)
!5003 = !DILocation(line: 921, column: 20, scope: !4997)
!5004 = !DILocation(line: 921, column: 26, scope: !4997)
!5005 = !DILocation(line: 923, column: 20, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !4997, file: !3, line: 923, column: 6)
!5007 = !DILocation(line: 923, column: 25, scope: !5006)
!5008 = !DILocation(line: 923, column: 6, scope: !5006)
!5009 = !DILocation(line: 923, column: 6, scope: !4997)
!5010 = !DILocation(line: 924, column: 3, scope: !5006)
!5011 = !DILocation(line: 926, column: 2, scope: !4997)
!5012 = !DILocation(line: 927, column: 1, scope: !4997)
!5013 = distinct !DISubprogram(name: "ds9490r_search", scope: !3, file: !3, line: 664, type: !3991, scopeLine: 666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5014 = !DILocation(line: 445, column: 72, scope: !4197, inlinedAt: !5015)
!5015 = distinct !DILocation(line: 552, column: 10, scope: !4202, inlinedAt: !5016)
!5016 = distinct !DILocation(line: 693, column: 8, scope: !5013)
!5017 = !DILocation(line: 446, column: 9, scope: !4197, inlinedAt: !5015)
!5018 = !DILocation(line: 446, column: 23, scope: !4197, inlinedAt: !5015)
!5019 = !DILocation(line: 448, column: 8, scope: !4197, inlinedAt: !5015)
!5020 = !DILocation(line: 318, column: 67, scope: !4213, inlinedAt: !5021)
!5021 = distinct !DILocation(line: 553, column: 20, scope: !4202, inlinedAt: !5016)
!5022 = !DILocation(line: 346, column: 58, scope: !4219, inlinedAt: !5023)
!5023 = distinct !DILocation(line: 547, column: 11, scope: !4202, inlinedAt: !5016)
!5024 = !DILocation(line: 472, column: 28, scope: !4225, inlinedAt: !5025)
!5025 = distinct !DILocation(line: 481, column: 9, scope: !4230, inlinedAt: !5026)
!5026 = distinct !DILocation(line: 545, column: 11, scope: !4232, inlinedAt: !5016)
!5027 = !DILocation(line: 472, column: 40, scope: !4225, inlinedAt: !5025)
!5028 = !DILocation(line: 472, column: 60, scope: !4225, inlinedAt: !5025)
!5029 = !DILocation(line: 478, column: 51, scope: !4230, inlinedAt: !5026)
!5030 = !DILocation(line: 478, column: 63, scope: !4230, inlinedAt: !5026)
!5031 = !DILocation(line: 480, column: 15, scope: !4230, inlinedAt: !5026)
!5032 = !DILocation(line: 538, column: 45, scope: !4204, inlinedAt: !5016)
!5033 = !DILocation(line: 538, column: 57, scope: !4204, inlinedAt: !5016)
!5034 = !DILocation(line: 542, column: 16, scope: !4202, inlinedAt: !5016)
!5035 = !DILocalVariable(name: "m", arg: 1, scope: !5036, file: !5037, line: 363, type: !2627)
!5036 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !5037, file: !5037, line: 363, type: !5038, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5037 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!5038 = !DISubroutineType(types: !5039)
!5039 = !{!285, !2627}
!5040 = !DILocation(line: 363, column: 74, scope: !5036, inlinedAt: !5041)
!5041 = distinct !DILocation(line: 686, column: 30, scope: !5013)
!5042 = !DILocalVariable(name: "data", arg: 1, scope: !5013, file: !3, line: 664, type: !136)
!5043 = !DILocation(line: 664, column: 34, scope: !5013)
!5044 = !DILocalVariable(name: "master", arg: 2, scope: !5013, file: !3, line: 664, type: !3993)
!5045 = !DILocation(line: 664, column: 58, scope: !5013)
!5046 = !DILocalVariable(name: "search_type", arg: 3, scope: !5013, file: !3, line: 665, type: !1229)
!5047 = !DILocation(line: 665, column: 5, scope: !5013)
!5048 = !DILocalVariable(name: "callback", arg: 4, scope: !5013, file: !3, line: 665, type: !4023)
!5049 = !DILocation(line: 665, column: 42, scope: !5013)
!5050 = !DILocalVariable(name: "dev", scope: !5013, file: !3, line: 675, type: !3942)
!5051 = !DILocation(line: 675, column: 20, scope: !5013)
!5052 = !DILocation(line: 675, column: 26, scope: !5013)
!5053 = !DILocalVariable(name: "err", scope: !5013, file: !3, line: 676, type: !141)
!5054 = !DILocation(line: 676, column: 6, scope: !5013)
!5055 = !DILocalVariable(name: "value", scope: !5013, file: !3, line: 677, type: !816)
!5056 = !DILocation(line: 677, column: 6, scope: !5013)
!5057 = !DILocalVariable(name: "index", scope: !5013, file: !3, line: 677, type: !816)
!5058 = !DILocation(line: 677, column: 13, scope: !5013)
!5059 = !DILocalVariable(name: "st", scope: !5013, file: !3, line: 678, type: !5060)
!5060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ds_status", file: !3, line: 146, size: 128, elements: !5061)
!5061 = !{!5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5072, !5073, !5074, !5075, !5076, !5077}
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5060, file: !3, line: 147, baseType: !1229, size: 8)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !5060, file: !3, line: 148, baseType: !1229, size: 8, offset: 8)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "pullup_dur", scope: !5060, file: !3, line: 149, baseType: !1229, size: 8, offset: 16)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "ppuls_dur", scope: !5060, file: !3, line: 150, baseType: !1229, size: 8, offset: 24)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "pulldown_slew", scope: !5060, file: !3, line: 151, baseType: !1229, size: 8, offset: 32)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "write1_time", scope: !5060, file: !3, line: 152, baseType: !1229, size: 8, offset: 40)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "write0_time", scope: !5060, file: !3, line: 153, baseType: !1229, size: 8, offset: 48)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "reserved0", scope: !5060, file: !3, line: 154, baseType: !1229, size: 8, offset: 56)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5060, file: !3, line: 155, baseType: !1229, size: 8, offset: 64)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "command0", scope: !5060, file: !3, line: 156, baseType: !1229, size: 8, offset: 72)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "command1", scope: !5060, file: !3, line: 157, baseType: !1229, size: 8, offset: 80)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "command_buffer_status", scope: !5060, file: !3, line: 158, baseType: !1229, size: 8, offset: 88)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "data_out_buffer_status", scope: !5060, file: !3, line: 159, baseType: !1229, size: 8, offset: 96)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "data_in_buffer_status", scope: !5060, file: !3, line: 160, baseType: !1229, size: 8, offset: 104)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !5060, file: !3, line: 161, baseType: !1229, size: 8, offset: 112)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !5060, file: !3, line: 162, baseType: !1229, size: 8, offset: 120)
!5078 = !DILocation(line: 678, column: 19, scope: !5013)
!5079 = !DILocalVariable(name: "search_limit", scope: !5013, file: !3, line: 679, type: !141)
!5080 = !DILocation(line: 679, column: 6, scope: !5013)
!5081 = !DILocalVariable(name: "found", scope: !5013, file: !3, line: 680, type: !141)
!5082 = !DILocation(line: 680, column: 6, scope: !5013)
!5083 = !DILocalVariable(name: "i", scope: !5013, file: !3, line: 681, type: !141)
!5084 = !DILocation(line: 681, column: 6, scope: !5013)
!5085 = !DILocalVariable(name: "jtime", scope: !5013, file: !3, line: 686, type: !5086)
!5086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!5087 = !DILocation(line: 686, column: 22, scope: !5013)
!5088 = !DILocation(line: 365, column: 27, scope: !5089, inlinedAt: !5041)
!5089 = distinct !DILexicalBlock(scope: !5036, file: !5037, line: 365, column: 6)
!5090 = !DILocation(line: 365, column: 6, scope: !5089, inlinedAt: !5041)
!5091 = !DILocation(line: 365, column: 6, scope: !5036, inlinedAt: !5041)
!5092 = !DILocation(line: 366, column: 12, scope: !5093, inlinedAt: !5041)
!5093 = distinct !DILexicalBlock(scope: !5094, file: !5037, line: 366, column: 7)
!5094 = distinct !DILexicalBlock(scope: !5089, file: !5037, line: 365, column: 31)
!5095 = !DILocation(line: 366, column: 14, scope: !5093, inlinedAt: !5041)
!5096 = !DILocation(line: 366, column: 7, scope: !5094, inlinedAt: !5041)
!5097 = !DILocation(line: 367, column: 4, scope: !5093, inlinedAt: !5041)
!5098 = !DILocation(line: 368, column: 28, scope: !5094, inlinedAt: !5041)
!5099 = !DILocation(line: 368, column: 10, scope: !5094, inlinedAt: !5041)
!5100 = !DILocation(line: 368, column: 3, scope: !5094, inlinedAt: !5041)
!5101 = !DILocation(line: 370, column: 29, scope: !5102, inlinedAt: !5041)
!5102 = distinct !DILexicalBlock(scope: !5089, file: !5037, line: 369, column: 9)
!5103 = !DILocation(line: 370, column: 10, scope: !5102, inlinedAt: !5041)
!5104 = !DILocation(line: 370, column: 3, scope: !5102, inlinedAt: !5041)
!5105 = !DILocation(line: 372, column: 1, scope: !5036, inlinedAt: !5041)
!5106 = !DILocalVariable(name: "bufsize", scope: !5013, file: !3, line: 690, type: !5107)
!5107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!5108 = !DILocation(line: 690, column: 15, scope: !5013)
!5109 = !DILocalVariable(name: "buf", scope: !5013, file: !3, line: 691, type: !3461)
!5110 = !DILocation(line: 691, column: 7, scope: !5013)
!5111 = !DILocation(line: 540, column: 27, scope: !4203, inlinedAt: !5016)
!5112 = !DILocation(line: 540, column: 6, scope: !4203, inlinedAt: !5016)
!5113 = !DILocation(line: 540, column: 6, scope: !4204, inlinedAt: !5016)
!5114 = !DILocation(line: 544, column: 7, scope: !4232, inlinedAt: !5016)
!5115 = !DILocation(line: 544, column: 12, scope: !4232, inlinedAt: !5016)
!5116 = !DILocation(line: 544, column: 7, scope: !4202, inlinedAt: !5016)
!5117 = !DILocation(line: 545, column: 25, scope: !4232, inlinedAt: !5016)
!5118 = !DILocation(line: 545, column: 31, scope: !4232, inlinedAt: !5016)
!5119 = !DILocation(line: 480, column: 33, scope: !4230, inlinedAt: !5026)
!5120 = !DILocation(line: 480, column: 23, scope: !4230, inlinedAt: !5026)
!5121 = !DILocation(line: 481, column: 29, scope: !4230, inlinedAt: !5026)
!5122 = !DILocation(line: 481, column: 35, scope: !4230, inlinedAt: !5026)
!5123 = !DILocation(line: 481, column: 42, scope: !4230, inlinedAt: !5026)
!5124 = !DILocation(line: 474, column: 23, scope: !4225, inlinedAt: !5025)
!5125 = !DILocation(line: 474, column: 29, scope: !4225, inlinedAt: !5025)
!5126 = !DILocation(line: 474, column: 36, scope: !4225, inlinedAt: !5025)
!5127 = !DILocation(line: 474, column: 9, scope: !4225, inlinedAt: !5025)
!5128 = !DILocation(line: 545, column: 4, scope: !4232, inlinedAt: !5016)
!5129 = !DILocation(line: 547, column: 25, scope: !4202, inlinedAt: !5016)
!5130 = !DILocation(line: 348, column: 7, scope: !4276, inlinedAt: !5023)
!5131 = !DILocation(line: 348, column: 6, scope: !4219, inlinedAt: !5023)
!5132 = !DILocation(line: 349, column: 3, scope: !4276, inlinedAt: !5023)
!5133 = !DILocation(line: 351, column: 6, scope: !4280, inlinedAt: !5023)
!5134 = !DILocation(line: 351, column: 11, scope: !4280, inlinedAt: !5023)
!5135 = !DILocation(line: 351, column: 6, scope: !4219, inlinedAt: !5023)
!5136 = !DILocation(line: 352, column: 3, scope: !4280, inlinedAt: !5023)
!5137 = !DILocation(line: 354, column: 32, scope: !4285, inlinedAt: !5023)
!5138 = !DILocation(line: 354, column: 37, scope: !4285, inlinedAt: !5023)
!5139 = !DILocation(line: 354, column: 42, scope: !4285, inlinedAt: !5023)
!5140 = !DILocation(line: 354, column: 45, scope: !4285, inlinedAt: !5023)
!5141 = !DILocation(line: 354, column: 50, scope: !4285, inlinedAt: !5023)
!5142 = !DILocation(line: 354, column: 6, scope: !4219, inlinedAt: !5023)
!5143 = !DILocation(line: 355, column: 3, scope: !4285, inlinedAt: !5023)
!5144 = !DILocation(line: 356, column: 32, scope: !4293, inlinedAt: !5023)
!5145 = !DILocation(line: 356, column: 37, scope: !4293, inlinedAt: !5023)
!5146 = !DILocation(line: 356, column: 43, scope: !4293, inlinedAt: !5023)
!5147 = !DILocation(line: 356, column: 46, scope: !4293, inlinedAt: !5023)
!5148 = !DILocation(line: 356, column: 51, scope: !4293, inlinedAt: !5023)
!5149 = !DILocation(line: 356, column: 6, scope: !4219, inlinedAt: !5023)
!5150 = !DILocation(line: 357, column: 3, scope: !4293, inlinedAt: !5023)
!5151 = !DILocation(line: 358, column: 6, scope: !4301, inlinedAt: !5023)
!5152 = !DILocation(line: 358, column: 11, scope: !4301, inlinedAt: !5023)
!5153 = !DILocation(line: 358, column: 6, scope: !4219, inlinedAt: !5023)
!5154 = !DILocation(line: 358, column: 26, scope: !4301, inlinedAt: !5023)
!5155 = !DILocation(line: 359, column: 6, scope: !4306, inlinedAt: !5023)
!5156 = !DILocation(line: 359, column: 11, scope: !4306, inlinedAt: !5023)
!5157 = !DILocation(line: 359, column: 6, scope: !4219, inlinedAt: !5023)
!5158 = !DILocation(line: 359, column: 26, scope: !4306, inlinedAt: !5023)
!5159 = !DILocation(line: 360, column: 6, scope: !4311, inlinedAt: !5023)
!5160 = !DILocation(line: 360, column: 11, scope: !4311, inlinedAt: !5023)
!5161 = !DILocation(line: 360, column: 6, scope: !4219, inlinedAt: !5023)
!5162 = !DILocation(line: 360, column: 26, scope: !4311, inlinedAt: !5023)
!5163 = !DILocation(line: 361, column: 6, scope: !4316, inlinedAt: !5023)
!5164 = !DILocation(line: 361, column: 11, scope: !4316, inlinedAt: !5023)
!5165 = !DILocation(line: 361, column: 6, scope: !4219, inlinedAt: !5023)
!5166 = !DILocation(line: 361, column: 26, scope: !4316, inlinedAt: !5023)
!5167 = !DILocation(line: 362, column: 6, scope: !4321, inlinedAt: !5023)
!5168 = !DILocation(line: 362, column: 11, scope: !4321, inlinedAt: !5023)
!5169 = !DILocation(line: 362, column: 6, scope: !4219, inlinedAt: !5023)
!5170 = !DILocation(line: 362, column: 26, scope: !4321, inlinedAt: !5023)
!5171 = !DILocation(line: 363, column: 6, scope: !4326, inlinedAt: !5023)
!5172 = !DILocation(line: 363, column: 11, scope: !4326, inlinedAt: !5023)
!5173 = !DILocation(line: 363, column: 6, scope: !4219, inlinedAt: !5023)
!5174 = !DILocation(line: 363, column: 26, scope: !4326, inlinedAt: !5023)
!5175 = !DILocation(line: 364, column: 6, scope: !4331, inlinedAt: !5023)
!5176 = !DILocation(line: 364, column: 11, scope: !4331, inlinedAt: !5023)
!5177 = !DILocation(line: 364, column: 6, scope: !4219, inlinedAt: !5023)
!5178 = !DILocation(line: 364, column: 26, scope: !4331, inlinedAt: !5023)
!5179 = !DILocation(line: 365, column: 6, scope: !4336, inlinedAt: !5023)
!5180 = !DILocation(line: 365, column: 11, scope: !4336, inlinedAt: !5023)
!5181 = !DILocation(line: 365, column: 6, scope: !4219, inlinedAt: !5023)
!5182 = !DILocation(line: 365, column: 26, scope: !4336, inlinedAt: !5023)
!5183 = !DILocation(line: 366, column: 6, scope: !4341, inlinedAt: !5023)
!5184 = !DILocation(line: 366, column: 11, scope: !4341, inlinedAt: !5023)
!5185 = !DILocation(line: 366, column: 6, scope: !4219, inlinedAt: !5023)
!5186 = !DILocation(line: 366, column: 26, scope: !4341, inlinedAt: !5023)
!5187 = !DILocation(line: 367, column: 6, scope: !4346, inlinedAt: !5023)
!5188 = !DILocation(line: 367, column: 11, scope: !4346, inlinedAt: !5023)
!5189 = !DILocation(line: 367, column: 6, scope: !4219, inlinedAt: !5023)
!5190 = !DILocation(line: 367, column: 26, scope: !4346, inlinedAt: !5023)
!5191 = !DILocation(line: 368, column: 6, scope: !4351, inlinedAt: !5023)
!5192 = !DILocation(line: 368, column: 11, scope: !4351, inlinedAt: !5023)
!5193 = !DILocation(line: 368, column: 6, scope: !4219, inlinedAt: !5023)
!5194 = !DILocation(line: 368, column: 26, scope: !4351, inlinedAt: !5023)
!5195 = !DILocation(line: 369, column: 6, scope: !4356, inlinedAt: !5023)
!5196 = !DILocation(line: 369, column: 11, scope: !4356, inlinedAt: !5023)
!5197 = !DILocation(line: 369, column: 6, scope: !4219, inlinedAt: !5023)
!5198 = !DILocation(line: 369, column: 26, scope: !4356, inlinedAt: !5023)
!5199 = !DILocation(line: 370, column: 6, scope: !4361, inlinedAt: !5023)
!5200 = !DILocation(line: 370, column: 11, scope: !4361, inlinedAt: !5023)
!5201 = !DILocation(line: 370, column: 6, scope: !4219, inlinedAt: !5023)
!5202 = !DILocation(line: 370, column: 26, scope: !4361, inlinedAt: !5023)
!5203 = !DILocation(line: 371, column: 6, scope: !4366, inlinedAt: !5023)
!5204 = !DILocation(line: 371, column: 11, scope: !4366, inlinedAt: !5023)
!5205 = !DILocation(line: 371, column: 6, scope: !4219, inlinedAt: !5023)
!5206 = !DILocation(line: 371, column: 26, scope: !4366, inlinedAt: !5023)
!5207 = !DILocation(line: 372, column: 6, scope: !4371, inlinedAt: !5023)
!5208 = !DILocation(line: 372, column: 11, scope: !4371, inlinedAt: !5023)
!5209 = !DILocation(line: 372, column: 6, scope: !4219, inlinedAt: !5023)
!5210 = !DILocation(line: 372, column: 26, scope: !4371, inlinedAt: !5023)
!5211 = !DILocation(line: 373, column: 6, scope: !4376, inlinedAt: !5023)
!5212 = !DILocation(line: 373, column: 11, scope: !4376, inlinedAt: !5023)
!5213 = !DILocation(line: 373, column: 6, scope: !4219, inlinedAt: !5023)
!5214 = !DILocation(line: 373, column: 26, scope: !4376, inlinedAt: !5023)
!5215 = !DILocation(line: 374, column: 6, scope: !4381, inlinedAt: !5023)
!5216 = !DILocation(line: 374, column: 11, scope: !4381, inlinedAt: !5023)
!5217 = !DILocation(line: 374, column: 6, scope: !4219, inlinedAt: !5023)
!5218 = !DILocation(line: 374, column: 26, scope: !4381, inlinedAt: !5023)
!5219 = !DILocation(line: 375, column: 6, scope: !4386, inlinedAt: !5023)
!5220 = !DILocation(line: 375, column: 11, scope: !4386, inlinedAt: !5023)
!5221 = !DILocation(line: 375, column: 6, scope: !4219, inlinedAt: !5023)
!5222 = !DILocation(line: 375, column: 27, scope: !4386, inlinedAt: !5023)
!5223 = !DILocation(line: 376, column: 6, scope: !4391, inlinedAt: !5023)
!5224 = !DILocation(line: 376, column: 11, scope: !4391, inlinedAt: !5023)
!5225 = !DILocation(line: 376, column: 6, scope: !4219, inlinedAt: !5023)
!5226 = !DILocation(line: 376, column: 32, scope: !4391, inlinedAt: !5023)
!5227 = !DILocation(line: 377, column: 6, scope: !4396, inlinedAt: !5023)
!5228 = !DILocation(line: 377, column: 11, scope: !4396, inlinedAt: !5023)
!5229 = !DILocation(line: 377, column: 6, scope: !4219, inlinedAt: !5023)
!5230 = !DILocation(line: 377, column: 32, scope: !4396, inlinedAt: !5023)
!5231 = !DILocation(line: 378, column: 6, scope: !4401, inlinedAt: !5023)
!5232 = !DILocation(line: 378, column: 11, scope: !4401, inlinedAt: !5023)
!5233 = !DILocation(line: 378, column: 6, scope: !4219, inlinedAt: !5023)
!5234 = !DILocation(line: 378, column: 32, scope: !4401, inlinedAt: !5023)
!5235 = !DILocation(line: 379, column: 6, scope: !4406, inlinedAt: !5023)
!5236 = !DILocation(line: 379, column: 11, scope: !4406, inlinedAt: !5023)
!5237 = !DILocation(line: 379, column: 6, scope: !4219, inlinedAt: !5023)
!5238 = !DILocation(line: 379, column: 33, scope: !4406, inlinedAt: !5023)
!5239 = !DILocation(line: 380, column: 6, scope: !4411, inlinedAt: !5023)
!5240 = !DILocation(line: 380, column: 11, scope: !4411, inlinedAt: !5023)
!5241 = !DILocation(line: 380, column: 6, scope: !4219, inlinedAt: !5023)
!5242 = !DILocation(line: 380, column: 33, scope: !4411, inlinedAt: !5023)
!5243 = !DILocation(line: 381, column: 6, scope: !4416, inlinedAt: !5023)
!5244 = !DILocation(line: 381, column: 11, scope: !4416, inlinedAt: !5023)
!5245 = !DILocation(line: 381, column: 6, scope: !4219, inlinedAt: !5023)
!5246 = !DILocation(line: 381, column: 33, scope: !4416, inlinedAt: !5023)
!5247 = !DILocation(line: 382, column: 2, scope: !4421, inlinedAt: !5023)
!5248 = !DILocation(line: 382, column: 2, scope: !4425, inlinedAt: !5023)
!5249 = !DILocation(line: 382, column: 2, scope: !4426, inlinedAt: !5023)
!5250 = !DILocation(line: 386, column: 1, scope: !4219, inlinedAt: !5023)
!5251 = !DILocation(line: 547, column: 9, scope: !4202, inlinedAt: !5016)
!5252 = !DILocation(line: 549, column: 8, scope: !4432, inlinedAt: !5016)
!5253 = !DILocation(line: 549, column: 7, scope: !4202, inlinedAt: !5016)
!5254 = !DILocation(line: 550, column: 4, scope: !4432, inlinedAt: !5016)
!5255 = !DILocation(line: 553, column: 33, scope: !4202, inlinedAt: !5016)
!5256 = !DILocation(line: 325, column: 6, scope: !4437, inlinedAt: !5021)
!5257 = !DILocation(line: 325, column: 6, scope: !4213, inlinedAt: !5021)
!5258 = !DILocation(line: 326, column: 3, scope: !4437, inlinedAt: !5021)
!5259 = !DILocation(line: 332, column: 9, scope: !4213, inlinedAt: !5021)
!5260 = !DILocation(line: 332, column: 15, scope: !4213, inlinedAt: !5021)
!5261 = !DILocation(line: 332, column: 2, scope: !4213, inlinedAt: !5021)
!5262 = !DILocation(line: 336, column: 1, scope: !4213, inlinedAt: !5021)
!5263 = !DILocation(line: 553, column: 5, scope: !4202, inlinedAt: !5016)
!5264 = !DILocation(line: 553, column: 41, scope: !4202, inlinedAt: !5016)
!5265 = !DILocation(line: 554, column: 5, scope: !4202, inlinedAt: !5016)
!5266 = !DILocation(line: 554, column: 12, scope: !4202, inlinedAt: !5016)
!5267 = !DILocation(line: 448, column: 31, scope: !4197, inlinedAt: !5015)
!5268 = !DILocation(line: 448, column: 34, scope: !4197, inlinedAt: !5015)
!5269 = !DILocation(line: 448, column: 14, scope: !4197, inlinedAt: !5015)
!5270 = !DILocation(line: 450, column: 22, scope: !4197, inlinedAt: !5015)
!5271 = !DILocation(line: 450, column: 25, scope: !4197, inlinedAt: !5015)
!5272 = !DILocation(line: 450, column: 30, scope: !4197, inlinedAt: !5015)
!5273 = !DILocation(line: 450, column: 36, scope: !4197, inlinedAt: !5015)
!5274 = !DILocation(line: 450, column: 8, scope: !4197, inlinedAt: !5015)
!5275 = !DILocation(line: 450, column: 6, scope: !4197, inlinedAt: !5015)
!5276 = !DILocation(line: 451, column: 9, scope: !4197, inlinedAt: !5015)
!5277 = !DILocation(line: 552, column: 3, scope: !4202, inlinedAt: !5016)
!5278 = !DILocation(line: 557, column: 19, scope: !4204, inlinedAt: !5016)
!5279 = !DILocation(line: 557, column: 25, scope: !4204, inlinedAt: !5016)
!5280 = !DILocation(line: 557, column: 9, scope: !4204, inlinedAt: !5016)
!5281 = !DILocation(line: 557, column: 2, scope: !4204, inlinedAt: !5016)
!5282 = !DILocation(line: 558, column: 1, scope: !4204, inlinedAt: !5016)
!5283 = !DILocation(line: 693, column: 8, scope: !5013)
!5284 = !DILocation(line: 693, column: 6, scope: !5013)
!5285 = !DILocation(line: 694, column: 7, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5013, file: !3, line: 694, column: 6)
!5287 = !DILocation(line: 694, column: 6, scope: !5013)
!5288 = !DILocation(line: 695, column: 3, scope: !5286)
!5289 = !DILocation(line: 697, column: 14, scope: !5013)
!5290 = !DILocation(line: 697, column: 22, scope: !5013)
!5291 = !DILocation(line: 697, column: 2, scope: !5013)
!5292 = !DILocation(line: 700, column: 19, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5013, file: !3, line: 700, column: 6)
!5294 = !DILocation(line: 700, column: 31, scope: !5293)
!5295 = !DILocation(line: 700, column: 39, scope: !5293)
!5296 = !DILocation(line: 700, column: 24, scope: !5293)
!5297 = !DILocation(line: 700, column: 6, scope: !5293)
!5298 = !DILocation(line: 700, column: 53, scope: !5293)
!5299 = !DILocation(line: 700, column: 6, scope: !5013)
!5300 = !DILocation(line: 701, column: 3, scope: !5293)
!5301 = !DILocation(line: 702, column: 2, scope: !5013)
!5302 = !DILocation(line: 702, column: 10, scope: !5013)
!5303 = !DILocation(line: 702, column: 20, scope: !5013)
!5304 = !DILocation(line: 704, column: 8, scope: !5013)
!5305 = !DILocation(line: 706, column: 17, scope: !5013)
!5306 = !DILocation(line: 706, column: 25, scope: !5013)
!5307 = !DILocation(line: 706, column: 15, scope: !5013)
!5308 = !DILocation(line: 707, column: 6, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5013, file: !3, line: 707, column: 6)
!5310 = !DILocation(line: 707, column: 19, scope: !5309)
!5311 = !DILocation(line: 707, column: 6, scope: !5013)
!5312 = !DILocation(line: 708, column: 16, scope: !5309)
!5313 = !DILocation(line: 708, column: 3, scope: !5309)
!5314 = !DILocation(line: 709, column: 10, scope: !5013)
!5315 = !DILocation(line: 709, column: 25, scope: !5013)
!5316 = !DILocation(line: 709, column: 38, scope: !5013)
!5317 = !DILocation(line: 709, column: 22, scope: !5013)
!5318 = !DILocation(line: 709, column: 8, scope: !5013)
!5319 = !DILocation(line: 710, column: 22, scope: !5320)
!5320 = distinct !DILexicalBlock(scope: !5013, file: !3, line: 710, column: 6)
!5321 = !DILocation(line: 710, column: 27, scope: !5320)
!5322 = !DILocation(line: 710, column: 34, scope: !5320)
!5323 = !DILocation(line: 710, column: 6, scope: !5320)
!5324 = !DILocation(line: 710, column: 41, scope: !5320)
!5325 = !DILocation(line: 710, column: 6, scope: !5013)
!5326 = !DILocation(line: 711, column: 3, scope: !5320)
!5327 = !DILocation(line: 713, column: 2, scope: !5013)
!5328 = !DILocation(line: 714, column: 20, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5013, file: !3, line: 713, column: 5)
!5330 = !DILocation(line: 714, column: 3, scope: !5329)
!5331 = !DILocation(line: 716, column: 24, scope: !5329)
!5332 = !DILocation(line: 716, column: 9, scope: !5329)
!5333 = !DILocation(line: 716, column: 7, scope: !5329)
!5334 = !DILocation(line: 717, column: 7, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 717, column: 7)
!5336 = !DILocation(line: 717, column: 11, scope: !5335)
!5337 = !DILocation(line: 717, column: 15, scope: !5335)
!5338 = !DILocation(line: 717, column: 18, scope: !5335)
!5339 = !DILocation(line: 717, column: 22, scope: !5335)
!5340 = !DILocation(line: 717, column: 7, scope: !5329)
!5341 = !DILocation(line: 718, column: 4, scope: !5335)
!5342 = !DILocation(line: 720, column: 10, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 720, column: 7)
!5344 = !DILocation(line: 720, column: 7, scope: !5343)
!5345 = !DILocation(line: 720, column: 7, scope: !5329)
!5346 = !DILocation(line: 728, column: 23, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5343, file: !3, line: 720, column: 33)
!5348 = !DILocation(line: 728, column: 34, scope: !5347)
!5349 = !DILocation(line: 728, column: 28, scope: !5347)
!5350 = !DILocation(line: 728, column: 10, scope: !5347)
!5351 = !DILocation(line: 728, column: 8, scope: !5347)
!5352 = !DILocation(line: 729, column: 8, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 729, column: 8)
!5354 = !DILocation(line: 729, column: 12, scope: !5353)
!5355 = !DILocation(line: 729, column: 8, scope: !5347)
!5356 = !DILocation(line: 730, column: 5, scope: !5353)
!5357 = !DILocation(line: 731, column: 11, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 731, column: 4)
!5359 = !DILocation(line: 731, column: 9, scope: !5358)
!5360 = !DILocation(line: 731, column: 16, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5358, file: !3, line: 731, column: 4)
!5362 = !DILocation(line: 731, column: 20, scope: !5361)
!5363 = !DILocation(line: 731, column: 23, scope: !5361)
!5364 = !DILocation(line: 731, column: 18, scope: !5361)
!5365 = !DILocation(line: 731, column: 4, scope: !5358)
!5366 = !DILocation(line: 732, column: 5, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5361, file: !3, line: 731, column: 32)
!5368 = !DILocation(line: 733, column: 9, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5367, file: !3, line: 733, column: 9)
!5370 = !DILocation(line: 733, column: 18, scope: !5369)
!5371 = !DILocation(line: 733, column: 15, scope: !5369)
!5372 = !DILocation(line: 733, column: 9, scope: !5367)
!5373 = !DILocation(line: 734, column: 6, scope: !5369)
!5374 = !DILocation(line: 734, column: 15, scope: !5369)
!5375 = !DILocation(line: 734, column: 23, scope: !5369)
!5376 = !DILocation(line: 734, column: 27, scope: !5369)
!5377 = !DILocation(line: 737, column: 9, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5367, file: !3, line: 737, column: 9)
!5379 = !DILocation(line: 737, column: 18, scope: !5378)
!5380 = !DILocation(line: 737, column: 15, scope: !5378)
!5381 = !DILocation(line: 737, column: 9, scope: !5367)
!5382 = !DILocation(line: 738, column: 26, scope: !5378)
!5383 = !DILocation(line: 738, column: 30, scope: !5378)
!5384 = !DILocation(line: 738, column: 6, scope: !5378)
!5385 = !DILocation(line: 738, column: 14, scope: !5378)
!5386 = !DILocation(line: 738, column: 24, scope: !5378)
!5387 = !DILocation(line: 739, column: 4, scope: !5367)
!5388 = !DILocation(line: 731, column: 27, scope: !5361)
!5389 = !DILocation(line: 731, column: 4, scope: !5361)
!5390 = distinct !{!5390, !5365, !5391}
!5391 = !DILocation(line: 739, column: 4, scope: !5358)
!5392 = !DILocation(line: 740, column: 3, scope: !5347)
!5393 = !DILocation(line: 742, column: 34, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 742, column: 7)
!5395 = !DILocation(line: 742, column: 42, scope: !5394)
!5396 = !DILocation(line: 742, column: 7, scope: !5394)
!5397 = !DILocation(line: 742, column: 7, scope: !5329)
!5398 = !DILocation(line: 743, column: 4, scope: !5394)
!5399 = !DILocation(line: 744, column: 2, scope: !5329)
!5400 = !DILocation(line: 744, column: 16, scope: !5013)
!5401 = !DILocation(line: 744, column: 13, scope: !5013)
!5402 = !DILocation(line: 744, column: 23, scope: !5013)
!5403 = !DILocation(line: 744, column: 11, scope: !5013)
!5404 = distinct !{!5404, !5327, !5405}
!5405 = !DILocation(line: 744, column: 45, scope: !5013)
!5406 = !DILocation(line: 747, column: 6, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5013, file: !3, line: 747, column: 6)
!5408 = !DILocation(line: 747, column: 15, scope: !5407)
!5409 = !DILocation(line: 747, column: 12, scope: !5407)
!5410 = !DILocation(line: 747, column: 6, scope: !5013)
!5411 = !DILocation(line: 748, column: 3, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5407, file: !3, line: 747, column: 29)
!5413 = !DILocation(line: 748, column: 11, scope: !5412)
!5414 = !DILocation(line: 748, column: 21, scope: !5412)
!5415 = !DILocation(line: 749, column: 2, scope: !5412)
!5416 = !DILocation(line: 749, column: 43, scope: !5417)
!5417 = distinct !DILexicalBlock(scope: !5407, file: !3, line: 749, column: 13)
!5418 = !DILocation(line: 749, column: 51, scope: !5417)
!5419 = !DILocation(line: 749, column: 14, scope: !5417)
!5420 = !DILocation(line: 749, column: 13, scope: !5407)
!5421 = !DILocation(line: 757, column: 3, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5417, file: !3, line: 749, column: 59)
!5423 = !DILocation(line: 760, column: 31, scope: !5422)
!5424 = !DILocation(line: 760, column: 39, scope: !5422)
!5425 = !DILocation(line: 760, column: 3, scope: !5422)
!5426 = !DILocation(line: 761, column: 2, scope: !5422)
!5427 = !DILabel(scope: !5013, name: "search_out", file: !3, line: 762)
!5428 = !DILocation(line: 762, column: 1, scope: !5013)
!5429 = !DILocation(line: 763, column: 16, scope: !5013)
!5430 = !DILocation(line: 763, column: 24, scope: !5013)
!5431 = !DILocation(line: 763, column: 2, scope: !5013)
!5432 = !DILocation(line: 764, column: 8, scope: !5013)
!5433 = !DILocation(line: 764, column: 2, scope: !5013)
!5434 = !DILocation(line: 765, column: 1, scope: !5013)
!5435 = distinct !DISubprogram(name: "ds_send_control_cmd", scope: !3, file: !3, line: 168, type: !5436, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5436 = !DISubroutineType(types: !5437)
!5437 = !{!141, !3942, !816, !816}
!5438 = !DILocalVariable(name: "dev", arg: 1, scope: !5435, file: !3, line: 168, type: !3942)
!5439 = !DILocation(line: 168, column: 50, scope: !5435)
!5440 = !DILocalVariable(name: "value", arg: 2, scope: !5435, file: !3, line: 168, type: !816)
!5441 = !DILocation(line: 168, column: 59, scope: !5435)
!5442 = !DILocalVariable(name: "index", arg: 3, scope: !5435, file: !3, line: 168, type: !816)
!5443 = !DILocation(line: 168, column: 70, scope: !5435)
!5444 = !DILocalVariable(name: "err", scope: !5435, file: !3, line: 170, type: !141)
!5445 = !DILocation(line: 170, column: 6, scope: !5435)
!5446 = !DILocation(line: 172, column: 24, scope: !5435)
!5447 = !DILocation(line: 172, column: 29, scope: !5435)
!5448 = !DILocation(line: 172, column: 35, scope: !5435)
!5449 = !DILocation(line: 173, column: 25, scope: !5435)
!5450 = !DILocation(line: 173, column: 32, scope: !5435)
!5451 = !DILocation(line: 172, column: 8, scope: !5435)
!5452 = !DILocation(line: 172, column: 6, scope: !5435)
!5453 = !DILocation(line: 174, column: 6, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5435, file: !3, line: 174, column: 6)
!5455 = !DILocation(line: 174, column: 10, scope: !5454)
!5456 = !DILocation(line: 174, column: 6, scope: !5435)
!5457 = !DILocation(line: 175, column: 3, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5454, file: !3, line: 174, column: 15)
!5459 = !DILocation(line: 177, column: 10, scope: !5458)
!5460 = !DILocation(line: 177, column: 3, scope: !5458)
!5461 = !DILocation(line: 180, column: 9, scope: !5435)
!5462 = !DILocation(line: 180, column: 2, scope: !5435)
!5463 = !DILocation(line: 181, column: 1, scope: !5435)
!5464 = distinct !DISubprogram(name: "ds_send_control_mode", scope: !3, file: !3, line: 183, type: !5436, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5465 = !DILocalVariable(name: "dev", arg: 1, scope: !5464, file: !3, line: 183, type: !3942)
!5466 = !DILocation(line: 183, column: 51, scope: !5464)
!5467 = !DILocalVariable(name: "value", arg: 2, scope: !5464, file: !3, line: 183, type: !816)
!5468 = !DILocation(line: 183, column: 60, scope: !5464)
!5469 = !DILocalVariable(name: "index", arg: 3, scope: !5464, file: !3, line: 183, type: !816)
!5470 = !DILocation(line: 183, column: 71, scope: !5464)
!5471 = !DILocalVariable(name: "err", scope: !5464, file: !3, line: 185, type: !141)
!5472 = !DILocation(line: 185, column: 6, scope: !5464)
!5473 = !DILocation(line: 187, column: 24, scope: !5464)
!5474 = !DILocation(line: 187, column: 29, scope: !5464)
!5475 = !DILocation(line: 187, column: 35, scope: !5464)
!5476 = !DILocation(line: 188, column: 22, scope: !5464)
!5477 = !DILocation(line: 188, column: 29, scope: !5464)
!5478 = !DILocation(line: 187, column: 8, scope: !5464)
!5479 = !DILocation(line: 187, column: 6, scope: !5464)
!5480 = !DILocation(line: 189, column: 6, scope: !5481)
!5481 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 189, column: 6)
!5482 = !DILocation(line: 189, column: 10, scope: !5481)
!5483 = !DILocation(line: 189, column: 6, scope: !5464)
!5484 = !DILocation(line: 190, column: 3, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5481, file: !3, line: 189, column: 15)
!5486 = !DILocation(line: 192, column: 10, scope: !5485)
!5487 = !DILocation(line: 192, column: 3, scope: !5485)
!5488 = !DILocation(line: 195, column: 9, scope: !5464)
!5489 = !DILocation(line: 195, column: 2, scope: !5464)
!5490 = !DILocation(line: 196, column: 1, scope: !5464)
!5491 = distinct !DISubprogram(name: "ds_send_control", scope: !3, file: !3, line: 198, type: !5436, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5492 = !DILocalVariable(name: "dev", arg: 1, scope: !5491, file: !3, line: 198, type: !3942)
!5493 = !DILocation(line: 198, column: 46, scope: !5491)
!5494 = !DILocalVariable(name: "value", arg: 2, scope: !5491, file: !3, line: 198, type: !816)
!5495 = !DILocation(line: 198, column: 55, scope: !5491)
!5496 = !DILocalVariable(name: "index", arg: 3, scope: !5491, file: !3, line: 198, type: !816)
!5497 = !DILocation(line: 198, column: 66, scope: !5491)
!5498 = !DILocalVariable(name: "err", scope: !5491, file: !3, line: 200, type: !141)
!5499 = !DILocation(line: 200, column: 6, scope: !5491)
!5500 = !DILocation(line: 202, column: 24, scope: !5491)
!5501 = !DILocation(line: 202, column: 29, scope: !5491)
!5502 = !DILocation(line: 202, column: 35, scope: !5491)
!5503 = !DILocation(line: 203, column: 22, scope: !5491)
!5504 = !DILocation(line: 203, column: 29, scope: !5491)
!5505 = !DILocation(line: 202, column: 8, scope: !5491)
!5506 = !DILocation(line: 202, column: 6, scope: !5491)
!5507 = !DILocation(line: 204, column: 6, scope: !5508)
!5508 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 204, column: 6)
!5509 = !DILocation(line: 204, column: 10, scope: !5508)
!5510 = !DILocation(line: 204, column: 6, scope: !5491)
!5511 = !DILocation(line: 205, column: 3, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5508, file: !3, line: 204, column: 15)
!5513 = !DILocation(line: 207, column: 10, scope: !5512)
!5514 = !DILocation(line: 207, column: 3, scope: !5512)
!5515 = !DILocation(line: 210, column: 9, scope: !5491)
!5516 = !DILocation(line: 210, column: 2, scope: !5491)
!5517 = !DILocation(line: 211, column: 1, scope: !5491)
!5518 = distinct !DISubprogram(name: "__create_pipe", scope: !6, file: !6, line: 1945, type: !5519, scopeLine: 1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5519 = !DISubroutineType(types: !5520)
!5520 = !{!7, !137, !7}
!5521 = !DILocalVariable(name: "dev", arg: 1, scope: !5518, file: !6, line: 1945, type: !137)
!5522 = !DILocation(line: 1945, column: 61, scope: !5518)
!5523 = !DILocalVariable(name: "endpoint", arg: 2, scope: !5518, file: !6, line: 1946, type: !7)
!5524 = !DILocation(line: 1946, column: 16, scope: !5518)
!5525 = !DILocation(line: 1948, column: 10, scope: !5518)
!5526 = !DILocation(line: 1948, column: 15, scope: !5518)
!5527 = !DILocation(line: 1948, column: 22, scope: !5518)
!5528 = !DILocation(line: 1948, column: 31, scope: !5518)
!5529 = !DILocation(line: 1948, column: 40, scope: !5518)
!5530 = !DILocation(line: 1948, column: 28, scope: !5518)
!5531 = !DILocation(line: 1948, column: 2, scope: !5518)
!5532 = distinct !DISubprogram(name: "ds_touch_bit", scope: !3, file: !3, line: 532, type: !5533, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5533 = !DISubroutineType(types: !5534)
!5534 = !{!141, !3942, !1229, !3815}
!5535 = !DILocalVariable(name: "dev", arg: 1, scope: !5532, file: !3, line: 532, type: !3942)
!5536 = !DILocation(line: 532, column: 43, scope: !5532)
!5537 = !DILocalVariable(name: "bit", arg: 2, scope: !5532, file: !3, line: 532, type: !1229)
!5538 = !DILocation(line: 532, column: 51, scope: !5532)
!5539 = !DILocalVariable(name: "tbit", arg: 3, scope: !5532, file: !3, line: 532, type: !3815)
!5540 = !DILocation(line: 532, column: 60, scope: !5532)
!5541 = !DILocalVariable(name: "err", scope: !5532, file: !3, line: 534, type: !141)
!5542 = !DILocation(line: 534, column: 6, scope: !5532)
!5543 = !DILocalVariable(name: "st", scope: !5532, file: !3, line: 535, type: !5060)
!5544 = !DILocation(line: 535, column: 19, scope: !5532)
!5545 = !DILocation(line: 537, column: 24, scope: !5532)
!5546 = !DILocation(line: 537, column: 54, scope: !5532)
!5547 = !DILocation(line: 537, column: 51, scope: !5532)
!5548 = !DILocation(line: 537, column: 29, scope: !5532)
!5549 = !DILocation(line: 537, column: 8, scope: !5532)
!5550 = !DILocation(line: 537, column: 6, scope: !5532)
!5551 = !DILocation(line: 539, column: 6, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !5532, file: !3, line: 539, column: 6)
!5553 = !DILocation(line: 539, column: 6, scope: !5532)
!5554 = !DILocation(line: 540, column: 10, scope: !5552)
!5555 = !DILocation(line: 540, column: 3, scope: !5552)
!5556 = !DILocation(line: 542, column: 17, scope: !5532)
!5557 = !DILocation(line: 542, column: 2, scope: !5532)
!5558 = !DILocation(line: 544, column: 21, scope: !5532)
!5559 = !DILocation(line: 544, column: 26, scope: !5532)
!5560 = !DILocation(line: 544, column: 8, scope: !5532)
!5561 = !DILocation(line: 544, column: 6, scope: !5532)
!5562 = !DILocation(line: 545, column: 6, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5532, file: !3, line: 545, column: 6)
!5564 = !DILocation(line: 545, column: 10, scope: !5563)
!5565 = !DILocation(line: 545, column: 6, scope: !5532)
!5566 = !DILocation(line: 546, column: 10, scope: !5563)
!5567 = !DILocation(line: 546, column: 3, scope: !5563)
!5568 = !DILocation(line: 548, column: 2, scope: !5532)
!5569 = !DILocation(line: 549, column: 1, scope: !5532)
!5570 = distinct !DISubprogram(name: "ds_wait_status", scope: !3, file: !3, line: 423, type: !5571, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5571 = !DISubroutineType(types: !5572)
!5572 = !{!141, !3942, !5573}
!5573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5060, size: 64)
!5574 = !DILocalVariable(name: "dev", arg: 1, scope: !5570, file: !3, line: 423, type: !3942)
!5575 = !DILocation(line: 423, column: 45, scope: !5570)
!5576 = !DILocalVariable(name: "st", arg: 2, scope: !5570, file: !3, line: 423, type: !5573)
!5577 = !DILocation(line: 423, column: 68, scope: !5570)
!5578 = !DILocalVariable(name: "err", scope: !5570, file: !3, line: 425, type: !141)
!5579 = !DILocation(line: 425, column: 6, scope: !5570)
!5580 = !DILocalVariable(name: "count", scope: !5570, file: !3, line: 425, type: !141)
!5581 = !DILocation(line: 425, column: 11, scope: !5570)
!5582 = !DILocation(line: 427, column: 2, scope: !5570)
!5583 = !DILocation(line: 428, column: 3, scope: !5584)
!5584 = distinct !DILexicalBlock(scope: !5570, file: !3, line: 427, column: 5)
!5585 = !DILocation(line: 428, column: 7, scope: !5584)
!5586 = !DILocation(line: 428, column: 14, scope: !5584)
!5587 = !DILocation(line: 429, column: 24, scope: !5584)
!5588 = !DILocation(line: 429, column: 29, scope: !5584)
!5589 = !DILocation(line: 429, column: 9, scope: !5584)
!5590 = !DILocation(line: 429, column: 7, scope: !5584)
!5591 = !DILocation(line: 439, column: 2, scope: !5584)
!5592 = !DILocation(line: 439, column: 13, scope: !5570)
!5593 = !DILocation(line: 439, column: 17, scope: !5570)
!5594 = !DILocation(line: 439, column: 24, scope: !5570)
!5595 = !DILocation(line: 439, column: 35, scope: !5570)
!5596 = !DILocation(line: 439, column: 40, scope: !5570)
!5597 = !DILocation(line: 439, column: 44, scope: !5570)
!5598 = !DILocation(line: 439, column: 49, scope: !5570)
!5599 = !DILocation(line: 439, column: 52, scope: !5570)
!5600 = !DILocation(line: 439, column: 60, scope: !5570)
!5601 = !DILocation(line: 0, scope: !5570)
!5602 = distinct !{!5602, !5582, !5603}
!5603 = !DILocation(line: 439, column: 65, scope: !5570)
!5604 = !DILocation(line: 441, column: 6, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5570, file: !3, line: 441, column: 6)
!5606 = !DILocation(line: 441, column: 10, scope: !5605)
!5607 = !DILocation(line: 441, column: 16, scope: !5605)
!5608 = !DILocation(line: 441, column: 19, scope: !5605)
!5609 = !DILocation(line: 441, column: 23, scope: !5605)
!5610 = !DILocation(line: 441, column: 30, scope: !5605)
!5611 = !DILocation(line: 441, column: 6, scope: !5570)
!5612 = !DILocation(line: 442, column: 3, scope: !5613)
!5613 = distinct !DILexicalBlock(scope: !5605, file: !3, line: 441, column: 41)
!5614 = !DILocation(line: 443, column: 19, scope: !5613)
!5615 = !DILocation(line: 443, column: 3, scope: !5613)
!5616 = !DILocation(line: 445, column: 9, scope: !5613)
!5617 = !DILocation(line: 446, column: 2, scope: !5613)
!5618 = !DILocation(line: 452, column: 6, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !5570, file: !3, line: 452, column: 6)
!5620 = !DILocation(line: 452, column: 10, scope: !5619)
!5621 = !DILocation(line: 452, column: 15, scope: !5619)
!5622 = !DILocation(line: 452, column: 18, scope: !5619)
!5623 = !DILocation(line: 452, column: 24, scope: !5619)
!5624 = !DILocation(line: 452, column: 31, scope: !5619)
!5625 = !DILocation(line: 452, column: 34, scope: !5619)
!5626 = !DILocation(line: 452, column: 38, scope: !5619)
!5627 = !DILocation(line: 452, column: 6, scope: !5570)
!5628 = !DILocation(line: 453, column: 18, scope: !5619)
!5629 = !DILocation(line: 453, column: 23, scope: !5619)
!5630 = !DILocation(line: 453, column: 28, scope: !5619)
!5631 = !DILocation(line: 453, column: 36, scope: !5619)
!5632 = !DILocation(line: 453, column: 3, scope: !5619)
!5633 = !DILocation(line: 459, column: 6, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5570, file: !3, line: 459, column: 6)
!5635 = !DILocation(line: 459, column: 12, scope: !5634)
!5636 = !DILocation(line: 459, column: 19, scope: !5634)
!5637 = !DILocation(line: 459, column: 22, scope: !5634)
!5638 = !DILocation(line: 459, column: 26, scope: !5634)
!5639 = !DILocation(line: 459, column: 6, scope: !5570)
!5640 = !DILocation(line: 460, column: 3, scope: !5634)
!5641 = !DILocation(line: 462, column: 3, scope: !5634)
!5642 = !DILocation(line: 463, column: 1, scope: !5570)
!5643 = distinct !DISubprogram(name: "ds_recv_data", scope: !3, file: !3, line: 317, type: !5644, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5644 = !DISubroutineType(types: !5645)
!5645 = !{!141, !3942, !3593, !141}
!5646 = !DILocalVariable(name: "dev", arg: 1, scope: !5643, file: !3, line: 317, type: !3942)
!5647 = !DILocation(line: 317, column: 43, scope: !5643)
!5648 = !DILocalVariable(name: "buf", arg: 2, scope: !5643, file: !3, line: 317, type: !3593)
!5649 = !DILocation(line: 317, column: 63, scope: !5643)
!5650 = !DILocalVariable(name: "size", arg: 3, scope: !5643, file: !3, line: 317, type: !141)
!5651 = !DILocation(line: 317, column: 72, scope: !5643)
!5652 = !DILocalVariable(name: "count", scope: !5643, file: !3, line: 319, type: !141)
!5653 = !DILocation(line: 319, column: 6, scope: !5643)
!5654 = !DILocalVariable(name: "err", scope: !5643, file: !3, line: 319, type: !141)
!5655 = !DILocation(line: 319, column: 13, scope: !5643)
!5656 = !DILocation(line: 330, column: 8, scope: !5643)
!5657 = !DILocation(line: 331, column: 21, scope: !5643)
!5658 = !DILocation(line: 331, column: 26, scope: !5643)
!5659 = !DILocation(line: 331, column: 32, scope: !5643)
!5660 = !DILocation(line: 332, column: 5, scope: !5643)
!5661 = !DILocation(line: 332, column: 10, scope: !5643)
!5662 = !DILocation(line: 331, column: 8, scope: !5643)
!5663 = !DILocation(line: 331, column: 6, scope: !5643)
!5664 = !DILocation(line: 333, column: 6, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5643, file: !3, line: 333, column: 6)
!5666 = !DILocation(line: 333, column: 10, scope: !5665)
!5667 = !DILocation(line: 333, column: 6, scope: !5643)
!5668 = !DILocation(line: 334, column: 3, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5665, file: !3, line: 333, column: 15)
!5670 = !DILocation(line: 335, column: 18, scope: !5669)
!5671 = !DILocation(line: 335, column: 23, scope: !5669)
!5672 = !DILocation(line: 335, column: 29, scope: !5669)
!5673 = !DILocation(line: 335, column: 3, scope: !5669)
!5674 = !DILocation(line: 336, column: 18, scope: !5669)
!5675 = !DILocation(line: 336, column: 3, scope: !5669)
!5676 = !DILocation(line: 337, column: 10, scope: !5669)
!5677 = !DILocation(line: 337, column: 3, scope: !5669)
!5678 = !DILocation(line: 350, column: 9, scope: !5643)
!5679 = !DILocation(line: 350, column: 2, scope: !5643)
!5680 = !DILocation(line: 351, column: 1, scope: !5643)
!5681 = distinct !DISubprogram(name: "ds_recv_status", scope: !3, file: !3, line: 271, type: !5682, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5682 = !DISubroutineType(types: !5683)
!5683 = !{!141, !3942, !5573, !447}
!5684 = !DILocalVariable(name: "dev", arg: 1, scope: !5681, file: !3, line: 271, type: !3942)
!5685 = !DILocation(line: 271, column: 45, scope: !5681)
!5686 = !DILocalVariable(name: "st", arg: 2, scope: !5681, file: !3, line: 271, type: !5573)
!5687 = !DILocation(line: 271, column: 68, scope: !5681)
!5688 = !DILocalVariable(name: "dump", arg: 3, scope: !5681, file: !3, line: 272, type: !447)
!5689 = !DILocation(line: 272, column: 11, scope: !5681)
!5690 = !DILocalVariable(name: "count", scope: !5681, file: !3, line: 274, type: !141)
!5691 = !DILocation(line: 274, column: 6, scope: !5681)
!5692 = !DILocalVariable(name: "err", scope: !5681, file: !3, line: 274, type: !141)
!5693 = !DILocation(line: 274, column: 13, scope: !5681)
!5694 = !DILocation(line: 276, column: 6, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 276, column: 6)
!5696 = !DILocation(line: 276, column: 6, scope: !5681)
!5697 = !DILocation(line: 277, column: 10, scope: !5695)
!5698 = !DILocation(line: 277, column: 3, scope: !5695)
!5699 = !DILocation(line: 279, column: 8, scope: !5681)
!5700 = !DILocation(line: 280, column: 26, scope: !5681)
!5701 = !DILocation(line: 280, column: 31, scope: !5681)
!5702 = !DILocation(line: 281, column: 5, scope: !5681)
!5703 = !DILocation(line: 283, column: 5, scope: !5681)
!5704 = !DILocation(line: 283, column: 10, scope: !5681)
!5705 = !DILocation(line: 280, column: 8, scope: !5681)
!5706 = !DILocation(line: 280, column: 6, scope: !5681)
!5707 = !DILocation(line: 285, column: 6, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 285, column: 6)
!5709 = !DILocation(line: 285, column: 10, scope: !5708)
!5710 = !DILocation(line: 285, column: 6, scope: !5681)
!5711 = !DILocation(line: 286, column: 3, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 285, column: 15)
!5713 = !DILocation(line: 288, column: 10, scope: !5712)
!5714 = !DILocation(line: 288, column: 3, scope: !5712)
!5715 = !DILocation(line: 291, column: 6, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 291, column: 6)
!5717 = !DILocation(line: 291, column: 6, scope: !5681)
!5718 = !DILocation(line: 292, column: 18, scope: !5716)
!5719 = !DILocation(line: 292, column: 23, scope: !5716)
!5720 = !DILocation(line: 292, column: 28, scope: !5716)
!5721 = !DILocation(line: 292, column: 36, scope: !5716)
!5722 = !DILocation(line: 292, column: 3, scope: !5716)
!5723 = !DILocation(line: 294, column: 6, scope: !5724)
!5724 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 294, column: 6)
!5725 = !DILocation(line: 294, column: 9, scope: !5724)
!5726 = !DILocation(line: 294, column: 12, scope: !5724)
!5727 = !DILocation(line: 294, column: 18, scope: !5724)
!5728 = !DILocation(line: 294, column: 6, scope: !5681)
!5729 = !DILocation(line: 295, column: 10, scope: !5724)
!5730 = !DILocation(line: 295, column: 3, scope: !5724)
!5731 = !DILocation(line: 295, column: 14, scope: !5724)
!5732 = !DILocation(line: 295, column: 19, scope: !5724)
!5733 = !DILocation(line: 297, column: 9, scope: !5681)
!5734 = !DILocation(line: 297, column: 2, scope: !5681)
!5735 = !DILocation(line: 298, column: 1, scope: !5681)
!5736 = distinct !DISubprogram(name: "ds_dump_status", scope: !3, file: !3, line: 218, type: !5737, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5737 = !DISubroutineType(types: !5738)
!5738 = !{null, !3942, !3593, !141}
!5739 = !DILocalVariable(name: "dev", arg: 1, scope: !5736, file: !3, line: 218, type: !3942)
!5740 = !DILocation(line: 218, column: 46, scope: !5736)
!5741 = !DILocalVariable(name: "buf", arg: 2, scope: !5736, file: !3, line: 218, type: !3593)
!5742 = !DILocation(line: 218, column: 66, scope: !5736)
!5743 = !DILocalVariable(name: "count", arg: 3, scope: !5736, file: !3, line: 218, type: !141)
!5744 = !DILocation(line: 218, column: 75, scope: !5736)
!5745 = !DILocalVariable(name: "i", scope: !5736, file: !3, line: 220, type: !141)
!5746 = !DILocation(line: 220, column: 6, scope: !5736)
!5747 = !DILocation(line: 222, column: 2, scope: !5736)
!5748 = !DILocation(line: 223, column: 9, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 223, column: 2)
!5750 = !DILocation(line: 223, column: 7, scope: !5749)
!5751 = !DILocation(line: 223, column: 14, scope: !5752)
!5752 = distinct !DILexicalBlock(scope: !5749, file: !3, line: 223, column: 2)
!5753 = !DILocation(line: 223, column: 18, scope: !5752)
!5754 = !DILocation(line: 223, column: 16, scope: !5752)
!5755 = !DILocation(line: 223, column: 2, scope: !5749)
!5756 = !DILocation(line: 224, column: 3, scope: !5752)
!5757 = !DILocation(line: 223, column: 25, scope: !5752)
!5758 = !DILocation(line: 223, column: 2, scope: !5752)
!5759 = distinct !{!5759, !5755, !5760}
!5760 = !DILocation(line: 224, column: 3, scope: !5749)
!5761 = !DILocation(line: 225, column: 2, scope: !5736)
!5762 = !DILocation(line: 227, column: 6, scope: !5763)
!5763 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 227, column: 6)
!5764 = !DILocation(line: 227, column: 12, scope: !5763)
!5765 = !DILocation(line: 227, column: 6, scope: !5736)
!5766 = !DILocation(line: 228, column: 16, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5763, file: !3, line: 227, column: 19)
!5768 = !DILocation(line: 228, column: 3, scope: !5767)
!5769 = !DILocation(line: 229, column: 16, scope: !5767)
!5770 = !DILocation(line: 229, column: 3, scope: !5767)
!5771 = !DILocation(line: 230, column: 16, scope: !5767)
!5772 = !DILocation(line: 230, column: 3, scope: !5767)
!5773 = !DILocation(line: 231, column: 16, scope: !5767)
!5774 = !DILocation(line: 231, column: 3, scope: !5767)
!5775 = !DILocation(line: 232, column: 16, scope: !5767)
!5776 = !DILocation(line: 232, column: 3, scope: !5767)
!5777 = !DILocation(line: 233, column: 16, scope: !5767)
!5778 = !DILocation(line: 233, column: 3, scope: !5767)
!5779 = !DILocation(line: 234, column: 16, scope: !5767)
!5780 = !DILocation(line: 234, column: 3, scope: !5767)
!5781 = !DILocation(line: 236, column: 16, scope: !5767)
!5782 = !DILocation(line: 236, column: 3, scope: !5767)
!5783 = !DILocation(line: 237, column: 16, scope: !5767)
!5784 = !DILocation(line: 237, column: 3, scope: !5767)
!5785 = !DILocation(line: 238, column: 16, scope: !5767)
!5786 = !DILocation(line: 238, column: 3, scope: !5767)
!5787 = !DILocation(line: 239, column: 16, scope: !5767)
!5788 = !DILocation(line: 239, column: 3, scope: !5767)
!5789 = !DILocation(line: 240, column: 16, scope: !5767)
!5790 = !DILocation(line: 240, column: 3, scope: !5767)
!5791 = !DILocation(line: 241, column: 16, scope: !5767)
!5792 = !DILocation(line: 241, column: 3, scope: !5767)
!5793 = !DILocation(line: 242, column: 16, scope: !5767)
!5794 = !DILocation(line: 242, column: 3, scope: !5767)
!5795 = !DILocation(line: 243, column: 16, scope: !5767)
!5796 = !DILocation(line: 243, column: 3, scope: !5767)
!5797 = !DILocation(line: 244, column: 16, scope: !5767)
!5798 = !DILocation(line: 244, column: 3, scope: !5767)
!5799 = !DILocation(line: 245, column: 2, scope: !5767)
!5800 = !DILocation(line: 246, column: 9, scope: !5801)
!5801 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 246, column: 2)
!5802 = !DILocation(line: 246, column: 7, scope: !5801)
!5803 = !DILocation(line: 246, column: 15, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5801, file: !3, line: 246, column: 2)
!5805 = !DILocation(line: 246, column: 19, scope: !5804)
!5806 = !DILocation(line: 246, column: 17, scope: !5804)
!5807 = !DILocation(line: 246, column: 2, scope: !5801)
!5808 = !DILocation(line: 247, column: 7, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5810, file: !3, line: 247, column: 7)
!5810 = distinct !DILexicalBlock(scope: !5804, file: !3, line: 246, column: 31)
!5811 = !DILocation(line: 247, column: 11, scope: !5809)
!5812 = !DILocation(line: 247, column: 14, scope: !5809)
!5813 = !DILocation(line: 247, column: 7, scope: !5810)
!5814 = !DILocation(line: 248, column: 17, scope: !5815)
!5815 = distinct !DILexicalBlock(scope: !5809, file: !3, line: 247, column: 28)
!5816 = !DILocation(line: 248, column: 43, scope: !5815)
!5817 = !DILocation(line: 248, column: 4, scope: !5815)
!5818 = !DILocation(line: 249, column: 4, scope: !5815)
!5819 = !DILocation(line: 251, column: 16, scope: !5810)
!5820 = !DILocation(line: 251, column: 48, scope: !5810)
!5821 = !DILocation(line: 251, column: 3, scope: !5810)
!5822 = !DILocation(line: 252, column: 7, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5810, file: !3, line: 252, column: 7)
!5824 = !DILocation(line: 252, column: 11, scope: !5823)
!5825 = !DILocation(line: 252, column: 14, scope: !5823)
!5826 = !DILocation(line: 252, column: 7, scope: !5810)
!5827 = !DILocation(line: 253, column: 4, scope: !5823)
!5828 = !DILocation(line: 254, column: 7, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5810, file: !3, line: 254, column: 7)
!5830 = !DILocation(line: 254, column: 11, scope: !5829)
!5831 = !DILocation(line: 254, column: 14, scope: !5829)
!5832 = !DILocation(line: 254, column: 7, scope: !5810)
!5833 = !DILocation(line: 255, column: 4, scope: !5829)
!5834 = !DILocation(line: 256, column: 7, scope: !5835)
!5835 = distinct !DILexicalBlock(scope: !5810, file: !3, line: 256, column: 7)
!5836 = !DILocation(line: 256, column: 11, scope: !5835)
!5837 = !DILocation(line: 256, column: 14, scope: !5835)
!5838 = !DILocation(line: 256, column: 7, scope: !5810)
!5839 = !DILocation(line: 257, column: 4, scope: !5835)
!5840 = !DILocation(line: 258, column: 7, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5810, file: !3, line: 258, column: 7)
!5842 = !DILocation(line: 258, column: 11, scope: !5841)
!5843 = !DILocation(line: 258, column: 14, scope: !5841)
!5844 = !DILocation(line: 258, column: 7, scope: !5810)
!5845 = !DILocation(line: 259, column: 4, scope: !5841)
!5846 = !DILocation(line: 260, column: 7, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5810, file: !3, line: 260, column: 7)
!5848 = !DILocation(line: 260, column: 11, scope: !5847)
!5849 = !DILocation(line: 260, column: 14, scope: !5847)
!5850 = !DILocation(line: 260, column: 7, scope: !5810)
!5851 = !DILocation(line: 261, column: 4, scope: !5847)
!5852 = !DILocation(line: 262, column: 7, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5810, file: !3, line: 262, column: 7)
!5854 = !DILocation(line: 262, column: 11, scope: !5853)
!5855 = !DILocation(line: 262, column: 14, scope: !5853)
!5856 = !DILocation(line: 262, column: 7, scope: !5810)
!5857 = !DILocation(line: 263, column: 4, scope: !5853)
!5858 = !DILocation(line: 264, column: 7, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5810, file: !3, line: 264, column: 7)
!5860 = !DILocation(line: 264, column: 11, scope: !5859)
!5861 = !DILocation(line: 264, column: 14, scope: !5859)
!5862 = !DILocation(line: 264, column: 7, scope: !5810)
!5863 = !DILocation(line: 265, column: 4, scope: !5859)
!5864 = !DILocation(line: 266, column: 7, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !5810, file: !3, line: 266, column: 7)
!5866 = !DILocation(line: 266, column: 11, scope: !5865)
!5867 = !DILocation(line: 266, column: 14, scope: !5865)
!5868 = !DILocation(line: 266, column: 7, scope: !5810)
!5869 = !DILocation(line: 267, column: 4, scope: !5865)
!5870 = !DILocation(line: 268, column: 2, scope: !5810)
!5871 = !DILocation(line: 246, column: 26, scope: !5804)
!5872 = !DILocation(line: 246, column: 2, scope: !5804)
!5873 = distinct !{!5873, !5807, !5874}
!5874 = !DILocation(line: 268, column: 2, scope: !5801)
!5875 = !DILocation(line: 269, column: 1, scope: !5736)
!5876 = distinct !DISubprogram(name: "ds_print_msg", scope: !3, file: !3, line: 213, type: !5877, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5877 = !DISubroutineType(types: !5878)
!5878 = !{null, !3593, !3593, !141}
!5879 = !DILocalVariable(name: "buf", arg: 1, scope: !5876, file: !3, line: 213, type: !3593)
!5880 = !DILocation(line: 213, column: 48, scope: !5876)
!5881 = !DILocalVariable(name: "str", arg: 2, scope: !5876, file: !3, line: 213, type: !3593)
!5882 = !DILocation(line: 213, column: 68, scope: !5876)
!5883 = !DILocalVariable(name: "off", arg: 3, scope: !5876, file: !3, line: 213, type: !141)
!5884 = !DILocation(line: 213, column: 77, scope: !5876)
!5885 = !DILocation(line: 215, column: 2, scope: !5876)
!5886 = !DILocation(line: 216, column: 1, scope: !5876)
!5887 = distinct !DISubprogram(name: "ds_read_byte", scope: !3, file: !3, line: 595, type: !5888, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5888 = !DISubroutineType(types: !5889)
!5889 = !{!141, !3942, !3815}
!5890 = !DILocalVariable(name: "dev", arg: 1, scope: !5887, file: !3, line: 595, type: !3942)
!5891 = !DILocation(line: 595, column: 43, scope: !5887)
!5892 = !DILocalVariable(name: "byte", arg: 2, scope: !5887, file: !3, line: 595, type: !3815)
!5893 = !DILocation(line: 595, column: 52, scope: !5887)
!5894 = !DILocalVariable(name: "err", scope: !5887, file: !3, line: 597, type: !141)
!5895 = !DILocation(line: 597, column: 6, scope: !5887)
!5896 = !DILocalVariable(name: "st", scope: !5887, file: !3, line: 598, type: !5060)
!5897 = !DILocation(line: 598, column: 19, scope: !5887)
!5898 = !DILocation(line: 600, column: 24, scope: !5887)
!5899 = !DILocation(line: 600, column: 8, scope: !5887)
!5900 = !DILocation(line: 600, column: 6, scope: !5887)
!5901 = !DILocation(line: 601, column: 6, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5887, file: !3, line: 601, column: 6)
!5903 = !DILocation(line: 601, column: 6, scope: !5887)
!5904 = !DILocation(line: 602, column: 10, scope: !5902)
!5905 = !DILocation(line: 602, column: 3, scope: !5902)
!5906 = !DILocation(line: 604, column: 17, scope: !5887)
!5907 = !DILocation(line: 604, column: 2, scope: !5887)
!5908 = !DILocation(line: 606, column: 21, scope: !5887)
!5909 = !DILocation(line: 606, column: 26, scope: !5887)
!5910 = !DILocation(line: 606, column: 8, scope: !5887)
!5911 = !DILocation(line: 606, column: 6, scope: !5887)
!5912 = !DILocation(line: 607, column: 6, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5887, file: !3, line: 607, column: 6)
!5914 = !DILocation(line: 607, column: 10, scope: !5913)
!5915 = !DILocation(line: 607, column: 6, scope: !5887)
!5916 = !DILocation(line: 608, column: 10, scope: !5913)
!5917 = !DILocation(line: 608, column: 3, scope: !5913)
!5918 = !DILocation(line: 610, column: 2, scope: !5887)
!5919 = !DILocation(line: 611, column: 1, scope: !5887)
!5920 = distinct !DISubprogram(name: "ds_write_byte", scope: !3, file: !3, line: 572, type: !5921, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5921 = !DISubroutineType(types: !5922)
!5922 = !{!141, !3942, !1229}
!5923 = !DILocalVariable(name: "dev", arg: 1, scope: !5920, file: !3, line: 572, type: !3942)
!5924 = !DILocation(line: 572, column: 44, scope: !5920)
!5925 = !DILocalVariable(name: "byte", arg: 2, scope: !5920, file: !3, line: 572, type: !1229)
!5926 = !DILocation(line: 572, column: 52, scope: !5920)
!5927 = !DILocalVariable(name: "err", scope: !5920, file: !3, line: 574, type: !141)
!5928 = !DILocation(line: 574, column: 6, scope: !5920)
!5929 = !DILocalVariable(name: "st", scope: !5920, file: !3, line: 575, type: !5060)
!5930 = !DILocation(line: 575, column: 19, scope: !5920)
!5931 = !DILocation(line: 577, column: 24, scope: !5920)
!5932 = !DILocation(line: 577, column: 54, scope: !5920)
!5933 = !DILocation(line: 577, column: 59, scope: !5920)
!5934 = !DILocation(line: 577, column: 52, scope: !5920)
!5935 = !DILocation(line: 577, column: 29, scope: !5920)
!5936 = !DILocation(line: 577, column: 68, scope: !5920)
!5937 = !DILocation(line: 577, column: 8, scope: !5920)
!5938 = !DILocation(line: 577, column: 6, scope: !5920)
!5939 = !DILocation(line: 578, column: 6, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 578, column: 6)
!5941 = !DILocation(line: 578, column: 6, scope: !5920)
!5942 = !DILocation(line: 579, column: 10, scope: !5940)
!5943 = !DILocation(line: 579, column: 3, scope: !5940)
!5944 = !DILocation(line: 581, column: 6, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 581, column: 6)
!5946 = !DILocation(line: 581, column: 11, scope: !5945)
!5947 = !DILocation(line: 581, column: 6, scope: !5920)
!5948 = !DILocation(line: 582, column: 10, scope: !5945)
!5949 = !DILocation(line: 582, column: 15, scope: !5945)
!5950 = !DILocation(line: 582, column: 3, scope: !5945)
!5951 = !DILocation(line: 584, column: 23, scope: !5920)
!5952 = !DILocation(line: 584, column: 8, scope: !5920)
!5953 = !DILocation(line: 584, column: 6, scope: !5920)
!5954 = !DILocation(line: 585, column: 6, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 585, column: 6)
!5956 = !DILocation(line: 585, column: 6, scope: !5920)
!5957 = !DILocation(line: 586, column: 10, scope: !5955)
!5958 = !DILocation(line: 586, column: 3, scope: !5955)
!5959 = !DILocation(line: 588, column: 21, scope: !5920)
!5960 = !DILocation(line: 588, column: 27, scope: !5920)
!5961 = !DILocation(line: 588, column: 32, scope: !5920)
!5962 = !DILocation(line: 588, column: 8, scope: !5920)
!5963 = !DILocation(line: 588, column: 6, scope: !5920)
!5964 = !DILocation(line: 589, column: 6, scope: !5965)
!5965 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 589, column: 6)
!5966 = !DILocation(line: 589, column: 10, scope: !5965)
!5967 = !DILocation(line: 589, column: 6, scope: !5920)
!5968 = !DILocation(line: 590, column: 10, scope: !5965)
!5969 = !DILocation(line: 590, column: 3, scope: !5965)
!5970 = !DILocation(line: 592, column: 11, scope: !5920)
!5971 = !DILocation(line: 592, column: 19, scope: !5920)
!5972 = !DILocation(line: 592, column: 24, scope: !5920)
!5973 = !DILocation(line: 592, column: 16, scope: !5920)
!5974 = !DILocation(line: 592, column: 9, scope: !5920)
!5975 = !DILocation(line: 592, column: 2, scope: !5920)
!5976 = !DILocation(line: 593, column: 1, scope: !5920)
!5977 = distinct !DISubprogram(name: "ds_read_block", scope: !3, file: !3, line: 613, type: !5978, scopeLine: 614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5978 = !DISubroutineType(types: !5979)
!5979 = !{!141, !3942, !3815, !141}
!5980 = !DILocalVariable(name: "dev", arg: 1, scope: !5977, file: !3, line: 613, type: !3942)
!5981 = !DILocation(line: 613, column: 44, scope: !5977)
!5982 = !DILocalVariable(name: "buf", arg: 2, scope: !5977, file: !3, line: 613, type: !3815)
!5983 = !DILocation(line: 613, column: 53, scope: !5977)
!5984 = !DILocalVariable(name: "len", arg: 3, scope: !5977, file: !3, line: 613, type: !141)
!5985 = !DILocation(line: 613, column: 62, scope: !5977)
!5986 = !DILocalVariable(name: "st", scope: !5977, file: !3, line: 615, type: !5060)
!5987 = !DILocation(line: 615, column: 19, scope: !5977)
!5988 = !DILocalVariable(name: "err", scope: !5977, file: !3, line: 616, type: !141)
!5989 = !DILocation(line: 616, column: 6, scope: !5977)
!5990 = !DILocation(line: 618, column: 6, scope: !5991)
!5991 = distinct !DILexicalBlock(scope: !5977, file: !3, line: 618, column: 6)
!5992 = !DILocation(line: 618, column: 10, scope: !5991)
!5993 = !DILocation(line: 618, column: 6, scope: !5977)
!5994 = !DILocation(line: 619, column: 3, scope: !5991)
!5995 = !DILocation(line: 621, column: 9, scope: !5977)
!5996 = !DILocation(line: 621, column: 20, scope: !5977)
!5997 = !DILocation(line: 621, column: 2, scope: !5977)
!5998 = !DILocation(line: 623, column: 21, scope: !5977)
!5999 = !DILocation(line: 623, column: 26, scope: !5977)
!6000 = !DILocation(line: 623, column: 31, scope: !5977)
!6001 = !DILocation(line: 623, column: 8, scope: !5977)
!6002 = !DILocation(line: 623, column: 6, scope: !5977)
!6003 = !DILocation(line: 624, column: 6, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !5977, file: !3, line: 624, column: 6)
!6005 = !DILocation(line: 624, column: 10, scope: !6004)
!6006 = !DILocation(line: 624, column: 6, scope: !5977)
!6007 = !DILocation(line: 625, column: 10, scope: !6004)
!6008 = !DILocation(line: 625, column: 3, scope: !6004)
!6009 = !DILocation(line: 627, column: 24, scope: !5977)
!6010 = !DILocation(line: 627, column: 54, scope: !5977)
!6011 = !DILocation(line: 627, column: 8, scope: !5977)
!6012 = !DILocation(line: 627, column: 6, scope: !5977)
!6013 = !DILocation(line: 628, column: 6, scope: !6014)
!6014 = distinct !DILexicalBlock(scope: !5977, file: !3, line: 628, column: 6)
!6015 = !DILocation(line: 628, column: 6, scope: !5977)
!6016 = !DILocation(line: 629, column: 10, scope: !6014)
!6017 = !DILocation(line: 629, column: 3, scope: !6014)
!6018 = !DILocation(line: 631, column: 17, scope: !5977)
!6019 = !DILocation(line: 631, column: 2, scope: !5977)
!6020 = !DILocation(line: 633, column: 9, scope: !5977)
!6021 = !DILocation(line: 633, column: 20, scope: !5977)
!6022 = !DILocation(line: 633, column: 2, scope: !5977)
!6023 = !DILocation(line: 634, column: 21, scope: !5977)
!6024 = !DILocation(line: 634, column: 26, scope: !5977)
!6025 = !DILocation(line: 634, column: 31, scope: !5977)
!6026 = !DILocation(line: 634, column: 8, scope: !5977)
!6027 = !DILocation(line: 634, column: 6, scope: !5977)
!6028 = !DILocation(line: 636, column: 9, scope: !5977)
!6029 = !DILocation(line: 636, column: 2, scope: !5977)
!6030 = !DILocation(line: 637, column: 1, scope: !5977)
!6031 = distinct !DISubprogram(name: "ds_send_data", scope: !3, file: !3, line: 353, type: !5644, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6032 = !DILocalVariable(name: "dev", arg: 1, scope: !6031, file: !3, line: 353, type: !3942)
!6033 = !DILocation(line: 353, column: 43, scope: !6031)
!6034 = !DILocalVariable(name: "buf", arg: 2, scope: !6031, file: !3, line: 353, type: !3593)
!6035 = !DILocation(line: 353, column: 63, scope: !6031)
!6036 = !DILocalVariable(name: "len", arg: 3, scope: !6031, file: !3, line: 353, type: !141)
!6037 = !DILocation(line: 353, column: 72, scope: !6031)
!6038 = !DILocalVariable(name: "count", scope: !6031, file: !3, line: 355, type: !141)
!6039 = !DILocation(line: 355, column: 6, scope: !6031)
!6040 = !DILocalVariable(name: "err", scope: !6031, file: !3, line: 355, type: !141)
!6041 = !DILocation(line: 355, column: 13, scope: !6031)
!6042 = !DILocation(line: 357, column: 8, scope: !6031)
!6043 = !DILocation(line: 358, column: 21, scope: !6031)
!6044 = !DILocation(line: 358, column: 26, scope: !6031)
!6045 = !DILocation(line: 358, column: 32, scope: !6031)
!6046 = !DILocation(line: 358, column: 82, scope: !6031)
!6047 = !DILocation(line: 358, column: 87, scope: !6031)
!6048 = !DILocation(line: 358, column: 8, scope: !6031)
!6049 = !DILocation(line: 358, column: 6, scope: !6031)
!6050 = !DILocation(line: 359, column: 6, scope: !6051)
!6051 = distinct !DILexicalBlock(scope: !6031, file: !3, line: 359, column: 6)
!6052 = !DILocation(line: 359, column: 10, scope: !6051)
!6053 = !DILocation(line: 359, column: 6, scope: !6031)
!6054 = !DILocation(line: 360, column: 3, scope: !6055)
!6055 = distinct !DILexicalBlock(scope: !6051, file: !3, line: 359, column: 15)
!6056 = !DILocation(line: 362, column: 10, scope: !6055)
!6057 = !DILocation(line: 362, column: 3, scope: !6055)
!6058 = !DILocation(line: 365, column: 9, scope: !6031)
!6059 = !DILocation(line: 365, column: 2, scope: !6031)
!6060 = !DILocation(line: 366, column: 1, scope: !6031)
!6061 = distinct !DISubprogram(name: "ds_write_block", scope: !3, file: !3, line: 639, type: !5978, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6062 = !DILocalVariable(name: "dev", arg: 1, scope: !6061, file: !3, line: 639, type: !3942)
!6063 = !DILocation(line: 639, column: 45, scope: !6061)
!6064 = !DILocalVariable(name: "buf", arg: 2, scope: !6061, file: !3, line: 639, type: !3815)
!6065 = !DILocation(line: 639, column: 54, scope: !6061)
!6066 = !DILocalVariable(name: "len", arg: 3, scope: !6061, file: !3, line: 639, type: !141)
!6067 = !DILocation(line: 639, column: 63, scope: !6061)
!6068 = !DILocalVariable(name: "err", scope: !6061, file: !3, line: 641, type: !141)
!6069 = !DILocation(line: 641, column: 6, scope: !6061)
!6070 = !DILocalVariable(name: "st", scope: !6061, file: !3, line: 642, type: !5060)
!6071 = !DILocation(line: 642, column: 19, scope: !6061)
!6072 = !DILocation(line: 644, column: 21, scope: !6061)
!6073 = !DILocation(line: 644, column: 26, scope: !6061)
!6074 = !DILocation(line: 644, column: 31, scope: !6061)
!6075 = !DILocation(line: 644, column: 8, scope: !6061)
!6076 = !DILocation(line: 644, column: 6, scope: !6061)
!6077 = !DILocation(line: 645, column: 6, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 645, column: 6)
!6079 = !DILocation(line: 645, column: 10, scope: !6078)
!6080 = !DILocation(line: 645, column: 6, scope: !6061)
!6081 = !DILocation(line: 646, column: 10, scope: !6078)
!6082 = !DILocation(line: 646, column: 3, scope: !6078)
!6083 = !DILocation(line: 648, column: 24, scope: !6061)
!6084 = !DILocation(line: 648, column: 55, scope: !6061)
!6085 = !DILocation(line: 648, column: 60, scope: !6061)
!6086 = !DILocation(line: 648, column: 53, scope: !6061)
!6087 = !DILocation(line: 648, column: 29, scope: !6061)
!6088 = !DILocation(line: 648, column: 69, scope: !6061)
!6089 = !DILocation(line: 648, column: 8, scope: !6061)
!6090 = !DILocation(line: 648, column: 6, scope: !6061)
!6091 = !DILocation(line: 649, column: 6, scope: !6092)
!6092 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 649, column: 6)
!6093 = !DILocation(line: 649, column: 6, scope: !6061)
!6094 = !DILocation(line: 650, column: 10, scope: !6092)
!6095 = !DILocation(line: 650, column: 3, scope: !6092)
!6096 = !DILocation(line: 652, column: 6, scope: !6097)
!6097 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 652, column: 6)
!6098 = !DILocation(line: 652, column: 11, scope: !6097)
!6099 = !DILocation(line: 652, column: 6, scope: !6061)
!6100 = !DILocation(line: 653, column: 10, scope: !6097)
!6101 = !DILocation(line: 653, column: 15, scope: !6097)
!6102 = !DILocation(line: 653, column: 3, scope: !6097)
!6103 = !DILocation(line: 655, column: 17, scope: !6061)
!6104 = !DILocation(line: 655, column: 2, scope: !6061)
!6105 = !DILocation(line: 657, column: 21, scope: !6061)
!6106 = !DILocation(line: 657, column: 26, scope: !6061)
!6107 = !DILocation(line: 657, column: 31, scope: !6061)
!6108 = !DILocation(line: 657, column: 8, scope: !6061)
!6109 = !DILocation(line: 657, column: 6, scope: !6061)
!6110 = !DILocation(line: 658, column: 6, scope: !6111)
!6111 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 658, column: 6)
!6112 = !DILocation(line: 658, column: 10, scope: !6111)
!6113 = !DILocation(line: 658, column: 6, scope: !6061)
!6114 = !DILocation(line: 659, column: 10, scope: !6111)
!6115 = !DILocation(line: 659, column: 3, scope: !6111)
!6116 = !DILocation(line: 661, column: 11, scope: !6061)
!6117 = !DILocation(line: 661, column: 18, scope: !6061)
!6118 = !DILocation(line: 661, column: 15, scope: !6061)
!6119 = !DILocation(line: 661, column: 9, scope: !6061)
!6120 = !DILocation(line: 661, column: 2, scope: !6061)
!6121 = !DILocation(line: 662, column: 1, scope: !6061)
!6122 = distinct !DISubprogram(name: "ds_reset", scope: !3, file: !3, line: 465, type: !4478, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6123 = !DILocalVariable(name: "dev", arg: 1, scope: !6122, file: !3, line: 465, type: !3942)
!6124 = !DILocation(line: 465, column: 39, scope: !6122)
!6125 = !DILocalVariable(name: "err", scope: !6122, file: !3, line: 467, type: !141)
!6126 = !DILocation(line: 467, column: 6, scope: !6122)
!6127 = !DILocation(line: 478, column: 24, scope: !6122)
!6128 = !DILocation(line: 478, column: 8, scope: !6122)
!6129 = !DILocation(line: 478, column: 6, scope: !6122)
!6130 = !DILocation(line: 479, column: 6, scope: !6131)
!6131 = distinct !DILexicalBlock(scope: !6122, file: !3, line: 479, column: 6)
!6132 = !DILocation(line: 479, column: 6, scope: !6122)
!6133 = !DILocation(line: 480, column: 10, scope: !6131)
!6134 = !DILocation(line: 480, column: 3, scope: !6131)
!6135 = !DILocation(line: 482, column: 2, scope: !6122)
!6136 = !DILocation(line: 483, column: 1, scope: !6122)
!6137 = distinct !DISubprogram(name: "ds_set_pullup", scope: !3, file: !3, line: 506, type: !6138, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6138 = !DISubroutineType(types: !6139)
!6139 = !{!141, !3942, !141}
!6140 = !DILocalVariable(name: "dev", arg: 1, scope: !6137, file: !3, line: 506, type: !3942)
!6141 = !DILocation(line: 506, column: 44, scope: !6137)
!6142 = !DILocalVariable(name: "delay", arg: 2, scope: !6137, file: !3, line: 506, type: !141)
!6143 = !DILocation(line: 506, column: 53, scope: !6137)
!6144 = !DILocalVariable(name: "err", scope: !6137, file: !3, line: 508, type: !141)
!6145 = !DILocation(line: 508, column: 6, scope: !6137)
!6146 = !DILocalVariable(name: "del", scope: !6137, file: !3, line: 509, type: !1229)
!6147 = !DILocation(line: 509, column: 5, scope: !6137)
!6148 = !DILocation(line: 509, column: 20, scope: !6137)
!6149 = !DILocation(line: 509, column: 26, scope: !6137)
!6150 = !DILocation(line: 509, column: 15, scope: !6137)
!6151 = !DILocation(line: 509, column: 13, scope: !6137)
!6152 = !DILocation(line: 509, column: 11, scope: !6137)
!6153 = !DILocalVariable(name: "ms", scope: !6137, file: !3, line: 511, type: !141)
!6154 = !DILocation(line: 511, column: 6, scope: !6137)
!6155 = !DILocation(line: 511, column: 11, scope: !6137)
!6156 = !DILocation(line: 511, column: 14, scope: !6137)
!6157 = !DILocation(line: 514, column: 17, scope: !6137)
!6158 = !DILocation(line: 514, column: 2, scope: !6137)
!6159 = !DILocation(line: 514, column: 7, scope: !6137)
!6160 = !DILocation(line: 514, column: 15, scope: !6137)
!6161 = !DILocation(line: 520, column: 6, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6137, file: !3, line: 520, column: 6)
!6163 = !DILocation(line: 520, column: 12, scope: !6162)
!6164 = !DILocation(line: 520, column: 17, scope: !6162)
!6165 = !DILocation(line: 520, column: 20, scope: !6162)
!6166 = !DILocation(line: 520, column: 26, scope: !6162)
!6167 = !DILocation(line: 520, column: 31, scope: !6162)
!6168 = !DILocation(line: 520, column: 23, scope: !6162)
!6169 = !DILocation(line: 520, column: 6, scope: !6137)
!6170 = !DILocation(line: 521, column: 10, scope: !6162)
!6171 = !DILocation(line: 521, column: 3, scope: !6162)
!6172 = !DILocation(line: 523, column: 24, scope: !6137)
!6173 = !DILocation(line: 523, column: 58, scope: !6137)
!6174 = !DILocation(line: 523, column: 8, scope: !6137)
!6175 = !DILocation(line: 523, column: 6, scope: !6137)
!6176 = !DILocation(line: 524, column: 6, scope: !6177)
!6177 = distinct !DILexicalBlock(scope: !6137, file: !3, line: 524, column: 6)
!6178 = !DILocation(line: 524, column: 6, scope: !6137)
!6179 = !DILocation(line: 525, column: 10, scope: !6177)
!6180 = !DILocation(line: 525, column: 3, scope: !6177)
!6181 = !DILocation(line: 527, column: 19, scope: !6137)
!6182 = !DILocation(line: 527, column: 2, scope: !6137)
!6183 = !DILocation(line: 527, column: 7, scope: !6137)
!6184 = !DILocation(line: 527, column: 17, scope: !6137)
!6185 = !DILocation(line: 529, column: 9, scope: !6137)
!6186 = !DILocation(line: 529, column: 2, scope: !6137)
!6187 = !DILocation(line: 530, column: 1, scope: !6137)
!6188 = distinct !DISubprogram(name: "test_bit", scope: !6189, file: !6189, line: 132, type: !6190, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6189 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!6190 = !DISubroutineType(types: !6191)
!6191 = !{!447, !270, !6192}
!6192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6193, size: 64)
!6193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6194)
!6194 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !285)
!6195 = !DILocalVariable(name: "nr", arg: 1, scope: !6196, file: !4548, line: 210, type: !270)
!6196 = distinct !DISubprogram(name: "variable_test_bit", scope: !4548, file: !4548, line: 210, type: !6190, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6197 = !DILocation(line: 210, column: 52, scope: !6196, inlinedAt: !6198)
!6198 = distinct !DILocation(line: 135, column: 9, scope: !6188)
!6199 = !DILocalVariable(name: "addr", arg: 2, scope: !6196, file: !4548, line: 210, type: !6192)
!6200 = !DILocation(line: 210, column: 86, scope: !6196, inlinedAt: !6198)
!6201 = !DILocalVariable(name: "oldbit", scope: !6196, file: !4548, line: 212, type: !447)
!6202 = !DILocation(line: 212, column: 7, scope: !6196, inlinedAt: !6198)
!6203 = !DILocalVariable(name: "nr", arg: 1, scope: !6204, file: !4548, line: 204, type: !270)
!6204 = distinct !DISubprogram(name: "constant_test_bit", scope: !4548, file: !4548, line: 204, type: !6190, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6205 = !DILocation(line: 204, column: 52, scope: !6204, inlinedAt: !6206)
!6206 = distinct !DILocation(line: 135, column: 9, scope: !6188)
!6207 = !DILocalVariable(name: "addr", arg: 2, scope: !6204, file: !4548, line: 204, type: !6192)
!6208 = !DILocation(line: 204, column: 86, scope: !6204, inlinedAt: !6206)
!6209 = !DILocalVariable(name: "v", arg: 1, scope: !6210, file: !6211, line: 69, type: !6214)
!6210 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6211, file: !6211, line: 69, type: !6212, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6211 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!6212 = !DISubroutineType(types: !6213)
!6213 = !{null, !6214, !282}
!6214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6215, size: 64)
!6215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6216)
!6216 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6217 = !DILocation(line: 69, column: 73, scope: !6210, inlinedAt: !6218)
!6218 = distinct !DILocation(line: 134, column: 2, scope: !6188)
!6219 = !DILocalVariable(name: "size", arg: 2, scope: !6210, file: !6211, line: 69, type: !282)
!6220 = !DILocation(line: 69, column: 83, scope: !6210, inlinedAt: !6218)
!6221 = !DILocalVariable(name: "nr", arg: 1, scope: !6188, file: !6189, line: 132, type: !270)
!6222 = !DILocation(line: 132, column: 34, scope: !6188)
!6223 = !DILocalVariable(name: "addr", arg: 2, scope: !6188, file: !6189, line: 132, type: !6192)
!6224 = !DILocation(line: 132, column: 68, scope: !6188)
!6225 = !DILocation(line: 134, column: 25, scope: !6188)
!6226 = !DILocation(line: 134, column: 32, scope: !6188)
!6227 = !DILocation(line: 134, column: 30, scope: !6188)
!6228 = !DILocation(line: 71, column: 19, scope: !6210, inlinedAt: !6218)
!6229 = !DILocation(line: 71, column: 22, scope: !6210, inlinedAt: !6218)
!6230 = !DILocation(line: 71, column: 2, scope: !6210, inlinedAt: !6218)
!6231 = !DILocation(line: 72, column: 2, scope: !6210, inlinedAt: !6218)
!6232 = !DILocation(line: 135, column: 9, scope: !6188)
!6233 = !DILocation(line: 206, column: 19, scope: !6204, inlinedAt: !6206)
!6234 = !DILocation(line: 206, column: 22, scope: !6204, inlinedAt: !6206)
!6235 = !DILocation(line: 206, column: 15, scope: !6204, inlinedAt: !6206)
!6236 = !DILocation(line: 207, column: 4, scope: !6204, inlinedAt: !6206)
!6237 = !DILocation(line: 207, column: 9, scope: !6204, inlinedAt: !6206)
!6238 = !DILocation(line: 207, column: 12, scope: !6204, inlinedAt: !6206)
!6239 = !DILocation(line: 206, column: 44, scope: !6204, inlinedAt: !6206)
!6240 = !DILocation(line: 207, column: 37, scope: !6204, inlinedAt: !6206)
!6241 = !DILocation(line: 217, column: 33, scope: !6196, inlinedAt: !6198)
!6242 = !DILocation(line: 217, column: 46, scope: !6196, inlinedAt: !6198)
!6243 = !DILocation(line: 214, column: 2, scope: !6196, inlinedAt: !6198)
!6244 = !{i32 -2147120375, i32 -2147120315}
!6245 = !DILocation(line: 219, column: 9, scope: !6196, inlinedAt: !6198)
!6246 = !DILocation(line: 135, column: 2, scope: !6188)
!6247 = distinct !DISubprogram(name: "set_bit", scope: !6248, file: !6248, line: 26, type: !6249, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6248 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!6249 = !DISubroutineType(types: !6250)
!6250 = !{null, !270, !6251}
!6251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6194, size: 64)
!6252 = !DILocalVariable(name: "nr", arg: 1, scope: !6253, file: !4548, line: 52, type: !270)
!6253 = distinct !DISubprogram(name: "arch_set_bit", scope: !4548, file: !4548, line: 52, type: !6249, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6254 = !DILocation(line: 52, column: 19, scope: !6253, inlinedAt: !6255)
!6255 = distinct !DILocation(line: 29, column: 2, scope: !6247)
!6256 = !DILocalVariable(name: "addr", arg: 2, scope: !6253, file: !4548, line: 52, type: !6251)
!6257 = !DILocation(line: 52, column: 47, scope: !6253, inlinedAt: !6255)
!6258 = !DILocalVariable(name: "v", arg: 1, scope: !6259, file: !6211, line: 84, type: !6214)
!6259 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6211, file: !6211, line: 84, type: !6212, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6260 = !DILocation(line: 84, column: 74, scope: !6259, inlinedAt: !6261)
!6261 = distinct !DILocation(line: 28, column: 2, scope: !6247)
!6262 = !DILocalVariable(name: "size", arg: 2, scope: !6259, file: !6211, line: 84, type: !282)
!6263 = !DILocation(line: 84, column: 84, scope: !6259, inlinedAt: !6261)
!6264 = !DILocalVariable(name: "nr", arg: 1, scope: !6247, file: !6248, line: 26, type: !270)
!6265 = !DILocation(line: 26, column: 33, scope: !6247)
!6266 = !DILocalVariable(name: "addr", arg: 2, scope: !6247, file: !6248, line: 26, type: !6251)
!6267 = !DILocation(line: 26, column: 61, scope: !6247)
!6268 = !DILocation(line: 28, column: 26, scope: !6247)
!6269 = !DILocation(line: 28, column: 33, scope: !6247)
!6270 = !DILocation(line: 28, column: 31, scope: !6247)
!6271 = !DILocation(line: 86, column: 20, scope: !6259, inlinedAt: !6261)
!6272 = !DILocation(line: 86, column: 23, scope: !6259, inlinedAt: !6261)
!6273 = !DILocation(line: 86, column: 2, scope: !6259, inlinedAt: !6261)
!6274 = !DILocation(line: 87, column: 2, scope: !6259, inlinedAt: !6261)
!6275 = !DILocation(line: 29, column: 15, scope: !6247)
!6276 = !DILocation(line: 29, column: 19, scope: !6247)
!6277 = !DILocation(line: 54, column: 27, scope: !6278, inlinedAt: !6255)
!6278 = distinct !DILexicalBlock(scope: !6253, file: !4548, line: 54, column: 6)
!6279 = !DILocation(line: 54, column: 6, scope: !6278, inlinedAt: !6255)
!6280 = !DILocation(line: 54, column: 6, scope: !6253, inlinedAt: !6255)
!6281 = !DILocation(line: 56, column: 6, scope: !6282, inlinedAt: !6255)
!6282 = distinct !DILexicalBlock(scope: !6278, file: !4548, line: 54, column: 32)
!6283 = !DILocation(line: 57, column: 12, scope: !6282, inlinedAt: !6255)
!6284 = !DILocation(line: 55, column: 3, scope: !6282, inlinedAt: !6255)
!6285 = !{i32 -2147129623}
!6286 = !DILocation(line: 59, column: 2, scope: !6282, inlinedAt: !6255)
!6287 = !DILocation(line: 61, column: 8, scope: !6288, inlinedAt: !6255)
!6288 = distinct !DILexicalBlock(scope: !6278, file: !4548, line: 59, column: 9)
!6289 = !DILocation(line: 61, column: 32, scope: !6288, inlinedAt: !6255)
!6290 = !DILocation(line: 60, column: 3, scope: !6288, inlinedAt: !6255)
!6291 = !{i32 -2147129491}
!6292 = !DILocation(line: 30, column: 1, scope: !6247)
!6293 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !5037, file: !5037, line: 308, type: !5038, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6294 = !DILocalVariable(name: "m", arg: 1, scope: !6293, file: !5037, line: 308, type: !2627)
!6295 = !DILocation(line: 308, column: 66, scope: !6293)
!6296 = !DILocation(line: 310, column: 10, scope: !6293)
!6297 = !DILocation(line: 310, column: 12, scope: !6293)
!6298 = !DILocation(line: 310, column: 34, scope: !6293)
!6299 = !DILocation(line: 310, column: 39, scope: !6293)
!6300 = !DILocation(line: 310, column: 2, scope: !6293)
!6301 = distinct !DISubprogram(name: "kasan_check_read", scope: !6302, file: !6302, line: 34, type: !6303, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6302 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6303 = !DISubroutineType(types: !6304)
!6304 = !{!447, !6214, !7}
!6305 = !DILocalVariable(name: "p", arg: 1, scope: !6301, file: !6302, line: 34, type: !6214)
!6306 = !DILocation(line: 34, column: 58, scope: !6301)
!6307 = !DILocalVariable(name: "size", arg: 2, scope: !6301, file: !6302, line: 34, type: !7)
!6308 = !DILocation(line: 34, column: 74, scope: !6301)
!6309 = !DILocation(line: 36, column: 2, scope: !6301)
!6310 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6311, file: !6311, line: 178, type: !6312, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6311 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6312 = !DISubroutineType(types: !6313)
!6313 = !{null, !6214, !282, !141}
!6314 = !DILocalVariable(name: "ptr", arg: 1, scope: !6310, file: !6311, line: 178, type: !6214)
!6315 = !DILocation(line: 178, column: 60, scope: !6310)
!6316 = !DILocalVariable(name: "size", arg: 2, scope: !6310, file: !6311, line: 178, type: !282)
!6317 = !DILocation(line: 178, column: 72, scope: !6310)
!6318 = !DILocalVariable(name: "type", arg: 3, scope: !6310, file: !6311, line: 179, type: !141)
!6319 = !DILocation(line: 179, column: 15, scope: !6310)
!6320 = !DILocation(line: 179, column: 23, scope: !6310)
!6321 = distinct !DISubprogram(name: "kasan_check_write", scope: !6302, file: !6302, line: 38, type: !6303, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6322 = !DILocalVariable(name: "p", arg: 1, scope: !6321, file: !6302, line: 38, type: !6214)
!6323 = !DILocation(line: 38, column: 59, scope: !6321)
!6324 = !DILocalVariable(name: "size", arg: 2, scope: !6321, file: !6302, line: 38, type: !7)
!6325 = !DILocation(line: 38, column: 75, scope: !6321)
!6326 = !DILocation(line: 40, column: 2, scope: !6321)
!6327 = distinct !DISubprogram(name: "__list_add", scope: !4529, file: !4529, line: 63, type: !6328, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6328 = !DISubroutineType(types: !6329)
!6329 = !{null, !184, !184, !184}
!6330 = !DILocalVariable(name: "new", arg: 1, scope: !6327, file: !4529, line: 63, type: !184)
!6331 = !DILocation(line: 63, column: 49, scope: !6327)
!6332 = !DILocalVariable(name: "prev", arg: 2, scope: !6327, file: !4529, line: 64, type: !184)
!6333 = !DILocation(line: 64, column: 28, scope: !6327)
!6334 = !DILocalVariable(name: "next", arg: 3, scope: !6327, file: !4529, line: 65, type: !184)
!6335 = !DILocation(line: 65, column: 28, scope: !6327)
!6336 = !DILocation(line: 67, column: 24, scope: !6337)
!6337 = distinct !DILexicalBlock(scope: !6327, file: !4529, line: 67, column: 6)
!6338 = !DILocation(line: 67, column: 29, scope: !6337)
!6339 = !DILocation(line: 67, column: 35, scope: !6337)
!6340 = !DILocation(line: 67, column: 7, scope: !6337)
!6341 = !DILocation(line: 67, column: 6, scope: !6327)
!6342 = !DILocation(line: 68, column: 3, scope: !6337)
!6343 = !DILocation(line: 70, column: 15, scope: !6327)
!6344 = !DILocation(line: 70, column: 2, scope: !6327)
!6345 = !DILocation(line: 70, column: 8, scope: !6327)
!6346 = !DILocation(line: 70, column: 13, scope: !6327)
!6347 = !DILocation(line: 71, column: 14, scope: !6327)
!6348 = !DILocation(line: 71, column: 2, scope: !6327)
!6349 = !DILocation(line: 71, column: 7, scope: !6327)
!6350 = !DILocation(line: 71, column: 12, scope: !6327)
!6351 = !DILocation(line: 72, column: 14, scope: !6327)
!6352 = !DILocation(line: 72, column: 2, scope: !6327)
!6353 = !DILocation(line: 72, column: 7, scope: !6327)
!6354 = !DILocation(line: 72, column: 12, scope: !6327)
!6355 = !DILocation(line: 73, column: 2, scope: !6327)
!6356 = !DILocation(line: 73, column: 2, scope: !6357)
!6357 = distinct !DILexicalBlock(scope: !6327, file: !4529, line: 73, column: 2)
!6358 = !DILocation(line: 73, column: 2, scope: !6359)
!6359 = distinct !DILexicalBlock(scope: !6357, file: !4529, line: 73, column: 2)
!6360 = !DILocation(line: 73, column: 2, scope: !6361)
!6361 = distinct !DILexicalBlock(scope: !6357, file: !4529, line: 73, column: 2)
!6362 = !DILocation(line: 74, column: 1, scope: !6327)
!6363 = distinct !DISubprogram(name: "__list_add_valid", scope: !4529, file: !4529, line: 45, type: !6364, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6364 = !DISubroutineType(types: !6365)
!6365 = !{!447, !184, !184, !184}
!6366 = !DILocalVariable(name: "new", arg: 1, scope: !6363, file: !4529, line: 45, type: !184)
!6367 = !DILocation(line: 45, column: 55, scope: !6363)
!6368 = !DILocalVariable(name: "prev", arg: 2, scope: !6363, file: !4529, line: 46, type: !184)
!6369 = !DILocation(line: 46, column: 23, scope: !6363)
!6370 = !DILocalVariable(name: "next", arg: 3, scope: !6363, file: !4529, line: 47, type: !184)
!6371 = !DILocation(line: 47, column: 23, scope: !6363)
!6372 = !DILocation(line: 49, column: 2, scope: !6363)
!6373 = distinct !DISubprogram(name: "usb_get_intfdata", scope: !6, file: !6, line: 263, type: !6374, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6374 = !DISubroutineType(types: !6375)
!6375 = !{!136, !3707}
!6376 = !DILocalVariable(name: "intf", arg: 1, scope: !6373, file: !6, line: 263, type: !3707)
!6377 = !DILocation(line: 263, column: 60, scope: !6373)
!6378 = !DILocation(line: 265, column: 26, scope: !6373)
!6379 = !DILocation(line: 265, column: 32, scope: !6373)
!6380 = !DILocation(line: 265, column: 9, scope: !6373)
!6381 = !DILocation(line: 265, column: 2, scope: !6373)
!6382 = distinct !DISubprogram(name: "list_del", scope: !4529, file: !4529, line: 144, type: !6383, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6383 = !DISubroutineType(types: !6384)
!6384 = !{null, !184}
!6385 = !DILocalVariable(name: "entry", arg: 1, scope: !6382, file: !4529, line: 144, type: !184)
!6386 = !DILocation(line: 144, column: 47, scope: !6382)
!6387 = !DILocation(line: 146, column: 19, scope: !6382)
!6388 = !DILocation(line: 146, column: 2, scope: !6382)
!6389 = !DILocation(line: 147, column: 2, scope: !6382)
!6390 = !DILocation(line: 147, column: 9, scope: !6382)
!6391 = !DILocation(line: 147, column: 14, scope: !6382)
!6392 = !DILocation(line: 148, column: 2, scope: !6382)
!6393 = !DILocation(line: 148, column: 9, scope: !6382)
!6394 = !DILocation(line: 148, column: 14, scope: !6382)
!6395 = !DILocation(line: 149, column: 1, scope: !6382)
!6396 = distinct !DISubprogram(name: "ds_w1_fini", scope: !3, file: !3, line: 967, type: !4628, scopeLine: 968, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6397 = !DILocalVariable(name: "dev", arg: 1, scope: !6396, file: !3, line: 967, type: !3942)
!6398 = !DILocation(line: 967, column: 42, scope: !6396)
!6399 = !DILocation(line: 969, column: 27, scope: !6396)
!6400 = !DILocation(line: 969, column: 32, scope: !6396)
!6401 = !DILocation(line: 969, column: 2, scope: !6396)
!6402 = !DILocation(line: 970, column: 1, scope: !6396)
!6403 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !67, file: !67, line: 655, type: !6404, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6404 = !DISubroutineType(types: !6405)
!6405 = !{!136, !6406}
!6406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6407, size: 64)
!6407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!6408 = !DILocalVariable(name: "dev", arg: 1, scope: !6403, file: !67, line: 655, type: !6406)
!6409 = !DILocation(line: 655, column: 58, scope: !6403)
!6410 = !DILocation(line: 657, column: 9, scope: !6403)
!6411 = !DILocation(line: 657, column: 14, scope: !6403)
!6412 = !DILocation(line: 657, column: 2, scope: !6403)
!6413 = distinct !DISubprogram(name: "__list_del_entry", scope: !4529, file: !4529, line: 130, type: !6383, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6414 = !DILocalVariable(name: "entry", arg: 1, scope: !6413, file: !4529, line: 130, type: !184)
!6415 = !DILocation(line: 130, column: 55, scope: !6413)
!6416 = !DILocation(line: 132, column: 30, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6413, file: !4529, line: 132, column: 6)
!6418 = !DILocation(line: 132, column: 7, scope: !6417)
!6419 = !DILocation(line: 132, column: 6, scope: !6413)
!6420 = !DILocation(line: 133, column: 3, scope: !6417)
!6421 = !DILocation(line: 135, column: 13, scope: !6413)
!6422 = !DILocation(line: 135, column: 20, scope: !6413)
!6423 = !DILocation(line: 135, column: 26, scope: !6413)
!6424 = !DILocation(line: 135, column: 33, scope: !6413)
!6425 = !DILocation(line: 135, column: 2, scope: !6413)
!6426 = !DILocation(line: 136, column: 1, scope: !6413)
!6427 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4529, file: !4529, line: 51, type: !6428, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6428 = !DISubroutineType(types: !6429)
!6429 = !{!447, !184}
!6430 = !DILocalVariable(name: "entry", arg: 1, scope: !6427, file: !4529, line: 51, type: !184)
!6431 = !DILocation(line: 51, column: 61, scope: !6427)
!6432 = !DILocation(line: 53, column: 2, scope: !6427)
!6433 = distinct !DISubprogram(name: "__list_del", scope: !4529, file: !4529, line: 110, type: !4530, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!6434 = !DILocalVariable(name: "prev", arg: 1, scope: !6433, file: !4529, line: 110, type: !184)
!6435 = !DILocation(line: 110, column: 50, scope: !6433)
!6436 = !DILocalVariable(name: "next", arg: 2, scope: !6433, file: !4529, line: 110, type: !184)
!6437 = !DILocation(line: 110, column: 75, scope: !6433)
!6438 = !DILocation(line: 112, column: 15, scope: !6433)
!6439 = !DILocation(line: 112, column: 2, scope: !6433)
!6440 = !DILocation(line: 112, column: 8, scope: !6433)
!6441 = !DILocation(line: 112, column: 13, scope: !6433)
!6442 = !DILocation(line: 113, column: 2, scope: !6433)
!6443 = !DILocation(line: 113, column: 2, scope: !6444)
!6444 = distinct !DILexicalBlock(scope: !6433, file: !4529, line: 113, column: 2)
!6445 = !DILocation(line: 113, column: 2, scope: !6446)
!6446 = distinct !DILexicalBlock(scope: !6444, file: !4529, line: 113, column: 2)
!6447 = !DILocation(line: 113, column: 2, scope: !6448)
!6448 = distinct !DILexicalBlock(scope: !6444, file: !4529, line: 113, column: 2)
!6449 = !DILocation(line: 114, column: 1, scope: !6433)
