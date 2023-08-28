; ModuleID = '../bcout/drivers/media/rc/streamzap.llvm.bc'
source_filename = "drivers/media/rc/streamzap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_streamzap_driver_init6:\09\09\09"
module asm ".long\09streamzap_driver_init - .\09\09\09"
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
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
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
%struct.streamzap_ir = type { %struct.rc_dev*, %struct.device*, %struct.usb_device*, %struct.usb_interface*, %struct.usb_endpoint_descriptor*, %struct.urb*, i8*, i64, i32, i32, i8, i64, i64, i64, i8, [128 x i8], [64 x i8] }
%struct.rc_dev = type { %struct.device, i8, [5 x %struct.attribute_group*], i8*, i8*, %struct.input_id, i8*, i8*, %struct.rc_map, %struct.mutex, i32, %struct.ir_raw_event_ctrl*, %struct.input_dev*, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, i8*, %struct.spinlock, i8, i64, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, i8, i32 (%struct.rc_dev*, i64*)*, i32 (%struct.rc_dev*)*, void (%struct.rc_dev*)*, i32 (%struct.rc_dev*, i32)*, i32 (%struct.rc_dev*, i32)*, i32 (%struct.rc_dev*, i32)*, i32 (%struct.rc_dev*, i32, i32)*, i32 (%struct.rc_dev*, i32*, i32)*, void (%struct.rc_dev*, i1)*, i32 (%struct.rc_dev*, i32)*, i32 (%struct.rc_dev*, i32)*, i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)*, i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)*, i32 (%struct.rc_dev*, i32)* }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { %struct.rc_map_table*, i32, i32, i32, i32, i8*, %struct.spinlock }
%struct.rc_map_table = type { i64, i32 }
%struct.ir_raw_event_ctrl = type opaque
%struct.input_dev = type { i8*, i8*, i8*, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, i8*, i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)*, i32 (%struct.input_dev*, %struct.input_keymap_entry*)*, %struct.ff_device*, %struct.input_dev_poller*, i32, %struct.timer_list, [2 x i32], %struct.input_mt*, %struct.input_absinfo*, [12 x i64], [1 x i64], [1 x i64], [1 x i64], i32 (%struct.input_dev*)*, void (%struct.input_dev*)*, i32 (%struct.input_dev*, %struct.file*)*, i32 (%struct.input_dev*, i32, i32, i32)*, %struct.input_handle*, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, %struct.input_value*, i8, [3 x i64] }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.ff_device = type { i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)*, i32 (%struct.input_dev*, i32)*, i32 (%struct.input_dev*, i32, i32)*, void (%struct.input_dev*, i16)*, void (%struct.input_dev*, i16)*, void (%struct.ff_device*)*, i8*, [2 x i64], %struct.mutex, i32, %struct.ff_effect*, [0 x %struct.file*] }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.65 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.65 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, i16* }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.input_dev_poller = type opaque
%struct.input_mt = type opaque
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.input_handle = type { i8*, i32, i8*, %struct.input_dev*, %struct.input_handler*, %struct.list_head, %struct.list_head }
%struct.input_handler = type { i8*, void (%struct.input_handle*, i32, i32, i32)*, void (%struct.input_handle*, %struct.input_value*, i32)*, i1 (%struct.input_handle*, i32, i32, i32)*, i1 (%struct.input_handler*, %struct.input_dev*)*, i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)*, void (%struct.input_handle*)*, void (%struct.input_handle*)*, i8, i32, i8*, %struct.input_device_id*, %struct.list_head, %struct.list_head }
%struct.input_device_id = type { i64, i16, i16, i16, i16, [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }
%struct.input_value = type { i16, i16, i32 }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.urb = type { %struct.kref, i32, i8*, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.usb_anchor*, %struct.usb_device*, %struct.usb_host_endpoint*, i32, i32, i32, i32, i8*, i64, %struct.scatterlist*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i8*, void (%struct.urb*)*, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.ir_raw_event = type { %union.anon.66, i8, i8 }
%union.anon.66 = type { i32 }

@__UNIQUE_ID___addressable_streamzap_driver_init237 = internal global i8* bitcast (i32 ()* @streamzap_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@streamzap_driver = internal global %struct.usb_driver { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @streamzap_probe, void (%struct.usb_interface*)* @streamzap_disconnect, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* @streamzap_suspend, i32 (%struct.usb_interface*)* @streamzap_resume, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, %struct.usb_device_id* getelementptr inbounds ([2 x %struct.usb_device_id], [2 x %struct.usb_device_id]* @streamzap_table, i32 0, i32 0), %struct.attribute_group** null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, align 8, !dbg !4206
@__exitcall_streamzap_driver_exit = internal global void ()* @streamzap_driver_exit, section ".exitcall.exit", align 8, !dbg !4181
@__UNIQUE_ID_author238 = internal constant [51 x i8] c"streamzap.author=Jarod Wilson <jarod@wilsonet.com>\00", section ".modinfo", align 1, !dbg !4186
@__UNIQUE_ID_description239 = internal constant [54 x i8] c"streamzap.description=Streamzap Remote Control driver\00", section ".modinfo", align 1, !dbg !4191
@__UNIQUE_ID_file240 = internal constant [42 x i8] c"streamzap.file=drivers/media/rc/streamzap\00", section ".modinfo", align 1, !dbg !4196
@__UNIQUE_ID_license241 = internal constant [22 x i8] c"streamzap.license=GPL\00", section ".modinfo", align 1, !dbg !4201
@.str = private unnamed_addr constant [10 x i8] c"streamzap\00", align 1
@streamzap_table = internal constant [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3740, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !4267
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: Unexpected desc.bNumEndpoints (%d)\0A\00", align 1
@__func__.streamzap_probe = private unnamed_addr constant [16 x i8] c"streamzap_probe\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"%s: endpoint doesn't match input device 02%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"%s: endpoint attributes don't match xfer 02%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"%s: endpoint Max Packet Size is 0!?!\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"urb submit failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Registered %s on usb%d:%d\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"include/linux/usb.h\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"remote dev allocation failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"Streamzap PC Remote Infrared Receiver (%04x:%04x)\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"rc-streamzap\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"remote input device register failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"usb-%s-%s\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"urb terminated, status: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"include/linux/ktime.h\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Error submitting urb\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_streamzap_driver_init237 to i8*), i8* bitcast (void ()* @streamzap_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_streamzap_driver_exit to i8*), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__UNIQUE_ID_author238, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__UNIQUE_ID_description239, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__UNIQUE_ID_file240, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__UNIQUE_ID_license241, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @streamzap_driver_init() #0 section ".init.text" !dbg !4275 {
entry:
  %call = call i32 @usb_register_driver(%struct.usb_driver* @streamzap_driver, %struct.module* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #9, !dbg !4278
  ret i32 %call, !dbg !4278
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @streamzap_driver_exit() #0 section ".exit.text" !dbg !4279 {
entry:
  call void @usb_deregister(%struct.usb_driver* @streamzap_driver) #9, !dbg !4280
  ret void, !dbg !4280
}

; Function Attrs: noredzone
declare dso_local void @usb_deregister(%struct.usb_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_register_driver(%struct.usb_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @streamzap_probe(%struct.usb_interface* %intf, %struct.usb_device_id* %id) #2 !dbg !4281 {
entry:
  %retval = alloca i32, align 4
  %intf.addr = alloca %struct.usb_interface*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  %usbdev = alloca %struct.usb_device*, align 8
  %iface_host = alloca %struct.usb_host_interface*, align 8
  %sz = alloca %struct.streamzap_ir*, align 8
  %buf = alloca [63 x i8], align 16
  %name = alloca [128 x i8], align 16
  %retval1 = alloca i32, align 4
  %pipe = alloca i32, align 4
  %maxp = alloca i32, align 4
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4282, metadata !DIExpression()), !dbg !4283
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !4284, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.declare(metadata %struct.usb_device** %usbdev, metadata !4286, metadata !DIExpression()), !dbg !4287
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4288
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %0) #9, !dbg !4289
  store %struct.usb_device* %call, %struct.usb_device** %usbdev, align 8, !dbg !4287
  call void @llvm.dbg.declare(metadata %struct.usb_host_interface** %iface_host, metadata !4290, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.declare(metadata %struct.streamzap_ir** %sz, metadata !4292, metadata !DIExpression()), !dbg !4701
  store %struct.streamzap_ir* null, %struct.streamzap_ir** %sz, align 8, !dbg !4701
  call void @llvm.dbg.declare(metadata [63 x i8]* %buf, metadata !4702, metadata !DIExpression()), !dbg !4706
  call void @llvm.dbg.declare(metadata [128 x i8]* %name, metadata !4707, metadata !DIExpression()), !dbg !4708
  %1 = bitcast [128 x i8]* %name to i8*, !dbg !4708
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 128, i1 false), !dbg !4708
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4709, metadata !DIExpression()), !dbg !4710
  store i32 -12, i32* %retval1, align 4, !dbg !4710
  call void @llvm.dbg.declare(metadata i32* %pipe, metadata !4711, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.declare(metadata i32* %maxp, metadata !4713, metadata !DIExpression()), !dbg !4714
  %call2 = call i8* @kzalloc(i64 304, i32 3264) #9, !dbg !4715
  %2 = bitcast i8* %call2 to %struct.streamzap_ir*, !dbg !4715
  store %struct.streamzap_ir* %2, %struct.streamzap_ir** %sz, align 8, !dbg !4716
  %3 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4717
  %tobool = icmp ne %struct.streamzap_ir* %3, null, !dbg !4717
  br i1 %tobool, label %if.end, label %if.then, !dbg !4719

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4720
  br label %return, !dbg !4720

if.end:                                           ; preds = %entry
  %4 = load %struct.usb_device*, %struct.usb_device** %usbdev, align 8, !dbg !4721
  %5 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4722
  %usbdev3 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %5, i32 0, i32 2, !dbg !4723
  store %struct.usb_device* %4, %struct.usb_device** %usbdev3, align 8, !dbg !4724
  %6 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4725
  %7 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4726
  %interface = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %7, i32 0, i32 3, !dbg !4727
  store %struct.usb_interface* %6, %struct.usb_interface** %interface, align 8, !dbg !4728
  %8 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4729
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %8, i32 0, i32 1, !dbg !4730
  %9 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting, align 8, !dbg !4730
  store %struct.usb_host_interface* %9, %struct.usb_host_interface** %iface_host, align 8, !dbg !4731
  %10 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface_host, align 8, !dbg !4732
  %desc = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %10, i32 0, i32 0, !dbg !4734
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc, i32 0, i32 4, !dbg !4735
  %11 = load i8, i8* %bNumEndpoints, align 4, !dbg !4735
  %conv = zext i8 %11 to i32, !dbg !4732
  %cmp = icmp ne i32 %conv, 1, !dbg !4736
  br i1 %cmp, label %if.then5, label %if.end9, !dbg !4737

if.then5:                                         ; preds = %if.end
  %12 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4738
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 7, !dbg !4738
  %13 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface_host, align 8, !dbg !4738
  %desc6 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %13, i32 0, i32 0, !dbg !4738
  %bNumEndpoints7 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc6, i32 0, i32 4, !dbg !4738
  %14 = load i8, i8* %bNumEndpoints7, align 4, !dbg !4738
  %conv8 = zext i8 %14 to i32, !dbg !4738
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.streamzap_probe, i64 0, i64 0), i32 %conv8) #10, !dbg !4738
  store i32 -19, i32* %retval1, align 4, !dbg !4740
  br label %free_sz, !dbg !4741

if.end9:                                          ; preds = %if.end
  %15 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface_host, align 8, !dbg !4742
  %endpoint = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %15, i32 0, i32 3, !dbg !4743
  %16 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint, align 8, !dbg !4743
  %arrayidx = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %16, i64 0, !dbg !4742
  %desc10 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx, i32 0, i32 0, !dbg !4744
  %17 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4745
  %endpoint11 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %17, i32 0, i32 4, !dbg !4746
  store %struct.usb_endpoint_descriptor* %desc10, %struct.usb_endpoint_descriptor** %endpoint11, align 8, !dbg !4747
  %18 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4748
  %endpoint12 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %18, i32 0, i32 4, !dbg !4750
  %19 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint12, align 8, !dbg !4750
  %call13 = call i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %19) #9, !dbg !4751
  %tobool14 = icmp ne i32 %call13, 0, !dbg !4751
  br i1 %tobool14, label %if.end19, label %if.then15, !dbg !4752

if.then15:                                        ; preds = %if.end9
  %20 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4753
  %dev16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %20, i32 0, i32 7, !dbg !4753
  %21 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4753
  %endpoint17 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %21, i32 0, i32 4, !dbg !4753
  %22 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint17, align 8, !dbg !4753
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %22, i32 0, i32 2, !dbg !4753
  %23 = load i8, i8* %bEndpointAddress, align 1, !dbg !4753
  %conv18 = zext i8 %23 to i32, !dbg !4753
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev16, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.streamzap_probe, i64 0, i64 0), i32 %conv18) #10, !dbg !4753
  store i32 -19, i32* %retval1, align 4, !dbg !4755
  br label %free_sz, !dbg !4756

if.end19:                                         ; preds = %if.end9
  %24 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4757
  %endpoint20 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %24, i32 0, i32 4, !dbg !4759
  %25 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint20, align 8, !dbg !4759
  %call21 = call i32 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %25) #9, !dbg !4760
  %tobool22 = icmp ne i32 %call21, 0, !dbg !4760
  br i1 %tobool22, label %if.end27, label %if.then23, !dbg !4761

if.then23:                                        ; preds = %if.end19
  %26 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4762
  %dev24 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %26, i32 0, i32 7, !dbg !4762
  %27 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4762
  %endpoint25 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %27, i32 0, i32 4, !dbg !4762
  %28 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint25, align 8, !dbg !4762
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %28, i32 0, i32 3, !dbg !4762
  %29 = load i8, i8* %bmAttributes, align 1, !dbg !4762
  %conv26 = zext i8 %29 to i32, !dbg !4762
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.streamzap_probe, i64 0, i64 0), i32 %conv26) #10, !dbg !4762
  store i32 -19, i32* %retval1, align 4, !dbg !4764
  br label %free_sz, !dbg !4765

if.end27:                                         ; preds = %if.end19
  %30 = load %struct.usb_device*, %struct.usb_device** %usbdev, align 8, !dbg !4766
  %31 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4766
  %endpoint28 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %31, i32 0, i32 4, !dbg !4766
  %32 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint28, align 8, !dbg !4766
  %bEndpointAddress29 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %32, i32 0, i32 2, !dbg !4766
  %33 = load i8, i8* %bEndpointAddress29, align 1, !dbg !4766
  %conv30 = zext i8 %33 to i32, !dbg !4766
  %call31 = call i32 @__create_pipe(%struct.usb_device* %30, i32 %conv30) #9, !dbg !4766
  %or = or i32 1073741824, %call31, !dbg !4766
  %or32 = or i32 %or, 128, !dbg !4766
  store i32 %or32, i32* %pipe, align 4, !dbg !4767
  %34 = load %struct.usb_device*, %struct.usb_device** %usbdev, align 8, !dbg !4768
  %35 = load i32, i32* %pipe, align 4, !dbg !4769
  %36 = load i32, i32* %pipe, align 4, !dbg !4770
  %and = and i32 %36, 128, !dbg !4770
  %tobool33 = icmp ne i32 %and, 0, !dbg !4770
  %lnot = xor i1 %tobool33, true, !dbg !4770
  %lnot.ext = zext i1 %lnot to i32, !dbg !4770
  %call34 = call zeroext i16 @usb_maxpacket(%struct.usb_device* %34, i32 %35, i32 %lnot.ext) #9, !dbg !4771
  %conv35 = zext i16 %call34 to i32, !dbg !4771
  store i32 %conv35, i32* %maxp, align 4, !dbg !4772
  %37 = load i32, i32* %maxp, align 4, !dbg !4773
  %cmp36 = icmp eq i32 %37, 0, !dbg !4775
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !4776

if.then38:                                        ; preds = %if.end27
  %38 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4777
  %dev39 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %38, i32 0, i32 7, !dbg !4777
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.streamzap_probe, i64 0, i64 0)) #10, !dbg !4777
  store i32 -19, i32* %retval1, align 4, !dbg !4779
  br label %free_sz, !dbg !4780

if.end40:                                         ; preds = %if.end27
  %39 = load %struct.usb_device*, %struct.usb_device** %usbdev, align 8, !dbg !4781
  %40 = load i32, i32* %maxp, align 4, !dbg !4782
  %conv41 = sext i32 %40 to i64, !dbg !4782
  %41 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4783
  %dma_in = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %41, i32 0, i32 7, !dbg !4784
  %call42 = call i8* @usb_alloc_coherent(%struct.usb_device* %39, i64 %conv41, i32 2592, i64* %dma_in) #9, !dbg !4785
  %42 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4786
  %buf_in = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %42, i32 0, i32 6, !dbg !4787
  store i8* %call42, i8** %buf_in, align 8, !dbg !4788
  %43 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4789
  %buf_in43 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %43, i32 0, i32 6, !dbg !4791
  %44 = load i8*, i8** %buf_in43, align 8, !dbg !4791
  %tobool44 = icmp ne i8* %44, null, !dbg !4789
  br i1 %tobool44, label %if.end46, label %if.then45, !dbg !4792

if.then45:                                        ; preds = %if.end40
  br label %free_sz, !dbg !4793

if.end46:                                         ; preds = %if.end40
  %call47 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #9, !dbg !4794
  %45 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4795
  %urb_in = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %45, i32 0, i32 5, !dbg !4796
  store %struct.urb* %call47, %struct.urb** %urb_in, align 8, !dbg !4797
  %46 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4798
  %urb_in48 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %46, i32 0, i32 5, !dbg !4800
  %47 = load %struct.urb*, %struct.urb** %urb_in48, align 8, !dbg !4800
  %tobool49 = icmp ne %struct.urb* %47, null, !dbg !4798
  br i1 %tobool49, label %if.end51, label %if.then50, !dbg !4801

if.then50:                                        ; preds = %if.end46
  br label %free_buf_in, !dbg !4802

if.end51:                                         ; preds = %if.end46
  %48 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4803
  %dev52 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %48, i32 0, i32 7, !dbg !4804
  %49 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4805
  %dev53 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %49, i32 0, i32 1, !dbg !4806
  store %struct.device* %dev52, %struct.device** %dev53, align 8, !dbg !4807
  %50 = load i32, i32* %maxp, align 4, !dbg !4808
  %51 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4809
  %buf_in_len = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %51, i32 0, i32 8, !dbg !4810
  store i32 %50, i32* %buf_in_len, align 8, !dbg !4811
  %52 = load %struct.usb_device*, %struct.usb_device** %usbdev, align 8, !dbg !4812
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %52, i32 0, i32 15, !dbg !4814
  %iManufacturer = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 10, !dbg !4815
  %53 = load i8, i8* %iManufacturer, align 2, !dbg !4815
  %conv54 = zext i8 %53 to i32, !dbg !4812
  %tobool55 = icmp ne i32 %conv54, 0, !dbg !4812
  br i1 %tobool55, label %land.lhs.true, label %if.end66, !dbg !4816

land.lhs.true:                                    ; preds = %if.end51
  %54 = load %struct.usb_device*, %struct.usb_device** %usbdev, align 8, !dbg !4817
  %55 = load %struct.usb_device*, %struct.usb_device** %usbdev, align 8, !dbg !4818
  %descriptor56 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %55, i32 0, i32 15, !dbg !4819
  %iManufacturer57 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor56, i32 0, i32 10, !dbg !4820
  %56 = load i8, i8* %iManufacturer57, align 2, !dbg !4820
  %conv58 = zext i8 %56 to i32, !dbg !4818
  %arraydecay = getelementptr inbounds [63 x i8], [63 x i8]* %buf, i64 0, i64 0, !dbg !4821
  %call59 = call i32 @usb_string(%struct.usb_device* %54, i32 %conv58, i8* %arraydecay, i64 63) #9, !dbg !4822
  %cmp60 = icmp sgt i32 %call59, 0, !dbg !4823
  br i1 %cmp60, label %if.then62, label %if.end66, !dbg !4824

if.then62:                                        ; preds = %land.lhs.true
  %arraydecay63 = getelementptr inbounds [128 x i8], [128 x i8]* %name, i64 0, i64 0, !dbg !4825
  %arraydecay64 = getelementptr inbounds [63 x i8], [63 x i8]* %buf, i64 0, i64 0, !dbg !4826
  %call65 = call i64 @strscpy(i8* %arraydecay63, i8* %arraydecay64, i64 128) #9, !dbg !4827
  br label %if.end66, !dbg !4827

if.end66:                                         ; preds = %if.then62, %land.lhs.true, %if.end51
  %57 = load %struct.usb_device*, %struct.usb_device** %usbdev, align 8, !dbg !4828
  %descriptor67 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %57, i32 0, i32 15, !dbg !4830
  %iProduct = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor67, i32 0, i32 11, !dbg !4831
  %58 = load i8, i8* %iProduct, align 1, !dbg !4831
  %conv68 = zext i8 %58 to i32, !dbg !4828
  %tobool69 = icmp ne i32 %conv68, 0, !dbg !4828
  br i1 %tobool69, label %land.lhs.true70, label %if.end86, !dbg !4832

land.lhs.true70:                                  ; preds = %if.end66
  %59 = load %struct.usb_device*, %struct.usb_device** %usbdev, align 8, !dbg !4833
  %60 = load %struct.usb_device*, %struct.usb_device** %usbdev, align 8, !dbg !4834
  %descriptor71 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %60, i32 0, i32 15, !dbg !4835
  %iProduct72 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor71, i32 0, i32 11, !dbg !4836
  %61 = load i8, i8* %iProduct72, align 1, !dbg !4836
  %conv73 = zext i8 %61 to i32, !dbg !4834
  %arraydecay74 = getelementptr inbounds [63 x i8], [63 x i8]* %buf, i64 0, i64 0, !dbg !4837
  %call75 = call i32 @usb_string(%struct.usb_device* %59, i32 %conv73, i8* %arraydecay74, i64 63) #9, !dbg !4838
  %cmp76 = icmp sgt i32 %call75, 0, !dbg !4839
  br i1 %cmp76, label %if.then78, label %if.end86, !dbg !4840

if.then78:                                        ; preds = %land.lhs.true70
  %arraydecay79 = getelementptr inbounds [128 x i8], [128 x i8]* %name, i64 0, i64 0, !dbg !4841
  %arraydecay80 = getelementptr inbounds [128 x i8], [128 x i8]* %name, i64 0, i64 0, !dbg !4842
  %call81 = call i64 @strlen(i8* %arraydecay80) #9, !dbg !4843
  %add.ptr = getelementptr i8, i8* %arraydecay79, i64 %call81, !dbg !4844
  %arraydecay82 = getelementptr inbounds [128 x i8], [128 x i8]* %name, i64 0, i64 0, !dbg !4845
  %call83 = call i64 @strlen(i8* %arraydecay82) #9, !dbg !4846
  %sub = sub i64 128, %call83, !dbg !4847
  %arraydecay84 = getelementptr inbounds [63 x i8], [63 x i8]* %buf, i64 0, i64 0, !dbg !4848
  %call85 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr, i64 %sub, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %arraydecay84) #9, !dbg !4849
  br label %if.end86, !dbg !4849

if.end86:                                         ; preds = %if.then78, %land.lhs.true70, %if.end66
  %62 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4850
  %call87 = call %struct.rc_dev* @streamzap_init_rc_dev(%struct.streamzap_ir* %62) #9, !dbg !4851
  %63 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4852
  %rdev = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %63, i32 0, i32 0, !dbg !4853
  store %struct.rc_dev* %call87, %struct.rc_dev** %rdev, align 8, !dbg !4854
  %64 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4855
  %rdev88 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %64, i32 0, i32 0, !dbg !4857
  %65 = load %struct.rc_dev*, %struct.rc_dev** %rdev88, align 8, !dbg !4857
  %tobool89 = icmp ne %struct.rc_dev* %65, null, !dbg !4855
  br i1 %tobool89, label %if.end91, label %if.then90, !dbg !4858

if.then90:                                        ; preds = %if.end86
  br label %rc_dev_fail, !dbg !4859

if.end91:                                         ; preds = %if.end86
  %66 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4860
  %idle = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %66, i32 0, i32 10, !dbg !4861
  store i8 1, i8* %idle, align 8, !dbg !4862
  %67 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4863
  %decoder_state = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %67, i32 0, i32 9, !dbg !4864
  store i32 0, i32* %decoder_state, align 4, !dbg !4865
  %68 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4866
  %timeout_enabled = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %68, i32 0, i32 14, !dbg !4867
  store i8 1, i8* %timeout_enabled, align 8, !dbg !4868
  %69 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4869
  %rdev92 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %69, i32 0, i32 0, !dbg !4870
  %70 = load %struct.rc_dev*, %struct.rc_dev** %rdev92, align 8, !dbg !4870
  %timeout = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %70, i32 0, i32 34, !dbg !4871
  store i32 65280, i32* %timeout, align 4, !dbg !4872
  %call93 = call i64 @ktime_get_real() #9, !dbg !4873
  %71 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4874
  %signal_start = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %71, i32 0, i32 13, !dbg !4875
  store i64 %call93, i64* %signal_start, align 8, !dbg !4876
  %72 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4877
  %urb_in94 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %72, i32 0, i32 5, !dbg !4878
  %73 = load %struct.urb*, %struct.urb** %urb_in94, align 8, !dbg !4878
  %74 = load %struct.usb_device*, %struct.usb_device** %usbdev, align 8, !dbg !4879
  %75 = load i32, i32* %pipe, align 4, !dbg !4880
  %76 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4881
  %buf_in95 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %76, i32 0, i32 6, !dbg !4882
  %77 = load i8*, i8** %buf_in95, align 8, !dbg !4882
  %78 = load i32, i32* %maxp, align 4, !dbg !4883
  %79 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4884
  %80 = bitcast %struct.streamzap_ir* %79 to i8*, !dbg !4884
  %81 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4885
  %endpoint96 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %81, i32 0, i32 4, !dbg !4886
  %82 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint96, align 8, !dbg !4886
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %82, i32 0, i32 5, !dbg !4887
  %83 = load i8, i8* %bInterval, align 1, !dbg !4887
  %conv97 = zext i8 %83 to i32, !dbg !4885
  call void @usb_fill_int_urb(%struct.urb* %73, %struct.usb_device* %74, i32 %75, i8* %77, i32 %78, void (%struct.urb*)* @streamzap_callback, i8* %80, i32 %conv97) #9, !dbg !4888
  %84 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4889
  %dma_in98 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %84, i32 0, i32 7, !dbg !4890
  %85 = load i64, i64* %dma_in98, align 8, !dbg !4890
  %86 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4891
  %urb_in99 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %86, i32 0, i32 5, !dbg !4892
  %87 = load %struct.urb*, %struct.urb** %urb_in99, align 8, !dbg !4892
  %transfer_dma = getelementptr inbounds %struct.urb, %struct.urb* %87, i32 0, i32 15, !dbg !4893
  store i64 %85, i64* %transfer_dma, align 8, !dbg !4894
  %88 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4895
  %urb_in100 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %88, i32 0, i32 5, !dbg !4896
  %89 = load %struct.urb*, %struct.urb** %urb_in100, align 8, !dbg !4896
  %transfer_flags = getelementptr inbounds %struct.urb, %struct.urb* %89, i32 0, i32 13, !dbg !4897
  %90 = load i32, i32* %transfer_flags, align 4, !dbg !4898
  %or101 = or i32 %90, 4, !dbg !4898
  store i32 %or101, i32* %transfer_flags, align 4, !dbg !4898
  %91 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4899
  %92 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4900
  %93 = bitcast %struct.streamzap_ir* %92 to i8*, !dbg !4900
  call void @usb_set_intfdata(%struct.usb_interface* %91, i8* %93) #9, !dbg !4901
  %94 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4902
  %urb_in102 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %94, i32 0, i32 5, !dbg !4904
  %95 = load %struct.urb*, %struct.urb** %urb_in102, align 8, !dbg !4904
  %call103 = call i32 @usb_submit_urb(%struct.urb* %95, i32 2592) #9, !dbg !4905
  %tobool104 = icmp ne i32 %call103, 0, !dbg !4905
  br i1 %tobool104, label %if.then105, label %if.end107, !dbg !4906

if.then105:                                       ; preds = %if.end91
  %96 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4907
  %dev106 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %96, i32 0, i32 1, !dbg !4907
  %97 = load %struct.device*, %struct.device** %dev106, align 8, !dbg !4907
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %97, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !4907
  br label %if.end107, !dbg !4907

if.end107:                                        ; preds = %if.then105, %if.end91
  %98 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4908
  %dev108 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %98, i32 0, i32 1, !dbg !4908
  %99 = load %struct.device*, %struct.device** %dev108, align 8, !dbg !4908
  %arraydecay109 = getelementptr inbounds [128 x i8], [128 x i8]* %name, i64 0, i64 0, !dbg !4908
  %100 = load %struct.usb_device*, %struct.usb_device** %usbdev, align 8, !dbg !4908
  %bus = getelementptr inbounds %struct.usb_device, %struct.usb_device* %100, i32 0, i32 12, !dbg !4908
  %101 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !4908
  %busnum = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %101, i32 0, i32 2, !dbg !4908
  %102 = load i32, i32* %busnum, align 8, !dbg !4908
  %103 = load %struct.usb_device*, %struct.usb_device** %usbdev, align 8, !dbg !4908
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %103, i32 0, i32 0, !dbg !4908
  %104 = load i32, i32* %devnum, align 8, !dbg !4908
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %99, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %arraydecay109, i32 %102, i32 %104) #10, !dbg !4908
  store i32 0, i32* %retval, align 4, !dbg !4909
  br label %return, !dbg !4909

rc_dev_fail:                                      ; preds = %if.then90
  call void @llvm.dbg.label(metadata !4910), !dbg !4911
  %105 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4912
  %urb_in110 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %105, i32 0, i32 5, !dbg !4913
  %106 = load %struct.urb*, %struct.urb** %urb_in110, align 8, !dbg !4913
  call void @usb_free_urb(%struct.urb* %106) #9, !dbg !4914
  br label %free_buf_in, !dbg !4914

free_buf_in:                                      ; preds = %rc_dev_fail, %if.then50
  call void @llvm.dbg.label(metadata !4915), !dbg !4916
  %107 = load %struct.usb_device*, %struct.usb_device** %usbdev, align 8, !dbg !4917
  %108 = load i32, i32* %maxp, align 4, !dbg !4918
  %conv111 = sext i32 %108 to i64, !dbg !4918
  %109 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4919
  %buf_in112 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %109, i32 0, i32 6, !dbg !4920
  %110 = load i8*, i8** %buf_in112, align 8, !dbg !4920
  %111 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4921
  %dma_in113 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %111, i32 0, i32 7, !dbg !4922
  %112 = load i64, i64* %dma_in113, align 8, !dbg !4922
  call void @usb_free_coherent(%struct.usb_device* %107, i64 %conv111, i8* %110, i64 %112) #9, !dbg !4923
  br label %free_sz, !dbg !4923

free_sz:                                          ; preds = %free_buf_in, %if.then45, %if.then38, %if.then23, %if.then15, %if.then5
  call void @llvm.dbg.label(metadata !4924), !dbg !4925
  %113 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4926
  %114 = bitcast %struct.streamzap_ir* %113 to i8*, !dbg !4926
  call void @kfree(i8* %114) #9, !dbg !4927
  %115 = load i32, i32* %retval1, align 4, !dbg !4928
  store i32 %115, i32* %retval, align 4, !dbg !4929
  br label %return, !dbg !4929

return:                                           ; preds = %free_sz, %if.end107, %if.then
  %116 = load i32, i32* %retval, align 4, !dbg !4930
  ret i32 %116, !dbg !4930
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @streamzap_disconnect(%struct.usb_interface* %interface) #2 !dbg !4931 {
entry:
  %interface.addr = alloca %struct.usb_interface*, align 8
  %sz = alloca %struct.streamzap_ir*, align 8
  %usbdev = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %interface, %struct.usb_interface** %interface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %interface.addr, metadata !4932, metadata !DIExpression()), !dbg !4933
  call void @llvm.dbg.declare(metadata %struct.streamzap_ir** %sz, metadata !4934, metadata !DIExpression()), !dbg !4935
  %0 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4936
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #9, !dbg !4937
  %1 = bitcast i8* %call to %struct.streamzap_ir*, !dbg !4937
  store %struct.streamzap_ir* %1, %struct.streamzap_ir** %sz, align 8, !dbg !4935
  call void @llvm.dbg.declare(metadata %struct.usb_device** %usbdev, metadata !4938, metadata !DIExpression()), !dbg !4939
  %2 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4940
  %call1 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %2) #9, !dbg !4941
  store %struct.usb_device* %call1, %struct.usb_device** %usbdev, align 8, !dbg !4939
  %3 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4942
  call void @usb_set_intfdata(%struct.usb_interface* %3, i8* null) #9, !dbg !4943
  %4 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4944
  %tobool = icmp ne %struct.streamzap_ir* %4, null, !dbg !4944
  br i1 %tobool, label %if.end, label %if.then, !dbg !4946

if.then:                                          ; preds = %entry
  br label %return, !dbg !4947

if.end:                                           ; preds = %entry
  %5 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4948
  %usbdev2 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %5, i32 0, i32 2, !dbg !4949
  store %struct.usb_device* null, %struct.usb_device** %usbdev2, align 8, !dbg !4950
  %6 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4951
  %rdev = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %6, i32 0, i32 0, !dbg !4952
  %7 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !4952
  call void @rc_unregister_device(%struct.rc_dev* %7) #9, !dbg !4953
  %8 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4954
  %urb_in = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %8, i32 0, i32 5, !dbg !4955
  %9 = load %struct.urb*, %struct.urb** %urb_in, align 8, !dbg !4955
  call void @usb_kill_urb(%struct.urb* %9) #9, !dbg !4956
  %10 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4957
  %urb_in3 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %10, i32 0, i32 5, !dbg !4958
  %11 = load %struct.urb*, %struct.urb** %urb_in3, align 8, !dbg !4958
  call void @usb_free_urb(%struct.urb* %11) #9, !dbg !4959
  %12 = load %struct.usb_device*, %struct.usb_device** %usbdev, align 8, !dbg !4960
  %13 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4961
  %buf_in_len = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %13, i32 0, i32 8, !dbg !4962
  %14 = load i32, i32* %buf_in_len, align 8, !dbg !4962
  %conv = zext i32 %14 to i64, !dbg !4961
  %15 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4963
  %buf_in = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %15, i32 0, i32 6, !dbg !4964
  %16 = load i8*, i8** %buf_in, align 8, !dbg !4964
  %17 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4965
  %dma_in = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %17, i32 0, i32 7, !dbg !4966
  %18 = load i64, i64* %dma_in, align 8, !dbg !4966
  call void @usb_free_coherent(%struct.usb_device* %12, i64 %conv, i8* %16, i64 %18) #9, !dbg !4967
  %19 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4968
  %20 = bitcast %struct.streamzap_ir* %19 to i8*, !dbg !4968
  call void @kfree(i8* %20) #9, !dbg !4969
  br label %return, !dbg !4970

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4970
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @streamzap_suspend(%struct.usb_interface* %intf, i32 %message.coerce) #2 !dbg !4971 {
entry:
  %message = alloca %struct.pm_message, align 4
  %intf.addr = alloca %struct.usb_interface*, align 8
  %sz = alloca %struct.streamzap_ir*, align 8
  %coerce.dive = getelementptr inbounds %struct.pm_message, %struct.pm_message* %message, i32 0, i32 0
  store i32 %message.coerce, i32* %coerce.dive, align 4
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4972, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.declare(metadata %struct.pm_message* %message, metadata !4974, metadata !DIExpression()), !dbg !4975
  call void @llvm.dbg.declare(metadata %struct.streamzap_ir** %sz, metadata !4976, metadata !DIExpression()), !dbg !4977
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4978
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #9, !dbg !4979
  %1 = bitcast i8* %call to %struct.streamzap_ir*, !dbg !4979
  store %struct.streamzap_ir* %1, %struct.streamzap_ir** %sz, align 8, !dbg !4977
  %2 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4980
  %urb_in = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %2, i32 0, i32 5, !dbg !4981
  %3 = load %struct.urb*, %struct.urb** %urb_in, align 8, !dbg !4981
  call void @usb_kill_urb(%struct.urb* %3) #9, !dbg !4982
  ret i32 0, !dbg !4983
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @streamzap_resume(%struct.usb_interface* %intf) #2 !dbg !4984 {
entry:
  %retval = alloca i32, align 4
  %intf.addr = alloca %struct.usb_interface*, align 8
  %sz = alloca %struct.streamzap_ir*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4985, metadata !DIExpression()), !dbg !4986
  call void @llvm.dbg.declare(metadata %struct.streamzap_ir** %sz, metadata !4987, metadata !DIExpression()), !dbg !4988
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4989
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #9, !dbg !4990
  %1 = bitcast i8* %call to %struct.streamzap_ir*, !dbg !4990
  store %struct.streamzap_ir* %1, %struct.streamzap_ir** %sz, align 8, !dbg !4988
  %2 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4991
  %urb_in = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %2, i32 0, i32 5, !dbg !4993
  %3 = load %struct.urb*, %struct.urb** %urb_in, align 8, !dbg !4993
  %call1 = call i32 @usb_submit_urb(%struct.urb* %3, i32 2592) #9, !dbg !4994
  %tobool = icmp ne i32 %call1, 0, !dbg !4994
  br i1 %tobool, label %if.then, label %if.end, !dbg !4995

if.then:                                          ; preds = %entry
  %4 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !4996
  %dev = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %4, i32 0, i32 1, !dbg !4996
  %5 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4996
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0)) #10, !dbg !4996
  store i32 -5, i32* %retval, align 4, !dbg !4998
  br label %return, !dbg !4998

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4999
  br label %return, !dbg !4999

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !5000
  ret i32 %6, !dbg !5000
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %intf) #2 !dbg !5001 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5004, metadata !DIExpression()), !dbg !5005
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5006, metadata !DIExpression()), !dbg !5008
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5008
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5008
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !5008
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5008
  %2 = bitcast %struct.device* %1 to i8*, !dbg !5008
  store i8* %2, i8** %__mptr, align 8, !dbg !5008
  br label %do.body, !dbg !5008

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5009

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5008
  %add.ptr = getelementptr i8, i8* %3, i64 -160, !dbg !5008
  %4 = bitcast i8* %add.ptr to %struct.usb_device*, !dbg !5008
  store %struct.usb_device* %4, %struct.usb_device** %tmp, align 8, !dbg !5009
  %5 = load %struct.usb_device*, %struct.usb_device** %tmp, align 8, !dbg !5008
  ret %struct.usb_device* %5, !dbg !5011
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !5012 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5015, metadata !DIExpression()), !dbg !5019
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5025, metadata !DIExpression()), !dbg !5026
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5027, metadata !DIExpression()), !dbg !5028
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5029, metadata !DIExpression()), !dbg !5030
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5031, metadata !DIExpression()), !dbg !5035
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5037, metadata !DIExpression()), !dbg !5041
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5043, metadata !DIExpression()), !dbg !5047
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5052, metadata !DIExpression()), !dbg !5053
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5054, metadata !DIExpression()), !dbg !5055
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5056, metadata !DIExpression()), !dbg !5057
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5058, metadata !DIExpression()), !dbg !5059
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5060, metadata !DIExpression()), !dbg !5061
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5062, metadata !DIExpression()), !dbg !5063
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5064, metadata !DIExpression()), !dbg !5065
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5066, metadata !DIExpression()), !dbg !5067
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5068, metadata !DIExpression()), !dbg !5069
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5070, metadata !DIExpression()), !dbg !5071
  %0 = load i64, i64* %size.addr, align 8, !dbg !5072
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5073
  %or = or i32 %1, 256, !dbg !5074
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5075
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !5076
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5077

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5078
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5079
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5080

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5081
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5082
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5083
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !5084
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5061
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5085
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5086
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5087
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5088
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5089
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5090
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !5091
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5091
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5091
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5091
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !5091
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5092
  br label %kmalloc.exit, !dbg !5092

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5093
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5094
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5094
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5096

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5097
  br label %kmalloc_index.exit.i, !dbg !5097

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5098
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5100
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5101

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5102
  br label %kmalloc_index.exit.i, !dbg !5102

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5103
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5105
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5106

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5107
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5108
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5109

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5110
  br label %kmalloc_index.exit.i, !dbg !5110

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5111
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5113
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5114

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5115
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5116
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5117

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5118
  br label %kmalloc_index.exit.i, !dbg !5118

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5119
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5121
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5122

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5123
  br label %kmalloc_index.exit.i, !dbg !5123

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5124
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5126
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5127

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5128
  br label %kmalloc_index.exit.i, !dbg !5128

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5129
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5131
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5132

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5133
  br label %kmalloc_index.exit.i, !dbg !5133

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5134
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5136
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5137

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5138
  br label %kmalloc_index.exit.i, !dbg !5138

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5139
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5141
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5142

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5143
  br label %kmalloc_index.exit.i, !dbg !5143

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5144
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5146
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5147

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5148
  br label %kmalloc_index.exit.i, !dbg !5148

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5149
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5151
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5152

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5153
  br label %kmalloc_index.exit.i, !dbg !5153

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5154
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5156
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5157

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5158
  br label %kmalloc_index.exit.i, !dbg !5158

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5159
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5161
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5162

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5163
  br label %kmalloc_index.exit.i, !dbg !5163

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5164
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5166
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5167

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5168
  br label %kmalloc_index.exit.i, !dbg !5168

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5169
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5171
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5172

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5173
  br label %kmalloc_index.exit.i, !dbg !5173

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5174
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5176
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5177

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5178
  br label %kmalloc_index.exit.i, !dbg !5178

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5179
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5181
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5182

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5183
  br label %kmalloc_index.exit.i, !dbg !5183

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5184
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5186
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5187

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5188
  br label %kmalloc_index.exit.i, !dbg !5188

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5189
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5191
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5192

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5193
  br label %kmalloc_index.exit.i, !dbg !5193

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5194
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5196
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5197

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5198
  br label %kmalloc_index.exit.i, !dbg !5198

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5199
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5201
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5202

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5203
  br label %kmalloc_index.exit.i, !dbg !5203

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5204
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5206
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5207

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5208
  br label %kmalloc_index.exit.i, !dbg !5208

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5209
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5211
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5212

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5213
  br label %kmalloc_index.exit.i, !dbg !5213

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5214
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5216
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5217

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5218
  br label %kmalloc_index.exit.i, !dbg !5218

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5219
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5221
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5222

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5223
  br label %kmalloc_index.exit.i, !dbg !5223

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5224
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5226
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5227

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5228
  br label %kmalloc_index.exit.i, !dbg !5228

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5229
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5231
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5232

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5233
  br label %kmalloc_index.exit.i, !dbg !5233

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5234
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5236
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5237

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5238
  br label %kmalloc_index.exit.i, !dbg !5238

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !5239, !srcloc !5242
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #11, !dbg !5243, !srcloc !5246
  unreachable, !dbg !5247

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5248
  store i32 %45, i32* %index.i, align 4, !dbg !5249
  %46 = load i32, i32* %index.i, align 4, !dbg !5250
  %tobool.i = icmp ne i32 %46, 0, !dbg !5250
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5252

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5253
  br label %kmalloc.exit, !dbg !5253

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5254
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5255
  %and.i.i = and i32 %48, 17, !dbg !5255
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5255
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5255
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5255
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5255
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5257

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5258
  br label %kmalloc_type.exit.i, !dbg !5258

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5259
  %and2.i.i = and i32 %49, 1, !dbg !5260
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5259
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5259
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5259
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5261
  br label %kmalloc_type.exit.i, !dbg !5261

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5262
  %idxprom.i = zext i32 %51 to i64, !dbg !5263
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5263
  %52 = load i32, i32* %index.i, align 4, !dbg !5264
  %idxprom6.i = zext i32 %52 to i64, !dbg !5263
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5263
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5263
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5265
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5266
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5267
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5268
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !5269
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5269
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5269
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5269
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !5269
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5030
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5270
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5271
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5272
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5273
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !5274
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5275
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5276
  store i8* %62, i8** %retval.i, align 8, !dbg !5277
  br label %kmalloc.exit, !dbg !5277

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5278
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5279
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !5280
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5280
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5280
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5280
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !5280
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5281
  br label %kmalloc.exit, !dbg !5281

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5282
  ret i8* %65, !dbg !5283
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5284 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5289, metadata !DIExpression()), !dbg !5290
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5291
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 2, !dbg !5292
  %1 = load i8, i8* %bEndpointAddress, align 1, !dbg !5292
  %conv = zext i8 %1 to i32, !dbg !5291
  %and = and i32 %conv, 128, !dbg !5293
  %cmp = icmp eq i32 %and, 128, !dbg !5294
  %conv1 = zext i1 %cmp to i32, !dbg !5294
  ret i32 %conv1, !dbg !5295
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5296 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5297, metadata !DIExpression()), !dbg !5298
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5299
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 3, !dbg !5300
  %1 = load i8, i8* %bmAttributes, align 1, !dbg !5300
  %conv = zext i8 %1 to i32, !dbg !5299
  %and = and i32 %conv, 3, !dbg !5301
  %cmp = icmp eq i32 %and, 3, !dbg !5302
  %conv1 = zext i1 %cmp to i32, !dbg !5302
  ret i32 %conv1, !dbg !5303
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__create_pipe(%struct.usb_device* %dev, i32 %endpoint) #2 !dbg !5304 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5307, metadata !DIExpression()), !dbg !5308
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !5309, metadata !DIExpression()), !dbg !5310
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5311
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 0, !dbg !5312
  %1 = load i32, i32* %devnum, align 8, !dbg !5312
  %shl = shl i32 %1, 8, !dbg !5313
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !5314
  %shl1 = shl i32 %2, 15, !dbg !5315
  %or = or i32 %shl, %shl1, !dbg !5316
  ret i32 %or, !dbg !5317
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @usb_maxpacket(%struct.usb_device* %udev, i32 %pipe, i32 %is_out) #2 !dbg !5318 {
entry:
  %retval = alloca i16, align 2
  %udev.addr = alloca %struct.usb_device*, align 8
  %pipe.addr = alloca i32, align 4
  %is_out.addr = alloca i32, align 4
  %ep = alloca %struct.usb_host_endpoint*, align 8
  %epnum = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on23 = alloca i32, align 4
  %tmp49 = alloca i64, align 8
  store %struct.usb_device* %udev, %struct.usb_device** %udev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev.addr, metadata !5321, metadata !DIExpression()), !dbg !5322
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !5323, metadata !DIExpression()), !dbg !5324
  store i32 %is_out, i32* %is_out.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %is_out.addr, metadata !5325, metadata !DIExpression()), !dbg !5326
  call void @llvm.dbg.declare(metadata %struct.usb_host_endpoint** %ep, metadata !5327, metadata !DIExpression()), !dbg !5328
  call void @llvm.dbg.declare(metadata i32* %epnum, metadata !5329, metadata !DIExpression()), !dbg !5330
  %0 = load i32, i32* %pipe.addr, align 4, !dbg !5331
  %shr = ashr i32 %0, 15, !dbg !5331
  %and = and i32 %shr, 15, !dbg !5331
  store i32 %and, i32* %epnum, align 4, !dbg !5330
  %1 = load i32, i32* %is_out.addr, align 4, !dbg !5332
  %tobool = icmp ne i32 %1, 0, !dbg !5332
  br i1 %tobool, label %if.then, label %if.else, !dbg !5334

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5335, metadata !DIExpression()), !dbg !5338
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !5338
  %and1 = and i32 %2, 128, !dbg !5338
  %tobool2 = icmp ne i32 %and1, 0, !dbg !5338
  %lnot = xor i1 %tobool2, true, !dbg !5338
  %lnot3 = xor i1 %lnot, true, !dbg !5338
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5338
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5338
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !5339
  %tobool4 = icmp ne i32 %3, 0, !dbg !5339
  %lnot5 = xor i1 %tobool4, true, !dbg !5339
  %lnot7 = xor i1 %lnot5, true, !dbg !5339
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5339
  %conv = sext i32 %lnot.ext8 to i64, !dbg !5339
  %tobool9 = icmp ne i64 %conv, 0, !dbg !5339
  br i1 %tobool9, label %if.then10, label %if.end, !dbg !5338

if.then10:                                        ; preds = %if.then
  br label %do.body, !dbg !5339

do.body:                                          ; preds = %if.then10
  br label %do.body11, !dbg !5341

do.body11:                                        ; preds = %do.body
  br label %do.end, !dbg !5343

do.end:                                           ; preds = %do.body11
  br label %do.body12, !dbg !5341

do.body12:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 1986, i32 2305, i64 12) #11, !dbg !5345, !srcloc !5347
  br label %do.end13, !dbg !5345

do.end13:                                         ; preds = %do.body12
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 209) #11, !dbg !5348, !srcloc !5350
  br label %do.body14, !dbg !5341

do.body14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !5351

do.end15:                                         ; preds = %do.body14
  br label %do.end16, !dbg !5341

do.end16:                                         ; preds = %do.end15
  br label %if.end, !dbg !5341

if.end:                                           ; preds = %do.end16, %if.then
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !5338
  %tobool17 = icmp ne i32 %4, 0, !dbg !5338
  %lnot18 = xor i1 %tobool17, true, !dbg !5338
  %lnot20 = xor i1 %lnot18, true, !dbg !5338
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5338
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5338
  store i64 %conv22, i64* %tmp, align 8, !dbg !5339
  %5 = load i64, i64* %tmp, align 8, !dbg !5338
  %6 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !5353
  %ep_out = getelementptr inbounds %struct.usb_device, %struct.usb_device* %6, i32 0, i32 21, !dbg !5354
  %7 = load i32, i32* %epnum, align 4, !dbg !5355
  %idxprom = zext i32 %7 to i64, !dbg !5353
  %arrayidx = getelementptr [16 x %struct.usb_host_endpoint*], [16 x %struct.usb_host_endpoint*]* %ep_out, i64 0, i64 %idxprom, !dbg !5353
  %8 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %arrayidx, align 8, !dbg !5353
  store %struct.usb_host_endpoint* %8, %struct.usb_host_endpoint** %ep, align 8, !dbg !5356
  br label %if.end58, !dbg !5357

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on23, metadata !5358, metadata !DIExpression()), !dbg !5361
  %9 = load i32, i32* %pipe.addr, align 4, !dbg !5361
  %and24 = and i32 %9, 128, !dbg !5361
  %tobool25 = icmp ne i32 %and24, 0, !dbg !5361
  %lnot26 = xor i1 %tobool25, true, !dbg !5361
  %lnot28 = xor i1 %lnot26, true, !dbg !5361
  %lnot30 = xor i1 %lnot28, true, !dbg !5361
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !5361
  store i32 %lnot.ext31, i32* %__ret_warn_on23, align 4, !dbg !5361
  %10 = load i32, i32* %__ret_warn_on23, align 4, !dbg !5362
  %tobool32 = icmp ne i32 %10, 0, !dbg !5362
  %lnot33 = xor i1 %tobool32, true, !dbg !5362
  %lnot35 = xor i1 %lnot33, true, !dbg !5362
  %lnot.ext36 = zext i1 %lnot35 to i32, !dbg !5362
  %conv37 = sext i32 %lnot.ext36 to i64, !dbg !5362
  %tobool38 = icmp ne i64 %conv37, 0, !dbg !5362
  br i1 %tobool38, label %if.then39, label %if.end48, !dbg !5361

if.then39:                                        ; preds = %if.else
  br label %do.body40, !dbg !5362

do.body40:                                        ; preds = %if.then39
  br label %do.body41, !dbg !5364

do.body41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !5366

do.end42:                                         ; preds = %do.body41
  br label %do.body43, !dbg !5364

do.body43:                                        ; preds = %do.end42
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 1989, i32 2305, i64 12) #11, !dbg !5368, !srcloc !5370
  br label %do.end44, !dbg !5368

do.end44:                                         ; preds = %do.body43
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 210) #11, !dbg !5371, !srcloc !5373
  br label %do.body45, !dbg !5364

do.body45:                                        ; preds = %do.end44
  br label %do.end46, !dbg !5374

do.end46:                                         ; preds = %do.body45
  br label %do.end47, !dbg !5364

do.end47:                                         ; preds = %do.end46
  br label %if.end48, !dbg !5364

if.end48:                                         ; preds = %do.end47, %if.else
  %11 = load i32, i32* %__ret_warn_on23, align 4, !dbg !5361
  %tobool50 = icmp ne i32 %11, 0, !dbg !5361
  %lnot51 = xor i1 %tobool50, true, !dbg !5361
  %lnot53 = xor i1 %lnot51, true, !dbg !5361
  %lnot.ext54 = zext i1 %lnot53 to i32, !dbg !5361
  %conv55 = sext i32 %lnot.ext54 to i64, !dbg !5361
  store i64 %conv55, i64* %tmp49, align 8, !dbg !5362
  %12 = load i64, i64* %tmp49, align 8, !dbg !5361
  %13 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !5376
  %ep_in = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 20, !dbg !5377
  %14 = load i32, i32* %epnum, align 4, !dbg !5378
  %idxprom56 = zext i32 %14 to i64, !dbg !5376
  %arrayidx57 = getelementptr [16 x %struct.usb_host_endpoint*], [16 x %struct.usb_host_endpoint*]* %ep_in, i64 0, i64 %idxprom56, !dbg !5376
  %15 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %arrayidx57, align 8, !dbg !5376
  store %struct.usb_host_endpoint* %15, %struct.usb_host_endpoint** %ep, align 8, !dbg !5379
  br label %if.end58

if.end58:                                         ; preds = %if.end48, %if.end
  %16 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %ep, align 8, !dbg !5380
  %tobool59 = icmp ne %struct.usb_host_endpoint* %16, null, !dbg !5380
  br i1 %tobool59, label %if.end61, label %if.then60, !dbg !5382

if.then60:                                        ; preds = %if.end58
  store i16 0, i16* %retval, align 2, !dbg !5383
  br label %return, !dbg !5383

if.end61:                                         ; preds = %if.end58
  %17 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %ep, align 8, !dbg !5384
  %desc = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %17, i32 0, i32 0, !dbg !5385
  %call = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %desc) #9, !dbg !5386
  %conv62 = trunc i32 %call to i16, !dbg !5386
  store i16 %conv62, i16* %retval, align 2, !dbg !5387
  br label %return, !dbg !5387

return:                                           ; preds = %if.end61, %if.then60
  %18 = load i16, i16* %retval, align 2, !dbg !5388
  ret i16 %18, !dbg !5388
}

; Function Attrs: noredzone
declare dso_local i8* @usb_alloc_coherent(%struct.usb_device*, i64, i32, i64*) #1

; Function Attrs: noredzone
declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_string(%struct.usb_device*, i32, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local i64 @strscpy(i8*, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.rc_dev* @streamzap_init_rc_dev(%struct.streamzap_ir* %sz) #2 !dbg !5389 {
entry:
  %retval = alloca %struct.rc_dev*, align 8
  %sz.addr = alloca %struct.streamzap_ir*, align 8
  %rdev = alloca %struct.rc_dev*, align 8
  %dev = alloca %struct.device*, align 8
  %ret = alloca i32, align 4
  store %struct.streamzap_ir* %sz, %struct.streamzap_ir** %sz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.streamzap_ir** %sz.addr, metadata !5392, metadata !DIExpression()), !dbg !5393
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %rdev, metadata !5394, metadata !DIExpression()), !dbg !5395
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !5396, metadata !DIExpression()), !dbg !5397
  %0 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !5398
  %dev1 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %0, i32 0, i32 1, !dbg !5399
  %1 = load %struct.device*, %struct.device** %dev1, align 8, !dbg !5399
  store %struct.device* %1, %struct.device** %dev, align 8, !dbg !5397
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5400, metadata !DIExpression()), !dbg !5401
  %call = call %struct.rc_dev* @rc_allocate_device(i32 1) #9, !dbg !5402
  store %struct.rc_dev* %call, %struct.rc_dev** %rdev, align 8, !dbg !5403
  %2 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !5404
  %tobool = icmp ne %struct.rc_dev* %2, null, !dbg !5404
  br i1 %tobool, label %if.end, label %if.then, !dbg !5406

if.then:                                          ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5407
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !5407
  br label %out, !dbg !5409

if.end:                                           ; preds = %entry
  %4 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !5410
  %name = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %4, i32 0, i32 15, !dbg !5411
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %name, i64 0, i64 0, !dbg !5410
  %5 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !5412
  %usbdev = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %5, i32 0, i32 2, !dbg !5412
  %6 = load %struct.usb_device*, %struct.usb_device** %usbdev, align 8, !dbg !5412
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %6, i32 0, i32 15, !dbg !5412
  %idVendor = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 7, !dbg !5412
  %7 = load i16, i16* %idVendor, align 8, !dbg !5412
  %conv = zext i16 %7 to i32, !dbg !5412
  %8 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !5413
  %usbdev2 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %8, i32 0, i32 2, !dbg !5413
  %9 = load %struct.usb_device*, %struct.usb_device** %usbdev2, align 8, !dbg !5413
  %descriptor3 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %9, i32 0, i32 15, !dbg !5413
  %idProduct = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor3, i32 0, i32 8, !dbg !5413
  %10 = load i16, i16* %idProduct, align 2, !dbg !5413
  %conv4 = zext i16 %10 to i32, !dbg !5413
  %call5 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 128, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0), i32 %conv, i32 %conv4) #9, !dbg !5414
  %11 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !5415
  %usbdev6 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %11, i32 0, i32 2, !dbg !5416
  %12 = load %struct.usb_device*, %struct.usb_device** %usbdev6, align 8, !dbg !5416
  %13 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !5417
  %phys = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %13, i32 0, i32 16, !dbg !5418
  %arraydecay7 = getelementptr inbounds [64 x i8], [64 x i8]* %phys, i64 0, i64 0, !dbg !5417
  %call8 = call i32 @usb_make_path(%struct.usb_device* %12, i8* %arraydecay7, i64 64) #9, !dbg !5419
  %14 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !5420
  %phys9 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %14, i32 0, i32 16, !dbg !5421
  %arraydecay10 = getelementptr inbounds [64 x i8], [64 x i8]* %phys9, i64 0, i64 0, !dbg !5420
  %call11 = call i64 @strlcat(i8* %arraydecay10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i64 64) #9, !dbg !5422
  %15 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !5423
  %name12 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %15, i32 0, i32 15, !dbg !5424
  %arraydecay13 = getelementptr inbounds [128 x i8], [128 x i8]* %name12, i64 0, i64 0, !dbg !5423
  %16 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !5425
  %device_name = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %16, i32 0, i32 3, !dbg !5426
  store i8* %arraydecay13, i8** %device_name, align 8, !dbg !5427
  %17 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !5428
  %phys14 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %17, i32 0, i32 16, !dbg !5429
  %arraydecay15 = getelementptr inbounds [64 x i8], [64 x i8]* %phys14, i64 0, i64 0, !dbg !5428
  %18 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !5430
  %input_phys = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %18, i32 0, i32 4, !dbg !5431
  store i8* %arraydecay15, i8** %input_phys, align 8, !dbg !5432
  %19 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !5433
  %usbdev16 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %19, i32 0, i32 2, !dbg !5434
  %20 = load %struct.usb_device*, %struct.usb_device** %usbdev16, align 8, !dbg !5434
  %21 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !5435
  %input_id = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %21, i32 0, i32 5, !dbg !5436
  call void @usb_to_input_id(%struct.usb_device* %20, %struct.input_id* %input_id) #9, !dbg !5437
  %22 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5438
  %23 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !5439
  %dev17 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %23, i32 0, i32 0, !dbg !5440
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev17, i32 0, i32 1, !dbg !5441
  store %struct.device* %22, %struct.device** %parent, align 8, !dbg !5442
  %24 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !5443
  %25 = bitcast %struct.streamzap_ir* %24 to i8*, !dbg !5443
  %26 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !5444
  %priv = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %26, i32 0, i32 24, !dbg !5445
  store i8* %25, i8** %priv, align 8, !dbg !5446
  %27 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !5447
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %27, i32 0, i32 16, !dbg !5448
  store i64 0, i64* %allowed_protocols, align 8, !dbg !5449
  %28 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !5450
  %driver_name = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %28, i32 0, i32 6, !dbg !5451
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %driver_name, align 8, !dbg !5452
  %29 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !5453
  %map_name = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %29, i32 0, i32 7, !dbg !5454
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8** %map_name, align 8, !dbg !5455
  %30 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !5456
  %call18 = call i32 @rc_register_device(%struct.rc_dev* %30) #9, !dbg !5457
  store i32 %call18, i32* %ret, align 4, !dbg !5458
  %31 = load i32, i32* %ret, align 4, !dbg !5459
  %cmp = icmp slt i32 %31, 0, !dbg !5461
  br i1 %cmp, label %if.then20, label %if.end21, !dbg !5462

if.then20:                                        ; preds = %if.end
  %32 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5463
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !5463
  br label %out, !dbg !5465

if.end21:                                         ; preds = %if.end
  %33 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !5466
  store %struct.rc_dev* %33, %struct.rc_dev** %retval, align 8, !dbg !5467
  br label %return, !dbg !5467

out:                                              ; preds = %if.then20, %if.then
  call void @llvm.dbg.label(metadata !5468), !dbg !5469
  %34 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !5470
  call void @rc_free_device(%struct.rc_dev* %34) #9, !dbg !5471
  store %struct.rc_dev* null, %struct.rc_dev** %retval, align 8, !dbg !5472
  br label %return, !dbg !5472

return:                                           ; preds = %out, %if.end21
  %35 = load %struct.rc_dev*, %struct.rc_dev** %retval, align 8, !dbg !5473
  ret %struct.rc_dev* %35, !dbg !5473
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_get_real() #2 !dbg !5474 {
entry:
  %call = call i64 @ktime_get_with_offset(i32 0) #9, !dbg !5475
  ret i64 %call, !dbg !5476
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_fill_int_urb(%struct.urb* %urb, %struct.usb_device* %dev, i32 %pipe, i8* %transfer_buffer, i32 %buffer_length, void (%struct.urb*)* %complete_fn, i8* %context, i32 %interval) #2 !dbg !5477 {
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
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5480, metadata !DIExpression()), !dbg !5481
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5482, metadata !DIExpression()), !dbg !5483
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !5484, metadata !DIExpression()), !dbg !5485
  store i8* %transfer_buffer, i8** %transfer_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %transfer_buffer.addr, metadata !5486, metadata !DIExpression()), !dbg !5487
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_length.addr, metadata !5488, metadata !DIExpression()), !dbg !5489
  store void (%struct.urb*)* %complete_fn, void (%struct.urb*)** %complete_fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.urb*)** %complete_fn.addr, metadata !5490, metadata !DIExpression()), !dbg !5491
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !5492, metadata !DIExpression()), !dbg !5493
  store i32 %interval, i32* %interval.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %interval.addr, metadata !5494, metadata !DIExpression()), !dbg !5495
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5496
  %1 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5497
  %dev1 = getelementptr inbounds %struct.urb, %struct.urb* %1, i32 0, i32 8, !dbg !5498
  store %struct.usb_device* %0, %struct.usb_device** %dev1, align 8, !dbg !5499
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !5500
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5501
  %pipe2 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 10, !dbg !5502
  store i32 %2, i32* %pipe2, align 8, !dbg !5503
  %4 = load i8*, i8** %transfer_buffer.addr, align 8, !dbg !5504
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5505
  %transfer_buffer3 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 14, !dbg !5506
  store i8* %4, i8** %transfer_buffer3, align 8, !dbg !5507
  %6 = load i32, i32* %buffer_length.addr, align 4, !dbg !5508
  %7 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5509
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 19, !dbg !5510
  store i32 %6, i32* %transfer_buffer_length, align 8, !dbg !5511
  %8 = load void (%struct.urb*)*, void (%struct.urb*)** %complete_fn.addr, align 8, !dbg !5512
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5513
  %complete = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 28, !dbg !5514
  store void (%struct.urb*)* %8, void (%struct.urb*)** %complete, align 8, !dbg !5515
  %10 = load i8*, i8** %context.addr, align 8, !dbg !5516
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5517
  %context4 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 27, !dbg !5518
  store i8* %10, i8** %context4, align 8, !dbg !5519
  %12 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5520
  %speed = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 4, !dbg !5522
  %13 = load i32, i32* %speed, align 4, !dbg !5522
  %cmp = icmp eq i32 %13, 3, !dbg !5523
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5524

lor.lhs.false:                                    ; preds = %entry
  %14 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5525
  %speed5 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 4, !dbg !5526
  %15 = load i32, i32* %speed5, align 4, !dbg !5526
  %cmp6 = icmp uge i32 %15, 5, !dbg !5527
  br i1 %cmp6, label %if.then, label %if.else, !dbg !5528

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x207, metadata !5529, metadata !DIExpression()), !dbg !5532
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x205, metadata !5533, metadata !DIExpression()), !dbg !5535
  %16 = load i32, i32* %interval.addr, align 4, !dbg !5535
  store i32 %16, i32* %__UNIQUE_ID___x205, align 4, !dbg !5535
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y206, metadata !5536, metadata !DIExpression()), !dbg !5535
  store i32 1, i32* %__UNIQUE_ID___y206, align 4, !dbg !5535
  %17 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !5535
  %18 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !5535
  %cmp7 = icmp sgt i32 %17, %18, !dbg !5535
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !5535

cond.true:                                        ; preds = %if.then
  %19 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !5535
  br label %cond.end, !dbg !5535

cond.false:                                       ; preds = %if.then
  %20 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !5535
  br label %cond.end, !dbg !5535

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ], !dbg !5535
  store i32 %cond, i32* %tmp, align 4, !dbg !5535
  %21 = load i32, i32* %tmp, align 4, !dbg !5535
  store i32 %21, i32* %__UNIQUE_ID___x207, align 4, !dbg !5532
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y208, metadata !5537, metadata !DIExpression()), !dbg !5532
  store i32 16, i32* %__UNIQUE_ID___y208, align 4, !dbg !5532
  %22 = load i32, i32* %__UNIQUE_ID___x207, align 4, !dbg !5532
  %23 = load i32, i32* %__UNIQUE_ID___y208, align 4, !dbg !5532
  %cmp9 = icmp slt i32 %22, %23, !dbg !5532
  br i1 %cmp9, label %cond.true10, label %cond.false11, !dbg !5532

cond.true10:                                      ; preds = %cond.end
  %24 = load i32, i32* %__UNIQUE_ID___x207, align 4, !dbg !5532
  br label %cond.end12, !dbg !5532

cond.false11:                                     ; preds = %cond.end
  %25 = load i32, i32* %__UNIQUE_ID___y208, align 4, !dbg !5532
  br label %cond.end12, !dbg !5532

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ %24, %cond.true10 ], [ %25, %cond.false11 ], !dbg !5532
  store i32 %cond13, i32* %tmp8, align 4, !dbg !5532
  %26 = load i32, i32* %tmp8, align 4, !dbg !5532
  store i32 %26, i32* %interval.addr, align 4, !dbg !5538
  %27 = load i32, i32* %interval.addr, align 4, !dbg !5539
  %sub = sub i32 %27, 1, !dbg !5540
  %shl = shl i32 1, %sub, !dbg !5541
  %28 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5542
  %interval14 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 25, !dbg !5543
  store i32 %shl, i32* %interval14, align 8, !dbg !5544
  br label %if.end, !dbg !5545

if.else:                                          ; preds = %lor.lhs.false
  %29 = load i32, i32* %interval.addr, align 4, !dbg !5546
  %30 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5548
  %interval15 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 25, !dbg !5549
  store i32 %29, i32* %interval15, align 8, !dbg !5550
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end12
  %31 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5551
  %start_frame = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 23, !dbg !5552
  store i32 -1, i32* %start_frame, align 8, !dbg !5553
  ret void, !dbg !5554
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @streamzap_callback(%struct.urb* %urb) #2 !dbg !5555 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %sz = alloca %struct.streamzap_ir*, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %rawir = alloca %struct.ir_raw_event, align 4
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5556, metadata !DIExpression()), !dbg !5557
  call void @llvm.dbg.declare(metadata %struct.streamzap_ir** %sz, metadata !5558, metadata !DIExpression()), !dbg !5559
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5560, metadata !DIExpression()), !dbg !5561
  call void @llvm.dbg.declare(metadata i32* %len, metadata !5562, metadata !DIExpression()), !dbg !5563
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5564
  %tobool = icmp ne %struct.urb* %0, null, !dbg !5564
  br i1 %tobool, label %if.end, label %if.then, !dbg !5566

if.then:                                          ; preds = %entry
  br label %return, !dbg !5567

if.end:                                           ; preds = %entry
  %1 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5568
  %context = getelementptr inbounds %struct.urb, %struct.urb* %1, i32 0, i32 27, !dbg !5569
  %2 = load i8*, i8** %context, align 8, !dbg !5569
  %3 = bitcast i8* %2 to %struct.streamzap_ir*, !dbg !5568
  store %struct.streamzap_ir* %3, %struct.streamzap_ir** %sz, align 8, !dbg !5570
  %4 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5571
  %actual_length = getelementptr inbounds %struct.urb, %struct.urb* %4, i32 0, i32 20, !dbg !5572
  %5 = load i32, i32* %actual_length, align 4, !dbg !5572
  store i32 %5, i32* %len, align 4, !dbg !5573
  %6 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5574
  %status = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 12, !dbg !5575
  %7 = load i32, i32* %status, align 8, !dbg !5575
  switch i32 %7, label %sw.default [
    i32 -104, label %sw.bb
    i32 -2, label %sw.bb
    i32 -108, label %sw.bb
  ], !dbg !5576

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  %8 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5577
  %dev = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %8, i32 0, i32 1, !dbg !5577
  %9 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5577
  %10 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5577
  %status1 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 12, !dbg !5577
  %11 = load i32, i32* %status1, align 8, !dbg !5577
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i32 %11) #10, !dbg !5577
  br label %return, !dbg !5579

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !5580

sw.epilog:                                        ; preds = %sw.default
  store i32 0, i32* %i, align 4, !dbg !5581
  br label %for.cond, !dbg !5583

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %12 = load i32, i32* %i, align 4, !dbg !5584
  %13 = load i32, i32* %len, align 4, !dbg !5586
  %cmp = icmp ult i32 %12, %13, !dbg !5587
  br i1 %cmp, label %for.body, label %for.end, !dbg !5588

for.body:                                         ; preds = %for.cond
  %14 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5589
  %decoder_state = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %14, i32 0, i32 9, !dbg !5591
  %15 = load i32, i32* %decoder_state, align 4, !dbg !5591
  switch i32 %15, label %sw.epilog76 [
    i32 0, label %sw.bb2
    i32 1, label %sw.bb29
    i32 2, label %sw.bb34
    i32 3, label %sw.bb60
  ], !dbg !5592

sw.bb2:                                           ; preds = %for.body
  %16 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5593
  %buf_in = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %16, i32 0, i32 6, !dbg !5596
  %17 = load i8*, i8** %buf_in, align 8, !dbg !5596
  %18 = load i32, i32* %i, align 4, !dbg !5597
  %idxprom = zext i32 %18 to i64, !dbg !5593
  %arrayidx = getelementptr i8, i8* %17, i64 %idxprom, !dbg !5593
  %19 = load i8, i8* %arrayidx, align 1, !dbg !5593
  %conv = zext i8 %19 to i32, !dbg !5593
  %and = and i32 %conv, 240, !dbg !5598
  %cmp3 = icmp eq i32 %and, 240, !dbg !5599
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !5600

if.then5:                                         ; preds = %sw.bb2
  %20 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5601
  %decoder_state6 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %20, i32 0, i32 9, !dbg !5603
  store i32 1, i32* %decoder_state6, align 4, !dbg !5604
  br label %for.inc, !dbg !5605

if.else:                                          ; preds = %sw.bb2
  %21 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5606
  %buf_in7 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %21, i32 0, i32 6, !dbg !5608
  %22 = load i8*, i8** %buf_in7, align 8, !dbg !5608
  %23 = load i32, i32* %i, align 4, !dbg !5609
  %idxprom8 = zext i32 %23 to i64, !dbg !5606
  %arrayidx9 = getelementptr i8, i8* %22, i64 %idxprom8, !dbg !5606
  %24 = load i8, i8* %arrayidx9, align 1, !dbg !5606
  %conv10 = zext i8 %24 to i32, !dbg !5606
  %and11 = and i32 %conv10, 15, !dbg !5610
  %cmp12 = icmp eq i32 %and11, 15, !dbg !5611
  br i1 %cmp12, label %if.then14, label %if.else19, !dbg !5612

if.then14:                                        ; preds = %if.else
  %25 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5613
  %26 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5615
  %buf_in15 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %26, i32 0, i32 6, !dbg !5616
  %27 = load i8*, i8** %buf_in15, align 8, !dbg !5616
  %28 = load i32, i32* %i, align 4, !dbg !5617
  %idxprom16 = zext i32 %28 to i64, !dbg !5615
  %arrayidx17 = getelementptr i8, i8* %27, i64 %idxprom16, !dbg !5615
  %29 = load i8, i8* %arrayidx17, align 1, !dbg !5615
  call void @sz_push_half_pulse(%struct.streamzap_ir* %25, i8 zeroext %29) #9, !dbg !5618
  %30 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5619
  %decoder_state18 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %30, i32 0, i32 9, !dbg !5620
  store i32 2, i32* %decoder_state18, align 4, !dbg !5621
  br label %for.inc, !dbg !5622

if.else19:                                        ; preds = %if.else
  %31 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5623
  %32 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5625
  %buf_in20 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %32, i32 0, i32 6, !dbg !5626
  %33 = load i8*, i8** %buf_in20, align 8, !dbg !5626
  %34 = load i32, i32* %i, align 4, !dbg !5627
  %idxprom21 = zext i32 %34 to i64, !dbg !5625
  %arrayidx22 = getelementptr i8, i8* %33, i64 %idxprom21, !dbg !5625
  %35 = load i8, i8* %arrayidx22, align 1, !dbg !5625
  call void @sz_push_half_pulse(%struct.streamzap_ir* %31, i8 zeroext %35) #9, !dbg !5628
  %36 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5629
  %37 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5630
  %buf_in23 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %37, i32 0, i32 6, !dbg !5631
  %38 = load i8*, i8** %buf_in23, align 8, !dbg !5631
  %39 = load i32, i32* %i, align 4, !dbg !5632
  %idxprom24 = zext i32 %39 to i64, !dbg !5630
  %arrayidx25 = getelementptr i8, i8* %38, i64 %idxprom24, !dbg !5630
  %40 = load i8, i8* %arrayidx25, align 1, !dbg !5630
  %conv26 = zext i8 %40 to i64, !dbg !5630
  call void @sz_push_half_space(%struct.streamzap_ir* %36, i64 %conv26) #9, !dbg !5633
  br label %if.end27

if.end27:                                         ; preds = %if.else19
  br label %if.end28

if.end28:                                         ; preds = %if.end27
  br label %sw.epilog76, !dbg !5634

sw.bb29:                                          ; preds = %for.body
  %41 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5635
  %42 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5636
  %buf_in30 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %42, i32 0, i32 6, !dbg !5637
  %43 = load i8*, i8** %buf_in30, align 8, !dbg !5637
  %44 = load i32, i32* %i, align 4, !dbg !5638
  %idxprom31 = zext i32 %44 to i64, !dbg !5636
  %arrayidx32 = getelementptr i8, i8* %43, i64 %idxprom31, !dbg !5636
  %45 = load i8, i8* %arrayidx32, align 1, !dbg !5636
  call void @sz_push_full_pulse(%struct.streamzap_ir* %41, i8 zeroext %45) #9, !dbg !5639
  %46 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5640
  %decoder_state33 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %46, i32 0, i32 9, !dbg !5641
  store i32 3, i32* %decoder_state33, align 4, !dbg !5642
  br label %sw.epilog76, !dbg !5643

sw.bb34:                                          ; preds = %for.body
  %47 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5644
  %buf_in35 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %47, i32 0, i32 6, !dbg !5646
  %48 = load i8*, i8** %buf_in35, align 8, !dbg !5646
  %49 = load i32, i32* %i, align 4, !dbg !5647
  %idxprom36 = zext i32 %49 to i64, !dbg !5644
  %arrayidx37 = getelementptr i8, i8* %48, i64 %idxprom36, !dbg !5644
  %50 = load i8, i8* %arrayidx37, align 1, !dbg !5644
  %conv38 = zext i8 %50 to i32, !dbg !5644
  %cmp39 = icmp eq i32 %conv38, 255, !dbg !5648
  br i1 %cmp39, label %if.then41, label %if.else54, !dbg !5649

if.then41:                                        ; preds = %sw.bb34
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event* %rawir, metadata !5650, metadata !DIExpression()), !dbg !5664
  %51 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 0, !dbg !5665
  %duration = bitcast %union.anon.66* %51 to i32*, !dbg !5666
  %52 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5667
  %rdev = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %52, i32 0, i32 0, !dbg !5668
  %53 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !5668
  %timeout = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %53, i32 0, i32 34, !dbg !5669
  %54 = load i32, i32* %timeout, align 4, !dbg !5669
  store i32 %54, i32* %duration, align 4, !dbg !5666
  %duty_cycle = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 1, !dbg !5665
  store i8 0, i8* %duty_cycle, align 4, !dbg !5665
  %pulse = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 2, !dbg !5665
  %bf.load = load i8, i8* %pulse, align 1, !dbg !5665
  %bf.clear = and i8 %bf.load, -2, !dbg !5665
  store i8 %bf.clear, i8* %pulse, align 1, !dbg !5665
  %reset = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 2, !dbg !5665
  %bf.load42 = load i8, i8* %reset, align 1, !dbg !5665
  %bf.clear43 = and i8 %bf.load42, -3, !dbg !5665
  store i8 %bf.clear43, i8* %reset, align 1, !dbg !5665
  %timeout44 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 2, !dbg !5665
  %bf.load45 = load i8, i8* %timeout44, align 1, !dbg !5665
  %bf.clear46 = and i8 %bf.load45, -5, !dbg !5665
  store i8 %bf.clear46, i8* %timeout44, align 1, !dbg !5665
  %carrier_report = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 2, !dbg !5665
  %bf.load47 = load i8, i8* %carrier_report, align 1, !dbg !5665
  %bf.clear48 = and i8 %bf.load47, -9, !dbg !5665
  store i8 %bf.clear48, i8* %carrier_report, align 1, !dbg !5665
  %55 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5670
  %idle = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %55, i32 0, i32 10, !dbg !5671
  store i8 1, i8* %idle, align 8, !dbg !5672
  %56 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5673
  %timeout_enabled = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %56, i32 0, i32 14, !dbg !5675
  %57 = load i8, i8* %timeout_enabled, align 8, !dbg !5675
  %tobool49 = trunc i8 %57 to i1, !dbg !5675
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !5676

if.then50:                                        ; preds = %if.then41
  %58 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5677
  %59 = bitcast %struct.ir_raw_event* %rawir to i64*, !dbg !5678
  %60 = load i64, i64* %59, align 4, !dbg !5678
  call void @sz_push(%struct.streamzap_ir* %58, i64 %60) #9, !dbg !5678
  br label %if.end51, !dbg !5678

if.end51:                                         ; preds = %if.then50, %if.then41
  %61 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5679
  %rdev52 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %61, i32 0, i32 0, !dbg !5680
  %62 = load %struct.rc_dev*, %struct.rc_dev** %rdev52, align 8, !dbg !5680
  call void @ir_raw_event_handle(%struct.rc_dev* %62) #9, !dbg !5681
  %63 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5682
  %rdev53 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %63, i32 0, i32 0, !dbg !5683
  %64 = load %struct.rc_dev*, %struct.rc_dev** %rdev53, align 8, !dbg !5683
  call void @ir_raw_event_reset(%struct.rc_dev* %64) #9, !dbg !5684
  br label %if.end58, !dbg !5685

if.else54:                                        ; preds = %sw.bb34
  %65 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5686
  %66 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5688
  %buf_in55 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %66, i32 0, i32 6, !dbg !5689
  %67 = load i8*, i8** %buf_in55, align 8, !dbg !5689
  %68 = load i32, i32* %i, align 4, !dbg !5690
  %idxprom56 = zext i32 %68 to i64, !dbg !5688
  %arrayidx57 = getelementptr i8, i8* %67, i64 %idxprom56, !dbg !5688
  %69 = load i8, i8* %arrayidx57, align 1, !dbg !5688
  call void @sz_push_full_space(%struct.streamzap_ir* %65, i8 zeroext %69) #9, !dbg !5691
  br label %if.end58

if.end58:                                         ; preds = %if.else54, %if.end51
  %70 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5692
  %decoder_state59 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %70, i32 0, i32 9, !dbg !5693
  store i32 0, i32* %decoder_state59, align 4, !dbg !5694
  br label %sw.epilog76, !dbg !5695

sw.bb60:                                          ; preds = %for.body
  %71 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5696
  %buf_in61 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %71, i32 0, i32 6, !dbg !5698
  %72 = load i8*, i8** %buf_in61, align 8, !dbg !5698
  %73 = load i32, i32* %i, align 4, !dbg !5699
  %idxprom62 = zext i32 %73 to i64, !dbg !5696
  %arrayidx63 = getelementptr i8, i8* %72, i64 %idxprom62, !dbg !5696
  %74 = load i8, i8* %arrayidx63, align 1, !dbg !5696
  %conv64 = zext i8 %74 to i32, !dbg !5696
  %and65 = and i32 %conv64, 15, !dbg !5700
  %cmp66 = icmp eq i32 %and65, 15, !dbg !5701
  br i1 %cmp66, label %if.then68, label %if.end70, !dbg !5702

if.then68:                                        ; preds = %sw.bb60
  %75 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5703
  %decoder_state69 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %75, i32 0, i32 9, !dbg !5705
  store i32 2, i32* %decoder_state69, align 4, !dbg !5706
  br label %for.inc, !dbg !5707

if.end70:                                         ; preds = %sw.bb60
  %76 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5708
  %77 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5709
  %buf_in71 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %77, i32 0, i32 6, !dbg !5710
  %78 = load i8*, i8** %buf_in71, align 8, !dbg !5710
  %79 = load i32, i32* %i, align 4, !dbg !5711
  %idxprom72 = zext i32 %79 to i64, !dbg !5709
  %arrayidx73 = getelementptr i8, i8* %78, i64 %idxprom72, !dbg !5709
  %80 = load i8, i8* %arrayidx73, align 1, !dbg !5709
  %conv74 = zext i8 %80 to i64, !dbg !5709
  call void @sz_push_half_space(%struct.streamzap_ir* %76, i64 %conv74) #9, !dbg !5712
  %81 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5713
  %decoder_state75 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %81, i32 0, i32 9, !dbg !5714
  store i32 0, i32* %decoder_state75, align 4, !dbg !5715
  br label %sw.epilog76, !dbg !5716

sw.epilog76:                                      ; preds = %for.body, %if.end70, %if.end58, %sw.bb29, %if.end28
  br label %for.inc, !dbg !5717

for.inc:                                          ; preds = %sw.epilog76, %if.then68, %if.then14, %if.then5
  %82 = load i32, i32* %i, align 4, !dbg !5718
  %inc = add i32 %82, 1, !dbg !5718
  store i32 %inc, i32* %i, align 4, !dbg !5718
  br label %for.cond, !dbg !5719, !llvm.loop !5720

for.end:                                          ; preds = %for.cond
  %83 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz, align 8, !dbg !5722
  %rdev77 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %83, i32 0, i32 0, !dbg !5723
  %84 = load %struct.rc_dev*, %struct.rc_dev** %rdev77, align 8, !dbg !5723
  call void @ir_raw_event_handle(%struct.rc_dev* %84) #9, !dbg !5724
  %85 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5725
  %call = call i32 @usb_submit_urb(%struct.urb* %85, i32 2592) #9, !dbg !5726
  br label %return, !dbg !5727

return:                                           ; preds = %for.end, %sw.bb, %if.then
  ret void, !dbg !5728
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_set_intfdata(%struct.usb_interface* %intf, i8* %data) #2 !dbg !5729 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5732, metadata !DIExpression()), !dbg !5733
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5734, metadata !DIExpression()), !dbg !5735
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5736
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5737
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5738
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #9, !dbg !5739
  ret void, !dbg !5740
}

; Function Attrs: noredzone
declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #5

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @usb_free_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local void @usb_free_coherent(%struct.usb_device*, i64, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !5741 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5745, metadata !DIExpression()), !dbg !5750
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5752, metadata !DIExpression()), !dbg !5753
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5754, metadata !DIExpression()), !dbg !5755
  %0 = load i64, i64* %size.addr, align 8, !dbg !5756
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5758
  br i1 %1, label %if.then, label %if.end447, !dbg !5759

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5760
  %tobool = icmp ne i64 %2, 0, !dbg !5760
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5763

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5764
  br label %return, !dbg !5764

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5765
  %cmp = icmp ult i64 %3, 4096, !dbg !5767
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5768

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5769
  br label %return, !dbg !5769

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub = sub i64 %4, 1, !dbg !5770
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5770
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5770

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub4 = sub i64 %6, 1, !dbg !5770
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5770
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5770

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub6 = sub i64 %8, 1, !dbg !5770
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5770
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5770

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5770

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub9 = sub i64 %9, 1, !dbg !5770
  %and = and i64 %sub9, -9223372036854775808, !dbg !5770
  %tobool10 = icmp ne i64 %and, 0, !dbg !5770
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5770

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5770

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub13 = sub i64 %10, 1, !dbg !5770
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5770
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5770
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5770

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5770

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub18 = sub i64 %11, 1, !dbg !5770
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5770
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5770
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5770

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5770

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub23 = sub i64 %12, 1, !dbg !5770
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5770
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5770
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5770

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5770

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub28 = sub i64 %13, 1, !dbg !5770
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5770
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5770
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5770

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5770

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub33 = sub i64 %14, 1, !dbg !5770
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5770
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5770
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5770

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5770

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub38 = sub i64 %15, 1, !dbg !5770
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5770
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5770
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5770

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5770

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub43 = sub i64 %16, 1, !dbg !5770
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5770
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5770
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5770

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5770

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub48 = sub i64 %17, 1, !dbg !5770
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5770
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5770
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5770

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5770

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub53 = sub i64 %18, 1, !dbg !5770
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5770
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5770
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5770

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5770

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub58 = sub i64 %19, 1, !dbg !5770
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5770
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5770
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5770

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5770

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub63 = sub i64 %20, 1, !dbg !5770
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5770
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5770
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5770

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5770

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub68 = sub i64 %21, 1, !dbg !5770
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5770
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5770
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5770

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5770

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub73 = sub i64 %22, 1, !dbg !5770
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5770
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5770
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5770

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5770

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub78 = sub i64 %23, 1, !dbg !5770
  %and79 = and i64 %sub78, 562949953421312, !dbg !5770
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5770
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5770

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5770

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub83 = sub i64 %24, 1, !dbg !5770
  %and84 = and i64 %sub83, 281474976710656, !dbg !5770
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5770
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5770

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5770

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub88 = sub i64 %25, 1, !dbg !5770
  %and89 = and i64 %sub88, 140737488355328, !dbg !5770
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5770
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5770

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5770

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub93 = sub i64 %26, 1, !dbg !5770
  %and94 = and i64 %sub93, 70368744177664, !dbg !5770
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5770
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5770

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5770

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub98 = sub i64 %27, 1, !dbg !5770
  %and99 = and i64 %sub98, 35184372088832, !dbg !5770
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5770
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5770

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5770

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub103 = sub i64 %28, 1, !dbg !5770
  %and104 = and i64 %sub103, 17592186044416, !dbg !5770
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5770
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5770

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5770

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub108 = sub i64 %29, 1, !dbg !5770
  %and109 = and i64 %sub108, 8796093022208, !dbg !5770
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5770
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5770

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5770

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub113 = sub i64 %30, 1, !dbg !5770
  %and114 = and i64 %sub113, 4398046511104, !dbg !5770
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5770
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5770

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5770

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub118 = sub i64 %31, 1, !dbg !5770
  %and119 = and i64 %sub118, 2199023255552, !dbg !5770
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5770
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5770

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5770

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub123 = sub i64 %32, 1, !dbg !5770
  %and124 = and i64 %sub123, 1099511627776, !dbg !5770
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5770
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5770

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5770

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub128 = sub i64 %33, 1, !dbg !5770
  %and129 = and i64 %sub128, 549755813888, !dbg !5770
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5770
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5770

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5770

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub133 = sub i64 %34, 1, !dbg !5770
  %and134 = and i64 %sub133, 274877906944, !dbg !5770
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5770
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5770

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5770

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub138 = sub i64 %35, 1, !dbg !5770
  %and139 = and i64 %sub138, 137438953472, !dbg !5770
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5770
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5770

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5770

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub143 = sub i64 %36, 1, !dbg !5770
  %and144 = and i64 %sub143, 68719476736, !dbg !5770
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5770
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5770

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5770

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub148 = sub i64 %37, 1, !dbg !5770
  %and149 = and i64 %sub148, 34359738368, !dbg !5770
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5770
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5770

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5770

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub153 = sub i64 %38, 1, !dbg !5770
  %and154 = and i64 %sub153, 17179869184, !dbg !5770
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5770
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5770

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5770

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub158 = sub i64 %39, 1, !dbg !5770
  %and159 = and i64 %sub158, 8589934592, !dbg !5770
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5770
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5770

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5770

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub163 = sub i64 %40, 1, !dbg !5770
  %and164 = and i64 %sub163, 4294967296, !dbg !5770
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5770
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5770

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5770

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub168 = sub i64 %41, 1, !dbg !5770
  %and169 = and i64 %sub168, 2147483648, !dbg !5770
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5770
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5770

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5770

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub173 = sub i64 %42, 1, !dbg !5770
  %and174 = and i64 %sub173, 1073741824, !dbg !5770
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5770
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5770

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5770

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub178 = sub i64 %43, 1, !dbg !5770
  %and179 = and i64 %sub178, 536870912, !dbg !5770
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5770
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5770

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5770

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub183 = sub i64 %44, 1, !dbg !5770
  %and184 = and i64 %sub183, 268435456, !dbg !5770
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5770
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5770

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5770

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub188 = sub i64 %45, 1, !dbg !5770
  %and189 = and i64 %sub188, 134217728, !dbg !5770
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5770
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5770

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5770

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub193 = sub i64 %46, 1, !dbg !5770
  %and194 = and i64 %sub193, 67108864, !dbg !5770
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5770
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5770

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5770

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub198 = sub i64 %47, 1, !dbg !5770
  %and199 = and i64 %sub198, 33554432, !dbg !5770
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5770
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5770

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5770

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub203 = sub i64 %48, 1, !dbg !5770
  %and204 = and i64 %sub203, 16777216, !dbg !5770
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5770
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5770

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5770

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub208 = sub i64 %49, 1, !dbg !5770
  %and209 = and i64 %sub208, 8388608, !dbg !5770
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5770
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5770

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5770

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub213 = sub i64 %50, 1, !dbg !5770
  %and214 = and i64 %sub213, 4194304, !dbg !5770
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5770
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5770

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5770

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub218 = sub i64 %51, 1, !dbg !5770
  %and219 = and i64 %sub218, 2097152, !dbg !5770
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5770
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5770

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5770

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub223 = sub i64 %52, 1, !dbg !5770
  %and224 = and i64 %sub223, 1048576, !dbg !5770
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5770
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5770

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5770

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub228 = sub i64 %53, 1, !dbg !5770
  %and229 = and i64 %sub228, 524288, !dbg !5770
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5770
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5770

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5770

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub233 = sub i64 %54, 1, !dbg !5770
  %and234 = and i64 %sub233, 262144, !dbg !5770
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5770
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5770

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5770

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub238 = sub i64 %55, 1, !dbg !5770
  %and239 = and i64 %sub238, 131072, !dbg !5770
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5770
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5770

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5770

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub243 = sub i64 %56, 1, !dbg !5770
  %and244 = and i64 %sub243, 65536, !dbg !5770
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5770
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5770

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5770

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub248 = sub i64 %57, 1, !dbg !5770
  %and249 = and i64 %sub248, 32768, !dbg !5770
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5770
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5770

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5770

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub253 = sub i64 %58, 1, !dbg !5770
  %and254 = and i64 %sub253, 16384, !dbg !5770
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5770
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5770

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5770

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub258 = sub i64 %59, 1, !dbg !5770
  %and259 = and i64 %sub258, 8192, !dbg !5770
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5770
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5770

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5770

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub263 = sub i64 %60, 1, !dbg !5770
  %and264 = and i64 %sub263, 4096, !dbg !5770
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5770
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5770

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5770

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub268 = sub i64 %61, 1, !dbg !5770
  %and269 = and i64 %sub268, 2048, !dbg !5770
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5770
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5770

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5770

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub273 = sub i64 %62, 1, !dbg !5770
  %and274 = and i64 %sub273, 1024, !dbg !5770
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5770
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5770

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5770

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub278 = sub i64 %63, 1, !dbg !5770
  %and279 = and i64 %sub278, 512, !dbg !5770
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5770
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5770

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5770

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub283 = sub i64 %64, 1, !dbg !5770
  %and284 = and i64 %sub283, 256, !dbg !5770
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5770
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5770

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5770

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub288 = sub i64 %65, 1, !dbg !5770
  %and289 = and i64 %sub288, 128, !dbg !5770
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5770
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5770

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5770

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub293 = sub i64 %66, 1, !dbg !5770
  %and294 = and i64 %sub293, 64, !dbg !5770
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5770
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5770

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5770

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub298 = sub i64 %67, 1, !dbg !5770
  %and299 = and i64 %sub298, 32, !dbg !5770
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5770
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5770

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5770

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub303 = sub i64 %68, 1, !dbg !5770
  %and304 = and i64 %sub303, 16, !dbg !5770
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5770
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5770

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5770

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub308 = sub i64 %69, 1, !dbg !5770
  %and309 = and i64 %sub308, 8, !dbg !5770
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5770
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5770

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5770

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub313 = sub i64 %70, 1, !dbg !5770
  %and314 = and i64 %sub313, 4, !dbg !5770
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5770
  %71 = zext i1 %tobool315 to i64, !dbg !5770
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5770
  br label %cond.end, !dbg !5770

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5770
  br label %cond.end317, !dbg !5770

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5770
  br label %cond.end319, !dbg !5770

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5770
  br label %cond.end321, !dbg !5770

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5770
  br label %cond.end323, !dbg !5770

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5770
  br label %cond.end325, !dbg !5770

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5770
  br label %cond.end327, !dbg !5770

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5770
  br label %cond.end329, !dbg !5770

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5770
  br label %cond.end331, !dbg !5770

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5770
  br label %cond.end333, !dbg !5770

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5770
  br label %cond.end335, !dbg !5770

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5770
  br label %cond.end337, !dbg !5770

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5770
  br label %cond.end339, !dbg !5770

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5770
  br label %cond.end341, !dbg !5770

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5770
  br label %cond.end343, !dbg !5770

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5770
  br label %cond.end345, !dbg !5770

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5770
  br label %cond.end347, !dbg !5770

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5770
  br label %cond.end349, !dbg !5770

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5770
  br label %cond.end351, !dbg !5770

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5770
  br label %cond.end353, !dbg !5770

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5770
  br label %cond.end355, !dbg !5770

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5770
  br label %cond.end357, !dbg !5770

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5770
  br label %cond.end359, !dbg !5770

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5770
  br label %cond.end361, !dbg !5770

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5770
  br label %cond.end363, !dbg !5770

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5770
  br label %cond.end365, !dbg !5770

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5770
  br label %cond.end367, !dbg !5770

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5770
  br label %cond.end369, !dbg !5770

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5770
  br label %cond.end371, !dbg !5770

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5770
  br label %cond.end373, !dbg !5770

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5770
  br label %cond.end375, !dbg !5770

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5770
  br label %cond.end377, !dbg !5770

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5770
  br label %cond.end379, !dbg !5770

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5770
  br label %cond.end381, !dbg !5770

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5770
  br label %cond.end383, !dbg !5770

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5770
  br label %cond.end385, !dbg !5770

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5770
  br label %cond.end387, !dbg !5770

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5770
  br label %cond.end389, !dbg !5770

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5770
  br label %cond.end391, !dbg !5770

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5770
  br label %cond.end393, !dbg !5770

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5770
  br label %cond.end395, !dbg !5770

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5770
  br label %cond.end397, !dbg !5770

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5770
  br label %cond.end399, !dbg !5770

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5770
  br label %cond.end401, !dbg !5770

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5770
  br label %cond.end403, !dbg !5770

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5770
  br label %cond.end405, !dbg !5770

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5770
  br label %cond.end407, !dbg !5770

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5770
  br label %cond.end409, !dbg !5770

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5770
  br label %cond.end411, !dbg !5770

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5770
  br label %cond.end413, !dbg !5770

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5770
  br label %cond.end415, !dbg !5770

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5770
  br label %cond.end417, !dbg !5770

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5770
  br label %cond.end419, !dbg !5770

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5770
  br label %cond.end421, !dbg !5770

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5770
  br label %cond.end423, !dbg !5770

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5770
  br label %cond.end425, !dbg !5770

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5770
  br label %cond.end427, !dbg !5770

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5770
  br label %cond.end429, !dbg !5770

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5770
  br label %cond.end431, !dbg !5770

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5770
  br label %cond.end433, !dbg !5770

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5770
  br label %cond.end435, !dbg !5770

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5770
  br label %cond.end437, !dbg !5770

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5770
  br label %cond.end440, !dbg !5770

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5770

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5770
  br label %cond.end444, !dbg !5770

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5770
  %sub443 = sub i64 %72, 1, !dbg !5770
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !5770
  br label %cond.end444, !dbg !5770

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5770
  %sub446 = sub i32 %cond445, 12, !dbg !5771
  %add = add i32 %sub446, 1, !dbg !5772
  store i32 %add, i32* %retval, align 4, !dbg !5773
  br label %return, !dbg !5773

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5774
  %dec = add i64 %73, -1, !dbg !5774
  store i64 %dec, i64* %size.addr, align 8, !dbg !5774
  %74 = load i64, i64* %size.addr, align 8, !dbg !5775
  %shr = lshr i64 %74, 12, !dbg !5775
  store i64 %shr, i64* %size.addr, align 8, !dbg !5775
  %75 = load i64, i64* %size.addr, align 8, !dbg !5776
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5753
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5777
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5778
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !5777, !srcloc !5779
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5777
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5780
  %add.i = add i32 %79, 1, !dbg !5781
  store i32 %add.i, i32* %retval, align 4, !dbg !5782
  br label %return, !dbg !5782

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5783
  ret i32 %80, !dbg !5783
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !5784 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5745, metadata !DIExpression()), !dbg !5788
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5752, metadata !DIExpression()), !dbg !5790
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5791, metadata !DIExpression()), !dbg !5792
  %0 = load i64, i64* %n.addr, align 8, !dbg !5793
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5790
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5794
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5795
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !5794, !srcloc !5779
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5794
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5796
  %add.i = add i32 %4, 1, !dbg !5797
  %sub = sub i32 %add.i, 1, !dbg !5798
  ret i32 %sub, !dbg !5799
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !5800 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5804, metadata !DIExpression()), !dbg !5805
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5806, metadata !DIExpression()), !dbg !5807
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5808, metadata !DIExpression()), !dbg !5809
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5810, metadata !DIExpression()), !dbg !5811
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5812
  ret i8* %0, !dbg !5813
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5814 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5815, metadata !DIExpression()), !dbg !5816
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5817
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 4, !dbg !5817
  %1 = load i16, i16* %wMaxPacketSize, align 1, !dbg !5817
  %conv = zext i16 %1 to i32, !dbg !5817
  %and = and i32 %conv, 2047, !dbg !5818
  ret i32 %and, !dbg !5819
}

; Function Attrs: noredzone
declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_make_path(%struct.usb_device* %dev, i8* %buf, i64 %size) #2 !dbg !5820 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %actual = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5823, metadata !DIExpression()), !dbg !5824
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5825, metadata !DIExpression()), !dbg !5826
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5827, metadata !DIExpression()), !dbg !5828
  call void @llvm.dbg.declare(metadata i32* %actual, metadata !5829, metadata !DIExpression()), !dbg !5830
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !5831
  %1 = load i64, i64* %size.addr, align 8, !dbg !5832
  %2 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5833
  %bus = getelementptr inbounds %struct.usb_device, %struct.usb_device* %2, i32 0, i32 12, !dbg !5834
  %3 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !5834
  %bus_name = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %3, i32 0, i32 3, !dbg !5835
  %4 = load i8*, i8** %bus_name, align 8, !dbg !5835
  %5 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5836
  %devpath = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 1, !dbg !5837
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %devpath, i64 0, i64 0, !dbg !5836
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* %4, i8* %arraydecay) #9, !dbg !5838
  store i32 %call, i32* %actual, align 4, !dbg !5839
  %6 = load i32, i32* %actual, align 4, !dbg !5840
  %7 = load i64, i64* %size.addr, align 8, !dbg !5841
  %conv = trunc i64 %7 to i32, !dbg !5842
  %cmp = icmp sge i32 %6, %conv, !dbg !5843
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5844

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !5844

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %actual, align 4, !dbg !5845
  br label %cond.end, !dbg !5844

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %8, %cond.false ], !dbg !5844
  ret i32 %cond, !dbg !5846
}

; Function Attrs: noredzone
declare dso_local i64 @strlcat(i8*, i8*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_to_input_id(%struct.usb_device* %dev, %struct.input_id* %id) #2 !dbg !5847 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %id.addr = alloca %struct.input_id*, align 8
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5854, metadata !DIExpression()), !dbg !5855
  store %struct.input_id* %id, %struct.input_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_id** %id.addr, metadata !5856, metadata !DIExpression()), !dbg !5857
  %0 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5858
  %bustype = getelementptr inbounds %struct.input_id, %struct.input_id* %0, i32 0, i32 0, !dbg !5859
  store i16 3, i16* %bustype, align 2, !dbg !5860
  %1 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5861
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %1, i32 0, i32 15, !dbg !5861
  %idVendor = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 7, !dbg !5861
  %2 = load i16, i16* %idVendor, align 8, !dbg !5861
  %3 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5862
  %vendor = getelementptr inbounds %struct.input_id, %struct.input_id* %3, i32 0, i32 1, !dbg !5863
  store i16 %2, i16* %vendor, align 2, !dbg !5864
  %4 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5865
  %descriptor1 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %4, i32 0, i32 15, !dbg !5865
  %idProduct = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor1, i32 0, i32 8, !dbg !5865
  %5 = load i16, i16* %idProduct, align 2, !dbg !5865
  %6 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5866
  %product = getelementptr inbounds %struct.input_id, %struct.input_id* %6, i32 0, i32 2, !dbg !5867
  store i16 %5, i16* %product, align 2, !dbg !5868
  %7 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5869
  %descriptor2 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 15, !dbg !5869
  %bcdDevice = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor2, i32 0, i32 9, !dbg !5869
  %8 = load i16, i16* %bcdDevice, align 4, !dbg !5869
  %9 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5870
  %version = getelementptr inbounds %struct.input_id, %struct.input_id* %9, i32 0, i32 3, !dbg !5871
  store i16 %8, i16* %version, align 2, !dbg !5872
  ret void, !dbg !5873
}

; Function Attrs: noredzone
declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

; Function Attrs: noredzone
declare dso_local void @rc_free_device(%struct.rc_dev*) #1

; Function Attrs: noredzone
declare dso_local i64 @ktime_get_with_offset(i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sz_push_half_pulse(%struct.streamzap_ir* %sz, i8 zeroext %value) #2 !dbg !5874 {
entry:
  %sz.addr = alloca %struct.streamzap_ir*, align 8
  %value.addr = alloca i8, align 1
  store %struct.streamzap_ir* %sz, %struct.streamzap_ir** %sz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.streamzap_ir** %sz.addr, metadata !5877, metadata !DIExpression()), !dbg !5878
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !5879, metadata !DIExpression()), !dbg !5880
  %0 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !5881
  %1 = load i8, i8* %value.addr, align 1, !dbg !5882
  %conv = zext i8 %1 to i32, !dbg !5882
  %and = and i32 %conv, 240, !dbg !5883
  %shr = ashr i32 %and, 4, !dbg !5884
  %conv1 = trunc i32 %shr to i8, !dbg !5885
  call void @sz_push_full_pulse(%struct.streamzap_ir* %0, i8 zeroext %conv1) #9, !dbg !5886
  ret void, !dbg !5887
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sz_push_half_space(%struct.streamzap_ir* %sz, i64 %value) #2 !dbg !5888 {
entry:
  %sz.addr = alloca %struct.streamzap_ir*, align 8
  %value.addr = alloca i64, align 8
  store %struct.streamzap_ir* %sz, %struct.streamzap_ir** %sz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.streamzap_ir** %sz.addr, metadata !5891, metadata !DIExpression()), !dbg !5892
  store i64 %value, i64* %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %value.addr, metadata !5893, metadata !DIExpression()), !dbg !5894
  %0 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !5895
  %1 = load i64, i64* %value.addr, align 8, !dbg !5896
  %and = and i64 %1, 15, !dbg !5897
  %conv = trunc i64 %and to i8, !dbg !5896
  call void @sz_push_full_space(%struct.streamzap_ir* %0, i8 zeroext %conv) #9, !dbg !5898
  ret void, !dbg !5899
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sz_push_full_pulse(%struct.streamzap_ir* %sz, i8 zeroext %value) #2 !dbg !5900 {
entry:
  %sz.addr = alloca %struct.streamzap_ir*, align 8
  %value.addr = alloca i8, align 1
  %rawir = alloca %struct.ir_raw_event, align 4
  %delta = alloca i32, align 4
  store %struct.streamzap_ir* %sz, %struct.streamzap_ir** %sz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.streamzap_ir** %sz.addr, metadata !5901, metadata !DIExpression()), !dbg !5902
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !5903, metadata !DIExpression()), !dbg !5904
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event* %rawir, metadata !5905, metadata !DIExpression()), !dbg !5906
  %0 = bitcast %struct.ir_raw_event* %rawir to i8*, !dbg !5906
  call void @llvm.memset.p0i8.i64(i8* align 4 %0, i8 0, i64 8, i1 false), !dbg !5906
  %1 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !5907
  %idle = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %1, i32 0, i32 10, !dbg !5909
  %2 = load i8, i8* %idle, align 8, !dbg !5909
  %tobool = trunc i8 %2 to i1, !dbg !5909
  br i1 %tobool, label %if.then, label %if.end19, !dbg !5910

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %delta, metadata !5911, metadata !DIExpression()), !dbg !5913
  %3 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !5914
  %signal_start = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %3, i32 0, i32 13, !dbg !5915
  %4 = load i64, i64* %signal_start, align 8, !dbg !5915
  %5 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !5916
  %signal_last = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %5, i32 0, i32 12, !dbg !5917
  store i64 %4, i64* %signal_last, align 8, !dbg !5918
  %call = call i64 @ktime_get_real() #9, !dbg !5919
  %6 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !5920
  %signal_start1 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %6, i32 0, i32 13, !dbg !5921
  store i64 %call, i64* %signal_start1, align 8, !dbg !5922
  %7 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !5923
  %signal_start2 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %7, i32 0, i32 13, !dbg !5924
  %8 = load i64, i64* %signal_start2, align 8, !dbg !5924
  %9 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !5925
  %signal_last3 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %9, i32 0, i32 12, !dbg !5926
  %10 = load i64, i64* %signal_last3, align 8, !dbg !5926
  %call4 = call i64 @ktime_us_delta(i64 %8, i64 %10) #9, !dbg !5927
  %conv = trunc i64 %call4 to i32, !dbg !5927
  store i32 %conv, i32* %delta, align 4, !dbg !5928
  %pulse = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 2, !dbg !5929
  %bf.load = load i8, i8* %pulse, align 1, !dbg !5930
  %bf.clear = and i8 %bf.load, -2, !dbg !5930
  store i8 %bf.clear, i8* %pulse, align 1, !dbg !5930
  %11 = load i32, i32* %delta, align 4, !dbg !5931
  %conv5 = sext i32 %11 to i64, !dbg !5931
  %cmp = icmp sgt i64 %conv5, 15000000, !dbg !5933
  br i1 %cmp, label %if.then7, label %if.else, !dbg !5934

if.then7:                                         ; preds = %if.then
  %12 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 0, !dbg !5935
  %duration = bitcast %union.anon.66* %12 to i32*, !dbg !5935
  store i32 500000, i32* %duration, align 4, !dbg !5937
  br label %if.end, !dbg !5938

if.else:                                          ; preds = %if.then
  %13 = load i32, i32* %delta, align 4, !dbg !5939
  %14 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 0, !dbg !5941
  %duration8 = bitcast %union.anon.66* %14 to i32*, !dbg !5941
  store i32 %13, i32* %duration8, align 4, !dbg !5942
  %15 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !5943
  %sum = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %15, i32 0, i32 11, !dbg !5944
  %16 = load i64, i64* %sum, align 8, !dbg !5944
  %17 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 0, !dbg !5945
  %duration9 = bitcast %union.anon.66* %17 to i32*, !dbg !5945
  %18 = load i32, i32* %duration9, align 4, !dbg !5946
  %conv10 = zext i32 %18 to i64, !dbg !5946
  %sub = sub i64 %conv10, %16, !dbg !5946
  %conv11 = trunc i64 %sub to i32, !dbg !5946
  store i32 %conv11, i32* %duration9, align 4, !dbg !5946
  %19 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 0, !dbg !5947
  %duration12 = bitcast %union.anon.66* %19 to i32*, !dbg !5947
  %20 = load i32, i32* %duration12, align 4, !dbg !5947
  %cmp13 = icmp ugt i32 %20, 500000, !dbg !5948
  br i1 %cmp13, label %cond.true, label %cond.false, !dbg !5949

cond.true:                                        ; preds = %if.else
  br label %cond.end, !dbg !5949

cond.false:                                       ; preds = %if.else
  %21 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 0, !dbg !5950
  %duration15 = bitcast %union.anon.66* %21 to i32*, !dbg !5950
  %22 = load i32, i32* %duration15, align 4, !dbg !5950
  br label %cond.end, !dbg !5949

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 500000, %cond.true ], [ %22, %cond.false ], !dbg !5949
  %23 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 0, !dbg !5951
  %duration16 = bitcast %union.anon.66* %23 to i32*, !dbg !5951
  store i32 %cond, i32* %duration16, align 4, !dbg !5952
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then7
  %24 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !5953
  %25 = bitcast %struct.ir_raw_event* %rawir to i64*, !dbg !5954
  %26 = load i64, i64* %25, align 4, !dbg !5954
  call void @sz_push(%struct.streamzap_ir* %24, i64 %26) #9, !dbg !5954
  %27 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !5955
  %idle17 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %27, i32 0, i32 10, !dbg !5956
  store i8 0, i8* %idle17, align 8, !dbg !5957
  %28 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !5958
  %sum18 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %28, i32 0, i32 11, !dbg !5959
  store i64 0, i64* %sum18, align 8, !dbg !5960
  br label %if.end19, !dbg !5961

if.end19:                                         ; preds = %if.end, %entry
  %pulse20 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 2, !dbg !5962
  %bf.load21 = load i8, i8* %pulse20, align 1, !dbg !5963
  %bf.clear22 = and i8 %bf.load21, -2, !dbg !5963
  %bf.set = or i8 %bf.clear22, 1, !dbg !5963
  store i8 %bf.set, i8* %pulse20, align 1, !dbg !5963
  %29 = load i8, i8* %value.addr, align 1, !dbg !5964
  %conv23 = zext i8 %29 to i32, !dbg !5965
  %mul = mul i32 %conv23, 256, !dbg !5966
  %30 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 0, !dbg !5967
  %duration24 = bitcast %union.anon.66* %30 to i32*, !dbg !5967
  store i32 %mul, i32* %duration24, align 4, !dbg !5968
  %31 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 0, !dbg !5969
  %duration25 = bitcast %union.anon.66* %31 to i32*, !dbg !5969
  %32 = load i32, i32* %duration25, align 4, !dbg !5970
  %add = add i32 %32, 128, !dbg !5970
  store i32 %add, i32* %duration25, align 4, !dbg !5970
  %33 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 0, !dbg !5971
  %duration26 = bitcast %union.anon.66* %33 to i32*, !dbg !5971
  %34 = load i32, i32* %duration26, align 4, !dbg !5971
  %conv27 = zext i32 %34 to i64, !dbg !5972
  %35 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !5973
  %sum28 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %35, i32 0, i32 11, !dbg !5974
  %36 = load i64, i64* %sum28, align 8, !dbg !5975
  %add29 = add i64 %36, %conv27, !dbg !5975
  store i64 %add29, i64* %sum28, align 8, !dbg !5975
  %37 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 0, !dbg !5976
  %duration30 = bitcast %union.anon.66* %37 to i32*, !dbg !5976
  %38 = load i32, i32* %duration30, align 4, !dbg !5976
  %cmp31 = icmp ugt i32 %38, 500000, !dbg !5977
  br i1 %cmp31, label %cond.true33, label %cond.false34, !dbg !5978

cond.true33:                                      ; preds = %if.end19
  br label %cond.end36, !dbg !5978

cond.false34:                                     ; preds = %if.end19
  %39 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 0, !dbg !5979
  %duration35 = bitcast %union.anon.66* %39 to i32*, !dbg !5979
  %40 = load i32, i32* %duration35, align 4, !dbg !5979
  br label %cond.end36, !dbg !5978

cond.end36:                                       ; preds = %cond.false34, %cond.true33
  %cond37 = phi i32 [ 500000, %cond.true33 ], [ %40, %cond.false34 ], !dbg !5978
  %41 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 0, !dbg !5980
  %duration38 = bitcast %union.anon.66* %41 to i32*, !dbg !5980
  store i32 %cond37, i32* %duration38, align 4, !dbg !5981
  %42 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !5982
  %43 = bitcast %struct.ir_raw_event* %rawir to i64*, !dbg !5983
  %44 = load i64, i64* %43, align 4, !dbg !5983
  call void @sz_push(%struct.streamzap_ir* %42, i64 %44) #9, !dbg !5983
  ret void, !dbg !5984
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sz_push(%struct.streamzap_ir* %sz, i64 %rawir.coerce) #2 !dbg !5985 {
entry:
  %rawir = alloca %struct.ir_raw_event, align 4
  %sz.addr = alloca %struct.streamzap_ir*, align 8
  %0 = bitcast %struct.ir_raw_event* %rawir to i64*
  store i64 %rawir.coerce, i64* %0, align 4
  store %struct.streamzap_ir* %sz, %struct.streamzap_ir** %sz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.streamzap_ir** %sz.addr, metadata !5988, metadata !DIExpression()), !dbg !5989
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event* %rawir, metadata !5990, metadata !DIExpression()), !dbg !5991
  %1 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !5992
  %rdev = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %1, i32 0, i32 0, !dbg !5993
  %2 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !5993
  %call = call i32 @ir_raw_event_store_with_filter(%struct.rc_dev* %2, %struct.ir_raw_event* %rawir) #9, !dbg !5994
  ret void, !dbg !5995
}

; Function Attrs: noredzone
declare dso_local void @ir_raw_event_handle(%struct.rc_dev*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ir_raw_event_reset(%struct.rc_dev* %dev) #2 !dbg !5996 {
entry:
  %dev.addr = alloca %struct.rc_dev*, align 8
  %.compoundliteral = alloca %struct.ir_raw_event, align 4
  store %struct.rc_dev* %dev, %struct.rc_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %dev.addr, metadata !5997, metadata !DIExpression()), !dbg !5998
  %0 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5999
  %1 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %.compoundliteral, i32 0, i32 0, !dbg !6000
  %2 = bitcast %union.anon.66* %1 to i8*, !dbg !6000
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 4, i1 false), !dbg !6000
  %duty_cycle = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %.compoundliteral, i32 0, i32 1, !dbg !6000
  store i8 0, i8* %duty_cycle, align 4, !dbg !6000
  %pulse = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %.compoundliteral, i32 0, i32 2, !dbg !6000
  %bf.load = load i8, i8* %pulse, align 1, !dbg !6000
  %bf.clear = and i8 %bf.load, -2, !dbg !6000
  store i8 %bf.clear, i8* %pulse, align 1, !dbg !6000
  %reset = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %.compoundliteral, i32 0, i32 2, !dbg !6000
  %bf.load1 = load i8, i8* %reset, align 1, !dbg !6000
  %bf.clear2 = and i8 %bf.load1, -3, !dbg !6000
  %bf.set = or i8 %bf.clear2, 2, !dbg !6000
  store i8 %bf.set, i8* %reset, align 1, !dbg !6000
  %timeout = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %.compoundliteral, i32 0, i32 2, !dbg !6000
  %bf.load3 = load i8, i8* %timeout, align 1, !dbg !6000
  %bf.clear4 = and i8 %bf.load3, -5, !dbg !6000
  store i8 %bf.clear4, i8* %timeout, align 1, !dbg !6000
  %carrier_report = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %.compoundliteral, i32 0, i32 2, !dbg !6000
  %bf.load5 = load i8, i8* %carrier_report, align 1, !dbg !6000
  %bf.clear6 = and i8 %bf.load5, -9, !dbg !6000
  store i8 %bf.clear6, i8* %carrier_report, align 1, !dbg !6000
  %call = call i32 @ir_raw_event_store(%struct.rc_dev* %0, %struct.ir_raw_event* %.compoundliteral) #9, !dbg !6001
  %3 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !6002
  %idle = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %3, i32 0, i32 14, !dbg !6003
  store i8 1, i8* %idle, align 4, !dbg !6004
  %4 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !6005
  call void @ir_raw_event_handle(%struct.rc_dev* %4) #9, !dbg !6006
  ret void, !dbg !6007
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sz_push_full_space(%struct.streamzap_ir* %sz, i8 zeroext %value) #2 !dbg !6008 {
entry:
  %sz.addr = alloca %struct.streamzap_ir*, align 8
  %value.addr = alloca i8, align 1
  %rawir = alloca %struct.ir_raw_event, align 4
  store %struct.streamzap_ir* %sz, %struct.streamzap_ir** %sz.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.streamzap_ir** %sz.addr, metadata !6009, metadata !DIExpression()), !dbg !6010
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !6011, metadata !DIExpression()), !dbg !6012
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event* %rawir, metadata !6013, metadata !DIExpression()), !dbg !6014
  %0 = bitcast %struct.ir_raw_event* %rawir to i8*, !dbg !6014
  call void @llvm.memset.p0i8.i64(i8* align 4 %0, i8 0, i64 8, i1 false), !dbg !6014
  %pulse = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 2, !dbg !6015
  %bf.load = load i8, i8* %pulse, align 1, !dbg !6016
  %bf.clear = and i8 %bf.load, -2, !dbg !6016
  store i8 %bf.clear, i8* %pulse, align 1, !dbg !6016
  %1 = load i8, i8* %value.addr, align 1, !dbg !6017
  %conv = zext i8 %1 to i32, !dbg !6018
  %mul = mul i32 %conv, 256, !dbg !6019
  %2 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 0, !dbg !6020
  %duration = bitcast %union.anon.66* %2 to i32*, !dbg !6020
  store i32 %mul, i32* %duration, align 4, !dbg !6021
  %3 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 0, !dbg !6022
  %duration1 = bitcast %union.anon.66* %3 to i32*, !dbg !6022
  %4 = load i32, i32* %duration1, align 4, !dbg !6023
  %add = add i32 %4, 128, !dbg !6023
  store i32 %add, i32* %duration1, align 4, !dbg !6023
  %5 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 0, !dbg !6024
  %duration2 = bitcast %union.anon.66* %5 to i32*, !dbg !6024
  %6 = load i32, i32* %duration2, align 4, !dbg !6024
  %conv3 = zext i32 %6 to i64, !dbg !6025
  %7 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !6026
  %sum = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %7, i32 0, i32 11, !dbg !6027
  %8 = load i64, i64* %sum, align 8, !dbg !6028
  %add4 = add i64 %8, %conv3, !dbg !6028
  store i64 %add4, i64* %sum, align 8, !dbg !6028
  %9 = load %struct.streamzap_ir*, %struct.streamzap_ir** %sz.addr, align 8, !dbg !6029
  %10 = bitcast %struct.ir_raw_event* %rawir to i64*, !dbg !6030
  %11 = load i64, i64* %10, align 4, !dbg !6030
  call void @sz_push(%struct.streamzap_ir* %9, i64 %11) #9, !dbg !6030
  ret void, !dbg !6031
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_us_delta(i64 %later, i64 %earlier) #2 !dbg !6032 {
entry:
  %later.addr = alloca i64, align 8
  %earlier.addr = alloca i64, align 8
  store i64 %later, i64* %later.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %later.addr, metadata !6036, metadata !DIExpression()), !dbg !6037
  store i64 %earlier, i64* %earlier.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %earlier.addr, metadata !6038, metadata !DIExpression()), !dbg !6039
  %0 = load i64, i64* %later.addr, align 8, !dbg !6040
  %1 = load i64, i64* %earlier.addr, align 8, !dbg !6040
  %sub = sub i64 %0, %1, !dbg !6040
  %call = call i64 @ktime_to_us(i64 %sub) #9, !dbg !6041
  ret i64 %call, !dbg !6042
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_to_us(i64 %kt) #2 !dbg !6043 {
entry:
  %kt.addr = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !6046, metadata !DIExpression()), !dbg !6047
  %0 = load i64, i64* %kt.addr, align 8, !dbg !6048
  %call = call i64 @ktime_divns(i64 %0, i64 1000) #9, !dbg !6049
  ret i64 %call, !dbg !6050
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_divns(i64 %kt, i64 %div) #2 !dbg !6051 {
entry:
  %kt.addr = alloca i64, align 8
  %div.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !6054, metadata !DIExpression()), !dbg !6055
  store i64 %div, i64* %div.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %div.addr, metadata !6056, metadata !DIExpression()), !dbg !6057
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !6058, metadata !DIExpression()), !dbg !6060
  %0 = load i64, i64* %div.addr, align 8, !dbg !6060
  %cmp = icmp slt i64 %0, 0, !dbg !6060
  %lnot = xor i1 %cmp, true, !dbg !6060
  %lnot1 = xor i1 %lnot, true, !dbg !6060
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6060
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !6060
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !6061
  %tobool = icmp ne i32 %1, 0, !dbg !6061
  %lnot2 = xor i1 %tobool, true, !dbg !6061
  %lnot4 = xor i1 %lnot2, true, !dbg !6061
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !6061
  %conv = sext i32 %lnot.ext5 to i64, !dbg !6061
  %tobool6 = icmp ne i64 %conv, 0, !dbg !6061
  br i1 %tobool6, label %if.then, label %if.end, !dbg !6060

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6061

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !6063

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !6065

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !6063

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32 154, i32 2305, i64 12) #11, !dbg !6067, !srcloc !6069
  br label %do.end9, !dbg !6067

do.end9:                                          ; preds = %do.body8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 93) #11, !dbg !6070, !srcloc !6072
  br label %do.body10, !dbg !6063

do.body10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !6073

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !6063

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !6063

if.end:                                           ; preds = %do.end12, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !6060
  %tobool13 = icmp ne i32 %2, 0, !dbg !6060
  %lnot14 = xor i1 %tobool13, true, !dbg !6060
  %lnot16 = xor i1 %lnot14, true, !dbg !6060
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !6060
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !6060
  store i64 %conv18, i64* %tmp, align 8, !dbg !6061
  %3 = load i64, i64* %tmp, align 8, !dbg !6060
  %4 = load i64, i64* %kt.addr, align 8, !dbg !6075
  %5 = load i64, i64* %div.addr, align 8, !dbg !6076
  %div19 = sdiv i64 %4, %5, !dbg !6077
  ret i64 %div19, !dbg !6078
}

; Function Attrs: noredzone
declare dso_local i32 @ir_raw_event_store_with_filter(%struct.rc_dev*, %struct.ir_raw_event*) #1

; Function Attrs: noredzone
declare dso_local i32 @ir_raw_event_store(%struct.rc_dev*, %struct.ir_raw_event*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !6079 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6082, metadata !DIExpression()), !dbg !6083
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6084, metadata !DIExpression()), !dbg !6085
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6086
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6087
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !6088
  store i8* %0, i8** %driver_data, align 8, !dbg !6089
  ret void, !dbg !6090
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_get_intfdata(%struct.usb_interface* %intf) #2 !dbg !6091 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !6094, metadata !DIExpression()), !dbg !6095
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !6096
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !6097
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #9, !dbg !6098
  ret i8* %call, !dbg !6099
}

; Function Attrs: noredzone
declare dso_local void @rc_unregister_device(%struct.rc_dev*) #1

; Function Attrs: noredzone
declare dso_local void @usb_kill_urb(%struct.urb*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !6100 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6103, metadata !DIExpression()), !dbg !6104
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6105
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !6106
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6106
  ret i8* %1, !dbg !6107
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!llvm.module.flags = !{!4270, !4271, !4272, !4273}
!llvm.ident = !{!4274}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_streamzap_driver_init237", scope: !2, file: !3, line: 490, type: !218, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !188, globals: !4180, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/rc/streamzap.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !20, !26, !31, !37, !44, !50, !59, !67, !73, !79, !86, !94, !100, !112, !121, !126, !157, !163, !169, !174, !181}
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
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !101, line: 1156, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !111}
!103 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1, isUnsigned: true)
!105 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2, isUnsigned: true)
!106 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3, isUnsigned: true)
!107 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4, isUnsigned: true)
!108 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5, isUnsigned: true)
!109 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6, isUnsigned: true)
!110 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7, isUnsigned: true)
!111 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8, isUnsigned: true)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !101, line: 1146, baseType: !7, size: 32, elements: !113)
!113 = !{!114, !115, !116, !117, !118, !119, !120}
!114 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0, isUnsigned: true)
!115 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1, isUnsigned: true)
!116 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2, isUnsigned: true)
!117 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3, isUnsigned: true)
!118 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4, isUnsigned: true)
!119 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5, isUnsigned: true)
!120 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6, isUnsigned: true)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_removable", file: !6, line: 476, baseType: !7, size: 32, elements: !122)
!122 = !{!123, !124, !125}
!123 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE_UNKNOWN", value: 0, isUnsigned: true)
!124 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE", value: 1, isUnsigned: true)
!125 = !DIEnumerator(name: "USB_DEVICE_FIXED", value: 2, isUnsigned: true)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rc_proto", file: !127, line: 200, baseType: !7, size: 32, elements: !128)
!127 = !DIFile(filename: "./include/uapi/linux/lirc.h", directory: "/home/lizy2001/genbc/linux")
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156}
!129 = !DIEnumerator(name: "RC_PROTO_UNKNOWN", value: 0, isUnsigned: true)
!130 = !DIEnumerator(name: "RC_PROTO_OTHER", value: 1, isUnsigned: true)
!131 = !DIEnumerator(name: "RC_PROTO_RC5", value: 2, isUnsigned: true)
!132 = !DIEnumerator(name: "RC_PROTO_RC5X_20", value: 3, isUnsigned: true)
!133 = !DIEnumerator(name: "RC_PROTO_RC5_SZ", value: 4, isUnsigned: true)
!134 = !DIEnumerator(name: "RC_PROTO_JVC", value: 5, isUnsigned: true)
!135 = !DIEnumerator(name: "RC_PROTO_SONY12", value: 6, isUnsigned: true)
!136 = !DIEnumerator(name: "RC_PROTO_SONY15", value: 7, isUnsigned: true)
!137 = !DIEnumerator(name: "RC_PROTO_SONY20", value: 8, isUnsigned: true)
!138 = !DIEnumerator(name: "RC_PROTO_NEC", value: 9, isUnsigned: true)
!139 = !DIEnumerator(name: "RC_PROTO_NECX", value: 10, isUnsigned: true)
!140 = !DIEnumerator(name: "RC_PROTO_NEC32", value: 11, isUnsigned: true)
!141 = !DIEnumerator(name: "RC_PROTO_SANYO", value: 12, isUnsigned: true)
!142 = !DIEnumerator(name: "RC_PROTO_MCIR2_KBD", value: 13, isUnsigned: true)
!143 = !DIEnumerator(name: "RC_PROTO_MCIR2_MSE", value: 14, isUnsigned: true)
!144 = !DIEnumerator(name: "RC_PROTO_RC6_0", value: 15, isUnsigned: true)
!145 = !DIEnumerator(name: "RC_PROTO_RC6_6A_20", value: 16, isUnsigned: true)
!146 = !DIEnumerator(name: "RC_PROTO_RC6_6A_24", value: 17, isUnsigned: true)
!147 = !DIEnumerator(name: "RC_PROTO_RC6_6A_32", value: 18, isUnsigned: true)
!148 = !DIEnumerator(name: "RC_PROTO_RC6_MCE", value: 19, isUnsigned: true)
!149 = !DIEnumerator(name: "RC_PROTO_SHARP", value: 20, isUnsigned: true)
!150 = !DIEnumerator(name: "RC_PROTO_XMP", value: 21, isUnsigned: true)
!151 = !DIEnumerator(name: "RC_PROTO_CEC", value: 22, isUnsigned: true)
!152 = !DIEnumerator(name: "RC_PROTO_IMON", value: 23, isUnsigned: true)
!153 = !DIEnumerator(name: "RC_PROTO_RCMM12", value: 24, isUnsigned: true)
!154 = !DIEnumerator(name: "RC_PROTO_RCMM24", value: 25, isUnsigned: true)
!155 = !DIEnumerator(name: "RC_PROTO_RCMM32", value: 26, isUnsigned: true)
!156 = !DIEnumerator(name: "RC_PROTO_XBOX_DVD", value: 27, isUnsigned: true)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rc_driver_type", file: !158, line: 27, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/media/rc-core.h", directory: "/home/lizy2001/genbc/linux")
!159 = !{!160, !161, !162}
!160 = !DIEnumerator(name: "RC_DRIVER_SCANCODE", value: 0, isUnsigned: true)
!161 = !DIEnumerator(name: "RC_DRIVER_IR_RAW", value: 1, isUnsigned: true)
!162 = !DIEnumerator(name: "RC_DRIVER_IR_RAW_TX", value: 2, isUnsigned: true)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "StreamzapDecoderState", file: !3, line: 54, baseType: !7, size: 32, elements: !164)
!164 = !{!165, !166, !167, !168}
!165 = !DIEnumerator(name: "PulseSpace", value: 0, isUnsigned: true)
!166 = !DIEnumerator(name: "FullPulse", value: 1, isUnsigned: true)
!167 = !DIEnumerator(name: "FullSpace", value: 2, isUnsigned: true)
!168 = !DIEnumerator(name: "IgnorePulse", value: 3, isUnsigned: true)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !170, line: 10, baseType: !7, size: 32, elements: !171)
!170 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!171 = !{!172, !173}
!172 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!173 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !175, line: 305, baseType: !7, size: 32, elements: !176)
!175 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!176 = !{!177, !178, !179, !180}
!177 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!178 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!179 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!180 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tk_offsets", file: !182, line: 60, baseType: !7, size: 32, elements: !183)
!182 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/lizy2001/genbc/linux")
!183 = !{!184, !185, !186, !187}
!184 = !DIEnumerator(name: "TK_OFFS_REAL", value: 0, isUnsigned: true)
!185 = !DIEnumerator(name: "TK_OFFS_BOOT", value: 1, isUnsigned: true)
!186 = !DIEnumerator(name: "TK_OFFS_TAI", value: 2, isUnsigned: true)
!187 = !DIEnumerator(name: "TK_OFFS_MAX", value: 3, isUnsigned: true)
!188 = !{!189, !192, !194, !218, !259, !914, !3895, !215}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !191, line: 76, flags: DIFlagFwdDecl)
!191 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !193, line: 148, baseType: !7)
!193 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !6, line: 1376, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !198}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !6, line: 1561, size: 1472, elements: !200)
!200 = !{!201, !216, !217, !219, !220, !221, !227, !228, !258, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !199, file: !6, line: 1563, baseType: !202, size: 32)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !203, line: 19, size: 32, elements: !204)
!203 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !202, file: !203, line: 20, baseType: !206, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !207, line: 113, baseType: !208)
!207 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !207, line: 111, size: 32, elements: !209)
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !208, file: !207, line: 112, baseType: !211, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !193, line: 168, baseType: !212)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !193, line: 166, size: 32, elements: !213)
!213 = !{!214}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !212, file: !193, line: 167, baseType: !215, size: 32)
!215 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !199, file: !6, line: 1564, baseType: !215, size: 32, offset: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !199, file: !6, line: 1565, baseType: !218, size: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !199, file: !6, line: 1566, baseType: !211, size: 32, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !199, file: !6, line: 1567, baseType: !211, size: 32, offset: 160)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !199, file: !6, line: 1570, baseType: !222, size: 128, offset: 192)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !193, line: 178, size: 128, elements: !223)
!223 = !{!224, !226}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !222, file: !193, line: 179, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !222, file: !193, line: 179, baseType: !225, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !199, file: !6, line: 1572, baseType: !222, size: 128, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !199, file: !6, line: 1573, baseType: !229, size: 64, offset: 448)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !6, line: 1360, size: 320, elements: !231)
!231 = !{!232, !233, !255, !256, !257}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !230, file: !6, line: 1361, baseType: !222, size: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !230, file: !6, line: 1362, baseType: !234, size: 128, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !235, line: 40, baseType: !236)
!235 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !235, line: 36, size: 128, elements: !237)
!237 = !{!238, !254}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !236, file: !235, line: 37, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !240, line: 83, baseType: !241)
!240 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !240, line: 71, elements: !242)
!242 = !{!243}
!243 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !240, line: 72, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !241, file: !240, line: 72, elements: !245)
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !244, file: !240, line: 73, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !240, line: 20, elements: !248)
!248 = !{!249}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !247, file: !240, line: 21, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !251, line: 25, baseType: !252)
!251 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !251, line: 25, elements: !253)
!253 = !{}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !236, file: !235, line: 38, baseType: !222, size: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !230, file: !6, line: 1363, baseType: !239, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !230, file: !6, line: 1364, baseType: !211, size: 32, offset: 256)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !230, file: !6, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !199, file: !6, line: 1574, baseType: !259, size: 64, offset: 512)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !6, line: 631, size: 10624, elements: !261)
!261 = !{!262, !263, !268, !273, !274, !275, !276, !277, !280, !281, !285, !286, !3884, !3925, !3926, !3943, !4004, !4086, !4087, !4089, !4090, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4125, !4126, !4127, !4132, !4139, !4140, !4141, !4142}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !260, file: !6, line: 632, baseType: !215, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !260, file: !6, line: 633, baseType: !264, size: 128, offset: 32)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 128, elements: !266)
!265 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!266 = !{!267}
!267 = !DISubrange(count: 16)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !260, file: !6, line: 634, baseType: !269, size: 32, offset: 160)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !270, line: 21, baseType: !271)
!270 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !272, line: 27, baseType: !7)
!272 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!273 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !260, file: !6, line: 635, baseType: !100, size: 32, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !260, file: !6, line: 636, baseType: !112, size: 32, offset: 224)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !260, file: !6, line: 637, baseType: !7, size: 32, offset: 256)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !260, file: !6, line: 638, baseType: !7, size: 32, offset: 288)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !260, file: !6, line: 640, baseType: !278, size: 64, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !6, line: 474, flags: DIFlagFwdDecl)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !260, file: !6, line: 641, baseType: !215, size: 32, offset: 384)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !260, file: !6, line: 643, baseType: !282, size: 64, offset: 416)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 2)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !260, file: !6, line: 645, baseType: !259, size: 64, offset: 512)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !260, file: !6, line: 646, baseType: !287, size: 64, offset: 576)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !6, line: 424, size: 960, elements: !289)
!289 = !{!290, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3878, !3879, !3880, !3881, !3882, !3883}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !288, file: !6, line: 425, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !80, line: 461, size: 5568, elements: !293)
!293 = !{!294, !3415, !3416, !3419, !3420, !3471, !3562, !3563, !3564, !3565, !3566, !3575, !3680, !3693, !3696, !3697, !3701, !3703, !3704, !3705, !3709, !3715, !3716, !3719, !3723, !3813, !3814, !3815, !3816, !3817, !3849, !3850, !3851, !3854, !3857, !3858, !3859, !3860}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !292, file: !80, line: 462, baseType: !295, size: 512)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !296, line: 64, size: 512, elements: !297)
!296 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!297 = !{!298, !301, !302, !304, !349, !3270, !3409, !3410, !3411, !3412, !3413, !3414}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !295, file: !296, line: 65, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !295, file: !296, line: 66, baseType: !222, size: 128, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !295, file: !296, line: 67, baseType: !303, size: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !295, file: !296, line: 68, baseType: !305, size: 64, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !296, line: 192, size: 704, elements: !307)
!307 = !{!308, !309, !310, !311}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !306, file: !296, line: 193, baseType: !222, size: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !306, file: !296, line: 194, baseType: !239, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !306, file: !296, line: 195, baseType: !295, size: 512, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !306, file: !296, line: 196, baseType: !312, size: 64, offset: 640)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !296, line: 156, size: 192, elements: !315)
!315 = !{!316, !321, !326}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !314, file: !296, line: 157, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!215, !305, !303}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !314, file: !296, line: 158, baseType: !322, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!299, !305, !303}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !314, file: !296, line: 159, baseType: !327, size: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!215, !305, !303, !331}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !296, line: 148, size: 20736, elements: !333)
!333 = !{!334, !339, !343, !344, !348}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !332, file: !296, line: 149, baseType: !335, size: 192)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 192, elements: !337)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!337 = !{!338}
!338 = !DISubrange(count: 3)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !332, file: !296, line: 150, baseType: !340, size: 4096, offset: 192)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 4096, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !332, file: !296, line: 151, baseType: !215, size: 32, offset: 4288)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !332, file: !296, line: 152, baseType: !345, size: 16384, offset: 4320)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 16384, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 2048)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !332, file: !296, line: 153, baseType: !215, size: 32, offset: 20704)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !295, file: !296, line: 69, baseType: !350, size: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !296, line: 138, size: 448, elements: !352)
!352 = !{!353, !357, !387, !389, !3232, !3260, !3264}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !351, file: !296, line: 139, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !303}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !351, file: !296, line: 140, baseType: !358, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !361, line: 230, size: 128, elements: !362)
!361 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!362 = !{!363, !379}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !360, file: !361, line: 231, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!367, !303, !372, !336}
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !193, line: 60, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !369, line: 73, baseType: !370)
!369 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !369, line: 15, baseType: !371)
!371 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !361, line: 30, size: 128, elements: !374)
!374 = !{!375, !376}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !373, file: !361, line: 31, baseType: !299, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !373, file: !361, line: 32, baseType: !377, size: 16, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !193, line: 19, baseType: !378)
!378 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !360, file: !361, line: 232, baseType: !380, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!367, !303, !372, !299, !383}
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !193, line: 55, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !369, line: 72, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !369, line: 16, baseType: !386)
!386 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !351, file: !296, line: 141, baseType: !388, size: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !351, file: !296, line: 142, baseType: !390, size: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !361, line: 84, size: 320, elements: !394)
!394 = !{!395, !396, !400, !3229, !3230}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !393, file: !361, line: 85, baseType: !299, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !393, file: !361, line: 86, baseType: !397, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!377, !303, !372, !215}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !393, file: !361, line: 88, baseType: !401, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!377, !303, !404, !215}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !361, line: 168, size: 448, elements: !406)
!406 = !{!407, !408, !409, !410, !3224, !3225}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !405, file: !361, line: 169, baseType: !373, size: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !405, file: !361, line: 170, baseType: !383, size: 64, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !405, file: !361, line: 171, baseType: !218, size: 64, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !405, file: !361, line: 172, baseType: !411, size: 64, offset: 256)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!367, !414, !303, !404, !336, !589, !383}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !51, line: 916, size: 1856, align: 32, elements: !416)
!416 = !{!417, !435, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3207, !3208, !3217, !3218, !3219, !3220, !3221, !3222, !3223}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !415, file: !51, line: 920, baseType: !418, size: 128)
!418 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !415, file: !51, line: 917, size: 128, elements: !419)
!419 = !{!420, !426}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !418, file: !51, line: 918, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !422, line: 58, size: 64, elements: !423)
!422 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!423 = !{!424}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !421, file: !422, line: 59, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !418, file: !51, line: 919, baseType: !427, size: 128, align: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !193, line: 216, size: 128, align: 64, elements: !428)
!428 = !{!429, !431}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !427, file: !193, line: 217, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !427, file: !193, line: 218, baseType: !432, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !430}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !415, file: !51, line: 921, baseType: !436, size: 128, offset: 128)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !437, line: 8, size: 128, elements: !438)
!437 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!438 = !{!439, !443}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !436, file: !437, line: 9, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !442, line: 18, flags: DIFlagFwdDecl)
!442 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!443 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !436, file: !437, line: 10, baseType: !444, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !442, line: 89, size: 1536, elements: !446)
!446 = !{!447, !448, !458, !466, !467, !486, !3157, !3159, !3171, !3172, !3173, !3174, !3175, !3181, !3182, !3183}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !445, file: !442, line: 91, baseType: !7, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !445, file: !442, line: 92, baseType: !449, size: 32, offset: 32)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !450, line: 277, baseType: !451)
!450 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !450, line: 277, size: 32, elements: !452)
!452 = !{!453}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !451, file: !450, line: 277, baseType: !454, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !450, line: 70, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !450, line: 65, size: 32, elements: !456)
!456 = !{!457}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !455, file: !450, line: 66, baseType: !7, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !445, file: !442, line: 93, baseType: !459, size: 128, offset: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !460, line: 38, size: 128, elements: !461)
!460 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!461 = !{!462, !464}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !459, file: !460, line: 39, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !459, file: !460, line: 39, baseType: !465, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !445, file: !442, line: 94, baseType: !444, size: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !445, file: !442, line: 95, baseType: !468, size: 128, offset: 256)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !442, line: 47, size: 128, elements: !469)
!469 = !{!470, !482}
!470 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !442, line: 48, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !468, file: !442, line: 48, size: 64, elements: !472)
!472 = !{!473, !478}
!473 = !DIDerivedType(tag: DW_TAG_member, scope: !471, file: !442, line: 49, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !471, file: !442, line: 49, size: 64, elements: !475)
!475 = !{!476, !477}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !474, file: !442, line: 50, baseType: !269, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !474, file: !442, line: 50, baseType: !269, size: 32, offset: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !471, file: !442, line: 52, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !270, line: 23, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !272, line: 31, baseType: !481)
!481 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !468, file: !442, line: 54, baseType: !483, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!485 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !445, file: !442, line: 96, baseType: !487, size: 64, offset: 384)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !51, line: 610, size: 4224, elements: !489)
!489 = !{!490, !491, !492, !500, !507, !508, !656, !2860, !2861, !2862, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !3125, !3133, !3134, !3135, !3153, !3154, !3155, !3156}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !488, file: !51, line: 611, baseType: !377, size: 16)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !488, file: !51, line: 612, baseType: !378, size: 16, offset: 16)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !488, file: !51, line: 613, baseType: !493, size: 32, offset: 32)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !494, line: 23, baseType: !495)
!494 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !494, line: 21, size: 32, elements: !496)
!496 = !{!497}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !495, file: !494, line: 22, baseType: !498, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !193, line: 32, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !369, line: 49, baseType: !7)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !488, file: !51, line: 614, baseType: !501, size: 32, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !494, line: 28, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !494, line: 26, size: 32, elements: !503)
!503 = !{!504}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !502, file: !494, line: 27, baseType: !505, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !193, line: 33, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !369, line: 50, baseType: !7)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !488, file: !51, line: 615, baseType: !7, size: 32, offset: 96)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !488, file: !51, line: 622, baseType: !509, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !511)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !51, line: 1864, size: 1536, align: 512, elements: !512)
!512 = !{!513, !517, !530, !534, !540, !544, !550, !554, !558, !562, !566, !567, !573, !577, !603, !632, !636, !642, !647, !651, !652}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !511, file: !51, line: 1865, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!444, !487, !444, !7}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !511, file: !51, line: 1866, baseType: !518, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!299, !444, !487, !521}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !523, line: 10, size: 128, elements: !524)
!523 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!524 = !{!525, !529}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !522, file: !523, line: 11, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !218}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !522, file: !523, line: 12, baseType: !218, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !511, file: !51, line: 1867, baseType: !531, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!215, !487, !215}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !511, file: !51, line: 1868, baseType: !535, size: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!538, !487, !215}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !51, line: 581, flags: DIFlagFwdDecl)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !511, file: !51, line: 1870, baseType: !541, size: 64, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!215, !444, !336, !215}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !511, file: !51, line: 1872, baseType: !545, size: 64, offset: 320)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!215, !487, !444, !377, !548}
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !193, line: 30, baseType: !549)
!549 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !511, file: !51, line: 1873, baseType: !551, size: 64, offset: 384)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!215, !444, !487, !444}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !511, file: !51, line: 1874, baseType: !555, size: 64, offset: 448)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!215, !487, !444}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !511, file: !51, line: 1875, baseType: !559, size: 64, offset: 512)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!215, !487, !444, !299}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !511, file: !51, line: 1876, baseType: !563, size: 64, offset: 576)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!215, !487, !444, !377}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !511, file: !51, line: 1877, baseType: !555, size: 64, offset: 640)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !511, file: !51, line: 1878, baseType: !568, size: 64, offset: 704)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!215, !487, !444, !377, !571}
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !193, line: 16, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !193, line: 13, baseType: !269)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !511, file: !51, line: 1879, baseType: !574, size: 64, offset: 768)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!215, !487, !444, !487, !444, !7}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !511, file: !51, line: 1881, baseType: !578, size: 64, offset: 832)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!215, !444, !581}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !51, line: 219, size: 640, elements: !583)
!583 = !{!584, !585, !586, !587, !588, !592, !600, !601, !602}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !582, file: !51, line: 220, baseType: !7, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !582, file: !51, line: 221, baseType: !377, size: 16, offset: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !582, file: !51, line: 222, baseType: !493, size: 32, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !582, file: !51, line: 223, baseType: !501, size: 32, offset: 96)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !582, file: !51, line: 224, baseType: !589, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !193, line: 46, baseType: !590)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !369, line: 88, baseType: !591)
!591 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !582, file: !51, line: 225, baseType: !593, size: 128, offset: 192)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !594, line: 13, size: 128, elements: !595)
!594 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!595 = !{!596, !599}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !593, file: !594, line: 14, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !594, line: 8, baseType: !598)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !272, line: 30, baseType: !591)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !593, file: !594, line: 15, baseType: !371, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !582, file: !51, line: 226, baseType: !593, size: 128, offset: 320)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !582, file: !51, line: 227, baseType: !593, size: 128, offset: 448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !582, file: !51, line: 234, baseType: !414, size: 64, offset: 576)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !511, file: !51, line: 1882, baseType: !604, size: 64, offset: 896)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!215, !607, !609, !269, !7}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !611, line: 22, size: 1152, elements: !612)
!611 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!612 = !{!613, !614, !615, !616, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !610, file: !611, line: 23, baseType: !269, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !610, file: !611, line: 24, baseType: !377, size: 16, offset: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !610, file: !611, line: 25, baseType: !7, size: 32, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !610, file: !611, line: 26, baseType: !617, size: 32, offset: 96)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !193, line: 104, baseType: !269)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !610, file: !611, line: 27, baseType: !479, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !610, file: !611, line: 28, baseType: !479, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !610, file: !611, line: 37, baseType: !479, size: 64, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !610, file: !611, line: 38, baseType: !571, size: 32, offset: 320)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !610, file: !611, line: 39, baseType: !571, size: 32, offset: 352)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !610, file: !611, line: 40, baseType: !493, size: 32, offset: 384)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !610, file: !611, line: 41, baseType: !501, size: 32, offset: 416)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !610, file: !611, line: 42, baseType: !589, size: 64, offset: 448)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !610, file: !611, line: 43, baseType: !593, size: 128, offset: 512)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !610, file: !611, line: 44, baseType: !593, size: 128, offset: 640)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !610, file: !611, line: 45, baseType: !593, size: 128, offset: 768)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !610, file: !611, line: 46, baseType: !593, size: 128, offset: 896)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !610, file: !611, line: 47, baseType: !479, size: 64, offset: 1024)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !610, file: !611, line: 48, baseType: !479, size: 64, offset: 1088)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !511, file: !51, line: 1883, baseType: !633, size: 64, offset: 960)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!367, !444, !336, !383}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !511, file: !51, line: 1884, baseType: !637, size: 64, offset: 1024)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!215, !487, !640, !479, !479}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !51, line: 50, flags: DIFlagFwdDecl)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !511, file: !51, line: 1886, baseType: !643, size: 64, offset: 1088)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!215, !487, !646, !215}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !511, file: !51, line: 1887, baseType: !648, size: 64, offset: 1152)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!215, !487, !444, !414, !7, !377}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !511, file: !51, line: 1890, baseType: !563, size: 64, offset: 1216)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !511, file: !51, line: 1891, baseType: !653, size: 64, offset: 1280)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!215, !487, !538, !215}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !488, file: !51, line: 623, baseType: !657, size: 64, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !51, line: 1416, size: 9472, elements: !659)
!659 = !{!660, !661, !662, !663, !664, !665, !712, !2467, !2549, !2632, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2648, !2652, !2653, !2656, !2657, !2660, !2661, !2662, !2703, !2730, !2731, !2732, !2733, !2734, !2735, !2738, !2740, !2747, !2748, !2750, !2751, !2752, !2811, !2812, !2827, !2828, !2829, !2830, !2831, !2834, !2835, !2836, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !658, file: !51, line: 1417, baseType: !222, size: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !658, file: !51, line: 1418, baseType: !571, size: 32, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !658, file: !51, line: 1419, baseType: !485, size: 8, offset: 160)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !658, file: !51, line: 1420, baseType: !386, size: 64, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !658, file: !51, line: 1421, baseType: !589, size: 64, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !658, file: !51, line: 1422, baseType: !666, size: 64, offset: 320)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !51, line: 2228, size: 576, elements: !668)
!668 = !{!669, !670, !671, !678, !682, !686, !690, !691, !692, !702, !705, !706, !707, !709, !710, !711}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !667, file: !51, line: 2229, baseType: !299, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !667, file: !51, line: 2230, baseType: !215, size: 32, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !667, file: !51, line: 2238, baseType: !672, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!215, !675}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !677, line: 28, flags: DIFlagFwdDecl)
!677 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!678 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !667, file: !51, line: 2239, baseType: !679, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !681)
!681 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !51, line: 70, flags: DIFlagFwdDecl)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !667, file: !51, line: 2240, baseType: !683, size: 64, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!444, !666, !215, !299, !218}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !667, file: !51, line: 2242, baseType: !687, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !657}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !667, file: !51, line: 2243, baseType: !189, size: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !667, file: !51, line: 2244, baseType: !666, size: 64, offset: 448)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !667, file: !51, line: 2245, baseType: !693, size: 64, offset: 512)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !193, line: 182, size: 64, elements: !694)
!694 = !{!695}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !693, file: !193, line: 183, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !193, line: 186, size: 128, elements: !698)
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !697, file: !193, line: 187, baseType: !696, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !697, file: !193, line: 187, baseType: !701, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !667, file: !51, line: 2247, baseType: !703, offset: 576)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !704, line: 187, elements: !253)
!704 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!705 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !667, file: !51, line: 2248, baseType: !703, offset: 576)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !667, file: !51, line: 2249, baseType: !703, offset: 576)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !667, file: !51, line: 2250, baseType: !708, offset: 576)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !703, elements: !337)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !667, file: !51, line: 2252, baseType: !703, offset: 576)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !667, file: !51, line: 2253, baseType: !703, offset: 576)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !667, file: !51, line: 2254, baseType: !703, offset: 576)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !658, file: !51, line: 1423, baseType: !713, size: 64, offset: 384)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !715)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !51, line: 1935, size: 1472, elements: !716)
!716 = !{!717, !721, !725, !726, !730, !736, !740, !741, !742, !746, !750, !751, !752, !753, !759, !764, !765, !772, !773, !774, !775, !2451, !2466}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !715, file: !51, line: 1936, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!487, !657}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !715, file: !51, line: 1937, baseType: !722, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !487}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !715, file: !51, line: 1938, baseType: !722, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !715, file: !51, line: 1940, baseType: !727, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{null, !487, !215}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !715, file: !51, line: 1941, baseType: !731, size: 64, offset: 256)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!215, !487, !734}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !51, line: 289, flags: DIFlagFwdDecl)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !715, file: !51, line: 1942, baseType: !737, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!215, !487}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !715, file: !51, line: 1943, baseType: !722, size: 64, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !715, file: !51, line: 1944, baseType: !687, size: 64, offset: 448)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !715, file: !51, line: 1945, baseType: !743, size: 64, offset: 512)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!215, !657, !215}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !715, file: !51, line: 1946, baseType: !747, size: 64, offset: 576)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!215, !657}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !715, file: !51, line: 1947, baseType: !747, size: 64, offset: 640)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !715, file: !51, line: 1948, baseType: !747, size: 64, offset: 704)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !715, file: !51, line: 1949, baseType: !747, size: 64, offset: 768)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !715, file: !51, line: 1950, baseType: !754, size: 64, offset: 832)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!215, !444, !757}
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !51, line: 57, flags: DIFlagFwdDecl)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !715, file: !51, line: 1951, baseType: !760, size: 64, offset: 896)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!215, !657, !763, !336}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !715, file: !51, line: 1952, baseType: !687, size: 64, offset: 960)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !715, file: !51, line: 1954, baseType: !766, size: 64, offset: 1024)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!215, !769, !444}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !771, line: 539, flags: DIFlagFwdDecl)
!771 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!772 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !715, file: !51, line: 1955, baseType: !766, size: 64, offset: 1088)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !715, file: !51, line: 1956, baseType: !766, size: 64, offset: 1152)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !715, file: !51, line: 1957, baseType: !766, size: 64, offset: 1216)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !715, file: !51, line: 1963, baseType: !776, size: 64, offset: 1280)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!215, !657, !779, !192}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !781, line: 68, size: 512, align: 128, elements: !782)
!781 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!782 = !{!783, !784, !2443, !2450}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !780, file: !781, line: 69, baseType: !386, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, scope: !780, file: !781, line: 77, baseType: !785, size: 320, offset: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !780, file: !781, line: 77, size: 320, elements: !786)
!786 = !{!787, !970, !975, !1003, !1011, !1017, !2374, !2442}
!787 = !DIDerivedType(tag: DW_TAG_member, scope: !785, file: !781, line: 78, baseType: !788, size: 320)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !785, file: !781, line: 78, size: 320, elements: !789)
!789 = !{!790, !791, !968, !969}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !788, file: !781, line: 84, baseType: !222, size: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !788, file: !781, line: 86, baseType: !792, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !51, line: 451, size: 1216, align: 64, elements: !794)
!794 = !{!795, !796, !803, !804, !805, !820, !836, !837, !838, !839, !961, !962, !965, !966, !967}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !793, file: !51, line: 452, baseType: !487, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !793, file: !51, line: 453, baseType: !797, size: 128, offset: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !798, line: 292, size: 128, elements: !799)
!798 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!799 = !{!800, !801, !802}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !797, file: !798, line: 293, baseType: !239)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !797, file: !798, line: 295, baseType: !192, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !797, file: !798, line: 296, baseType: !218, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !793, file: !51, line: 454, baseType: !192, size: 32, offset: 192)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !793, file: !51, line: 455, baseType: !211, size: 32, offset: 224)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !793, file: !51, line: 460, baseType: !806, size: 128, offset: 256)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !807, line: 125, size: 128, elements: !808)
!807 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!808 = !{!809, !819}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !806, file: !807, line: 126, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !807, line: 31, size: 64, elements: !811)
!811 = !{!812}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !810, file: !807, line: 32, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !807, line: 24, size: 192, align: 64, elements: !815)
!815 = !{!816, !817, !818}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !814, file: !807, line: 25, baseType: !386, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !814, file: !807, line: 26, baseType: !813, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !814, file: !807, line: 27, baseType: !813, size: 64, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !806, file: !807, line: 127, baseType: !813, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !793, file: !51, line: 461, baseType: !821, size: 256, offset: 384)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !822, line: 35, size: 256, elements: !823)
!822 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!823 = !{!824, !832, !833, !835}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !821, file: !822, line: 36, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !826, line: 13, baseType: !827)
!826 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !193, line: 175, baseType: !828)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !193, line: 173, size: 64, elements: !829)
!829 = !{!830}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !828, file: !193, line: 174, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !270, line: 22, baseType: !598)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !821, file: !822, line: 42, baseType: !825, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !821, file: !822, line: 46, baseType: !834, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !240, line: 29, baseType: !247)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !821, file: !822, line: 47, baseType: !222, size: 128, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !793, file: !51, line: 462, baseType: !386, size: 64, offset: 640)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !793, file: !51, line: 463, baseType: !386, size: 64, offset: 704)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !793, file: !51, line: 464, baseType: !386, size: 64, offset: 768)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !793, file: !51, line: 465, baseType: !840, size: 64, offset: 832)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !842)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !51, line: 367, size: 1408, elements: !843)
!843 = !{!844, !848, !852, !856, !860, !864, !870, !876, !880, !885, !889, !893, !897, !925, !929, !935, !936, !937, !941, !946, !950, !957}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !842, file: !51, line: 368, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!215, !779, !734}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !842, file: !51, line: 369, baseType: !849, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!215, !414, !779}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !842, file: !51, line: 372, baseType: !853, size: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!215, !792, !734}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !842, file: !51, line: 375, baseType: !857, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!215, !779}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !842, file: !51, line: 381, baseType: !861, size: 64, offset: 256)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!215, !414, !792, !225, !7}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !842, file: !51, line: 383, baseType: !865, size: 64, offset: 320)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !868}
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !51, line: 290, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !842, file: !51, line: 385, baseType: !871, size: 64, offset: 384)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{!215, !414, !792, !589, !7, !7, !874, !875}
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !842, file: !51, line: 388, baseType: !877, size: 64, offset: 448)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{!215, !414, !792, !589, !7, !7, !779, !218}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !842, file: !51, line: 393, baseType: !881, size: 64, offset: 512)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!884, !792, !884}
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !193, line: 125, baseType: !479)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !842, file: !51, line: 394, baseType: !886, size: 64, offset: 576)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{null, !779, !7, !7}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !842, file: !51, line: 395, baseType: !890, size: 64, offset: 640)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!215, !779, !192}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !842, file: !51, line: 396, baseType: !894, size: 64, offset: 704)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{null, !779}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !842, file: !51, line: 397, baseType: !898, size: 64, offset: 768)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{!367, !901, !923}
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !51, line: 320, size: 384, elements: !903)
!903 = !{!904, !905, !906, !910, !911, !912, !915, !916}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !902, file: !51, line: 321, baseType: !414, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !902, file: !51, line: 326, baseType: !589, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !902, file: !51, line: 327, baseType: !907, size: 64, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{null, !901, !371, !371}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !902, file: !51, line: 328, baseType: !218, size: 64, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !902, file: !51, line: 329, baseType: !215, size: 32, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !902, file: !51, line: 330, baseType: !913, size: 16, offset: 288)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !270, line: 19, baseType: !914)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !272, line: 24, baseType: !378)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !902, file: !51, line: 331, baseType: !913, size: 16, offset: 304)
!916 = !DIDerivedType(tag: DW_TAG_member, scope: !902, file: !51, line: 332, baseType: !917, size: 64, offset: 320)
!917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !902, file: !51, line: 332, size: 64, elements: !918)
!918 = !{!919, !920}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !917, file: !51, line: 333, baseType: !7, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !917, file: !51, line: 334, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !51, line: 334, flags: DIFlagFwdDecl)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !51, line: 64, flags: DIFlagFwdDecl)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !842, file: !51, line: 402, baseType: !926, size: 64, offset: 832)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!215, !792, !779, !779, !13}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !842, file: !51, line: 404, baseType: !930, size: 64, offset: 896)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{!548, !779, !933}
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !934, line: 305, baseType: !7)
!934 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!935 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !842, file: !51, line: 405, baseType: !894, size: 64, offset: 960)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !842, file: !51, line: 406, baseType: !857, size: 64, offset: 1024)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !842, file: !51, line: 407, baseType: !938, size: 64, offset: 1088)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!215, !779, !386, !386}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !842, file: !51, line: 409, baseType: !942, size: 64, offset: 1152)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{null, !779, !945, !945}
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !842, file: !51, line: 410, baseType: !947, size: 64, offset: 1216)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{!215, !792, !779}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !842, file: !51, line: 413, baseType: !951, size: 64, offset: 1280)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!215, !954, !414, !956}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !51, line: 61, flags: DIFlagFwdDecl)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !842, file: !51, line: 415, baseType: !958, size: 64, offset: 1344)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !414}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !793, file: !51, line: 466, baseType: !386, size: 64, offset: 896)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !793, file: !51, line: 467, baseType: !963, size: 32, offset: 960)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !964, line: 8, baseType: !269)
!964 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!965 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !793, file: !51, line: 468, baseType: !239, offset: 992)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !793, file: !51, line: 469, baseType: !222, size: 128, offset: 1024)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !793, file: !51, line: 470, baseType: !218, size: 64, offset: 1152)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !788, file: !781, line: 87, baseType: !386, size: 64, offset: 192)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !788, file: !781, line: 94, baseType: !386, size: 64, offset: 256)
!970 = !DIDerivedType(tag: DW_TAG_member, scope: !785, file: !781, line: 96, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !785, file: !781, line: 96, size: 64, elements: !972)
!972 = !{!973}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !971, file: !781, line: 101, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !193, line: 143, baseType: !479)
!975 = !DIDerivedType(tag: DW_TAG_member, scope: !785, file: !781, line: 103, baseType: !976, size: 320)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !785, file: !781, line: 103, size: 320, elements: !977)
!977 = !{!978, !988, !991, !992}
!978 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !781, line: 104, baseType: !979, size: 128)
!979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !976, file: !781, line: 104, size: 128, elements: !980)
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !979, file: !781, line: 105, baseType: !222, size: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, scope: !979, file: !781, line: 106, baseType: !983, size: 128)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !979, file: !781, line: 106, size: 128, elements: !984)
!984 = !{!985, !986, !987}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !983, file: !781, line: 107, baseType: !779, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !983, file: !781, line: 109, baseType: !215, size: 32, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !983, file: !781, line: 110, baseType: !215, size: 32, offset: 96)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !976, file: !781, line: 117, baseType: !989, size: 64, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !781, line: 117, flags: DIFlagFwdDecl)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !976, file: !781, line: 119, baseType: !218, size: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !781, line: 120, baseType: !993, size: 64, offset: 256)
!993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !976, file: !781, line: 120, size: 64, elements: !994)
!994 = !{!995, !996, !997}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !993, file: !781, line: 121, baseType: !218, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !993, file: !781, line: 122, baseType: !386, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, scope: !993, file: !781, line: 123, baseType: !998, size: 32)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !993, file: !781, line: 123, size: 32, elements: !999)
!999 = !{!1000, !1001, !1002}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !998, file: !781, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !998, file: !781, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !998, file: !781, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1003 = !DIDerivedType(tag: DW_TAG_member, scope: !785, file: !781, line: 130, baseType: !1004, size: 192)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !785, file: !781, line: 130, size: 192, elements: !1005)
!1005 = !{!1006, !1007, !1008, !1009, !1010}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1004, file: !781, line: 131, baseType: !386, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1004, file: !781, line: 134, baseType: !485, size: 8, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1004, file: !781, line: 135, baseType: !485, size: 8, offset: 72)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1004, file: !781, line: 136, baseType: !211, size: 32, offset: 96)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1004, file: !781, line: 137, baseType: !7, size: 32, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !785, file: !781, line: 139, baseType: !1012, size: 256)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !785, file: !781, line: 139, size: 256, elements: !1013)
!1013 = !{!1014, !1015, !1016}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1012, file: !781, line: 140, baseType: !386, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1012, file: !781, line: 141, baseType: !211, size: 32, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1012, file: !781, line: 143, baseType: !222, size: 128, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !785, file: !781, line: 145, baseType: !1018, size: 256)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !785, file: !781, line: 145, size: 256, elements: !1019)
!1019 = !{!1020, !1021, !1023, !1024, !2373}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1018, file: !781, line: 146, baseType: !386, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1018, file: !781, line: 147, baseType: !1022, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !771, line: 509, baseType: !779)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1018, file: !781, line: 148, baseType: !386, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, scope: !1018, file: !781, line: 149, baseType: !1025, size: 64, offset: 192)
!1025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1018, file: !781, line: 149, size: 64, elements: !1026)
!1026 = !{!1027, !2372}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1025, file: !781, line: 150, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !781, line: 388, size: 7296, elements: !1030)
!1030 = !{!1031, !2368}
!1031 = !DIDerivedType(tag: DW_TAG_member, scope: !1029, file: !781, line: 389, baseType: !1032, size: 7296)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1029, file: !781, line: 389, size: 7296, elements: !1033)
!1033 = !{!1034, !1152, !1153, !1154, !1158, !1159, !1160, !1161, !1162, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1203, !1211, !1214, !1260, !1261, !2352, !2353, !2356, !2357, !2358, !2361, !2362, !2363, !2366, !2367}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1032, file: !781, line: 390, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !781, line: 305, size: 1472, elements: !1037)
!1037 = !{!1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1052, !1053, !1058, !1059, !1062, !1146, !1147, !1148, !1149, !1150}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1036, file: !781, line: 308, baseType: !386, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1036, file: !781, line: 309, baseType: !386, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1036, file: !781, line: 313, baseType: !1035, size: 64, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1036, file: !781, line: 313, baseType: !1035, size: 64, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1036, file: !781, line: 315, baseType: !814, size: 192, align: 64, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1036, file: !781, line: 323, baseType: !386, size: 64, offset: 448)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1036, file: !781, line: 327, baseType: !1028, size: 64, offset: 512)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1036, file: !781, line: 333, baseType: !1046, size: 64, offset: 576)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !771, line: 284, baseType: !1047)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !771, line: 284, size: 64, elements: !1048)
!1048 = !{!1049}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1047, file: !771, line: 284, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1051, line: 19, baseType: !386)
!1051 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1036, file: !781, line: 334, baseType: !386, size: 64, offset: 640)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1036, file: !781, line: 343, baseType: !1054, size: 256, offset: 704)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1036, file: !781, line: 340, size: 256, elements: !1055)
!1055 = !{!1056, !1057}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1054, file: !781, line: 341, baseType: !814, size: 192, align: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1054, file: !781, line: 342, baseType: !386, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1036, file: !781, line: 351, baseType: !222, size: 128, offset: 960)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1036, file: !781, line: 353, baseType: !1060, size: 64, offset: 1088)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !781, line: 353, flags: DIFlagFwdDecl)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1036, file: !781, line: 356, baseType: !1063, size: 64, offset: 1152)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1065)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !21, line: 557, size: 832, elements: !1066)
!1066 = !{!1067, !1071, !1072, !1076, !1080, !1120, !1124, !1128, !1132, !1133, !1134, !1138, !1142}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1065, file: !21, line: 558, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !1035}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1065, file: !21, line: 559, baseType: !1068, size: 64, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1065, file: !21, line: 560, baseType: !1073, size: 64, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!215, !1035, !386}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1065, file: !21, line: 561, baseType: !1077, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!215, !1035}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1065, file: !21, line: 562, baseType: !1081, size: 64, offset: 256)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!1084, !1085}
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !781, line: 682, baseType: !7)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !21, line: 508, size: 768, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1091, !1092, !1093, !1100, !1107, !1113, !1114, !1115, !1117, !1119}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1086, file: !21, line: 509, baseType: !1035, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1086, file: !21, line: 510, baseType: !7, size: 32, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1086, file: !21, line: 511, baseType: !192, size: 32, offset: 96)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1086, file: !21, line: 512, baseType: !386, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1086, file: !21, line: 513, baseType: !386, size: 64, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1086, file: !21, line: 514, baseType: !1094, size: 64, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !771, line: 385, baseType: !1096)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !771, line: 385, size: 64, elements: !1097)
!1097 = !{!1098}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1096, file: !771, line: 385, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1051, line: 15, baseType: !386)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1086, file: !21, line: 516, baseType: !1101, size: 64, offset: 320)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !771, line: 359, baseType: !1103)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !771, line: 359, size: 64, elements: !1104)
!1104 = !{!1105}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1103, file: !771, line: 359, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1051, line: 16, baseType: !386)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1086, file: !21, line: 519, baseType: !1108, size: 64, offset: 384)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1051, line: 21, baseType: !1109)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1051, line: 21, size: 64, elements: !1110)
!1110 = !{!1111}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1109, file: !1051, line: 21, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1051, line: 14, baseType: !386)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1086, file: !21, line: 521, baseType: !779, size: 64, offset: 448)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1086, file: !21, line: 522, baseType: !779, size: 64, offset: 512)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1086, file: !21, line: 528, baseType: !1116, size: 64, offset: 576)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1086, file: !21, line: 532, baseType: !1118, size: 64, offset: 640)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1086, file: !21, line: 536, baseType: !1022, size: 64, offset: 704)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1065, file: !21, line: 563, baseType: !1121, size: 64, offset: 320)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!1084, !1085, !20}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1065, file: !21, line: 565, baseType: !1125, size: 64, offset: 384)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{null, !1085, !386, !386}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1065, file: !21, line: 567, baseType: !1129, size: 64, offset: 448)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!386, !1035}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1065, file: !21, line: 571, baseType: !1081, size: 64, offset: 512)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1065, file: !21, line: 574, baseType: !1081, size: 64, offset: 576)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1065, file: !21, line: 579, baseType: !1135, size: 64, offset: 640)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!215, !1035, !386, !218, !215, !215}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1065, file: !21, line: 585, baseType: !1139, size: 64, offset: 704)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!299, !1035}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1065, file: !21, line: 615, baseType: !1143, size: 64, offset: 768)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!779, !1035, !386}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1036, file: !781, line: 359, baseType: !386, size: 64, offset: 1216)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1036, file: !781, line: 361, baseType: !414, size: 64, offset: 1280)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1036, file: !781, line: 362, baseType: !218, size: 64, offset: 1344)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1036, file: !781, line: 365, baseType: !825, size: 64, offset: 1408)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1036, file: !781, line: 373, baseType: !1151, offset: 1472)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !781, line: 296, elements: !253)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1032, file: !781, line: 391, baseType: !810, size: 64, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1032, file: !781, line: 392, baseType: !479, size: 64, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1032, file: !781, line: 394, baseType: !1155, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!386, !414, !386, !386, !386, !386}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1032, file: !781, line: 398, baseType: !386, size: 64, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1032, file: !781, line: 399, baseType: !386, size: 64, offset: 320)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1032, file: !781, line: 405, baseType: !386, size: 64, offset: 384)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1032, file: !781, line: 406, baseType: !386, size: 64, offset: 448)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1032, file: !781, line: 407, baseType: !1163, size: 64, offset: 512)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !771, line: 286, baseType: !1165)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !771, line: 286, size: 64, elements: !1166)
!1166 = !{!1167}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1165, file: !771, line: 286, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1051, line: 18, baseType: !386)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1032, file: !781, line: 416, baseType: !211, size: 32, offset: 576)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1032, file: !781, line: 428, baseType: !211, size: 32, offset: 608)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1032, file: !781, line: 437, baseType: !211, size: 32, offset: 640)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1032, file: !781, line: 447, baseType: !211, size: 32, offset: 672)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1032, file: !781, line: 450, baseType: !825, size: 64, offset: 704)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1032, file: !781, line: 452, baseType: !215, size: 32, offset: 768)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1032, file: !781, line: 454, baseType: !239, offset: 800)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1032, file: !781, line: 457, baseType: !821, size: 256, offset: 832)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1032, file: !781, line: 459, baseType: !222, size: 128, offset: 1088)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1032, file: !781, line: 466, baseType: !386, size: 64, offset: 1216)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1032, file: !781, line: 467, baseType: !386, size: 64, offset: 1280)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1032, file: !781, line: 469, baseType: !386, size: 64, offset: 1344)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1032, file: !781, line: 470, baseType: !386, size: 64, offset: 1408)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1032, file: !781, line: 471, baseType: !827, size: 64, offset: 1472)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1032, file: !781, line: 472, baseType: !386, size: 64, offset: 1536)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1032, file: !781, line: 473, baseType: !386, size: 64, offset: 1600)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1032, file: !781, line: 474, baseType: !386, size: 64, offset: 1664)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1032, file: !781, line: 475, baseType: !386, size: 64, offset: 1728)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1032, file: !781, line: 477, baseType: !239, offset: 1792)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1032, file: !781, line: 478, baseType: !386, size: 64, offset: 1792)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1032, file: !781, line: 478, baseType: !386, size: 64, offset: 1856)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1032, file: !781, line: 478, baseType: !386, size: 64, offset: 1920)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1032, file: !781, line: 478, baseType: !386, size: 64, offset: 1984)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1032, file: !781, line: 479, baseType: !386, size: 64, offset: 2048)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1032, file: !781, line: 479, baseType: !386, size: 64, offset: 2112)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1032, file: !781, line: 479, baseType: !386, size: 64, offset: 2176)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1032, file: !781, line: 480, baseType: !386, size: 64, offset: 2240)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1032, file: !781, line: 480, baseType: !386, size: 64, offset: 2304)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1032, file: !781, line: 480, baseType: !386, size: 64, offset: 2368)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1032, file: !781, line: 480, baseType: !386, size: 64, offset: 2432)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1032, file: !781, line: 482, baseType: !1200, size: 2816, offset: 2496)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 2816, elements: !1201)
!1201 = !{!1202}
!1202 = !DISubrange(count: 44)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1032, file: !781, line: 488, baseType: !1204, size: 256, offset: 5312)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1205, line: 60, size: 256, elements: !1206)
!1205 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1206 = !{!1207}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1204, file: !1205, line: 61, baseType: !1208, size: 256)
!1208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !825, size: 256, elements: !1209)
!1209 = !{!1210}
!1210 = !DISubrange(count: 4)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1032, file: !781, line: 490, baseType: !1212, size: 64, offset: 5568)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !781, line: 490, flags: DIFlagFwdDecl)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1032, file: !781, line: 493, baseType: !1215, size: 896, offset: 5632)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1216, line: 53, baseType: !1217)
!1216 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1216, line: 13, size: 896, elements: !1218)
!1218 = !{!1219, !1220, !1221, !1222, !1225, !1226, !1233, !1234, !1254, !1255, !1256}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1217, file: !1216, line: 18, baseType: !479, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1217, file: !1216, line: 28, baseType: !827, size: 64, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1217, file: !1216, line: 31, baseType: !821, size: 256, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1217, file: !1216, line: 32, baseType: !1223, size: 64, offset: 384)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1216, line: 32, flags: DIFlagFwdDecl)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1217, file: !1216, line: 37, baseType: !378, size: 16, offset: 448)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1217, file: !1216, line: 40, baseType: !1227, size: 192, offset: 512)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1228, line: 53, size: 192, elements: !1229)
!1228 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1229 = !{!1230, !1231, !1232}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1227, file: !1228, line: 54, baseType: !825, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1227, file: !1228, line: 55, baseType: !239, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1227, file: !1228, line: 59, baseType: !222, size: 128, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1217, file: !1216, line: 41, baseType: !218, size: 64, offset: 704)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1217, file: !1216, line: 42, baseType: !1235, size: 64, offset: 768)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1237)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1238, line: 13, size: 896, elements: !1239)
!1238 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1239 = !{!1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1237, file: !1238, line: 14, baseType: !218, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1237, file: !1238, line: 15, baseType: !386, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1237, file: !1238, line: 17, baseType: !386, size: 64, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1237, file: !1238, line: 17, baseType: !386, size: 64, offset: 192)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1237, file: !1238, line: 19, baseType: !371, size: 64, offset: 256)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1237, file: !1238, line: 21, baseType: !371, size: 64, offset: 320)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1237, file: !1238, line: 22, baseType: !371, size: 64, offset: 384)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1237, file: !1238, line: 23, baseType: !371, size: 64, offset: 448)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1237, file: !1238, line: 24, baseType: !371, size: 64, offset: 512)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1237, file: !1238, line: 25, baseType: !371, size: 64, offset: 576)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1237, file: !1238, line: 26, baseType: !371, size: 64, offset: 640)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1237, file: !1238, line: 27, baseType: !371, size: 64, offset: 704)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1237, file: !1238, line: 28, baseType: !371, size: 64, offset: 768)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1237, file: !1238, line: 29, baseType: !371, size: 64, offset: 832)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1217, file: !1216, line: 44, baseType: !211, size: 32, offset: 832)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1217, file: !1216, line: 50, baseType: !913, size: 16, offset: 864)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1217, file: !1216, line: 51, baseType: !1257, size: 16, offset: 880)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !270, line: 18, baseType: !1258)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !272, line: 23, baseType: !1259)
!1259 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1032, file: !781, line: 495, baseType: !386, size: 64, offset: 6528)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1032, file: !781, line: 497, baseType: !1262, size: 64, offset: 6592)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !781, line: 381, size: 384, elements: !1264)
!1264 = !{!1265, !1266, !2351}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1263, file: !781, line: 382, baseType: !211, size: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1263, file: !781, line: 383, baseType: !1267, size: 128, offset: 64)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !781, line: 376, size: 128, elements: !1268)
!1268 = !{!1269, !2349}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1267, file: !781, line: 377, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1272, line: 640, size: 48640, elements: !1273)
!1272 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1273 = !{!1274, !1280, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1295, !1313, !1324, !1409, !1410, !1411, !1422, !1423, !1425, !1426, !1427, !1428, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1507, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1539, !1541, !1542, !1543, !1555, !1556, !1557, !1558, !1559, !1560, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1584, !1589, !1771, !1772, !1773, !1774, !1775, !1778, !1781, !1784, !1787, !1790, !1891, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1937, !1938, !1939, !1940, !1941, !1946, !1947, !1948, !1951, !1952, !1955, !1958, !1961, !1964, !2007, !2010, !2011, !2090, !2091, !2094, !2095, !2098, !2099, !2100, !2104, !2105, !2106, !2119, !2120, !2121, !2131, !2136, !2139, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1271, file: !1272, line: 646, baseType: !1275, size: 128)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1276, line: 56, size: 128, elements: !1277)
!1276 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1277 = !{!1278, !1279}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1275, file: !1276, line: 57, baseType: !386, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1275, file: !1276, line: 58, baseType: !269, size: 32, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1271, file: !1272, line: 649, baseType: !1281, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !371)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1271, file: !1272, line: 657, baseType: !218, size: 64, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1271, file: !1272, line: 658, baseType: !206, size: 32, offset: 256)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1271, file: !1272, line: 660, baseType: !7, size: 32, offset: 288)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1271, file: !1272, line: 661, baseType: !7, size: 32, offset: 320)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1271, file: !1272, line: 684, baseType: !215, size: 32, offset: 352)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1271, file: !1272, line: 686, baseType: !215, size: 32, offset: 384)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1271, file: !1272, line: 687, baseType: !215, size: 32, offset: 416)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1271, file: !1272, line: 688, baseType: !215, size: 32, offset: 448)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1271, file: !1272, line: 689, baseType: !7, size: 32, offset: 480)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1271, file: !1272, line: 691, baseType: !1292, size: 64, offset: 512)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1294)
!1294 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1272, line: 691, flags: DIFlagFwdDecl)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1271, file: !1272, line: 692, baseType: !1296, size: 832, offset: 576)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1272, line: 451, size: 832, elements: !1297)
!1297 = !{!1298, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1296, file: !1272, line: 453, baseType: !1299, size: 128)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1272, line: 325, size: 128, elements: !1300)
!1300 = !{!1301, !1302}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1299, file: !1272, line: 326, baseType: !386, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1299, file: !1272, line: 327, baseType: !269, size: 32, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1296, file: !1272, line: 454, baseType: !814, size: 192, align: 64, offset: 128)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1296, file: !1272, line: 455, baseType: !222, size: 128, offset: 320)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1296, file: !1272, line: 456, baseType: !7, size: 32, offset: 448)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1296, file: !1272, line: 458, baseType: !479, size: 64, offset: 512)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1296, file: !1272, line: 459, baseType: !479, size: 64, offset: 576)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1296, file: !1272, line: 460, baseType: !479, size: 64, offset: 640)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1296, file: !1272, line: 461, baseType: !479, size: 64, offset: 704)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1296, file: !1272, line: 463, baseType: !479, size: 64, offset: 768)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1296, file: !1272, line: 465, baseType: !1312, offset: 832)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1272, line: 415, elements: !253)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1271, file: !1272, line: 693, baseType: !1314, size: 384, offset: 1408)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1272, line: 489, size: 384, elements: !1315)
!1315 = !{!1316, !1317, !1318, !1319, !1320, !1321, !1322}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1314, file: !1272, line: 490, baseType: !222, size: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1314, file: !1272, line: 491, baseType: !386, size: 64, offset: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1314, file: !1272, line: 492, baseType: !386, size: 64, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1314, file: !1272, line: 493, baseType: !7, size: 32, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1314, file: !1272, line: 494, baseType: !378, size: 16, offset: 288)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1314, file: !1272, line: 495, baseType: !378, size: 16, offset: 304)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1314, file: !1272, line: 497, baseType: !1323, size: 64, offset: 320)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1271, file: !1272, line: 697, baseType: !1325, size: 1792, offset: 1792)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1272, line: 507, size: 1792, elements: !1326)
!1326 = !{!1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1406, !1407}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1325, file: !1272, line: 508, baseType: !814, size: 192, align: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1325, file: !1272, line: 515, baseType: !479, size: 64, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1325, file: !1272, line: 516, baseType: !479, size: 64, offset: 256)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1325, file: !1272, line: 517, baseType: !479, size: 64, offset: 320)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1325, file: !1272, line: 518, baseType: !479, size: 64, offset: 384)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1325, file: !1272, line: 519, baseType: !479, size: 64, offset: 448)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1325, file: !1272, line: 526, baseType: !831, size: 64, offset: 512)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1325, file: !1272, line: 527, baseType: !479, size: 64, offset: 576)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1325, file: !1272, line: 528, baseType: !7, size: 32, offset: 640)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1325, file: !1272, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1325, file: !1272, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1325, file: !1272, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1325, file: !1272, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1325, file: !1272, line: 563, baseType: !1341, size: 512, offset: 704)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !27, line: 118, size: 512, elements: !1342)
!1342 = !{!1343, !1351, !1352, !1357, !1400, !1403, !1404, !1405}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1341, file: !27, line: 119, baseType: !1344, size: 256)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1345, line: 9, size: 256, elements: !1346)
!1345 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1346 = !{!1347, !1348}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1344, file: !1345, line: 10, baseType: !814, size: 192, align: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1344, file: !1345, line: 11, baseType: !1349, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1350, line: 29, baseType: !831)
!1350 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1341, file: !27, line: 120, baseType: !1349, size: 64, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1341, file: !27, line: 121, baseType: !1353, size: 64, offset: 320)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!26, !1356}
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1341, file: !27, line: 122, baseType: !1358, size: 64, offset: 384)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !27, line: 159, size: 512, align: 512, elements: !1360)
!1360 = !{!1361, !1381, !1382, !1385, !1390, !1391, !1395, !1399}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1359, file: !27, line: 160, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !27, line: 214, size: 4608, align: 512, elements: !1364)
!1364 = !{!1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1363, file: !27, line: 215, baseType: !834)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1363, file: !27, line: 216, baseType: !7, size: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1363, file: !27, line: 217, baseType: !7, size: 32, offset: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1363, file: !27, line: 218, baseType: !7, size: 32, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1363, file: !27, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1363, file: !27, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1363, file: !27, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1363, file: !27, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1363, file: !27, line: 233, baseType: !1349, size: 64, offset: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1363, file: !27, line: 234, baseType: !1356, size: 64, offset: 192)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1363, file: !27, line: 235, baseType: !1349, size: 64, offset: 256)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1363, file: !27, line: 236, baseType: !1356, size: 64, offset: 320)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1363, file: !27, line: 237, baseType: !1378, size: 4096, offset: 512)
!1378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1359, size: 4096, elements: !1379)
!1379 = !{!1380}
!1380 = !DISubrange(count: 8)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1359, file: !27, line: 161, baseType: !7, size: 32, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1359, file: !27, line: 162, baseType: !1383, size: 32, offset: 96)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !193, line: 27, baseType: !1384)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !369, line: 96, baseType: !215)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1359, file: !27, line: 163, baseType: !1386, size: 32, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !450, line: 276, baseType: !1387)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !450, line: 276, size: 32, elements: !1388)
!1388 = !{!1389}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1387, file: !450, line: 276, baseType: !454, size: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1359, file: !27, line: 164, baseType: !1356, size: 64, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1359, file: !27, line: 165, baseType: !1392, size: 128, offset: 256)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1345, line: 14, size: 128, elements: !1393)
!1393 = !{!1394}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1392, file: !1345, line: 15, baseType: !806, size: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1359, file: !27, line: 166, baseType: !1396, size: 64, offset: 384)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!1349}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1359, file: !27, line: 167, baseType: !1349, size: 64, offset: 448)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1341, file: !27, line: 123, baseType: !1401, size: 8, offset: 448)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !270, line: 17, baseType: !1402)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !272, line: 21, baseType: !485)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1341, file: !27, line: 124, baseType: !1401, size: 8, offset: 456)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1341, file: !27, line: 125, baseType: !1401, size: 8, offset: 464)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1341, file: !27, line: 126, baseType: !1401, size: 8, offset: 472)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1325, file: !1272, line: 572, baseType: !1341, size: 512, offset: 1216)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1325, file: !1272, line: 580, baseType: !1408, size: 64, offset: 1728)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1271, file: !1272, line: 721, baseType: !7, size: 32, offset: 3584)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1271, file: !1272, line: 722, baseType: !215, size: 32, offset: 3616)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1271, file: !1272, line: 723, baseType: !1412, size: 64, offset: 3648)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1414)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1415, line: 17, baseType: !1416)
!1415 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1415, line: 17, size: 64, elements: !1417)
!1417 = !{!1418}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1416, file: !1415, line: 17, baseType: !1419, size: 64)
!1419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 64, elements: !1420)
!1420 = !{!1421}
!1421 = !DISubrange(count: 1)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1271, file: !1272, line: 724, baseType: !1414, size: 64, offset: 3712)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1271, file: !1272, line: 749, baseType: !1424, offset: 3776)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1272, line: 290, elements: !253)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1271, file: !1272, line: 751, baseType: !222, size: 128, offset: 3776)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1271, file: !1272, line: 757, baseType: !1028, size: 64, offset: 3904)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1271, file: !1272, line: 758, baseType: !1028, size: 64, offset: 3968)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1271, file: !1272, line: 761, baseType: !1429, size: 320, offset: 4032)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1205, line: 34, size: 320, elements: !1430)
!1430 = !{!1431, !1432}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1429, file: !1205, line: 35, baseType: !479, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1429, file: !1205, line: 36, baseType: !1433, size: 256, offset: 64)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1035, size: 256, elements: !1209)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1271, file: !1272, line: 766, baseType: !215, size: 32, offset: 4352)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1271, file: !1272, line: 767, baseType: !215, size: 32, offset: 4384)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1271, file: !1272, line: 768, baseType: !215, size: 32, offset: 4416)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1271, file: !1272, line: 770, baseType: !215, size: 32, offset: 4448)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1271, file: !1272, line: 772, baseType: !386, size: 64, offset: 4480)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1271, file: !1272, line: 775, baseType: !7, size: 32, offset: 4544)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1271, file: !1272, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1271, file: !1272, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1271, file: !1272, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1271, file: !1272, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1271, file: !1272, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1271, file: !1272, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1271, file: !1272, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1271, file: !1272, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1271, file: !1272, line: 831, baseType: !386, size: 64, offset: 4672)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1271, file: !1272, line: 833, baseType: !1450, size: 384, offset: 4736)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !32, line: 25, size: 384, elements: !1451)
!1451 = !{!1452, !1457}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1450, file: !32, line: 26, baseType: !1453, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!371, !1456}
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !32, line: 27, baseType: !1458, size: 320, offset: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1450, file: !32, line: 27, size: 320, elements: !1459)
!1459 = !{!1460, !1470, !1497}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1458, file: !32, line: 36, baseType: !1461, size: 320)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1458, file: !32, line: 29, size: 320, elements: !1462)
!1462 = !{!1463, !1465, !1466, !1467, !1468, !1469}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1461, file: !32, line: 30, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1461, file: !32, line: 31, baseType: !269, size: 32, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1461, file: !32, line: 32, baseType: !269, size: 32, offset: 96)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1461, file: !32, line: 33, baseType: !269, size: 32, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1461, file: !32, line: 34, baseType: !479, size: 64, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1461, file: !32, line: 35, baseType: !1464, size: 64, offset: 256)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1458, file: !32, line: 46, baseType: !1471, size: 192)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1458, file: !32, line: 38, size: 192, elements: !1472)
!1472 = !{!1473, !1474, !1475, !1496}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1471, file: !32, line: 39, baseType: !1383, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1471, file: !32, line: 40, baseType: !31, size: 32, offset: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, scope: !1471, file: !32, line: 41, baseType: !1476, size: 64, offset: 64)
!1476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1471, file: !32, line: 41, size: 64, elements: !1477)
!1477 = !{!1478, !1486}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1476, file: !32, line: 42, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1481, line: 7, size: 128, elements: !1482)
!1481 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1482 = !{!1483, !1485}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1480, file: !1481, line: 8, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !369, line: 93, baseType: !591)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1480, file: !1481, line: 9, baseType: !591, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1476, file: !32, line: 43, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1489, line: 7, size: 64, elements: !1490)
!1489 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1490 = !{!1491, !1495}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1488, file: !1489, line: 8, baseType: !1492, size: 32)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1489, line: 5, baseType: !1493)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !270, line: 20, baseType: !1494)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !272, line: 26, baseType: !215)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1488, file: !1489, line: 9, baseType: !1493, size: 32, offset: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1471, file: !32, line: 45, baseType: !479, size: 64, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1458, file: !32, line: 54, baseType: !1498, size: 256)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1458, file: !32, line: 48, size: 256, elements: !1499)
!1499 = !{!1500, !1503, !1504, !1505, !1506}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1498, file: !32, line: 49, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !32, line: 14, flags: DIFlagFwdDecl)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1498, file: !32, line: 50, baseType: !215, size: 32, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1498, file: !32, line: 51, baseType: !215, size: 32, offset: 96)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1498, file: !32, line: 52, baseType: !386, size: 64, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1498, file: !32, line: 53, baseType: !386, size: 64, offset: 192)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1271, file: !1272, line: 835, baseType: !1508, size: 32, offset: 5120)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !193, line: 22, baseType: !1509)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !369, line: 28, baseType: !215)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1271, file: !1272, line: 836, baseType: !1508, size: 32, offset: 5152)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1271, file: !1272, line: 840, baseType: !386, size: 64, offset: 5184)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1271, file: !1272, line: 849, baseType: !1270, size: 64, offset: 5248)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1271, file: !1272, line: 852, baseType: !1270, size: 64, offset: 5312)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1271, file: !1272, line: 857, baseType: !222, size: 128, offset: 5376)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1271, file: !1272, line: 858, baseType: !222, size: 128, offset: 5504)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1271, file: !1272, line: 859, baseType: !1270, size: 64, offset: 5632)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1271, file: !1272, line: 867, baseType: !222, size: 128, offset: 5696)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1271, file: !1272, line: 868, baseType: !222, size: 128, offset: 5824)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1271, file: !1272, line: 871, baseType: !1520, size: 64, offset: 5952)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !60, line: 59, size: 768, elements: !1522)
!1522 = !{!1523, !1524, !1525, !1526, !1528, !1529, !1530, !1531}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1521, file: !60, line: 61, baseType: !206, size: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1521, file: !60, line: 62, baseType: !7, size: 32, offset: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1521, file: !60, line: 63, baseType: !239, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1521, file: !60, line: 65, baseType: !1527, size: 256, offset: 64)
!1527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, size: 256, elements: !1209)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1521, file: !60, line: 66, baseType: !693, size: 64, offset: 320)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1521, file: !60, line: 68, baseType: !234, size: 128, offset: 384)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1521, file: !60, line: 69, baseType: !427, size: 128, align: 64, offset: 512)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1521, file: !60, line: 70, baseType: !1532, size: 128, offset: 640)
!1532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1533, size: 128, elements: !1420)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !60, line: 54, size: 128, elements: !1534)
!1534 = !{!1535, !1536}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1533, file: !60, line: 55, baseType: !215, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1533, file: !60, line: 56, baseType: !1537, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !60, line: 56, flags: DIFlagFwdDecl)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1271, file: !1272, line: 872, baseType: !1540, size: 512, offset: 6016)
!1540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !697, size: 512, elements: !1209)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1271, file: !1272, line: 873, baseType: !222, size: 128, offset: 6528)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1271, file: !1272, line: 874, baseType: !222, size: 128, offset: 6656)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1271, file: !1272, line: 876, baseType: !1544, size: 64, offset: 6784)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1546, line: 26, size: 192, elements: !1547)
!1546 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1547 = !{!1548, !1549}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1545, file: !1546, line: 27, baseType: !7, size: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1545, file: !1546, line: 28, baseType: !1550, size: 128, offset: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1551, line: 43, size: 128, elements: !1552)
!1551 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1552 = !{!1553, !1554}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1550, file: !1551, line: 44, baseType: !834)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1550, file: !1551, line: 45, baseType: !222, size: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1271, file: !1272, line: 879, baseType: !763, size: 64, offset: 6848)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1271, file: !1272, line: 882, baseType: !763, size: 64, offset: 6912)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1271, file: !1272, line: 884, baseType: !479, size: 64, offset: 6976)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1271, file: !1272, line: 885, baseType: !479, size: 64, offset: 7040)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1271, file: !1272, line: 890, baseType: !479, size: 64, offset: 7104)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1271, file: !1272, line: 891, baseType: !1561, size: 128, offset: 7168)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1272, line: 242, size: 128, elements: !1562)
!1562 = !{!1563, !1564, !1565}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1561, file: !1272, line: 244, baseType: !479, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1561, file: !1272, line: 245, baseType: !479, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1561, file: !1272, line: 246, baseType: !834, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1271, file: !1272, line: 900, baseType: !386, size: 64, offset: 7296)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1271, file: !1272, line: 901, baseType: !386, size: 64, offset: 7360)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1271, file: !1272, line: 904, baseType: !479, size: 64, offset: 7424)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1271, file: !1272, line: 907, baseType: !479, size: 64, offset: 7488)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1271, file: !1272, line: 910, baseType: !386, size: 64, offset: 7552)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1271, file: !1272, line: 911, baseType: !386, size: 64, offset: 7616)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1271, file: !1272, line: 914, baseType: !1573, size: 640, offset: 7680)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1574, line: 123, size: 640, elements: !1575)
!1574 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1575 = !{!1576, !1582, !1583}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1573, file: !1574, line: 124, baseType: !1577, size: 576)
!1577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1578, size: 576, elements: !337)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1574, line: 108, size: 192, elements: !1579)
!1579 = !{!1580, !1581}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1578, file: !1574, line: 109, baseType: !479, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1578, file: !1574, line: 110, baseType: !1392, size: 128, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1573, file: !1574, line: 125, baseType: !7, size: 32, offset: 576)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1573, file: !1574, line: 126, baseType: !7, size: 32, offset: 608)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1271, file: !1272, line: 917, baseType: !1585, size: 192, offset: 8320)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1574, line: 134, size: 192, elements: !1586)
!1586 = !{!1587, !1588}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1585, file: !1574, line: 135, baseType: !427, size: 128, align: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1585, file: !1574, line: 136, baseType: !7, size: 32, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1271, file: !1272, line: 923, baseType: !1590, size: 64, offset: 8512)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1592)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1593, line: 111, size: 1280, elements: !1594)
!1593 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1594 = !{!1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1612, !1613, !1614, !1615, !1616, !1617, !1724, !1725, !1726, !1727, !1753, !1756, !1766}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1592, file: !1593, line: 112, baseType: !211, size: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1592, file: !1593, line: 120, baseType: !493, size: 32, offset: 32)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1592, file: !1593, line: 121, baseType: !501, size: 32, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1592, file: !1593, line: 122, baseType: !493, size: 32, offset: 96)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1592, file: !1593, line: 123, baseType: !501, size: 32, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1592, file: !1593, line: 124, baseType: !493, size: 32, offset: 160)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1592, file: !1593, line: 125, baseType: !501, size: 32, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1592, file: !1593, line: 126, baseType: !493, size: 32, offset: 224)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1592, file: !1593, line: 127, baseType: !501, size: 32, offset: 256)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1592, file: !1593, line: 128, baseType: !7, size: 32, offset: 288)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1592, file: !1593, line: 129, baseType: !1606, size: 64, offset: 320)
!1606 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1607, line: 26, baseType: !1608)
!1607 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1607, line: 24, size: 64, elements: !1609)
!1609 = !{!1610}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1608, file: !1607, line: 25, baseType: !1611, size: 64)
!1611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 64, elements: !283)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1592, file: !1593, line: 130, baseType: !1606, size: 64, offset: 384)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1592, file: !1593, line: 131, baseType: !1606, size: 64, offset: 448)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1592, file: !1593, line: 132, baseType: !1606, size: 64, offset: 512)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1592, file: !1593, line: 133, baseType: !1606, size: 64, offset: 576)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1592, file: !1593, line: 135, baseType: !485, size: 8, offset: 640)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1592, file: !1593, line: 137, baseType: !1618, size: 64, offset: 704)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1620, line: 189, size: 1664, elements: !1621)
!1620 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1621 = !{!1622, !1623, !1626, !1631, !1632, !1635, !1636, !1641, !1642, !1643, !1644, !1646, !1647, !1648, !1649, !1650, !1688, !1709}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1619, file: !1620, line: 190, baseType: !206, size: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1619, file: !1620, line: 191, baseType: !1624, size: 32, offset: 32)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1620, line: 28, baseType: !1625)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !193, line: 98, baseType: !1493)
!1626 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !1620, line: 192, baseType: !1627, size: 192, offset: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1619, file: !1620, line: 192, size: 192, elements: !1628)
!1628 = !{!1629, !1630}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1627, file: !1620, line: 193, baseType: !222, size: 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1627, file: !1620, line: 194, baseType: !814, size: 192, align: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1619, file: !1620, line: 199, baseType: !821, size: 256, offset: 256)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1619, file: !1620, line: 200, baseType: !1633, size: 64, offset: 512)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1620, line: 200, flags: DIFlagFwdDecl)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1619, file: !1620, line: 201, baseType: !218, size: 64, offset: 576)
!1636 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !1620, line: 202, baseType: !1637, size: 64, offset: 640)
!1637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1619, file: !1620, line: 202, size: 64, elements: !1638)
!1638 = !{!1639, !1640}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1637, file: !1620, line: 203, baseType: !597, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1637, file: !1620, line: 204, baseType: !597, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1619, file: !1620, line: 206, baseType: !597, size: 64, offset: 704)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1619, file: !1620, line: 207, baseType: !493, size: 32, offset: 768)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1619, file: !1620, line: 208, baseType: !501, size: 32, offset: 800)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1619, file: !1620, line: 209, baseType: !1645, size: 32, offset: 832)
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1620, line: 31, baseType: !617)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1619, file: !1620, line: 210, baseType: !378, size: 16, offset: 864)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1619, file: !1620, line: 211, baseType: !378, size: 16, offset: 880)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1619, file: !1620, line: 215, baseType: !1259, size: 16, offset: 896)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1619, file: !1620, line: 222, baseType: !386, size: 64, offset: 960)
!1650 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !1620, line: 239, baseType: !1651, size: 320, offset: 1024)
!1651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1619, file: !1620, line: 239, size: 320, elements: !1652)
!1652 = !{!1653, !1680}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1651, file: !1620, line: 240, baseType: !1654, size: 320)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1620, line: 108, size: 320, elements: !1655)
!1655 = !{!1656, !1657, !1669, !1672, !1679}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1654, file: !1620, line: 110, baseType: !386, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, scope: !1654, file: !1620, line: 111, baseType: !1658, size: 64, offset: 64)
!1658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1654, file: !1620, line: 111, size: 64, elements: !1659)
!1659 = !{!1660, !1668}
!1660 = !DIDerivedType(tag: DW_TAG_member, scope: !1658, file: !1620, line: 112, baseType: !1661, size: 64)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1658, file: !1620, line: 112, size: 64, elements: !1662)
!1662 = !{!1663, !1664}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1661, file: !1620, line: 114, baseType: !913, size: 16)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1661, file: !1620, line: 115, baseType: !1665, size: 48, offset: 16)
!1665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 48, elements: !1666)
!1666 = !{!1667}
!1667 = !DISubrange(count: 6)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1658, file: !1620, line: 121, baseType: !386, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1654, file: !1620, line: 123, baseType: !1670, size: 64, offset: 128)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1620, line: 96, flags: DIFlagFwdDecl)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1654, file: !1620, line: 124, baseType: !1673, size: 64, offset: 192)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1620, line: 102, size: 192, elements: !1675)
!1675 = !{!1676, !1677, !1678}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1674, file: !1620, line: 103, baseType: !427, size: 128, align: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1674, file: !1620, line: 104, baseType: !206, size: 32, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1674, file: !1620, line: 105, baseType: !548, size: 8, offset: 160)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1654, file: !1620, line: 125, baseType: !299, size: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, scope: !1651, file: !1620, line: 241, baseType: !1681, size: 320)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1651, file: !1620, line: 241, size: 320, elements: !1682)
!1682 = !{!1683, !1684, !1685, !1686, !1687}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1681, file: !1620, line: 242, baseType: !386, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1681, file: !1620, line: 243, baseType: !386, size: 64, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1681, file: !1620, line: 244, baseType: !1670, size: 64, offset: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1681, file: !1620, line: 245, baseType: !1673, size: 64, offset: 192)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1681, file: !1620, line: 246, baseType: !336, size: 64, offset: 256)
!1688 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !1620, line: 254, baseType: !1689, size: 256, offset: 1344)
!1689 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1619, file: !1620, line: 254, size: 256, elements: !1690)
!1690 = !{!1691, !1697}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1689, file: !1620, line: 255, baseType: !1692, size: 256)
!1692 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1620, line: 128, size: 256, elements: !1693)
!1693 = !{!1694, !1695}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1692, file: !1620, line: 129, baseType: !218, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1692, file: !1620, line: 130, baseType: !1696, size: 256)
!1696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 256, elements: !1209)
!1697 = !DIDerivedType(tag: DW_TAG_member, scope: !1689, file: !1620, line: 256, baseType: !1698, size: 256)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1689, file: !1620, line: 256, size: 256, elements: !1699)
!1699 = !{!1700, !1701}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1698, file: !1620, line: 258, baseType: !222, size: 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1698, file: !1620, line: 259, baseType: !1702, size: 128, offset: 128)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1703, line: 22, size: 128, elements: !1704)
!1703 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1704 = !{!1705, !1708}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1702, file: !1703, line: 23, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1703, line: 23, flags: DIFlagFwdDecl)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1702, file: !1703, line: 24, baseType: !386, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1619, file: !1620, line: 274, baseType: !1710, size: 64, offset: 1600)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1620, line: 170, size: 192, elements: !1712)
!1712 = !{!1713, !1722, !1723}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1711, file: !1620, line: 171, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1620, line: 165, baseType: !1715)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!215, !1618, !1718, !1720, !1618}
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1671)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1692)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1711, file: !1620, line: 172, baseType: !1618, size: 64, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1711, file: !1620, line: 173, baseType: !1670, size: 64, offset: 128)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1592, file: !1593, line: 138, baseType: !1618, size: 64, offset: 768)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1592, file: !1593, line: 139, baseType: !1618, size: 64, offset: 832)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1592, file: !1593, line: 140, baseType: !1618, size: 64, offset: 896)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1592, file: !1593, line: 145, baseType: !1728, size: 64, offset: 960)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1730, line: 13, size: 896, elements: !1731)
!1730 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1731 = !{!1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1729, file: !1730, line: 14, baseType: !206, size: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1729, file: !1730, line: 15, baseType: !211, size: 32, offset: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1729, file: !1730, line: 16, baseType: !211, size: 32, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1729, file: !1730, line: 21, baseType: !825, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1729, file: !1730, line: 27, baseType: !386, size: 64, offset: 192)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1729, file: !1730, line: 28, baseType: !386, size: 64, offset: 256)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1729, file: !1730, line: 29, baseType: !825, size: 64, offset: 320)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1729, file: !1730, line: 32, baseType: !697, size: 128, offset: 384)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1729, file: !1730, line: 33, baseType: !493, size: 32, offset: 512)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1729, file: !1730, line: 37, baseType: !825, size: 64, offset: 576)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1729, file: !1730, line: 44, baseType: !1743, size: 256, offset: 640)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1744, line: 15, size: 256, elements: !1745)
!1744 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1745 = !{!1746, !1747, !1748, !1749, !1750, !1751, !1752}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1743, file: !1744, line: 16, baseType: !834)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1743, file: !1744, line: 18, baseType: !215, size: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1743, file: !1744, line: 19, baseType: !215, size: 32, offset: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1743, file: !1744, line: 20, baseType: !215, size: 32, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1743, file: !1744, line: 21, baseType: !215, size: 32, offset: 96)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1743, file: !1744, line: 22, baseType: !386, size: 64, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1743, file: !1744, line: 23, baseType: !386, size: 64, offset: 192)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1592, file: !1593, line: 146, baseType: !1754, size: 64, offset: 1024)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !494, line: 18, flags: DIFlagFwdDecl)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1592, file: !1593, line: 147, baseType: !1757, size: 64, offset: 1088)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1593, line: 25, size: 64, elements: !1759)
!1759 = !{!1760, !1761, !1762}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1758, file: !1593, line: 26, baseType: !211, size: 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1758, file: !1593, line: 27, baseType: !215, size: 32, offset: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1758, file: !1593, line: 28, baseType: !1763, offset: 64)
!1763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, elements: !1764)
!1764 = !{!1765}
!1765 = !DISubrange(count: 0)
!1766 = !DIDerivedType(tag: DW_TAG_member, scope: !1592, file: !1593, line: 149, baseType: !1767, size: 128, offset: 1152)
!1767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1592, file: !1593, line: 149, size: 128, elements: !1768)
!1768 = !{!1769, !1770}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1767, file: !1593, line: 150, baseType: !215, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1767, file: !1593, line: 151, baseType: !427, size: 128, align: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1271, file: !1272, line: 926, baseType: !1590, size: 64, offset: 8576)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1271, file: !1272, line: 929, baseType: !1590, size: 64, offset: 8640)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1271, file: !1272, line: 933, baseType: !1618, size: 64, offset: 8704)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1271, file: !1272, line: 943, baseType: !264, size: 128, offset: 8768)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1271, file: !1272, line: 945, baseType: !1776, size: 64, offset: 8896)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1272, line: 49, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1271, file: !1272, line: 956, baseType: !1779, size: 64, offset: 8960)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1272, line: 45, flags: DIFlagFwdDecl)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1271, file: !1272, line: 959, baseType: !1782, size: 64, offset: 9024)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1272, line: 959, flags: DIFlagFwdDecl)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1271, file: !1272, line: 962, baseType: !1785, size: 64, offset: 9088)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1272, line: 66, flags: DIFlagFwdDecl)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1271, file: !1272, line: 966, baseType: !1788, size: 64, offset: 9152)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1272, line: 50, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1271, file: !1272, line: 969, baseType: !1791, size: 64, offset: 9216)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1793, line: 82, size: 7296, elements: !1794)
!1793 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1794 = !{!1795, !1796, !1797, !1798, !1799, !1800, !1801, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1830, !1839, !1840, !1842, !1843, !1844, !1847, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1877, !1878, !1885, !1886, !1887, !1888, !1889, !1890}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1792, file: !1793, line: 83, baseType: !206, size: 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1792, file: !1793, line: 84, baseType: !211, size: 32, offset: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1792, file: !1793, line: 85, baseType: !215, size: 32, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1792, file: !1793, line: 86, baseType: !222, size: 128, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1792, file: !1793, line: 88, baseType: !234, size: 128, offset: 256)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1792, file: !1793, line: 91, baseType: !1270, size: 64, offset: 384)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1792, file: !1793, line: 94, baseType: !1802, size: 192, offset: 448)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1803, line: 30, size: 192, elements: !1804)
!1803 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1804 = !{!1805, !1806}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1802, file: !1803, line: 31, baseType: !222, size: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1802, file: !1803, line: 32, baseType: !1807, size: 64, offset: 128)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1808, line: 25, baseType: !1809)
!1808 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1808, line: 23, size: 64, elements: !1810)
!1810 = !{!1811}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1809, file: !1808, line: 24, baseType: !1419, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1792, file: !1793, line: 97, baseType: !693, size: 64, offset: 640)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1792, file: !1793, line: 100, baseType: !215, size: 32, offset: 704)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1792, file: !1793, line: 106, baseType: !215, size: 32, offset: 736)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1792, file: !1793, line: 107, baseType: !1270, size: 64, offset: 768)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1792, file: !1793, line: 110, baseType: !215, size: 32, offset: 832)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1792, file: !1793, line: 111, baseType: !7, size: 32, offset: 864)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1792, file: !1793, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1792, file: !1793, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1792, file: !1793, line: 128, baseType: !215, size: 32, offset: 928)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1792, file: !1793, line: 129, baseType: !222, size: 128, offset: 960)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1792, file: !1793, line: 132, baseType: !1341, size: 512, offset: 1088)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1792, file: !1793, line: 133, baseType: !1349, size: 64, offset: 1600)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1792, file: !1793, line: 140, baseType: !1825, size: 256, offset: 1664)
!1825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1826, size: 256, elements: !283)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1793, line: 38, size: 128, elements: !1827)
!1827 = !{!1828, !1829}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1826, file: !1793, line: 39, baseType: !479, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1826, file: !1793, line: 40, baseType: !479, size: 64, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1792, file: !1793, line: 146, baseType: !1831, size: 192, offset: 1920)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1793, line: 66, size: 192, elements: !1832)
!1832 = !{!1833}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1831, file: !1793, line: 67, baseType: !1834, size: 192)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1793, line: 47, size: 192, elements: !1835)
!1835 = !{!1836, !1837, !1838}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1834, file: !1793, line: 48, baseType: !827, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1834, file: !1793, line: 49, baseType: !827, size: 64, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1834, file: !1793, line: 50, baseType: !827, size: 64, offset: 128)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1792, file: !1793, line: 150, baseType: !1573, size: 640, offset: 2112)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1792, file: !1793, line: 153, baseType: !1841, size: 256, offset: 2752)
!1841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1520, size: 256, elements: !1209)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1792, file: !1793, line: 159, baseType: !1520, size: 64, offset: 3008)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1792, file: !1793, line: 162, baseType: !215, size: 32, offset: 3072)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1792, file: !1793, line: 164, baseType: !1845, size: 64, offset: 3136)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1793, line: 164, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1792, file: !1793, line: 175, baseType: !1848, size: 32, offset: 3200)
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !450, line: 805, baseType: !1849)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !450, line: 798, size: 32, elements: !1850)
!1850 = !{!1851, !1852}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1849, file: !450, line: 803, baseType: !449, size: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1849, file: !450, line: 804, baseType: !239, offset: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1792, file: !1793, line: 176, baseType: !479, size: 64, offset: 3264)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1792, file: !1793, line: 176, baseType: !479, size: 64, offset: 3328)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1792, file: !1793, line: 176, baseType: !479, size: 64, offset: 3392)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1792, file: !1793, line: 176, baseType: !479, size: 64, offset: 3456)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1792, file: !1793, line: 177, baseType: !479, size: 64, offset: 3520)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1792, file: !1793, line: 178, baseType: !479, size: 64, offset: 3584)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1792, file: !1793, line: 179, baseType: !1561, size: 128, offset: 3648)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1792, file: !1793, line: 180, baseType: !386, size: 64, offset: 3776)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1792, file: !1793, line: 180, baseType: !386, size: 64, offset: 3840)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1792, file: !1793, line: 180, baseType: !386, size: 64, offset: 3904)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1792, file: !1793, line: 180, baseType: !386, size: 64, offset: 3968)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1792, file: !1793, line: 181, baseType: !386, size: 64, offset: 4032)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1792, file: !1793, line: 181, baseType: !386, size: 64, offset: 4096)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1792, file: !1793, line: 181, baseType: !386, size: 64, offset: 4160)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1792, file: !1793, line: 181, baseType: !386, size: 64, offset: 4224)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1792, file: !1793, line: 182, baseType: !386, size: 64, offset: 4288)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1792, file: !1793, line: 182, baseType: !386, size: 64, offset: 4352)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1792, file: !1793, line: 182, baseType: !386, size: 64, offset: 4416)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1792, file: !1793, line: 182, baseType: !386, size: 64, offset: 4480)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1792, file: !1793, line: 183, baseType: !386, size: 64, offset: 4544)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1792, file: !1793, line: 183, baseType: !386, size: 64, offset: 4608)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1792, file: !1793, line: 184, baseType: !1875, offset: 4672)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1876, line: 12, elements: !253)
!1876 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1792, file: !1793, line: 192, baseType: !481, size: 64, offset: 4672)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1792, file: !1793, line: 203, baseType: !1879, size: 2048, offset: 4736)
!1879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1880, size: 2048, elements: !266)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1881, line: 43, size: 128, elements: !1882)
!1881 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1882 = !{!1883, !1884}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1880, file: !1881, line: 44, baseType: !385, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1880, file: !1881, line: 45, baseType: !385, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1792, file: !1793, line: 220, baseType: !548, size: 8, offset: 6784)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1792, file: !1793, line: 221, baseType: !1259, size: 16, offset: 6800)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1792, file: !1793, line: 222, baseType: !1259, size: 16, offset: 6816)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1792, file: !1793, line: 224, baseType: !1028, size: 64, offset: 6848)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1792, file: !1793, line: 227, baseType: !1227, size: 192, offset: 6912)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1792, file: !1793, line: 233, baseType: !1227, size: 192, offset: 7104)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1271, file: !1272, line: 970, baseType: !1892, size: 64, offset: 9280)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1793, line: 20, size: 16576, elements: !1894)
!1894 = !{!1895, !1896, !1897, !1898}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1893, file: !1793, line: 21, baseType: !239)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1893, file: !1793, line: 22, baseType: !206, size: 32)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1893, file: !1793, line: 23, baseType: !234, size: 128, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1893, file: !1793, line: 24, baseType: !1899, size: 16384, offset: 192)
!1899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1900, size: 16384, elements: !341)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1803, line: 49, size: 256, elements: !1901)
!1901 = !{!1902}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1900, file: !1803, line: 50, baseType: !1903, size: 256)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1803, line: 35, size: 256, elements: !1904)
!1904 = !{!1905, !1912, !1913, !1919}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1903, file: !1803, line: 37, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1907, line: 19, baseType: !1908)
!1907 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1907, line: 18, baseType: !1910)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{null, !215}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1903, file: !1803, line: 38, baseType: !386, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1903, file: !1803, line: 44, baseType: !1914, size: 64, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1907, line: 22, baseType: !1915)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1907, line: 21, baseType: !1917)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{null}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1903, file: !1803, line: 46, baseType: !1807, size: 64, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1271, file: !1272, line: 971, baseType: !1807, size: 64, offset: 9344)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1271, file: !1272, line: 972, baseType: !1807, size: 64, offset: 9408)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1271, file: !1272, line: 974, baseType: !1807, size: 64, offset: 9472)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1271, file: !1272, line: 975, baseType: !1802, size: 192, offset: 9536)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1271, file: !1272, line: 976, baseType: !386, size: 64, offset: 9728)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1271, file: !1272, line: 977, baseType: !383, size: 64, offset: 9792)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1271, file: !1272, line: 978, baseType: !7, size: 32, offset: 9856)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1271, file: !1272, line: 980, baseType: !430, size: 64, offset: 9920)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1271, file: !1272, line: 989, baseType: !1929, size: 128, offset: 9984)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1930, line: 35, size: 128, elements: !1931)
!1930 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1931 = !{!1932, !1933, !1934}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1929, file: !1930, line: 36, baseType: !215, size: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1929, file: !1930, line: 37, baseType: !211, size: 32, offset: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1929, file: !1930, line: 38, baseType: !1935, size: 64, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1930, line: 23, flags: DIFlagFwdDecl)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1271, file: !1272, line: 992, baseType: !479, size: 64, offset: 10112)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1271, file: !1272, line: 993, baseType: !479, size: 64, offset: 10176)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1271, file: !1272, line: 996, baseType: !239, offset: 10240)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1271, file: !1272, line: 999, baseType: !834, offset: 10240)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1271, file: !1272, line: 1001, baseType: !1942, size: 64, offset: 10240)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1272, line: 636, size: 64, elements: !1943)
!1943 = !{!1944}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1942, file: !1272, line: 637, baseType: !1945, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1271, file: !1272, line: 1005, baseType: !806, size: 128, offset: 10304)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1271, file: !1272, line: 1007, baseType: !1270, size: 64, offset: 10432)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1271, file: !1272, line: 1009, baseType: !1949, size: 64, offset: 10496)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1272, line: 1009, flags: DIFlagFwdDecl)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1271, file: !1272, line: 1043, baseType: !218, size: 64, offset: 10560)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1271, file: !1272, line: 1046, baseType: !1953, size: 64, offset: 10624)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1272, line: 41, flags: DIFlagFwdDecl)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1271, file: !1272, line: 1050, baseType: !1956, size: 64, offset: 10688)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1272, line: 42, flags: DIFlagFwdDecl)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1271, file: !1272, line: 1054, baseType: !1959, size: 64, offset: 10752)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1272, line: 55, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1271, file: !1272, line: 1056, baseType: !1962, size: 64, offset: 10816)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1272, line: 40, flags: DIFlagFwdDecl)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1271, file: !1272, line: 1058, baseType: !1965, size: 64, offset: 10880)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1967, line: 99, size: 704, elements: !1968)
!1967 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1968 = !{!1969, !1970, !1971, !1972, !1973, !1974, !1975, !1994, !1995}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1966, file: !1967, line: 100, baseType: !825, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1966, file: !1967, line: 101, baseType: !211, size: 32, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1966, file: !1967, line: 102, baseType: !211, size: 32, offset: 96)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1966, file: !1967, line: 105, baseType: !239, offset: 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1966, file: !1967, line: 107, baseType: !378, size: 16, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1966, file: !1967, line: 109, baseType: !797, size: 128, offset: 192)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1966, file: !1967, line: 110, baseType: !1976, size: 64, offset: 320)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1967, line: 73, size: 448, elements: !1978)
!1978 = !{!1979, !1982, !1983, !1988, !1993}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1977, file: !1967, line: 74, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1967, line: 74, flags: DIFlagFwdDecl)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1977, file: !1967, line: 75, baseType: !1965, size: 64, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, scope: !1977, file: !1967, line: 83, baseType: !1984, size: 128, offset: 128)
!1984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1977, file: !1967, line: 83, size: 128, elements: !1985)
!1985 = !{!1986, !1987}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1984, file: !1967, line: 84, baseType: !222, size: 128)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1984, file: !1967, line: 85, baseType: !989, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, scope: !1977, file: !1967, line: 87, baseType: !1989, size: 128, offset: 256)
!1989 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1977, file: !1967, line: 87, size: 128, elements: !1990)
!1990 = !{!1991, !1992}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1989, file: !1967, line: 88, baseType: !697, size: 128)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1989, file: !1967, line: 89, baseType: !427, size: 128, align: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1977, file: !1967, line: 92, baseType: !7, size: 32, offset: 384)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1966, file: !1967, line: 111, baseType: !693, size: 64, offset: 384)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1966, file: !1967, line: 113, baseType: !1996, size: 256, offset: 448)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1997, line: 102, size: 256, elements: !1998)
!1997 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1998 = !{!1999, !2000, !2001}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1996, file: !1997, line: 103, baseType: !825, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1996, file: !1997, line: 104, baseType: !222, size: 128, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1996, file: !1997, line: 105, baseType: !2002, size: 64, offset: 192)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1997, line: 21, baseType: !2003)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{null, !2006}
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1271, file: !1272, line: 1061, baseType: !2008, size: 64, offset: 10944)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1272, line: 43, flags: DIFlagFwdDecl)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1271, file: !1272, line: 1064, baseType: !386, size: 64, offset: 11008)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1271, file: !1272, line: 1065, baseType: !2012, size: 64, offset: 11072)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1803, line: 14, baseType: !2014)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1803, line: 12, size: 384, elements: !2015)
!2015 = !{!2016}
!2016 = !DIDerivedType(tag: DW_TAG_member, scope: !2014, file: !1803, line: 13, baseType: !2017, size: 384)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2014, file: !1803, line: 13, size: 384, elements: !2018)
!2018 = !{!2019, !2020, !2021, !2022}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2017, file: !1803, line: 13, baseType: !215, size: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2017, file: !1803, line: 13, baseType: !215, size: 32, offset: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2017, file: !1803, line: 13, baseType: !215, size: 32, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2017, file: !1803, line: 13, baseType: !2023, size: 256, offset: 128)
!2023 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2024, line: 32, size: 256, elements: !2025)
!2024 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2025 = !{!2026, !2031, !2044, !2050, !2059, !2079, !2084}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2023, file: !2024, line: 37, baseType: !2027, size: 64)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !2024, line: 34, size: 64, elements: !2028)
!2028 = !{!2029, !2030}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2027, file: !2024, line: 35, baseType: !1509, size: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2027, file: !2024, line: 36, baseType: !499, size: 32, offset: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2023, file: !2024, line: 45, baseType: !2032, size: 192)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !2024, line: 40, size: 192, elements: !2033)
!2033 = !{!2034, !2036, !2037, !2043}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2032, file: !2024, line: 41, baseType: !2035, size: 32)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !369, line: 95, baseType: !215)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2032, file: !2024, line: 42, baseType: !215, size: 32, offset: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2032, file: !2024, line: 43, baseType: !2038, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2024, line: 11, baseType: !2039)
!2039 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2024, line: 8, size: 64, elements: !2040)
!2040 = !{!2041, !2042}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2039, file: !2024, line: 9, baseType: !215, size: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2039, file: !2024, line: 10, baseType: !218, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2032, file: !2024, line: 44, baseType: !215, size: 32, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2023, file: !2024, line: 52, baseType: !2045, size: 128)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !2024, line: 48, size: 128, elements: !2046)
!2046 = !{!2047, !2048, !2049}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2045, file: !2024, line: 49, baseType: !1509, size: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2045, file: !2024, line: 50, baseType: !499, size: 32, offset: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2045, file: !2024, line: 51, baseType: !2038, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2023, file: !2024, line: 61, baseType: !2051, size: 256)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !2024, line: 55, size: 256, elements: !2052)
!2052 = !{!2053, !2054, !2055, !2056, !2058}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2051, file: !2024, line: 56, baseType: !1509, size: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2051, file: !2024, line: 57, baseType: !499, size: 32, offset: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2051, file: !2024, line: 58, baseType: !215, size: 32, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2051, file: !2024, line: 59, baseType: !2057, size: 64, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !369, line: 94, baseType: !370)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2051, file: !2024, line: 60, baseType: !2057, size: 64, offset: 192)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2023, file: !2024, line: 95, baseType: !2060, size: 256)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !2024, line: 64, size: 256, elements: !2061)
!2061 = !{!2062, !2063}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2060, file: !2024, line: 65, baseType: !218, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, scope: !2060, file: !2024, line: 77, baseType: !2064, size: 192, offset: 64)
!2064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2060, file: !2024, line: 77, size: 192, elements: !2065)
!2065 = !{!2066, !2067, !2074}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2064, file: !2024, line: 82, baseType: !1259, size: 16)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2064, file: !2024, line: 88, baseType: !2068, size: 192)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2064, file: !2024, line: 84, size: 192, elements: !2069)
!2069 = !{!2070, !2072, !2073}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2068, file: !2024, line: 85, baseType: !2071, size: 64)
!2071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 64, elements: !1379)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2068, file: !2024, line: 86, baseType: !218, size: 64, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2068, file: !2024, line: 87, baseType: !218, size: 64, offset: 128)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2064, file: !2024, line: 93, baseType: !2075, size: 96)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2064, file: !2024, line: 90, size: 96, elements: !2076)
!2076 = !{!2077, !2078}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2075, file: !2024, line: 91, baseType: !2071, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2075, file: !2024, line: 92, baseType: !271, size: 32, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2023, file: !2024, line: 101, baseType: !2080, size: 128)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !2024, line: 98, size: 128, elements: !2081)
!2081 = !{!2082, !2083}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2080, file: !2024, line: 99, baseType: !371, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2080, file: !2024, line: 100, baseType: !215, size: 32, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2023, file: !2024, line: 108, baseType: !2085, size: 128)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !2024, line: 104, size: 128, elements: !2086)
!2086 = !{!2087, !2088, !2089}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2085, file: !2024, line: 105, baseType: !218, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2085, file: !2024, line: 106, baseType: !215, size: 32, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2085, file: !2024, line: 107, baseType: !7, size: 32, offset: 96)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1271, file: !1272, line: 1067, baseType: !1875, offset: 11136)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1271, file: !1272, line: 1099, baseType: !2092, size: 64, offset: 11136)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1272, line: 56, flags: DIFlagFwdDecl)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1271, file: !1272, line: 1103, baseType: !222, size: 128, offset: 11200)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1271, file: !1272, line: 1104, baseType: !2096, size: 64, offset: 11328)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1272, line: 46, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1271, file: !1272, line: 1105, baseType: !1227, size: 192, offset: 11392)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1271, file: !1272, line: 1106, baseType: !7, size: 32, offset: 11584)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1271, file: !1272, line: 1109, baseType: !2101, size: 128, offset: 11648)
!2101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2102, size: 128, elements: !283)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1272, line: 51, flags: DIFlagFwdDecl)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1271, file: !1272, line: 1110, baseType: !1227, size: 192, offset: 11776)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1271, file: !1272, line: 1111, baseType: !222, size: 128, offset: 11968)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1271, file: !1272, line: 1173, baseType: !2107, size: 64, offset: 12096)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2109, line: 62, size: 256, align: 256, elements: !2110)
!2109 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2110 = !{!2111, !2112, !2113, !2118}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2108, file: !2109, line: 75, baseType: !271, size: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2108, file: !2109, line: 90, baseType: !271, size: 32, offset: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2108, file: !2109, line: 124, baseType: !2114, size: 64, offset: 64)
!2114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2108, file: !2109, line: 109, size: 64, elements: !2115)
!2115 = !{!2116, !2117}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2114, file: !2109, line: 110, baseType: !480, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2114, file: !2109, line: 112, baseType: !480, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2108, file: !2109, line: 144, baseType: !271, size: 32, offset: 128)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1271, file: !1272, line: 1174, baseType: !269, size: 32, offset: 12160)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1271, file: !1272, line: 1179, baseType: !386, size: 64, offset: 12224)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1271, file: !1272, line: 1182, baseType: !2122, size: 128, offset: 12288)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1205, line: 76, size: 128, elements: !2123)
!2123 = !{!2124, !2129, !2130}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2122, file: !1205, line: 85, baseType: !2125, size: 64)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2126, line: 7, size: 64, elements: !2127)
!2126 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2127 = !{!2128}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2125, file: !2126, line: 12, baseType: !1416, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2122, file: !1205, line: 88, baseType: !548, size: 8, offset: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2122, file: !1205, line: 95, baseType: !548, size: 8, offset: 72)
!2131 = !DIDerivedType(tag: DW_TAG_member, scope: !1271, file: !1272, line: 1184, baseType: !2132, size: 128, offset: 12416)
!2132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1271, file: !1272, line: 1184, size: 128, elements: !2133)
!2133 = !{!2134, !2135}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2132, file: !1272, line: 1185, baseType: !206, size: 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2132, file: !1272, line: 1186, baseType: !427, size: 128, align: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1271, file: !1272, line: 1190, baseType: !2137, size: 64, offset: 12544)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1272, line: 53, flags: DIFlagFwdDecl)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1271, file: !1272, line: 1192, baseType: !2140, size: 128, offset: 12608)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1205, line: 64, size: 128, elements: !2141)
!2141 = !{!2142, !2143, !2144}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2140, file: !1205, line: 65, baseType: !779, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2140, file: !1205, line: 67, baseType: !271, size: 32, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2140, file: !1205, line: 68, baseType: !271, size: 32, offset: 96)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1271, file: !1272, line: 1206, baseType: !215, size: 32, offset: 12736)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1271, file: !1272, line: 1207, baseType: !215, size: 32, offset: 12768)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1271, file: !1272, line: 1209, baseType: !386, size: 64, offset: 12800)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1271, file: !1272, line: 1219, baseType: !479, size: 64, offset: 12864)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1271, file: !1272, line: 1220, baseType: !479, size: 64, offset: 12928)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1271, file: !1272, line: 1317, baseType: !215, size: 32, offset: 12992)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1271, file: !1272, line: 1319, baseType: !1270, size: 64, offset: 13056)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1271, file: !1272, line: 1322, baseType: !2153, size: 64, offset: 13120)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2155, line: 56, size: 512, elements: !2156)
!2155 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2156 = !{!2157, !2158, !2159, !2160, !2161, !2162, !2163, !2165}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2154, file: !2155, line: 57, baseType: !2153, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2154, file: !2155, line: 58, baseType: !218, size: 64, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2154, file: !2155, line: 59, baseType: !386, size: 64, offset: 128)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2154, file: !2155, line: 60, baseType: !386, size: 64, offset: 192)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2154, file: !2155, line: 61, baseType: !874, size: 64, offset: 256)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2154, file: !2155, line: 62, baseType: !7, size: 32, offset: 320)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2154, file: !2155, line: 63, baseType: !2164, size: 64, offset: 384)
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !193, line: 153, baseType: !479)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2154, file: !2155, line: 64, baseType: !2166, size: 64, offset: 448)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1271, file: !1272, line: 1326, baseType: !206, size: 32, offset: 13184)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1271, file: !1272, line: 1342, baseType: !218, size: 64, offset: 13248)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1271, file: !1272, line: 1343, baseType: !480, size: 64, offset: 13312)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1271, file: !1272, line: 1344, baseType: !479, size: 64, offset: 13376)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1271, file: !1272, line: 1345, baseType: !480, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1271, file: !1272, line: 1346, baseType: !480, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1271, file: !1272, line: 1347, baseType: !480, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1271, file: !1272, line: 1348, baseType: !427, size: 128, align: 64, offset: 13504)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1271, file: !1272, line: 1358, baseType: !2177, size: 34816, offset: 13824)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2178, line: 485, size: 34816, elements: !2179)
!2178 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2179 = !{!2180, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2209, !2210, !2211, !2212, !2213, !2214, !2217, !2218, !2219}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2177, file: !2178, line: 487, baseType: !2181, size: 192)
!2181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2182, size: 192, elements: !337)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2183, line: 16, size: 64, elements: !2184)
!2183 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2184 = !{!2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2182, file: !2183, line: 17, baseType: !913, size: 16)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2182, file: !2183, line: 18, baseType: !913, size: 16, offset: 16)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2182, file: !2183, line: 19, baseType: !913, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2182, file: !2183, line: 19, baseType: !913, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2182, file: !2183, line: 19, baseType: !913, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2182, file: !2183, line: 19, baseType: !913, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2182, file: !2183, line: 19, baseType: !913, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2182, file: !2183, line: 20, baseType: !913, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2182, file: !2183, line: 20, baseType: !913, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2182, file: !2183, line: 20, baseType: !913, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2182, file: !2183, line: 20, baseType: !913, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2182, file: !2183, line: 20, baseType: !913, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2182, file: !2183, line: 20, baseType: !913, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2177, file: !2178, line: 491, baseType: !386, size: 64, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2177, file: !2178, line: 495, baseType: !378, size: 16, offset: 256)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2177, file: !2178, line: 496, baseType: !378, size: 16, offset: 272)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2177, file: !2178, line: 497, baseType: !378, size: 16, offset: 288)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2177, file: !2178, line: 498, baseType: !378, size: 16, offset: 304)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2177, file: !2178, line: 502, baseType: !386, size: 64, offset: 320)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2177, file: !2178, line: 503, baseType: !386, size: 64, offset: 384)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2177, file: !2178, line: 514, baseType: !2206, size: 256, offset: 448)
!2206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2207, size: 256, elements: !1209)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2178, line: 483, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2177, file: !2178, line: 516, baseType: !386, size: 64, offset: 704)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2177, file: !2178, line: 518, baseType: !386, size: 64, offset: 768)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2177, file: !2178, line: 520, baseType: !386, size: 64, offset: 832)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2177, file: !2178, line: 521, baseType: !386, size: 64, offset: 896)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2177, file: !2178, line: 522, baseType: !386, size: 64, offset: 960)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2177, file: !2178, line: 528, baseType: !2215, size: 64, offset: 1024)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2178, line: 10, flags: DIFlagFwdDecl)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2177, file: !2178, line: 535, baseType: !386, size: 64, offset: 1088)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2177, file: !2178, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2177, file: !2178, line: 540, baseType: !2220, size: 33280, offset: 1536)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2221, line: 317, size: 33280, elements: !2222)
!2221 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2222 = !{!2223, !2224, !2225}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2220, file: !2221, line: 330, baseType: !7, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2220, file: !2221, line: 337, baseType: !386, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2220, file: !2221, line: 348, baseType: !2226, size: 32768, offset: 512)
!2226 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2221, line: 304, size: 32768, elements: !2227)
!2227 = !{!2228, !2243, !2282, !2332, !2345}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2226, file: !2221, line: 305, baseType: !2229, size: 896)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2221, line: 12, size: 896, elements: !2230)
!2230 = !{!2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2242}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2229, file: !2221, line: 13, baseType: !269, size: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2229, file: !2221, line: 14, baseType: !269, size: 32, offset: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2229, file: !2221, line: 15, baseType: !269, size: 32, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2229, file: !2221, line: 16, baseType: !269, size: 32, offset: 96)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2229, file: !2221, line: 17, baseType: !269, size: 32, offset: 128)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2229, file: !2221, line: 18, baseType: !269, size: 32, offset: 160)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2229, file: !2221, line: 19, baseType: !269, size: 32, offset: 192)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2229, file: !2221, line: 22, baseType: !2239, size: 640, offset: 224)
!2239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 640, elements: !2240)
!2240 = !{!2241}
!2241 = !DISubrange(count: 20)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2229, file: !2221, line: 25, baseType: !269, size: 32, offset: 864)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2226, file: !2221, line: 306, baseType: !2244, size: 4096, align: 128)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2221, line: 34, size: 4096, align: 128, elements: !2245)
!2245 = !{!2246, !2247, !2248, !2249, !2250, !2265, !2266, !2267, !2271, !2273, !2277}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2244, file: !2221, line: 35, baseType: !913, size: 16)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2244, file: !2221, line: 36, baseType: !913, size: 16, offset: 16)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2244, file: !2221, line: 37, baseType: !913, size: 16, offset: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2244, file: !2221, line: 38, baseType: !913, size: 16, offset: 48)
!2250 = !DIDerivedType(tag: DW_TAG_member, scope: !2244, file: !2221, line: 39, baseType: !2251, size: 128, offset: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2244, file: !2221, line: 39, size: 128, elements: !2252)
!2252 = !{!2253, !2258}
!2253 = !DIDerivedType(tag: DW_TAG_member, scope: !2251, file: !2221, line: 40, baseType: !2254, size: 128)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2251, file: !2221, line: 40, size: 128, elements: !2255)
!2255 = !{!2256, !2257}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2254, file: !2221, line: 41, baseType: !479, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2254, file: !2221, line: 42, baseType: !479, size: 64, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, scope: !2251, file: !2221, line: 44, baseType: !2259, size: 128)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2251, file: !2221, line: 44, size: 128, elements: !2260)
!2260 = !{!2261, !2262, !2263, !2264}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2259, file: !2221, line: 45, baseType: !269, size: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2259, file: !2221, line: 46, baseType: !269, size: 32, offset: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2259, file: !2221, line: 47, baseType: !269, size: 32, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2259, file: !2221, line: 48, baseType: !269, size: 32, offset: 96)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2244, file: !2221, line: 51, baseType: !269, size: 32, offset: 192)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2244, file: !2221, line: 52, baseType: !269, size: 32, offset: 224)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2244, file: !2221, line: 55, baseType: !2268, size: 1024, offset: 256)
!2268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 1024, elements: !2269)
!2269 = !{!2270}
!2270 = !DISubrange(count: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2244, file: !2221, line: 58, baseType: !2272, size: 2048, offset: 1280)
!2272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 2048, elements: !341)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2244, file: !2221, line: 60, baseType: !2274, size: 384, offset: 3328)
!2274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 384, elements: !2275)
!2275 = !{!2276}
!2276 = !DISubrange(count: 12)
!2277 = !DIDerivedType(tag: DW_TAG_member, scope: !2244, file: !2221, line: 62, baseType: !2278, size: 384, offset: 3712)
!2278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2244, file: !2221, line: 62, size: 384, elements: !2279)
!2279 = !{!2280, !2281}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2278, file: !2221, line: 63, baseType: !2274, size: 384)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2278, file: !2221, line: 64, baseType: !2274, size: 384)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2226, file: !2221, line: 307, baseType: !2283, size: 1088)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2221, line: 79, size: 1088, elements: !2284)
!2284 = !{!2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2331}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2283, file: !2221, line: 80, baseType: !269, size: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2283, file: !2221, line: 81, baseType: !269, size: 32, offset: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2283, file: !2221, line: 82, baseType: !269, size: 32, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2283, file: !2221, line: 83, baseType: !269, size: 32, offset: 96)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2283, file: !2221, line: 84, baseType: !269, size: 32, offset: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2283, file: !2221, line: 85, baseType: !269, size: 32, offset: 160)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2283, file: !2221, line: 86, baseType: !269, size: 32, offset: 192)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2283, file: !2221, line: 88, baseType: !2239, size: 640, offset: 224)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2283, file: !2221, line: 89, baseType: !1401, size: 8, offset: 864)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2283, file: !2221, line: 90, baseType: !1401, size: 8, offset: 872)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2283, file: !2221, line: 91, baseType: !1401, size: 8, offset: 880)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2283, file: !2221, line: 92, baseType: !1401, size: 8, offset: 888)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2283, file: !2221, line: 93, baseType: !1401, size: 8, offset: 896)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2283, file: !2221, line: 94, baseType: !1401, size: 8, offset: 904)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2283, file: !2221, line: 95, baseType: !2300, size: 64, offset: 960)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2302, line: 11, size: 128, elements: !2303)
!2302 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2303 = !{!2304, !2305}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2301, file: !2302, line: 12, baseType: !371, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2301, file: !2302, line: 13, baseType: !2306, size: 64, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2308, line: 56, size: 1344, elements: !2309)
!2308 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2309 = !{!2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2307, file: !2308, line: 61, baseType: !386, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2307, file: !2308, line: 62, baseType: !386, size: 64, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2307, file: !2308, line: 63, baseType: !386, size: 64, offset: 128)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2307, file: !2308, line: 64, baseType: !386, size: 64, offset: 192)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2307, file: !2308, line: 65, baseType: !386, size: 64, offset: 256)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2307, file: !2308, line: 66, baseType: !386, size: 64, offset: 320)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2307, file: !2308, line: 68, baseType: !386, size: 64, offset: 384)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2307, file: !2308, line: 69, baseType: !386, size: 64, offset: 448)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2307, file: !2308, line: 70, baseType: !386, size: 64, offset: 512)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2307, file: !2308, line: 71, baseType: !386, size: 64, offset: 576)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2307, file: !2308, line: 72, baseType: !386, size: 64, offset: 640)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2307, file: !2308, line: 73, baseType: !386, size: 64, offset: 704)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2307, file: !2308, line: 74, baseType: !386, size: 64, offset: 768)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2307, file: !2308, line: 75, baseType: !386, size: 64, offset: 832)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2307, file: !2308, line: 76, baseType: !386, size: 64, offset: 896)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2307, file: !2308, line: 81, baseType: !386, size: 64, offset: 960)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2307, file: !2308, line: 83, baseType: !386, size: 64, offset: 1024)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2307, file: !2308, line: 84, baseType: !386, size: 64, offset: 1088)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2307, file: !2308, line: 85, baseType: !386, size: 64, offset: 1152)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2307, file: !2308, line: 86, baseType: !386, size: 64, offset: 1216)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2307, file: !2308, line: 87, baseType: !386, size: 64, offset: 1280)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2283, file: !2221, line: 96, baseType: !269, size: 32, offset: 1024)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2226, file: !2221, line: 308, baseType: !2333, size: 4608, align: 512)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2221, line: 289, size: 4608, align: 512, elements: !2334)
!2334 = !{!2335, !2336, !2343}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2333, file: !2221, line: 290, baseType: !2244, size: 4096, align: 128)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2333, file: !2221, line: 291, baseType: !2337, size: 512, offset: 4096)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2221, line: 268, size: 512, elements: !2338)
!2338 = !{!2339, !2340, !2341}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2337, file: !2221, line: 269, baseType: !479, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2337, file: !2221, line: 270, baseType: !479, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2337, file: !2221, line: 271, baseType: !2342, size: 384, offset: 128)
!2342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 384, elements: !1666)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2333, file: !2221, line: 292, baseType: !2344, offset: 4608)
!2344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1401, elements: !1764)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2226, file: !2221, line: 309, baseType: !2346, size: 32768)
!2346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1401, size: 32768, elements: !2347)
!2347 = !{!2348}
!2348 = !DISubrange(count: 4096)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1267, file: !781, line: 378, baseType: !2350, size: 64, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1263, file: !781, line: 384, baseType: !1545, size: 192, offset: 192)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1032, file: !781, line: 500, baseType: !239, offset: 6656)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1032, file: !781, line: 501, baseType: !2354, size: 64, offset: 6656)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !781, line: 387, flags: DIFlagFwdDecl)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1032, file: !781, line: 516, baseType: !1754, size: 64, offset: 6720)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1032, file: !781, line: 519, baseType: !414, size: 64, offset: 6784)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1032, file: !781, line: 521, baseType: !2359, size: 64, offset: 6848)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !781, line: 521, flags: DIFlagFwdDecl)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1032, file: !781, line: 545, baseType: !211, size: 32, offset: 6912)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1032, file: !781, line: 548, baseType: !548, size: 8, offset: 6944)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1032, file: !781, line: 550, baseType: !2364, offset: 6952)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2365, line: 142, elements: !253)
!2365 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1032, file: !781, line: 554, baseType: !1996, size: 256, offset: 6976)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1032, file: !781, line: 557, baseType: !269, size: 32, offset: 7232)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1029, file: !781, line: 565, baseType: !2369, offset: 7296)
!2369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, elements: !2370)
!2370 = !{!2371}
!2371 = !DISubrange(count: -1)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1025, file: !781, line: 151, baseType: !211, size: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1018, file: !781, line: 156, baseType: !239, offset: 256)
!2374 = !DIDerivedType(tag: DW_TAG_member, scope: !785, file: !781, line: 159, baseType: !2375, size: 128)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !785, file: !781, line: 159, size: 128, elements: !2376)
!2376 = !{!2377, !2441}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2375, file: !781, line: 161, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !38, line: 110, size: 1152, elements: !2380)
!2380 = !{!2381, !2391, !2412, !2413, !2414, !2415, !2416, !2428, !2429, !2430}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2379, file: !38, line: 111, baseType: !2382, size: 384)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !38, line: 19, size: 384, elements: !2383)
!2383 = !{!2384, !2386, !2387, !2388, !2389, !2390}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2382, file: !38, line: 20, baseType: !2385, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2382, file: !38, line: 21, baseType: !2385, size: 64, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2382, file: !38, line: 22, baseType: !2385, size: 64, offset: 128)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2382, file: !38, line: 23, baseType: !386, size: 64, offset: 192)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2382, file: !38, line: 24, baseType: !386, size: 64, offset: 256)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2382, file: !38, line: 25, baseType: !386, size: 64, offset: 320)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2379, file: !38, line: 112, baseType: !2392, size: 64, offset: 384)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2394, line: 105, size: 128, elements: !2395)
!2394 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2395 = !{!2396, !2397}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2393, file: !2394, line: 110, baseType: !386, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2393, file: !2394, line: 118, baseType: !2398, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2394, line: 95, size: 448, elements: !2400)
!2400 = !{!2401, !2402, !2407, !2408, !2409, !2410, !2411}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2399, file: !2394, line: 96, baseType: !825, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2399, file: !2394, line: 97, baseType: !2403, size: 64, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2394, line: 60, baseType: !2405)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{null, !2392}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2399, file: !2394, line: 98, baseType: !2403, size: 64, offset: 128)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2399, file: !2394, line: 99, baseType: !548, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2399, file: !2394, line: 100, baseType: !548, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2399, file: !2394, line: 101, baseType: !427, size: 128, align: 64, offset: 256)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2399, file: !2394, line: 102, baseType: !2392, size: 64, offset: 384)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2379, file: !38, line: 113, baseType: !2393, size: 128, offset: 448)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2379, file: !38, line: 114, baseType: !1545, size: 192, offset: 576)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2379, file: !38, line: 115, baseType: !37, size: 32, offset: 768)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2379, file: !38, line: 116, baseType: !7, size: 32, offset: 800)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2379, file: !38, line: 117, baseType: !2417, size: 64, offset: 832)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2419)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !38, line: 67, size: 256, elements: !2420)
!2420 = !{!2421, !2422, !2426, !2427}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2419, file: !38, line: 73, baseType: !894, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2419, file: !38, line: 78, baseType: !2423, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{null, !2378}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2419, file: !38, line: 83, baseType: !2423, size: 64, offset: 128)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2419, file: !38, line: 89, baseType: !1081, size: 64, offset: 192)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2379, file: !38, line: 118, baseType: !218, size: 64, offset: 896)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2379, file: !38, line: 119, baseType: !215, size: 32, offset: 960)
!2430 = !DIDerivedType(tag: DW_TAG_member, scope: !2379, file: !38, line: 120, baseType: !2431, size: 128, offset: 1024)
!2431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2379, file: !38, line: 120, size: 128, elements: !2432)
!2432 = !{!2433, !2439}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2431, file: !38, line: 121, baseType: !2434, size: 128)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2435, line: 6, size: 128, elements: !2436)
!2435 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2436 = !{!2437, !2438}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2434, file: !2435, line: 7, baseType: !479, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2434, file: !2435, line: 8, baseType: !479, size: 64, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2431, file: !38, line: 122, baseType: !2440)
!2440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2434, elements: !1764)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2375, file: !781, line: 162, baseType: !218, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !785, file: !781, line: 176, baseType: !427, size: 128, align: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, scope: !780, file: !781, line: 179, baseType: !2444, size: 32, offset: 384)
!2444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !780, file: !781, line: 179, size: 32, elements: !2445)
!2445 = !{!2446, !2447, !2448, !2449}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2444, file: !781, line: 184, baseType: !211, size: 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2444, file: !781, line: 192, baseType: !7, size: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2444, file: !781, line: 194, baseType: !7, size: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2444, file: !781, line: 195, baseType: !215, size: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !780, file: !781, line: 199, baseType: !211, size: 32, offset: 416)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !715, file: !51, line: 1964, baseType: !2452, size: 64, offset: 1344)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!371, !657, !2455}
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2457, line: 12, size: 256, elements: !2458)
!2457 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2458 = !{!2459, !2460, !2461, !2462, !2463}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2456, file: !2457, line: 13, baseType: !192, size: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2456, file: !2457, line: 16, baseType: !215, size: 32, offset: 32)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2456, file: !2457, line: 23, baseType: !386, size: 64, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2456, file: !2457, line: 30, baseType: !386, size: 64, offset: 128)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2456, file: !2457, line: 33, baseType: !2464, size: 64, offset: 192)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !781, line: 27, flags: DIFlagFwdDecl)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !715, file: !51, line: 1966, baseType: !2452, size: 64, offset: 1408)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !658, file: !51, line: 1424, baseType: !2468, size: 64, offset: 448)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2470)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !45, line: 322, size: 704, elements: !2471)
!2471 = !{!2472, !2518, !2522, !2526, !2527, !2528, !2529, !2530, !2535, !2540, !2544}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2470, file: !45, line: 323, baseType: !2473, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!215, !2476}
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !45, line: 294, size: 1600, elements: !2478)
!2478 = !{!2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2503, !2504, !2505}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2477, file: !45, line: 295, baseType: !697, size: 128)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2477, file: !45, line: 296, baseType: !222, size: 128, offset: 128)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2477, file: !45, line: 297, baseType: !222, size: 128, offset: 256)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2477, file: !45, line: 298, baseType: !222, size: 128, offset: 384)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2477, file: !45, line: 299, baseType: !1227, size: 192, offset: 512)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2477, file: !45, line: 300, baseType: !239, offset: 704)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2477, file: !45, line: 301, baseType: !211, size: 32, offset: 704)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2477, file: !45, line: 302, baseType: !657, size: 64, offset: 768)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2477, file: !45, line: 303, baseType: !2488, size: 64, offset: 832)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !45, line: 68, size: 64, elements: !2489)
!2489 = !{!2490, !2502}
!2490 = !DIDerivedType(tag: DW_TAG_member, scope: !2488, file: !45, line: 69, baseType: !2491, size: 32)
!2491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2488, file: !45, line: 69, size: 32, elements: !2492)
!2492 = !{!2493, !2494, !2495}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2491, file: !45, line: 70, baseType: !493, size: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2491, file: !45, line: 71, baseType: !501, size: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2491, file: !45, line: 72, baseType: !2496, size: 32)
!2496 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2497, line: 24, baseType: !2498)
!2497 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2497, line: 22, size: 32, elements: !2499)
!2499 = !{!2500}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2498, file: !2497, line: 23, baseType: !2501, size: 32)
!2501 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2497, line: 20, baseType: !499)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2488, file: !45, line: 74, baseType: !44, size: 32, offset: 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2477, file: !45, line: 304, baseType: !589, size: 64, offset: 896)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2477, file: !45, line: 305, baseType: !386, size: 64, offset: 960)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2477, file: !45, line: 306, baseType: !2506, size: 576, offset: 1024)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !45, line: 205, size: 576, elements: !2507)
!2507 = !{!2508, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2506, file: !45, line: 206, baseType: !2509, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !45, line: 66, baseType: !591)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2506, file: !45, line: 207, baseType: !2509, size: 64, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2506, file: !45, line: 208, baseType: !2509, size: 64, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2506, file: !45, line: 209, baseType: !2509, size: 64, offset: 192)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2506, file: !45, line: 210, baseType: !2509, size: 64, offset: 256)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2506, file: !45, line: 211, baseType: !2509, size: 64, offset: 320)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2506, file: !45, line: 212, baseType: !2509, size: 64, offset: 384)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2506, file: !45, line: 213, baseType: !597, size: 64, offset: 448)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2506, file: !45, line: 214, baseType: !597, size: 64, offset: 512)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2470, file: !45, line: 324, baseType: !2519, size: 64, offset: 64)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!2476, !657, !215}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2470, file: !45, line: 325, baseType: !2523, size: 64, offset: 128)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{null, !2476}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2470, file: !45, line: 326, baseType: !2473, size: 64, offset: 192)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2470, file: !45, line: 327, baseType: !2473, size: 64, offset: 256)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2470, file: !45, line: 328, baseType: !2473, size: 64, offset: 320)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2470, file: !45, line: 329, baseType: !743, size: 64, offset: 384)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2470, file: !45, line: 332, baseType: !2531, size: 64, offset: 448)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!2534, !487}
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2470, file: !45, line: 333, baseType: !2536, size: 64, offset: 512)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!215, !487, !2539}
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2470, file: !45, line: 335, baseType: !2541, size: 64, offset: 576)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!215, !487, !2534}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2470, file: !45, line: 337, baseType: !2545, size: 64, offset: 640)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!215, !657, !2548}
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !658, file: !51, line: 1425, baseType: !2550, size: 64, offset: 512)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2552)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !45, line: 428, size: 704, elements: !2553)
!2553 = !{!2554, !2558, !2559, !2563, !2564, !2565, !2580, !2603, !2607, !2608, !2631}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2552, file: !45, line: 429, baseType: !2555, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!215, !657, !215, !215, !607}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2552, file: !45, line: 430, baseType: !743, size: 64, offset: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2552, file: !45, line: 431, baseType: !2560, size: 64, offset: 128)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!215, !657, !7}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2552, file: !45, line: 432, baseType: !2560, size: 64, offset: 192)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2552, file: !45, line: 433, baseType: !743, size: 64, offset: 256)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2552, file: !45, line: 434, baseType: !2566, size: 64, offset: 320)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!215, !657, !215, !2569}
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !45, line: 415, size: 256, elements: !2571)
!2571 = !{!2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2570, file: !45, line: 416, baseType: !215, size: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2570, file: !45, line: 417, baseType: !7, size: 32, offset: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2570, file: !45, line: 418, baseType: !7, size: 32, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2570, file: !45, line: 420, baseType: !7, size: 32, offset: 96)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2570, file: !45, line: 421, baseType: !7, size: 32, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2570, file: !45, line: 422, baseType: !7, size: 32, offset: 160)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2570, file: !45, line: 423, baseType: !7, size: 32, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2570, file: !45, line: 424, baseType: !7, size: 32, offset: 224)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2552, file: !45, line: 435, baseType: !2581, size: 64, offset: 384)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!215, !657, !2488, !2584}
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !45, line: 343, size: 960, elements: !2586)
!2586 = !{!2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2585, file: !45, line: 344, baseType: !215, size: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2585, file: !45, line: 345, baseType: !479, size: 64, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2585, file: !45, line: 346, baseType: !479, size: 64, offset: 128)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2585, file: !45, line: 347, baseType: !479, size: 64, offset: 192)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2585, file: !45, line: 348, baseType: !479, size: 64, offset: 256)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2585, file: !45, line: 349, baseType: !479, size: 64, offset: 320)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2585, file: !45, line: 350, baseType: !479, size: 64, offset: 384)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2585, file: !45, line: 351, baseType: !831, size: 64, offset: 448)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2585, file: !45, line: 353, baseType: !831, size: 64, offset: 512)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2585, file: !45, line: 354, baseType: !215, size: 32, offset: 576)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2585, file: !45, line: 355, baseType: !215, size: 32, offset: 608)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2585, file: !45, line: 356, baseType: !479, size: 64, offset: 640)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2585, file: !45, line: 357, baseType: !479, size: 64, offset: 704)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2585, file: !45, line: 358, baseType: !479, size: 64, offset: 768)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2585, file: !45, line: 359, baseType: !831, size: 64, offset: 832)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2585, file: !45, line: 360, baseType: !215, size: 32, offset: 896)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2552, file: !45, line: 436, baseType: !2604, size: 64, offset: 448)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!215, !657, !2548, !2584}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2552, file: !45, line: 438, baseType: !2581, size: 64, offset: 512)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2552, file: !45, line: 439, baseType: !2609, size: 64, offset: 576)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!215, !657, !2612}
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !45, line: 409, size: 1408, elements: !2614)
!2614 = !{!2615, !2616}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2613, file: !45, line: 410, baseType: !7, size: 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2613, file: !45, line: 411, baseType: !2617, size: 1344, offset: 64)
!2617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2618, size: 1344, elements: !337)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !45, line: 395, size: 448, elements: !2619)
!2619 = !{!2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2630}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2618, file: !45, line: 396, baseType: !7, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2618, file: !45, line: 397, baseType: !7, size: 32, offset: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2618, file: !45, line: 399, baseType: !7, size: 32, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2618, file: !45, line: 400, baseType: !7, size: 32, offset: 96)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2618, file: !45, line: 401, baseType: !7, size: 32, offset: 128)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2618, file: !45, line: 402, baseType: !7, size: 32, offset: 160)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2618, file: !45, line: 403, baseType: !7, size: 32, offset: 192)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2618, file: !45, line: 404, baseType: !481, size: 64, offset: 256)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2618, file: !45, line: 405, baseType: !2629, size: 64, offset: 320)
!2629 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !193, line: 126, baseType: !479)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2618, file: !45, line: 406, baseType: !2629, size: 64, offset: 384)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2552, file: !45, line: 440, baseType: !2560, size: 64, offset: 640)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !658, file: !51, line: 1426, baseType: !2633, size: 64, offset: 576)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2635)
!2635 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !51, line: 49, flags: DIFlagFwdDecl)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !658, file: !51, line: 1427, baseType: !386, size: 64, offset: 640)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !658, file: !51, line: 1428, baseType: !386, size: 64, offset: 704)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !658, file: !51, line: 1429, baseType: !386, size: 64, offset: 768)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !658, file: !51, line: 1430, baseType: !444, size: 64, offset: 832)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !658, file: !51, line: 1431, baseType: !821, size: 256, offset: 896)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !658, file: !51, line: 1432, baseType: !215, size: 32, offset: 1152)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !658, file: !51, line: 1433, baseType: !211, size: 32, offset: 1184)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !658, file: !51, line: 1437, baseType: !2644, size: 64, offset: 1216)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2647)
!2647 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !51, line: 1437, flags: DIFlagFwdDecl)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !658, file: !51, line: 1449, baseType: !2649, size: 64, offset: 1280)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !460, line: 34, size: 64, elements: !2650)
!2650 = !{!2651}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2649, file: !460, line: 35, baseType: !463, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !658, file: !51, line: 1450, baseType: !222, size: 128, offset: 1344)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !658, file: !51, line: 1451, baseType: !2654, size: 64, offset: 1472)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !51, line: 699, flags: DIFlagFwdDecl)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !658, file: !51, line: 1452, baseType: !1962, size: 64, offset: 1536)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !658, file: !51, line: 1453, baseType: !2658, size: 64, offset: 1600)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !51, line: 1453, flags: DIFlagFwdDecl)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !658, file: !51, line: 1454, baseType: !697, size: 128, offset: 1664)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !658, file: !51, line: 1455, baseType: !7, size: 32, offset: 1792)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !658, file: !51, line: 1456, baseType: !2663, size: 2432, offset: 1856)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !45, line: 518, size: 2432, elements: !2664)
!2664 = !{!2665, !2666, !2667, !2669, !2701}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2663, file: !45, line: 519, baseType: !7, size: 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2663, file: !45, line: 520, baseType: !821, size: 256, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2663, file: !45, line: 521, baseType: !2668, size: 192, offset: 320)
!2668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 192, elements: !337)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2663, file: !45, line: 522, baseType: !2670, size: 1728, offset: 512)
!2670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2671, size: 1728, elements: !337)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !45, line: 222, size: 576, elements: !2672)
!2672 = !{!2673, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2671, file: !45, line: 223, baseType: !2674, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !45, line: 443, size: 256, elements: !2676)
!2676 = !{!2677, !2678, !2691, !2692}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2675, file: !45, line: 444, baseType: !215, size: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2675, file: !45, line: 445, baseType: !2679, size: 64, offset: 64)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2681)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !45, line: 310, size: 512, elements: !2682)
!2682 = !{!2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2681, file: !45, line: 311, baseType: !743, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2681, file: !45, line: 312, baseType: !743, size: 64, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2681, file: !45, line: 313, baseType: !743, size: 64, offset: 128)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2681, file: !45, line: 314, baseType: !743, size: 64, offset: 192)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2681, file: !45, line: 315, baseType: !2473, size: 64, offset: 256)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2681, file: !45, line: 316, baseType: !2473, size: 64, offset: 320)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2681, file: !45, line: 317, baseType: !2473, size: 64, offset: 384)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2681, file: !45, line: 318, baseType: !2545, size: 64, offset: 448)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2675, file: !45, line: 446, baseType: !189, size: 64, offset: 128)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2675, file: !45, line: 447, baseType: !2674, size: 64, offset: 192)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2671, file: !45, line: 224, baseType: !215, size: 32, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2671, file: !45, line: 226, baseType: !222, size: 128, offset: 128)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2671, file: !45, line: 227, baseType: !386, size: 64, offset: 256)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2671, file: !45, line: 228, baseType: !7, size: 32, offset: 320)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2671, file: !45, line: 229, baseType: !7, size: 32, offset: 352)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2671, file: !45, line: 230, baseType: !2509, size: 64, offset: 384)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2671, file: !45, line: 231, baseType: !2509, size: 64, offset: 448)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2671, file: !45, line: 232, baseType: !218, size: 64, offset: 512)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2663, file: !45, line: 523, baseType: !2702, size: 192, offset: 2240)
!2702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2679, size: 192, elements: !337)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !658, file: !51, line: 1458, baseType: !2704, size: 2112, offset: 4288)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !51, line: 1410, size: 2112, elements: !2705)
!2705 = !{!2706, !2707, !2708}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2704, file: !51, line: 1411, baseType: !215, size: 32)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2704, file: !51, line: 1412, baseType: !234, size: 128, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2704, file: !51, line: 1413, baseType: !2709, size: 1920, offset: 192)
!2709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2710, size: 1920, elements: !337)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2711, line: 12, size: 640, elements: !2712)
!2711 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2712 = !{!2713, !2721, !2723, !2728, !2729}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2710, file: !2711, line: 13, baseType: !2714, size: 320)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2715, line: 17, size: 320, elements: !2716)
!2715 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2716 = !{!2717, !2718, !2719, !2720}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2714, file: !2715, line: 18, baseType: !215, size: 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2714, file: !2715, line: 19, baseType: !215, size: 32, offset: 32)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2714, file: !2715, line: 20, baseType: !234, size: 128, offset: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2714, file: !2715, line: 22, baseType: !427, size: 128, align: 64, offset: 192)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2710, file: !2711, line: 14, baseType: !2722, size: 64, offset: 320)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2710, file: !2711, line: 15, baseType: !2724, size: 64, offset: 384)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2725, line: 16, size: 64, elements: !2726)
!2725 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2726 = !{!2727}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2724, file: !2725, line: 17, baseType: !1270, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2710, file: !2711, line: 16, baseType: !234, size: 128, offset: 448)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2710, file: !2711, line: 17, baseType: !211, size: 32, offset: 576)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !658, file: !51, line: 1465, baseType: !218, size: 64, offset: 6400)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !658, file: !51, line: 1468, baseType: !269, size: 32, offset: 6464)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !658, file: !51, line: 1470, baseType: !597, size: 64, offset: 6528)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !658, file: !51, line: 1471, baseType: !597, size: 64, offset: 6592)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !658, file: !51, line: 1473, baseType: !271, size: 32, offset: 6656)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !658, file: !51, line: 1474, baseType: !2736, size: 64, offset: 6720)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !51, line: 603, flags: DIFlagFwdDecl)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !658, file: !51, line: 1477, baseType: !2739, size: 256, offset: 6784)
!2739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 256, elements: !2269)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !658, file: !51, line: 1478, baseType: !2741, size: 128, offset: 7040)
!2741 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2742, line: 18, baseType: !2743)
!2742 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2742, line: 16, size: 128, elements: !2744)
!2744 = !{!2745}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2743, file: !2742, line: 17, baseType: !2746, size: 128)
!2746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1402, size: 128, elements: !266)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !658, file: !51, line: 1480, baseType: !7, size: 32, offset: 7168)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !658, file: !51, line: 1481, baseType: !2749, size: 32, offset: 7200)
!2749 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !193, line: 150, baseType: !7)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !658, file: !51, line: 1487, baseType: !1227, size: 192, offset: 7232)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !658, file: !51, line: 1493, baseType: !299, size: 64, offset: 7424)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !658, file: !51, line: 1495, baseType: !2753, size: 64, offset: 7488)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2755)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !442, line: 135, size: 1024, align: 512, elements: !2756)
!2756 = !{!2757, !2761, !2762, !2769, !2775, !2779, !2783, !2787, !2788, !2792, !2796, !2801, !2805}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2755, file: !442, line: 136, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!215, !444, !7}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2755, file: !442, line: 137, baseType: !2758, size: 64, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2755, file: !442, line: 138, baseType: !2763, size: 64, offset: 128)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!215, !2766, !2768}
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2755, file: !442, line: 139, baseType: !2770, size: 64, offset: 192)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!215, !2766, !7, !299, !2773}
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2755, file: !442, line: 141, baseType: !2776, size: 64, offset: 256)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!215, !2766}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2755, file: !442, line: 142, baseType: !2780, size: 64, offset: 320)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!215, !444}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2755, file: !442, line: 143, baseType: !2784, size: 64, offset: 384)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{null, !444}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2755, file: !442, line: 144, baseType: !2784, size: 64, offset: 448)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2755, file: !442, line: 145, baseType: !2789, size: 64, offset: 512)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{null, !444, !487}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2755, file: !442, line: 146, baseType: !2793, size: 64, offset: 576)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!336, !444, !336, !215}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2755, file: !442, line: 147, baseType: !2797, size: 64, offset: 640)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!440, !2800}
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2755, file: !442, line: 148, baseType: !2802, size: 64, offset: 704)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!215, !607, !548}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2755, file: !442, line: 149, baseType: !2806, size: 64, offset: 768)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!444, !444, !2809}
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !488)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !658, file: !51, line: 1500, baseType: !215, size: 32, offset: 7552)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !658, file: !51, line: 1502, baseType: !2813, size: 448, offset: 7616)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2457, line: 60, size: 448, elements: !2814)
!2814 = !{!2815, !2820, !2821, !2822, !2823, !2824, !2825}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2813, file: !2457, line: 61, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!386, !2819, !2455}
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2813, file: !2457, line: 63, baseType: !2816, size: 64, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2813, file: !2457, line: 66, baseType: !371, size: 64, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2813, file: !2457, line: 67, baseType: !215, size: 32, offset: 192)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2813, file: !2457, line: 68, baseType: !7, size: 32, offset: 224)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2813, file: !2457, line: 71, baseType: !222, size: 128, offset: 256)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2813, file: !2457, line: 77, baseType: !2826, size: 64, offset: 384)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !658, file: !51, line: 1505, baseType: !825, size: 64, offset: 8064)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !658, file: !51, line: 1508, baseType: !825, size: 64, offset: 8128)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !658, file: !51, line: 1511, baseType: !215, size: 32, offset: 8192)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !658, file: !51, line: 1514, baseType: !963, size: 32, offset: 8224)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !658, file: !51, line: 1517, baseType: !2832, size: 64, offset: 8256)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1997, line: 18, flags: DIFlagFwdDecl)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !658, file: !51, line: 1518, baseType: !693, size: 64, offset: 8320)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !658, file: !51, line: 1525, baseType: !1754, size: 64, offset: 8384)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !658, file: !51, line: 1532, baseType: !2837, size: 64, offset: 8448)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2838, line: 52, size: 64, elements: !2839)
!2838 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2839 = !{!2840}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2837, file: !2838, line: 53, baseType: !2841, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2838, line: 40, size: 256, elements: !2843)
!2843 = !{!2844, !2845, !2850}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2842, file: !2838, line: 42, baseType: !239)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2842, file: !2838, line: 44, baseType: !2846, size: 192)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2838, line: 28, size: 192, elements: !2847)
!2847 = !{!2848, !2849}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2846, file: !2838, line: 29, baseType: !222, size: 128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2846, file: !2838, line: 31, baseType: !371, size: 64, offset: 128)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2842, file: !2838, line: 49, baseType: !371, size: 64, offset: 192)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !658, file: !51, line: 1533, baseType: !2837, size: 64, offset: 8512)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !658, file: !51, line: 1534, baseType: !427, size: 128, align: 64, offset: 8576)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !658, file: !51, line: 1535, baseType: !1996, size: 256, offset: 8704)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !658, file: !51, line: 1537, baseType: !1227, size: 192, offset: 8960)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !658, file: !51, line: 1542, baseType: !215, size: 32, offset: 9152)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !658, file: !51, line: 1545, baseType: !239, offset: 9184)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !658, file: !51, line: 1546, baseType: !222, size: 128, offset: 9216)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !658, file: !51, line: 1548, baseType: !239, offset: 9344)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !658, file: !51, line: 1549, baseType: !222, size: 128, offset: 9344)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !488, file: !51, line: 624, baseType: !792, size: 64, offset: 256)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !488, file: !51, line: 631, baseType: !386, size: 64, offset: 320)
!2862 = !DIDerivedType(tag: DW_TAG_member, scope: !488, file: !51, line: 639, baseType: !2863, size: 32, offset: 384)
!2863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !488, file: !51, line: 639, size: 32, elements: !2864)
!2864 = !{!2865, !2867}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2863, file: !51, line: 640, baseType: !2866, size: 32)
!2866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2863, file: !51, line: 641, baseType: !7, size: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !488, file: !51, line: 643, baseType: !571, size: 32, offset: 416)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !488, file: !51, line: 644, baseType: !589, size: 64, offset: 448)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !488, file: !51, line: 645, baseType: !593, size: 128, offset: 512)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !488, file: !51, line: 646, baseType: !593, size: 128, offset: 640)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !488, file: !51, line: 647, baseType: !593, size: 128, offset: 768)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !488, file: !51, line: 648, baseType: !239, offset: 896)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !488, file: !51, line: 649, baseType: !378, size: 16, offset: 896)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !488, file: !51, line: 650, baseType: !1401, size: 8, offset: 912)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !488, file: !51, line: 651, baseType: !1401, size: 8, offset: 920)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !488, file: !51, line: 652, baseType: !2629, size: 64, offset: 960)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !488, file: !51, line: 659, baseType: !386, size: 64, offset: 1024)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !488, file: !51, line: 660, baseType: !821, size: 256, offset: 1088)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !488, file: !51, line: 662, baseType: !386, size: 64, offset: 1344)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !488, file: !51, line: 663, baseType: !386, size: 64, offset: 1408)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !488, file: !51, line: 665, baseType: !697, size: 128, offset: 1472)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !488, file: !51, line: 666, baseType: !222, size: 128, offset: 1600)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !488, file: !51, line: 675, baseType: !222, size: 128, offset: 1728)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !488, file: !51, line: 676, baseType: !222, size: 128, offset: 1856)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !488, file: !51, line: 677, baseType: !222, size: 128, offset: 1984)
!2887 = !DIDerivedType(tag: DW_TAG_member, scope: !488, file: !51, line: 678, baseType: !2888, size: 128, offset: 2112)
!2888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !488, file: !51, line: 678, size: 128, elements: !2889)
!2889 = !{!2890, !2891}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2888, file: !51, line: 679, baseType: !693, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2888, file: !51, line: 680, baseType: !427, size: 128, align: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !488, file: !51, line: 682, baseType: !827, size: 64, offset: 2240)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !488, file: !51, line: 683, baseType: !827, size: 64, offset: 2304)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !488, file: !51, line: 684, baseType: !211, size: 32, offset: 2368)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !488, file: !51, line: 685, baseType: !211, size: 32, offset: 2400)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !488, file: !51, line: 686, baseType: !211, size: 32, offset: 2432)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !488, file: !51, line: 688, baseType: !211, size: 32, offset: 2464)
!2898 = !DIDerivedType(tag: DW_TAG_member, scope: !488, file: !51, line: 690, baseType: !2899, size: 64, offset: 2496)
!2899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !488, file: !51, line: 690, size: 64, elements: !2900)
!2900 = !{!2901, !3124}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2899, file: !51, line: 691, baseType: !2902, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2904)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !51, line: 1822, size: 2048, elements: !2905)
!2905 = !{!2906, !2907, !2911, !2916, !2920, !2921, !2922, !2926, !2939, !2940, !2948, !2952, !2953, !2957, !2958, !2962, !2967, !2968, !2972, !2976, !3084, !3088, !3089, !3093, !3094, !3098, !3102, !3107, !3111, !3115, !3119, !3123}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2904, file: !51, line: 1823, baseType: !189, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2904, file: !51, line: 1824, baseType: !2908, size: 64, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!589, !414, !589, !215}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2904, file: !51, line: 1825, baseType: !2912, size: 64, offset: 128)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!367, !414, !336, !383, !2915}
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2904, file: !51, line: 1826, baseType: !2917, size: 64, offset: 192)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!367, !414, !299, !383, !2915}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2904, file: !51, line: 1827, baseType: !898, size: 64, offset: 256)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2904, file: !51, line: 1828, baseType: !898, size: 64, offset: 320)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2904, file: !51, line: 1829, baseType: !2923, size: 64, offset: 384)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!215, !901, !548}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2904, file: !51, line: 1830, baseType: !2927, size: 64, offset: 448)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!215, !414, !2930}
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !51, line: 1776, size: 128, elements: !2932)
!2932 = !{!2933, !2938}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2931, file: !51, line: 1777, baseType: !2934, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !51, line: 1773, baseType: !2935)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!215, !2930, !299, !215, !589, !479, !7}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2931, file: !51, line: 1778, baseType: !589, size: 64, offset: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2904, file: !51, line: 1831, baseType: !2927, size: 64, offset: 512)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2904, file: !51, line: 1832, baseType: !2941, size: 64, offset: 576)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!2944, !414, !2946}
!2944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2945, line: 52, baseType: !7)
!2945 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !677, line: 27, flags: DIFlagFwdDecl)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2904, file: !51, line: 1833, baseType: !2949, size: 64, offset: 640)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!371, !414, !7, !386}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2904, file: !51, line: 1834, baseType: !2949, size: 64, offset: 704)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2904, file: !51, line: 1835, baseType: !2954, size: 64, offset: 768)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!215, !414, !1035}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2904, file: !51, line: 1836, baseType: !386, size: 64, offset: 832)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2904, file: !51, line: 1837, baseType: !2959, size: 64, offset: 896)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!215, !487, !414}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2904, file: !51, line: 1838, baseType: !2963, size: 64, offset: 960)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!215, !414, !2966}
!2966 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !51, line: 1007, baseType: !218)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2904, file: !51, line: 1839, baseType: !2959, size: 64, offset: 1024)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2904, file: !51, line: 1840, baseType: !2969, size: 64, offset: 1088)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!215, !414, !589, !589, !215}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2904, file: !51, line: 1841, baseType: !2973, size: 64, offset: 1152)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!215, !215, !414, !215}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2904, file: !51, line: 1842, baseType: !2977, size: 64, offset: 1216)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!215, !414, !215, !2980}
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !51, line: 1062, size: 1664, elements: !2982)
!2982 = !{!2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !3014, !3015, !3016, !3029, !3060}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2981, file: !51, line: 1063, baseType: !2980, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2981, file: !51, line: 1064, baseType: !222, size: 128, offset: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2981, file: !51, line: 1065, baseType: !697, size: 128, offset: 192)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2981, file: !51, line: 1066, baseType: !222, size: 128, offset: 320)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2981, file: !51, line: 1069, baseType: !222, size: 128, offset: 448)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2981, file: !51, line: 1072, baseType: !2966, size: 64, offset: 576)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2981, file: !51, line: 1073, baseType: !7, size: 32, offset: 640)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2981, file: !51, line: 1074, baseType: !485, size: 8, offset: 672)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2981, file: !51, line: 1075, baseType: !7, size: 32, offset: 704)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2981, file: !51, line: 1076, baseType: !215, size: 32, offset: 736)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2981, file: !51, line: 1077, baseType: !234, size: 128, offset: 768)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2981, file: !51, line: 1078, baseType: !414, size: 64, offset: 896)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2981, file: !51, line: 1079, baseType: !589, size: 64, offset: 960)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2981, file: !51, line: 1080, baseType: !589, size: 64, offset: 1024)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2981, file: !51, line: 1082, baseType: !2998, size: 64, offset: 1088)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !51, line: 1314, size: 320, elements: !3000)
!3000 = !{!3001, !3009, !3010, !3011, !3012, !3013}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2999, file: !51, line: 1315, baseType: !3002)
!3002 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3003, line: 20, baseType: !3004)
!3003 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3003, line: 11, elements: !3005)
!3005 = !{!3006}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3004, file: !3003, line: 12, baseType: !3007)
!3007 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !251, line: 33, baseType: !3008)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !251, line: 31, elements: !253)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2999, file: !51, line: 1316, baseType: !215, size: 32)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2999, file: !51, line: 1317, baseType: !215, size: 32, offset: 32)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2999, file: !51, line: 1318, baseType: !2998, size: 64, offset: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2999, file: !51, line: 1319, baseType: !414, size: 64, offset: 128)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2999, file: !51, line: 1320, baseType: !427, size: 128, align: 64, offset: 192)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2981, file: !51, line: 1084, baseType: !386, size: 64, offset: 1152)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2981, file: !51, line: 1085, baseType: !386, size: 64, offset: 1216)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2981, file: !51, line: 1087, baseType: !3017, size: 64, offset: 1280)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3019)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !51, line: 1011, size: 128, elements: !3020)
!3020 = !{!3021, !3025}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3019, file: !51, line: 1012, baseType: !3022, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{null, !2980, !2980}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3019, file: !51, line: 1013, baseType: !3026, size: 64, offset: 64)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{null, !2980}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2981, file: !51, line: 1088, baseType: !3030, size: 64, offset: 1344)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3032)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !51, line: 1016, size: 512, elements: !3033)
!3033 = !{!3034, !3038, !3042, !3043, !3047, !3051, !3055, !3059}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3032, file: !51, line: 1017, baseType: !3035, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!2966, !2966}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3032, file: !51, line: 1018, baseType: !3039, size: 64, offset: 64)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{null, !2966}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3032, file: !51, line: 1019, baseType: !3026, size: 64, offset: 128)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3032, file: !51, line: 1020, baseType: !3044, size: 64, offset: 192)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!215, !2980, !215}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3032, file: !51, line: 1021, baseType: !3048, size: 64, offset: 256)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!548, !2980}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3032, file: !51, line: 1022, baseType: !3052, size: 64, offset: 320)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!215, !2980, !215, !225}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3032, file: !51, line: 1023, baseType: !3056, size: 64, offset: 384)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{null, !2980, !875}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3032, file: !51, line: 1024, baseType: !3048, size: 64, offset: 448)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2981, file: !51, line: 1097, baseType: !3061, size: 256, offset: 1408)
!3061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2981, file: !51, line: 1089, size: 256, elements: !3062)
!3062 = !{!3063, !3072, !3078}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3061, file: !51, line: 1090, baseType: !3064, size: 256)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3065, line: 10, size: 256, elements: !3066)
!3065 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3066 = !{!3067, !3068, !3071}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3064, file: !3065, line: 11, baseType: !269, size: 32)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3064, file: !3065, line: 12, baseType: !3069, size: 64, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3065, line: 5, flags: DIFlagFwdDecl)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3064, file: !3065, line: 13, baseType: !222, size: 128, offset: 128)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3061, file: !51, line: 1091, baseType: !3073, size: 64)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3065, line: 17, size: 64, elements: !3074)
!3074 = !{!3075}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3073, file: !3065, line: 18, baseType: !3076, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3065, line: 16, flags: DIFlagFwdDecl)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3061, file: !51, line: 1096, baseType: !3079, size: 192)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3061, file: !51, line: 1092, size: 192, elements: !3080)
!3080 = !{!3081, !3082, !3083}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3079, file: !51, line: 1093, baseType: !222, size: 128)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3079, file: !51, line: 1094, baseType: !215, size: 32, offset: 128)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3079, file: !51, line: 1095, baseType: !7, size: 32, offset: 160)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2904, file: !51, line: 1843, baseType: !3085, size: 64, offset: 1280)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!367, !414, !779, !215, !383, !2915, !215}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2904, file: !51, line: 1844, baseType: !1155, size: 64, offset: 1344)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2904, file: !51, line: 1845, baseType: !3090, size: 64, offset: 1408)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!215, !215}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2904, file: !51, line: 1846, baseType: !2977, size: 64, offset: 1472)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2904, file: !51, line: 1847, baseType: !3095, size: 64, offset: 1536)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!367, !2137, !414, !2915, !383, !7}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2904, file: !51, line: 1848, baseType: !3099, size: 64, offset: 1600)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!367, !414, !2915, !2137, !383, !7}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2904, file: !51, line: 1849, baseType: !3103, size: 64, offset: 1664)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!215, !414, !371, !3106, !875}
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2904, file: !51, line: 1850, baseType: !3108, size: 64, offset: 1728)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!371, !414, !215, !589, !589}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2904, file: !51, line: 1852, baseType: !3112, size: 64, offset: 1792)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{null, !769, !414}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2904, file: !51, line: 1856, baseType: !3116, size: 64, offset: 1856)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!367, !414, !589, !414, !589, !383, !7}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2904, file: !51, line: 1858, baseType: !3120, size: 64, offset: 1920)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!589, !414, !589, !414, !589, !589, !7}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2904, file: !51, line: 1861, baseType: !2969, size: 64, offset: 1984)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2899, file: !51, line: 692, baseType: !722, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !488, file: !51, line: 694, baseType: !3126, size: 64, offset: 2560)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !51, line: 1100, size: 384, elements: !3128)
!3128 = !{!3129, !3130, !3131, !3132}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3127, file: !51, line: 1101, baseType: !239)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3127, file: !51, line: 1102, baseType: !222, size: 128)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3127, file: !51, line: 1103, baseType: !222, size: 128, offset: 128)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3127, file: !51, line: 1104, baseType: !222, size: 128, offset: 256)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !488, file: !51, line: 695, baseType: !793, size: 1216, align: 64, offset: 2624)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !488, file: !51, line: 696, baseType: !222, size: 128, offset: 3840)
!3135 = !DIDerivedType(tag: DW_TAG_member, scope: !488, file: !51, line: 697, baseType: !3136, size: 64, offset: 3968)
!3136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !488, file: !51, line: 697, size: 64, elements: !3137)
!3137 = !{!3138, !3139, !3140, !3151, !3152}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3136, file: !51, line: 698, baseType: !2137, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3136, file: !51, line: 699, baseType: !2654, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3136, file: !51, line: 700, baseType: !3141, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3143, line: 14, size: 832, elements: !3144)
!3143 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3144 = !{!3145, !3146, !3147, !3148, !3149, !3150}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3142, file: !3143, line: 15, baseType: !295, size: 512)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3142, file: !3143, line: 16, baseType: !189, size: 64, offset: 512)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3142, file: !3143, line: 17, baseType: !2902, size: 64, offset: 576)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3142, file: !3143, line: 18, baseType: !222, size: 128, offset: 640)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3142, file: !3143, line: 19, baseType: !571, size: 32, offset: 768)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3142, file: !3143, line: 20, baseType: !7, size: 32, offset: 800)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3136, file: !51, line: 701, baseType: !336, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3136, file: !51, line: 702, baseType: !7, size: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !488, file: !51, line: 705, baseType: !271, size: 32, offset: 4032)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !488, file: !51, line: 708, baseType: !271, size: 32, offset: 4064)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !488, file: !51, line: 709, baseType: !2736, size: 64, offset: 4096)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !488, file: !51, line: 720, baseType: !218, size: 64, offset: 4160)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !445, file: !442, line: 98, baseType: !3158, size: 256, offset: 448)
!3158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 256, elements: !2269)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !445, file: !442, line: 101, baseType: !3160, size: 32, offset: 704)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3161, line: 25, size: 32, elements: !3162)
!3161 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3162 = !{!3163}
!3163 = !DIDerivedType(tag: DW_TAG_member, scope: !3160, file: !3161, line: 26, baseType: !3164, size: 32)
!3164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3160, file: !3161, line: 26, size: 32, elements: !3165)
!3165 = !{!3166}
!3166 = !DIDerivedType(tag: DW_TAG_member, scope: !3164, file: !3161, line: 30, baseType: !3167, size: 32)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3164, file: !3161, line: 30, size: 32, elements: !3168)
!3168 = !{!3169, !3170}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3167, file: !3161, line: 31, baseType: !239)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3167, file: !3161, line: 32, baseType: !215, size: 32)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !445, file: !442, line: 102, baseType: !2753, size: 64, offset: 768)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !445, file: !442, line: 103, baseType: !657, size: 64, offset: 832)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !445, file: !442, line: 104, baseType: !386, size: 64, offset: 896)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !445, file: !442, line: 105, baseType: !218, size: 64, offset: 960)
!3175 = !DIDerivedType(tag: DW_TAG_member, scope: !445, file: !442, line: 107, baseType: !3176, size: 128, offset: 1024)
!3176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !445, file: !442, line: 107, size: 128, elements: !3177)
!3177 = !{!3178, !3179}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3176, file: !442, line: 108, baseType: !222, size: 128)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3176, file: !442, line: 109, baseType: !3180, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !445, file: !442, line: 111, baseType: !222, size: 128, offset: 1152)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !445, file: !442, line: 112, baseType: !222, size: 128, offset: 1280)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !445, file: !442, line: 120, baseType: !3184, size: 128, offset: 1408)
!3184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !445, file: !442, line: 116, size: 128, elements: !3185)
!3185 = !{!3186, !3187, !3188}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3184, file: !442, line: 117, baseType: !697, size: 128)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3184, file: !442, line: 118, baseType: !459, size: 128)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3184, file: !442, line: 119, baseType: !427, size: 128, align: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !415, file: !51, line: 922, baseType: !487, size: 64, offset: 256)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !415, file: !51, line: 923, baseType: !2902, size: 64, offset: 320)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !415, file: !51, line: 929, baseType: !239, offset: 384)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !415, file: !51, line: 930, baseType: !50, size: 32, offset: 384)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !415, file: !51, line: 931, baseType: !825, size: 64, offset: 448)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !415, file: !51, line: 932, baseType: !7, size: 32, offset: 512)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !415, file: !51, line: 933, baseType: !2749, size: 32, offset: 544)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !415, file: !51, line: 934, baseType: !1227, size: 192, offset: 576)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !415, file: !51, line: 935, baseType: !589, size: 64, offset: 768)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !415, file: !51, line: 936, baseType: !3199, size: 192, offset: 832)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !51, line: 885, size: 192, elements: !3200)
!3200 = !{!3201, !3202, !3203, !3204, !3205, !3206}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3199, file: !51, line: 886, baseType: !3002)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3199, file: !51, line: 887, baseType: !1520, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3199, file: !51, line: 888, baseType: !59, size: 32, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3199, file: !51, line: 889, baseType: !493, size: 32, offset: 96)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3199, file: !51, line: 889, baseType: !493, size: 32, offset: 128)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3199, file: !51, line: 890, baseType: !215, size: 32, offset: 160)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !415, file: !51, line: 937, baseType: !1590, size: 64, offset: 1024)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !415, file: !51, line: 938, baseType: !3209, size: 256, offset: 1088)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !51, line: 896, size: 256, elements: !3210)
!3210 = !{!3211, !3212, !3213, !3214, !3215, !3216}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3209, file: !51, line: 897, baseType: !386, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3209, file: !51, line: 898, baseType: !7, size: 32, offset: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3209, file: !51, line: 899, baseType: !7, size: 32, offset: 96)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3209, file: !51, line: 902, baseType: !7, size: 32, offset: 128)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3209, file: !51, line: 903, baseType: !7, size: 32, offset: 160)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3209, file: !51, line: 904, baseType: !589, size: 64, offset: 192)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !415, file: !51, line: 940, baseType: !479, size: 64, offset: 1344)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !415, file: !51, line: 945, baseType: !218, size: 64, offset: 1408)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !415, file: !51, line: 949, baseType: !222, size: 128, offset: 1472)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !415, file: !51, line: 950, baseType: !222, size: 128, offset: 1600)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !415, file: !51, line: 952, baseType: !792, size: 64, offset: 1728)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !415, file: !51, line: 953, baseType: !963, size: 32, offset: 1792)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !415, file: !51, line: 954, baseType: !963, size: 32, offset: 1824)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !405, file: !361, line: 174, baseType: !411, size: 64, offset: 320)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !405, file: !361, line: 176, baseType: !3226, size: 64, offset: 384)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!215, !414, !303, !404, !1035}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !393, file: !361, line: 90, baseType: !388, size: 64, offset: 192)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !393, file: !361, line: 91, baseType: !3231, size: 64, offset: 256)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !351, file: !296, line: 143, baseType: !3233, size: 64, offset: 256)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!3236, !303}
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3238)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !68, line: 39, size: 384, elements: !3239)
!3239 = !{!3240, !3241, !3245, !3249, !3255, !3259}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3238, file: !68, line: 40, baseType: !67, size: 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3238, file: !68, line: 41, baseType: !3242, size: 64, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!548}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3238, file: !68, line: 42, baseType: !3246, size: 64, offset: 128)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!218}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3238, file: !68, line: 43, baseType: !3250, size: 64, offset: 192)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!2166, !3253}
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !68, line: 19, flags: DIFlagFwdDecl)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3238, file: !68, line: 44, baseType: !3256, size: 64, offset: 256)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!2166}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3238, file: !68, line: 45, baseType: !526, size: 64, offset: 320)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !351, file: !296, line: 144, baseType: !3261, size: 64, offset: 320)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!2166, !303}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !351, file: !296, line: 145, baseType: !3265, size: 64, offset: 384)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{null, !303, !3268, !3269}
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !295, file: !296, line: 70, baseType: !3271, size: 64, offset: 384)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !677, line: 123, size: 1024, elements: !3273)
!3273 = !{!3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3402, !3403, !3404, !3405, !3406}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3272, file: !677, line: 124, baseType: !211, size: 32)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3272, file: !677, line: 125, baseType: !211, size: 32, offset: 32)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3272, file: !677, line: 135, baseType: !3271, size: 64, offset: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3272, file: !677, line: 136, baseType: !299, size: 64, offset: 128)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3272, file: !677, line: 138, baseType: !814, size: 192, align: 64, offset: 192)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3272, file: !677, line: 140, baseType: !2166, size: 64, offset: 384)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3272, file: !677, line: 141, baseType: !7, size: 32, offset: 448)
!3281 = !DIDerivedType(tag: DW_TAG_member, scope: !3272, file: !677, line: 142, baseType: !3282, size: 256, offset: 512)
!3282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3272, file: !677, line: 142, size: 256, elements: !3283)
!3283 = !{!3284, !3330, !3334}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3282, file: !677, line: 143, baseType: !3285, size: 192)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !677, line: 91, size: 192, elements: !3286)
!3286 = !{!3287, !3288, !3289}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3285, file: !677, line: 92, baseType: !386, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3285, file: !677, line: 94, baseType: !810, size: 64, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3285, file: !677, line: 100, baseType: !3290, size: 64, offset: 128)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !677, line: 180, size: 704, elements: !3292)
!3292 = !{!3293, !3294, !3295, !3302, !3303, !3304, !3328, !3329}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3291, file: !677, line: 182, baseType: !3271, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3291, file: !677, line: 183, baseType: !7, size: 32, offset: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3291, file: !677, line: 186, baseType: !3296, size: 192, offset: 128)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3297, line: 19, size: 192, elements: !3298)
!3297 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3298 = !{!3299, !3300, !3301}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3296, file: !3297, line: 20, baseType: !797, size: 128)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3296, file: !3297, line: 21, baseType: !7, size: 32, offset: 128)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3296, file: !3297, line: 22, baseType: !7, size: 32, offset: 160)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3291, file: !677, line: 187, baseType: !269, size: 32, offset: 320)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3291, file: !677, line: 188, baseType: !269, size: 32, offset: 352)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3291, file: !677, line: 189, baseType: !3305, size: 64, offset: 384)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !677, line: 168, size: 320, elements: !3307)
!3307 = !{!3308, !3312, !3316, !3320, !3324}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3306, file: !677, line: 169, baseType: !3309, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!215, !769, !3290}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3306, file: !677, line: 171, baseType: !3313, size: 64, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!215, !3271, !299, !377}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3306, file: !677, line: 173, baseType: !3317, size: 64, offset: 128)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!215, !3271}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3306, file: !677, line: 174, baseType: !3321, size: 64, offset: 192)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!215, !3271, !3271, !299}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3306, file: !677, line: 176, baseType: !3325, size: 64, offset: 256)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!215, !769, !3271, !3290}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3291, file: !677, line: 192, baseType: !222, size: 128, offset: 448)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3291, file: !677, line: 194, baseType: !234, size: 128, offset: 576)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3282, file: !677, line: 144, baseType: !3331, size: 64)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !677, line: 103, size: 64, elements: !3332)
!3332 = !{!3333}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3331, file: !677, line: 104, baseType: !3271, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3282, file: !677, line: 145, baseType: !3335, size: 256)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !677, line: 107, size: 256, elements: !3336)
!3336 = !{!3337, !3397, !3400, !3401}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3335, file: !677, line: 108, baseType: !3338, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3340)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !677, line: 217, size: 768, elements: !3341)
!3341 = !{!3342, !3362, !3366, !3370, !3374, !3378, !3382, !3386, !3387, !3388, !3389, !3393}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3340, file: !677, line: 222, baseType: !3343, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!215, !3346}
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !677, line: 197, size: 1088, elements: !3348)
!3348 = !{!3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3347, file: !677, line: 199, baseType: !3271, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3347, file: !677, line: 200, baseType: !414, size: 64, offset: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3347, file: !677, line: 201, baseType: !769, size: 64, offset: 128)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3347, file: !677, line: 202, baseType: !218, size: 64, offset: 192)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3347, file: !677, line: 205, baseType: !1227, size: 192, offset: 256)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3347, file: !677, line: 206, baseType: !1227, size: 192, offset: 448)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3347, file: !677, line: 207, baseType: !215, size: 32, offset: 640)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3347, file: !677, line: 208, baseType: !222, size: 128, offset: 704)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3347, file: !677, line: 209, baseType: !336, size: 64, offset: 832)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3347, file: !677, line: 211, baseType: !383, size: 64, offset: 896)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3347, file: !677, line: 212, baseType: !548, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3347, file: !677, line: 213, baseType: !548, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3347, file: !677, line: 214, baseType: !1063, size: 64, offset: 1024)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3340, file: !677, line: 223, baseType: !3363, size: 64, offset: 64)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{null, !3346}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3340, file: !677, line: 236, baseType: !3367, size: 64, offset: 128)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!215, !769, !218}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3340, file: !677, line: 238, baseType: !3371, size: 64, offset: 192)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!218, !769, !2915}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3340, file: !677, line: 239, baseType: !3375, size: 64, offset: 256)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!218, !769, !218, !2915}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3340, file: !677, line: 240, baseType: !3379, size: 64, offset: 320)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{null, !769, !218}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3340, file: !677, line: 242, baseType: !3383, size: 64, offset: 384)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!367, !3346, !336, !383, !589}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3340, file: !677, line: 252, baseType: !383, size: 64, offset: 448)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3340, file: !677, line: 259, baseType: !548, size: 8, offset: 512)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3340, file: !677, line: 260, baseType: !3383, size: 64, offset: 576)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3340, file: !677, line: 263, baseType: !3390, size: 64, offset: 640)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!2944, !3346, !2946}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3340, file: !677, line: 266, baseType: !3394, size: 64, offset: 704)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!215, !3346, !1035}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3335, file: !677, line: 109, baseType: !3398, size: 64, offset: 64)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !677, line: 31, flags: DIFlagFwdDecl)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3335, file: !677, line: 110, baseType: !589, size: 64, offset: 128)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3335, file: !677, line: 111, baseType: !3271, size: 64, offset: 192)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3272, file: !677, line: 148, baseType: !218, size: 64, offset: 768)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3272, file: !677, line: 154, baseType: !479, size: 64, offset: 832)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3272, file: !677, line: 156, baseType: !378, size: 16, offset: 896)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3272, file: !677, line: 157, baseType: !377, size: 16, offset: 912)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3272, file: !677, line: 158, baseType: !3407, size: 64, offset: 960)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !677, line: 32, flags: DIFlagFwdDecl)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !295, file: !296, line: 71, baseType: !202, size: 32, offset: 448)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !295, file: !296, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !295, file: !296, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !295, file: !296, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !295, file: !296, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !295, file: !296, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !292, file: !80, line: 463, baseType: !291, size: 64, offset: 512)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !292, file: !80, line: 465, baseType: !3417, size: 64, offset: 576)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !80, line: 36, flags: DIFlagFwdDecl)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !292, file: !80, line: 467, baseType: !299, size: 64, offset: 640)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !292, file: !80, line: 468, baseType: !3421, size: 64, offset: 704)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3423)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !80, line: 87, size: 384, elements: !3424)
!3424 = !{!3425, !3426, !3427, !3431, !3436, !3440}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3423, file: !80, line: 88, baseType: !299, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3423, file: !80, line: 89, baseType: !390, size: 64, offset: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3423, file: !80, line: 90, baseType: !3428, size: 64, offset: 128)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!215, !291, !331}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3423, file: !80, line: 91, baseType: !3432, size: 64, offset: 192)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!336, !291, !3435, !3268, !3269}
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3423, file: !80, line: 93, baseType: !3437, size: 64, offset: 256)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{null, !291}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3423, file: !80, line: 95, baseType: !3441, size: 64, offset: 320)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3443)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !87, line: 278, size: 1472, elements: !3444)
!3444 = !{!3445, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3443, file: !87, line: 279, baseType: !3446, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!215, !291}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3443, file: !87, line: 280, baseType: !3437, size: 64, offset: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3443, file: !87, line: 281, baseType: !3446, size: 64, offset: 128)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3443, file: !87, line: 282, baseType: !3446, size: 64, offset: 192)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3443, file: !87, line: 283, baseType: !3446, size: 64, offset: 256)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3443, file: !87, line: 284, baseType: !3446, size: 64, offset: 320)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3443, file: !87, line: 285, baseType: !3446, size: 64, offset: 384)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3443, file: !87, line: 286, baseType: !3446, size: 64, offset: 448)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3443, file: !87, line: 287, baseType: !3446, size: 64, offset: 512)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3443, file: !87, line: 288, baseType: !3446, size: 64, offset: 576)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3443, file: !87, line: 289, baseType: !3446, size: 64, offset: 640)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3443, file: !87, line: 290, baseType: !3446, size: 64, offset: 704)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3443, file: !87, line: 291, baseType: !3446, size: 64, offset: 768)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3443, file: !87, line: 292, baseType: !3446, size: 64, offset: 832)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3443, file: !87, line: 293, baseType: !3446, size: 64, offset: 896)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3443, file: !87, line: 294, baseType: !3446, size: 64, offset: 960)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3443, file: !87, line: 295, baseType: !3446, size: 64, offset: 1024)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3443, file: !87, line: 296, baseType: !3446, size: 64, offset: 1088)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3443, file: !87, line: 297, baseType: !3446, size: 64, offset: 1152)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3443, file: !87, line: 298, baseType: !3446, size: 64, offset: 1216)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3443, file: !87, line: 299, baseType: !3446, size: 64, offset: 1280)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3443, file: !87, line: 300, baseType: !3446, size: 64, offset: 1344)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3443, file: !87, line: 301, baseType: !3446, size: 64, offset: 1408)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !292, file: !80, line: 470, baseType: !3472, size: 64, offset: 768)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3474, line: 82, size: 1408, elements: !3475)
!3474 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3475 = !{!3476, !3477, !3478, !3479, !3480, !3481, !3482, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3557, !3560, !3561}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3473, file: !3474, line: 83, baseType: !299, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3473, file: !3474, line: 84, baseType: !299, size: 64, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3473, file: !3474, line: 85, baseType: !291, size: 64, offset: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3473, file: !3474, line: 86, baseType: !390, size: 64, offset: 192)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3473, file: !3474, line: 87, baseType: !390, size: 64, offset: 256)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3473, file: !3474, line: 88, baseType: !390, size: 64, offset: 320)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3473, file: !3474, line: 90, baseType: !3483, size: 64, offset: 384)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!215, !291, !3486}
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !74, line: 95, size: 1152, elements: !3488)
!3488 = !{!3489, !3490, !3491, !3492, !3493, !3494, !3495, !3508, !3521, !3522, !3523, !3524, !3525, !3533, !3534, !3535, !3536, !3537, !3538}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3487, file: !74, line: 96, baseType: !299, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3487, file: !74, line: 97, baseType: !3472, size: 64, offset: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3487, file: !74, line: 99, baseType: !189, size: 64, offset: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3487, file: !74, line: 100, baseType: !299, size: 64, offset: 192)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3487, file: !74, line: 102, baseType: !548, size: 8, offset: 256)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3487, file: !74, line: 103, baseType: !73, size: 32, offset: 288)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3487, file: !74, line: 105, baseType: !3496, size: 64, offset: 320)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3498)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3499, line: 262, size: 1600, elements: !3500)
!3499 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3500 = !{!3501, !3502, !3503, !3507}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3498, file: !3499, line: 263, baseType: !2739, size: 256)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3498, file: !3499, line: 264, baseType: !2739, size: 256, offset: 256)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3498, file: !3499, line: 265, baseType: !3504, size: 1024, offset: 512)
!3504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 1024, elements: !3505)
!3505 = !{!3506}
!3506 = !DISubrange(count: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3498, file: !3499, line: 266, baseType: !2166, size: 64, offset: 1536)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3487, file: !74, line: 106, baseType: !3509, size: 64, offset: 384)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3511)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3499, line: 210, size: 256, elements: !3512)
!3512 = !{!3513, !3517, !3519, !3520}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3511, file: !3499, line: 211, baseType: !3514, size: 72)
!3514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1402, size: 72, elements: !3515)
!3515 = !{!3516}
!3516 = !DISubrange(count: 9)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3511, file: !3499, line: 212, baseType: !3518, size: 64, offset: 128)
!3518 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3499, line: 14, baseType: !386)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3511, file: !3499, line: 213, baseType: !271, size: 32, offset: 192)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3511, file: !3499, line: 214, baseType: !271, size: 32, offset: 224)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3487, file: !74, line: 108, baseType: !3446, size: 64, offset: 448)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3487, file: !74, line: 109, baseType: !3437, size: 64, offset: 512)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3487, file: !74, line: 110, baseType: !3446, size: 64, offset: 576)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3487, file: !74, line: 111, baseType: !3437, size: 64, offset: 640)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3487, file: !74, line: 112, baseType: !3526, size: 64, offset: 704)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!215, !291, !3529}
!3529 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !87, line: 52, baseType: !3530)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !87, line: 50, size: 32, elements: !3531)
!3531 = !{!3532}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3530, file: !87, line: 51, baseType: !215, size: 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3487, file: !74, line: 113, baseType: !3446, size: 64, offset: 768)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3487, file: !74, line: 114, baseType: !390, size: 64, offset: 832)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3487, file: !74, line: 115, baseType: !390, size: 64, offset: 896)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3487, file: !74, line: 117, baseType: !3441, size: 64, offset: 960)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3487, file: !74, line: 118, baseType: !3437, size: 64, offset: 1024)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3487, file: !74, line: 120, baseType: !3539, size: 64, offset: 1088)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !74, line: 120, flags: DIFlagFwdDecl)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3473, file: !3474, line: 91, baseType: !3428, size: 64, offset: 448)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3473, file: !3474, line: 92, baseType: !3446, size: 64, offset: 512)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3473, file: !3474, line: 93, baseType: !3437, size: 64, offset: 576)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3473, file: !3474, line: 94, baseType: !3446, size: 64, offset: 640)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3473, file: !3474, line: 95, baseType: !3437, size: 64, offset: 704)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3473, file: !3474, line: 97, baseType: !3446, size: 64, offset: 768)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3473, file: !3474, line: 98, baseType: !3446, size: 64, offset: 832)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3473, file: !3474, line: 100, baseType: !3526, size: 64, offset: 896)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3473, file: !3474, line: 101, baseType: !3446, size: 64, offset: 960)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3473, file: !3474, line: 103, baseType: !3446, size: 64, offset: 1024)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3473, file: !3474, line: 105, baseType: !3446, size: 64, offset: 1088)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3473, file: !3474, line: 107, baseType: !3441, size: 64, offset: 1152)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3473, file: !3474, line: 109, baseType: !3554, size: 64, offset: 1216)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3556)
!3556 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3474, line: 109, flags: DIFlagFwdDecl)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3473, file: !3474, line: 111, baseType: !3558, size: 64, offset: 1280)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3474, line: 111, flags: DIFlagFwdDecl)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3473, file: !3474, line: 112, baseType: !703, offset: 1344)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3473, file: !3474, line: 114, baseType: !548, size: 8, offset: 1344)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !292, file: !80, line: 471, baseType: !3486, size: 64, offset: 832)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !292, file: !80, line: 473, baseType: !218, size: 64, offset: 896)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !292, file: !80, line: 475, baseType: !218, size: 64, offset: 960)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !292, file: !80, line: 480, baseType: !1227, size: 192, offset: 1024)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !292, file: !80, line: 484, baseType: !3567, size: 576, offset: 1216)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !80, line: 361, size: 576, elements: !3568)
!3568 = !{!3569, !3570, !3571, !3572, !3573, !3574}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3567, file: !80, line: 362, baseType: !222, size: 128)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3567, file: !80, line: 363, baseType: !222, size: 128, offset: 128)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3567, file: !80, line: 364, baseType: !222, size: 128, offset: 256)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3567, file: !80, line: 365, baseType: !222, size: 128, offset: 384)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3567, file: !80, line: 366, baseType: !548, size: 8, offset: 512)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3567, file: !80, line: 367, baseType: !79, size: 32, offset: 544)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !292, file: !80, line: 485, baseType: !3576, size: 2304, offset: 1792)
!3576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !87, line: 565, size: 2304, elements: !3577)
!3577 = !{!3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3673, !3677}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3576, file: !87, line: 566, baseType: !3529, size: 32)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3576, file: !87, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3576, file: !87, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3576, file: !87, line: 569, baseType: !548, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3576, file: !87, line: 570, baseType: !548, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3576, file: !87, line: 571, baseType: !548, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3576, file: !87, line: 572, baseType: !548, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3576, file: !87, line: 573, baseType: !548, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3576, file: !87, line: 574, baseType: !548, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3576, file: !87, line: 575, baseType: !548, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3576, file: !87, line: 576, baseType: !548, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3576, file: !87, line: 577, baseType: !269, size: 32, offset: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3576, file: !87, line: 578, baseType: !239, offset: 96)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3576, file: !87, line: 580, baseType: !222, size: 128, offset: 128)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3576, file: !87, line: 581, baseType: !1545, size: 192, offset: 256)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3576, file: !87, line: 582, baseType: !3594, size: 64, offset: 448)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3596, line: 43, size: 1472, elements: !3597)
!3596 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3597 = !{!3598, !3599, !3600, !3601, !3602, !3605, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3595, file: !3596, line: 44, baseType: !299, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3595, file: !3596, line: 45, baseType: !215, size: 32, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3595, file: !3596, line: 46, baseType: !222, size: 128, offset: 128)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3595, file: !3596, line: 47, baseType: !239, offset: 256)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3595, file: !3596, line: 48, baseType: !3603, size: 64, offset: 256)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !87, line: 533, flags: DIFlagFwdDecl)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3595, file: !3596, line: 49, baseType: !3606, size: 320, offset: 320)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3607, line: 11, size: 320, elements: !3608)
!3607 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3608 = !{!3609, !3610, !3611, !3616}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3606, file: !3607, line: 16, baseType: !697, size: 128)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3606, file: !3607, line: 17, baseType: !386, size: 64, offset: 128)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3606, file: !3607, line: 18, baseType: !3612, size: 64, offset: 192)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{null, !3615}
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3606, file: !3607, line: 19, baseType: !269, size: 32, offset: 256)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3595, file: !3596, line: 50, baseType: !386, size: 64, offset: 640)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3595, file: !3596, line: 51, baseType: !1349, size: 64, offset: 704)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3595, file: !3596, line: 52, baseType: !1349, size: 64, offset: 768)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3595, file: !3596, line: 53, baseType: !1349, size: 64, offset: 832)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3595, file: !3596, line: 54, baseType: !1349, size: 64, offset: 896)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3595, file: !3596, line: 55, baseType: !1349, size: 64, offset: 960)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3595, file: !3596, line: 56, baseType: !386, size: 64, offset: 1024)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3595, file: !3596, line: 57, baseType: !386, size: 64, offset: 1088)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3595, file: !3596, line: 58, baseType: !386, size: 64, offset: 1152)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3595, file: !3596, line: 59, baseType: !386, size: 64, offset: 1216)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3595, file: !3596, line: 60, baseType: !386, size: 64, offset: 1280)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3595, file: !3596, line: 61, baseType: !291, size: 64, offset: 1344)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3595, file: !3596, line: 62, baseType: !548, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3595, file: !3596, line: 63, baseType: !548, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3576, file: !87, line: 583, baseType: !548, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3576, file: !87, line: 584, baseType: !548, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3576, file: !87, line: 585, baseType: !548, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3576, file: !87, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3576, file: !87, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3576, file: !87, line: 592, baseType: !1341, size: 512, offset: 576)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3576, file: !87, line: 593, baseType: !479, size: 64, offset: 1088)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3576, file: !87, line: 594, baseType: !1996, size: 256, offset: 1152)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3576, file: !87, line: 595, baseType: !234, size: 128, offset: 1408)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3576, file: !87, line: 596, baseType: !3603, size: 64, offset: 1536)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3576, file: !87, line: 597, baseType: !211, size: 32, offset: 1600)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3576, file: !87, line: 598, baseType: !211, size: 32, offset: 1632)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3576, file: !87, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3576, file: !87, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3576, file: !87, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3576, file: !87, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3576, file: !87, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3576, file: !87, line: 604, baseType: !548, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3576, file: !87, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3576, file: !87, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3576, file: !87, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3576, file: !87, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3576, file: !87, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3576, file: !87, line: 610, baseType: !7, size: 32, offset: 1696)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3576, file: !87, line: 611, baseType: !86, size: 32, offset: 1728)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3576, file: !87, line: 612, baseType: !94, size: 32, offset: 1760)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3576, file: !87, line: 613, baseType: !215, size: 32, offset: 1792)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3576, file: !87, line: 614, baseType: !215, size: 32, offset: 1824)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3576, file: !87, line: 615, baseType: !479, size: 64, offset: 1856)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3576, file: !87, line: 616, baseType: !479, size: 64, offset: 1920)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3576, file: !87, line: 617, baseType: !479, size: 64, offset: 1984)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3576, file: !87, line: 618, baseType: !479, size: 64, offset: 2048)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3576, file: !87, line: 620, baseType: !3664, size: 64, offset: 2112)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !87, line: 536, size: 256, elements: !3666)
!3666 = !{!3667, !3668, !3669, !3670}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3665, file: !87, line: 537, baseType: !239)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3665, file: !87, line: 538, baseType: !7, size: 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3665, file: !87, line: 540, baseType: !222, size: 128, offset: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3665, file: !87, line: 543, baseType: !3671, size: 64, offset: 192)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !87, line: 534, flags: DIFlagFwdDecl)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3576, file: !87, line: 621, baseType: !3674, size: 64, offset: 2176)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{null, !291, !1493}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3576, file: !87, line: 622, baseType: !3678, size: 64, offset: 2240)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !87, line: 622, flags: DIFlagFwdDecl)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !292, file: !80, line: 486, baseType: !3681, size: 64, offset: 4096)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !87, line: 642, size: 1792, elements: !3683)
!3683 = !{!3684, !3685, !3686, !3690, !3691, !3692}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3682, file: !87, line: 643, baseType: !3443, size: 1472)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3682, file: !87, line: 644, baseType: !3446, size: 64, offset: 1472)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3682, file: !87, line: 645, baseType: !3687, size: 64, offset: 1536)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{null, !291, !548}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3682, file: !87, line: 646, baseType: !3446, size: 64, offset: 1600)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3682, file: !87, line: 647, baseType: !3437, size: 64, offset: 1664)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3682, file: !87, line: 648, baseType: !3437, size: 64, offset: 1728)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !292, file: !80, line: 493, baseType: !3694, size: 64, offset: 4160)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !80, line: 493, flags: DIFlagFwdDecl)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !292, file: !80, line: 499, baseType: !222, size: 128, offset: 4224)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !292, file: !80, line: 502, baseType: !3698, size: 64, offset: 4352)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3700)
!3700 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !80, line: 502, flags: DIFlagFwdDecl)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !292, file: !80, line: 504, baseType: !3702, size: 64, offset: 4416)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !292, file: !80, line: 505, baseType: !479, size: 64, offset: 4480)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !292, file: !80, line: 510, baseType: !479, size: 64, offset: 4544)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !292, file: !80, line: 511, baseType: !3706, size: 64, offset: 4608)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3708)
!3708 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !80, line: 511, flags: DIFlagFwdDecl)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !292, file: !80, line: 513, baseType: !3710, size: 64, offset: 4672)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !80, line: 288, size: 128, elements: !3712)
!3712 = !{!3713, !3714}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3711, file: !80, line: 293, baseType: !7, size: 32)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3711, file: !80, line: 294, baseType: !386, size: 64, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !292, file: !80, line: 515, baseType: !222, size: 128, offset: 4736)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !292, file: !80, line: 526, baseType: !3717, offset: 4864)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3718, line: 5, elements: !253)
!3718 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !292, file: !80, line: 528, baseType: !3720, size: 64, offset: 4864)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3722, line: 14, flags: DIFlagFwdDecl)
!3722 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !292, file: !80, line: 529, baseType: !3724, size: 64, offset: 4928)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3726, line: 17, size: 192, elements: !3727)
!3726 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3727 = !{!3728, !3729, !3812}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3725, file: !3726, line: 18, baseType: !3724, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3725, file: !3726, line: 19, baseType: !3730, size: 64, offset: 64)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3732)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3726, line: 110, size: 1152, elements: !3733)
!3733 = !{!3734, !3738, !3742, !3748, !3754, !3758, !3762, !3767, !3771, !3772, !3776, !3780, !3784, !3795, !3796, !3797, !3798, !3808}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3732, file: !3726, line: 111, baseType: !3735, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!3724, !3724}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3732, file: !3726, line: 112, baseType: !3739, size: 64, offset: 64)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{null, !3724}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3732, file: !3726, line: 113, baseType: !3743, size: 64, offset: 128)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!548, !3746}
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3725)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3732, file: !3726, line: 114, baseType: !3749, size: 64, offset: 192)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!2166, !3746, !3752}
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3732, file: !3726, line: 116, baseType: !3755, size: 64, offset: 256)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!548, !3746, !299}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3732, file: !3726, line: 118, baseType: !3759, size: 64, offset: 320)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!215, !3746, !299, !7, !218, !383}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3732, file: !3726, line: 123, baseType: !3763, size: 64, offset: 384)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!215, !3746, !299, !3766, !383}
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3732, file: !3726, line: 126, baseType: !3768, size: 64, offset: 448)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!299, !3746}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3732, file: !3726, line: 127, baseType: !3768, size: 64, offset: 512)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3732, file: !3726, line: 128, baseType: !3773, size: 64, offset: 576)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!3724, !3746}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3732, file: !3726, line: 130, baseType: !3777, size: 64, offset: 640)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!3724, !3746, !3724}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3732, file: !3726, line: 133, baseType: !3781, size: 64, offset: 704)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!3724, !3746, !299}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3732, file: !3726, line: 135, baseType: !3785, size: 64, offset: 768)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!215, !3746, !299, !299, !7, !7, !3788}
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3726, line: 43, size: 640, elements: !3790)
!3790 = !{!3791, !3792, !3793}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3789, file: !3726, line: 44, baseType: !3724, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3789, file: !3726, line: 45, baseType: !7, size: 32, offset: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3789, file: !3726, line: 46, baseType: !3794, size: 512, offset: 128)
!3794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 512, elements: !1379)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3732, file: !3726, line: 140, baseType: !3777, size: 64, offset: 832)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3732, file: !3726, line: 143, baseType: !3773, size: 64, offset: 896)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3732, file: !3726, line: 145, baseType: !3735, size: 64, offset: 960)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3732, file: !3726, line: 146, baseType: !3799, size: 64, offset: 1024)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!215, !3746, !3802}
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3726, line: 29, size: 128, elements: !3804)
!3804 = !{!3805, !3806, !3807}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3803, file: !3726, line: 30, baseType: !7, size: 32)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3803, file: !3726, line: 31, baseType: !7, size: 32, offset: 32)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3803, file: !3726, line: 32, baseType: !3746, size: 64, offset: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3732, file: !3726, line: 148, baseType: !3809, size: 64, offset: 1088)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!215, !3746, !291}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3725, file: !3726, line: 20, baseType: !291, size: 64, offset: 128)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !292, file: !80, line: 534, baseType: !571, size: 32, offset: 4992)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !292, file: !80, line: 535, baseType: !269, size: 32, offset: 5024)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !292, file: !80, line: 537, baseType: !239, offset: 5056)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !292, file: !80, line: 538, baseType: !222, size: 128, offset: 5056)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !292, file: !80, line: 540, baseType: !3818, size: 64, offset: 5184)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3820, line: 54, size: 960, elements: !3821)
!3820 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3821 = !{!3822, !3823, !3824, !3825, !3826, !3827, !3828, !3832, !3836, !3837, !3838, !3839, !3843, !3847, !3848}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3819, file: !3820, line: 55, baseType: !299, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3819, file: !3820, line: 56, baseType: !189, size: 64, offset: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3819, file: !3820, line: 58, baseType: !390, size: 64, offset: 128)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3819, file: !3820, line: 59, baseType: !390, size: 64, offset: 192)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3819, file: !3820, line: 60, baseType: !303, size: 64, offset: 256)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3819, file: !3820, line: 62, baseType: !3428, size: 64, offset: 320)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3819, file: !3820, line: 63, baseType: !3829, size: 64, offset: 384)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!336, !291, !3435}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3819, file: !3820, line: 65, baseType: !3833, size: 64, offset: 448)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{null, !3818}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3819, file: !3820, line: 66, baseType: !3437, size: 64, offset: 512)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3819, file: !3820, line: 68, baseType: !3446, size: 64, offset: 576)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3819, file: !3820, line: 70, baseType: !3236, size: 64, offset: 640)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3819, file: !3820, line: 71, baseType: !3840, size: 64, offset: 704)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!2166, !291}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3819, file: !3820, line: 73, baseType: !3844, size: 64, offset: 768)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{null, !291, !3268, !3269}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3819, file: !3820, line: 75, baseType: !3441, size: 64, offset: 832)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3819, file: !3820, line: 77, baseType: !3558, size: 64, offset: 896)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !292, file: !80, line: 541, baseType: !390, size: 64, offset: 5248)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !292, file: !80, line: 543, baseType: !3437, size: 64, offset: 5312)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !292, file: !80, line: 544, baseType: !3852, size: 64, offset: 5376)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !80, line: 45, flags: DIFlagFwdDecl)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !292, file: !80, line: 545, baseType: !3855, size: 64, offset: 5440)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !80, line: 47, flags: DIFlagFwdDecl)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !292, file: !80, line: 547, baseType: !548, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !292, file: !80, line: 548, baseType: !548, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !292, file: !80, line: 549, baseType: !548, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !292, file: !80, line: 550, baseType: !548, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !288, file: !6, line: 426, baseType: !291, size: 64, offset: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !288, file: !6, line: 427, baseType: !215, size: 32, offset: 128)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !288, file: !6, line: 428, baseType: !299, size: 64, offset: 192)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !288, file: !6, line: 429, baseType: !1401, size: 8, offset: 256)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !288, file: !6, line: 433, baseType: !1401, size: 8, offset: 264)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !288, file: !6, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !288, file: !6, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !288, file: !6, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !288, file: !6, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !288, file: !6, line: 442, baseType: !7, size: 32, offset: 288)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !288, file: !6, line: 444, baseType: !215, size: 32, offset: 320)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !288, file: !6, line: 446, baseType: !1227, size: 192, offset: 384)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !288, file: !6, line: 448, baseType: !3874, size: 128, offset: 576)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !6, line: 417, size: 128, elements: !3875)
!3875 = !{!3876}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !3874, file: !6, line: 418, baseType: !3877, size: 128)
!3877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 128, elements: !283)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !288, file: !6, line: 449, baseType: !259, size: 64, offset: 704)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !288, file: !6, line: 450, baseType: !287, size: 64, offset: 768)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !288, file: !6, line: 452, baseType: !215, size: 32, offset: 832)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !288, file: !6, line: 459, baseType: !215, size: 32, offset: 864)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !288, file: !6, line: 460, baseType: !215, size: 32, offset: 896)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !288, file: !6, line: 462, baseType: !7, size: 32, offset: 928)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !260, file: !6, line: 647, baseType: !3885, size: 640, offset: 640)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !6, line: 67, size: 640, elements: !3886)
!3886 = !{!3887, !3899, !3907, !3915, !3916, !3917, !3920, !3922, !3923, !3924}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3885, file: !6, line: 68, baseType: !3888, size: 72)
!3888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !101, line: 407, size: 72, elements: !3889)
!3889 = !{!3890, !3891, !3892, !3893, !3894, !3896, !3897, !3898}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3888, file: !101, line: 408, baseType: !1402, size: 8)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3888, file: !101, line: 409, baseType: !1402, size: 8, offset: 8)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !3888, file: !101, line: 411, baseType: !1402, size: 8, offset: 16)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3888, file: !101, line: 412, baseType: !1402, size: 8, offset: 24)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !3888, file: !101, line: 413, baseType: !3895, size: 16, offset: 32)
!3895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !2945, line: 29, baseType: !914)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !3888, file: !101, line: 414, baseType: !1402, size: 8, offset: 48)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !3888, file: !101, line: 418, baseType: !1402, size: 8, offset: 56)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !3888, file: !101, line: 419, baseType: !1402, size: 8, offset: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !3885, file: !6, line: 69, baseType: !3900, size: 48, offset: 72)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !101, line: 689, size: 48, elements: !3901)
!3901 = !{!3902, !3903, !3904, !3905, !3906}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3900, file: !101, line: 690, baseType: !1402, size: 8)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3900, file: !101, line: 691, baseType: !1402, size: 8, offset: 8)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !3900, file: !101, line: 693, baseType: !1402, size: 8, offset: 16)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3900, file: !101, line: 694, baseType: !1402, size: 8, offset: 24)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !3900, file: !101, line: 695, baseType: !3895, size: 16, offset: 32)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !3885, file: !6, line: 70, baseType: !3908, size: 64, offset: 120)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !101, line: 677, size: 64, elements: !3909)
!3909 = !{!3910, !3911, !3912, !3913}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3908, file: !101, line: 678, baseType: !1402, size: 8)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3908, file: !101, line: 679, baseType: !1402, size: 8, offset: 8)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !3908, file: !101, line: 680, baseType: !3895, size: 16, offset: 16)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !3908, file: !101, line: 681, baseType: !3914, size: 32, offset: 32)
!3914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2945, line: 31, baseType: !271)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3885, file: !6, line: 71, baseType: !222, size: 128, offset: 192)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3885, file: !6, line: 72, baseType: !218, size: 64, offset: 320)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !3885, file: !6, line: 73, baseType: !3918, size: 64, offset: 384)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !6, line: 48, flags: DIFlagFwdDecl)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3885, file: !6, line: 75, baseType: !3921, size: 64, offset: 448)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3885, file: !6, line: 76, baseType: !215, size: 32, offset: 512)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3885, file: !6, line: 77, baseType: !215, size: 32, offset: 544)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3885, file: !6, line: 78, baseType: !215, size: 32, offset: 576)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !260, file: !6, line: 649, baseType: !292, size: 5568, offset: 1280)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !260, file: !6, line: 651, baseType: !3927, size: 144, offset: 6848)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !101, line: 289, size: 144, elements: !3928)
!3928 = !{!3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3927, file: !101, line: 290, baseType: !1402, size: 8)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3927, file: !101, line: 291, baseType: !1402, size: 8, offset: 8)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !3927, file: !101, line: 293, baseType: !3895, size: 16, offset: 16)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3927, file: !101, line: 294, baseType: !1402, size: 8, offset: 32)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3927, file: !101, line: 295, baseType: !1402, size: 8, offset: 40)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3927, file: !101, line: 296, baseType: !1402, size: 8, offset: 48)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !3927, file: !101, line: 297, baseType: !1402, size: 8, offset: 56)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3927, file: !101, line: 298, baseType: !3895, size: 16, offset: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3927, file: !101, line: 299, baseType: !3895, size: 16, offset: 80)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !3927, file: !101, line: 300, baseType: !3895, size: 16, offset: 96)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !3927, file: !101, line: 301, baseType: !1402, size: 8, offset: 112)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !3927, file: !101, line: 302, baseType: !1402, size: 8, offset: 120)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !3927, file: !101, line: 303, baseType: !1402, size: 8, offset: 128)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !3927, file: !101, line: 304, baseType: !1402, size: 8, offset: 136)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !260, file: !6, line: 652, baseType: !3944, size: 64, offset: 7040)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !6, line: 396, size: 384, elements: !3946)
!3946 = !{!3947, !3955, !3963, !3975, !3988, !3997}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3945, file: !6, line: 397, baseType: !3948, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !101, line: 844, size: 40, elements: !3950)
!3950 = !{!3951, !3952, !3953, !3954}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3949, file: !101, line: 845, baseType: !1402, size: 8)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3949, file: !101, line: 846, baseType: !1402, size: 8, offset: 8)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3949, file: !101, line: 848, baseType: !3895, size: 16, offset: 16)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !3949, file: !101, line: 849, baseType: !1402, size: 8, offset: 32)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !3945, file: !6, line: 400, baseType: !3956, size: 64, offset: 64)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !101, line: 895, size: 56, elements: !3958)
!3958 = !{!3959, !3960, !3961, !3962}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3957, file: !101, line: 896, baseType: !1402, size: 8)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3957, file: !101, line: 897, baseType: !1402, size: 8, offset: 8)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3957, file: !101, line: 898, baseType: !1402, size: 8, offset: 16)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3957, file: !101, line: 899, baseType: !3914, size: 32, offset: 24)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !3945, file: !6, line: 401, baseType: !3964, size: 64, offset: 128)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !101, line: 917, size: 80, elements: !3966)
!3966 = !{!3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3965, file: !101, line: 918, baseType: !1402, size: 8)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3965, file: !101, line: 919, baseType: !1402, size: 8, offset: 8)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3965, file: !101, line: 920, baseType: !1402, size: 8, offset: 16)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3965, file: !101, line: 921, baseType: !1402, size: 8, offset: 24)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !3965, file: !101, line: 923, baseType: !3895, size: 16, offset: 32)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !3965, file: !101, line: 928, baseType: !1402, size: 8, offset: 48)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !3965, file: !101, line: 929, baseType: !1402, size: 8, offset: 56)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !3965, file: !101, line: 930, baseType: !3895, size: 16, offset: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !3945, file: !6, line: 402, baseType: !3976, size: 64, offset: 192)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !101, line: 955, size: 128, elements: !3978)
!3978 = !{!3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3977, file: !101, line: 956, baseType: !1402, size: 8)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3977, file: !101, line: 957, baseType: !1402, size: 8, offset: 8)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3977, file: !101, line: 958, baseType: !1402, size: 8, offset: 16)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3977, file: !101, line: 959, baseType: !1402, size: 8, offset: 24)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3977, file: !101, line: 960, baseType: !3914, size: 32, offset: 32)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !3977, file: !101, line: 963, baseType: !3895, size: 16, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !3977, file: !101, line: 967, baseType: !3895, size: 16, offset: 80)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !3977, file: !101, line: 968, baseType: !3987, size: 32, offset: 96)
!3987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3914, size: 32, elements: !1420)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !3945, file: !6, line: 403, baseType: !3989, size: 64, offset: 256)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !101, line: 940, size: 160, elements: !3991)
!3991 = !{!3992, !3993, !3994, !3995, !3996}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3990, file: !101, line: 941, baseType: !1402, size: 8)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3990, file: !101, line: 942, baseType: !1402, size: 8, offset: 8)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3990, file: !101, line: 943, baseType: !1402, size: 8, offset: 16)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3990, file: !101, line: 944, baseType: !1402, size: 8, offset: 24)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !3990, file: !101, line: 945, baseType: !2746, size: 128, offset: 32)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !3945, file: !6, line: 404, baseType: !3998, size: 64, offset: 320)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !101, line: 1080, size: 24, elements: !4000)
!4000 = !{!4001, !4002, !4003}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3999, file: !101, line: 1081, baseType: !1402, size: 8)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3999, file: !101, line: 1082, baseType: !1402, size: 8, offset: 8)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3999, file: !101, line: 1083, baseType: !1402, size: 8, offset: 16)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !260, file: !6, line: 653, baseType: !4005, size: 64, offset: 7104)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !6, line: 374, size: 5440, elements: !4007)
!4007 = !{!4008, !4019, !4020, !4033, !4075, !4084, !4085}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4006, file: !6, line: 375, baseType: !4009, size: 72)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !101, line: 349, size: 72, elements: !4010)
!4010 = !{!4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4009, file: !101, line: 350, baseType: !1402, size: 8)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4009, file: !101, line: 351, baseType: !1402, size: 8, offset: 8)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !4009, file: !101, line: 353, baseType: !3895, size: 16, offset: 16)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !4009, file: !101, line: 354, baseType: !1402, size: 8, offset: 32)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !4009, file: !101, line: 355, baseType: !1402, size: 8, offset: 40)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !4009, file: !101, line: 356, baseType: !1402, size: 8, offset: 48)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4009, file: !101, line: 357, baseType: !1402, size: 8, offset: 56)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !4009, file: !101, line: 358, baseType: !1402, size: 8, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4006, file: !6, line: 377, baseType: !336, size: 64, offset: 128)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4006, file: !6, line: 381, baseType: !4021, size: 1024, offset: 192)
!4021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4022, size: 1024, elements: !266)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !101, line: 783, size: 64, elements: !4024)
!4024 = !{!4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4023, file: !101, line: 784, baseType: !1402, size: 8)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4023, file: !101, line: 785, baseType: !1402, size: 8, offset: 8)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !4023, file: !101, line: 787, baseType: !1402, size: 8, offset: 16)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !4023, file: !101, line: 788, baseType: !1402, size: 8, offset: 24)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !4023, file: !101, line: 789, baseType: !1402, size: 8, offset: 32)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !4023, file: !101, line: 790, baseType: !1402, size: 8, offset: 40)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !4023, file: !101, line: 791, baseType: !1402, size: 8, offset: 48)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !4023, file: !101, line: 792, baseType: !1402, size: 8, offset: 56)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !4006, file: !6, line: 385, baseType: !4034, size: 2048, offset: 1216)
!4034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4035, size: 2048, elements: !2269)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !6, line: 232, size: 6272, elements: !4037)
!4037 = !{!4038, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4036, file: !6, line: 235, baseType: !4039, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !6, line: 82, size: 320, elements: !4041)
!4041 = !{!4042, !4054, !4055, !4056, !4058}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4040, file: !6, line: 83, baseType: !4043, size: 72)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !101, line: 389, size: 72, elements: !4044)
!4044 = !{!4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4043, file: !101, line: 390, baseType: !1402, size: 8)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4043, file: !101, line: 391, baseType: !1402, size: 8, offset: 8)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4043, file: !101, line: 393, baseType: !1402, size: 8, offset: 16)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !4043, file: !101, line: 394, baseType: !1402, size: 8, offset: 24)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !4043, file: !101, line: 395, baseType: !1402, size: 8, offset: 32)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4043, file: !101, line: 396, baseType: !1402, size: 8, offset: 40)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4043, file: !101, line: 397, baseType: !1402, size: 8, offset: 48)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4043, file: !101, line: 398, baseType: !1402, size: 8, offset: 56)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !4043, file: !101, line: 399, baseType: !1402, size: 8, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4040, file: !6, line: 85, baseType: !215, size: 32, offset: 96)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4040, file: !6, line: 86, baseType: !3921, size: 64, offset: 128)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !4040, file: !6, line: 91, baseType: !4057, size: 64, offset: 192)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4040, file: !6, line: 93, baseType: !336, size: 64, offset: 256)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !4036, file: !6, line: 237, baseType: !4039, size: 64, offset: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4036, file: !6, line: 239, baseType: !7, size: 32, offset: 128)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4036, file: !6, line: 243, baseType: !4022, size: 64, offset: 192)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4036, file: !6, line: 245, baseType: !215, size: 32, offset: 256)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4036, file: !6, line: 247, baseType: !5, size: 32, offset: 288)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !4036, file: !6, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !4036, file: !6, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !4036, file: !6, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !4036, file: !6, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !4036, file: !6, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !4036, file: !6, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !4036, file: !6, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !4036, file: !6, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4036, file: !6, line: 257, baseType: !292, size: 5568, offset: 384)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !4036, file: !6, line: 258, baseType: !291, size: 64, offset: 5952)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !4036, file: !6, line: 259, baseType: !1996, size: 256, offset: 6016)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !4006, file: !6, line: 389, baseType: !4076, size: 2048, offset: 3264)
!4076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4077, size: 2048, elements: !2269)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !6, line: 322, size: 64, elements: !4079)
!4079 = !{!4080, !4081, !4082}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4078, file: !6, line: 323, baseType: !7, size: 32)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4078, file: !6, line: 324, baseType: !202, size: 32, offset: 32)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4078, file: !6, line: 328, baseType: !4083, offset: 64)
!4083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4040, elements: !2370)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4006, file: !6, line: 391, baseType: !3921, size: 64, offset: 5312)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4006, file: !6, line: 392, baseType: !215, size: 32, offset: 5376)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !260, file: !6, line: 655, baseType: !4005, size: 64, offset: 7168)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !260, file: !6, line: 656, baseType: !4088, size: 1024, offset: 7232)
!4088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4057, size: 1024, elements: !266)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !260, file: !6, line: 657, baseType: !4088, size: 1024, offset: 8256)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !260, file: !6, line: 659, baseType: !4091, size: 64, offset: 9280)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !260, file: !6, line: 661, baseType: !378, size: 16, offset: 9344)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !260, file: !6, line: 662, baseType: !1401, size: 8, offset: 9360)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !260, file: !6, line: 663, baseType: !1401, size: 8, offset: 9368)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !260, file: !6, line: 664, baseType: !1401, size: 8, offset: 9376)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !260, file: !6, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !260, file: !6, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !260, file: !6, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !260, file: !6, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !260, file: !6, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !260, file: !6, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !260, file: !6, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !260, file: !6, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !260, file: !6, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !260, file: !6, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !260, file: !6, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !260, file: !6, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !260, file: !6, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !260, file: !6, line: 679, baseType: !215, size: 32, offset: 9408)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !260, file: !6, line: 682, baseType: !336, size: 64, offset: 9472)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !260, file: !6, line: 683, baseType: !336, size: 64, offset: 9536)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !260, file: !6, line: 684, baseType: !336, size: 64, offset: 9600)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !260, file: !6, line: 686, baseType: !222, size: 128, offset: 9664)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !260, file: !6, line: 688, baseType: !215, size: 32, offset: 9792)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !260, file: !6, line: 690, baseType: !269, size: 32, offset: 9824)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !260, file: !6, line: 691, baseType: !211, size: 32, offset: 9856)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !260, file: !6, line: 693, baseType: !386, size: 64, offset: 9920)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !260, file: !6, line: 696, baseType: !386, size: 64, offset: 9984)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !260, file: !6, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !260, file: !6, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !260, file: !6, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !260, file: !6, line: 702, baseType: !4123, size: 64, offset: 10112)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !6, line: 28, flags: DIFlagFwdDecl)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !260, file: !6, line: 703, baseType: !215, size: 32, offset: 10176)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !260, file: !6, line: 704, baseType: !121, size: 32, offset: 10208)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !260, file: !6, line: 705, baseType: !4128, size: 64, offset: 10240)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !6, line: 502, size: 64, elements: !4129)
!4129 = !{!4130, !4131}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !4128, file: !6, line: 506, baseType: !7, size: 32)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4128, file: !6, line: 512, baseType: !215, size: 32, offset: 32)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !260, file: !6, line: 706, baseType: !4133, size: 128, offset: 10304)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !6, line: 522, size: 128, elements: !4134)
!4134 = !{!4135, !4136, !4137, !4138}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !4133, file: !6, line: 529, baseType: !7, size: 32)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !4133, file: !6, line: 535, baseType: !7, size: 32, offset: 32)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !4133, file: !6, line: 545, baseType: !7, size: 32, offset: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4133, file: !6, line: 551, baseType: !215, size: 32, offset: 96)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !260, file: !6, line: 707, baseType: !4133, size: 128, offset: 10432)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !260, file: !6, line: 708, baseType: !7, size: 32, offset: 10560)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !260, file: !6, line: 710, baseType: !913, size: 16, offset: 10592)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !260, file: !6, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !199, file: !6, line: 1575, baseType: !4057, size: 64, offset: 576)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !199, file: !6, line: 1576, baseType: !7, size: 32, offset: 640)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !199, file: !6, line: 1577, baseType: !7, size: 32, offset: 672)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !199, file: !6, line: 1578, baseType: !215, size: 32, offset: 704)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !199, file: !6, line: 1579, baseType: !7, size: 32, offset: 736)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !199, file: !6, line: 1580, baseType: !218, size: 64, offset: 768)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !199, file: !6, line: 1581, baseType: !974, size: 64, offset: 832)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !199, file: !6, line: 1582, baseType: !4151, size: 64, offset: 896)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4153, line: 11, size: 256, elements: !4154)
!4153 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!4154 = !{!4155, !4156, !4157, !4158, !4159}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4152, file: !4153, line: 12, baseType: !386, size: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4152, file: !4153, line: 13, baseType: !7, size: 32, offset: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4152, file: !4153, line: 14, baseType: !7, size: 32, offset: 96)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4152, file: !4153, line: 15, baseType: !974, size: 64, offset: 128)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4152, file: !4153, line: 17, baseType: !7, size: 32, offset: 192)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !199, file: !6, line: 1583, baseType: !215, size: 32, offset: 960)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !199, file: !6, line: 1584, baseType: !215, size: 32, offset: 992)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !199, file: !6, line: 1585, baseType: !269, size: 32, offset: 1024)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !199, file: !6, line: 1586, baseType: !269, size: 32, offset: 1056)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !199, file: !6, line: 1587, baseType: !3921, size: 64, offset: 1088)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !199, file: !6, line: 1588, baseType: !974, size: 64, offset: 1152)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !199, file: !6, line: 1589, baseType: !215, size: 32, offset: 1216)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !199, file: !6, line: 1590, baseType: !215, size: 32, offset: 1248)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !199, file: !6, line: 1591, baseType: !215, size: 32, offset: 1280)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !199, file: !6, line: 1593, baseType: !215, size: 32, offset: 1312)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !199, file: !6, line: 1594, baseType: !218, size: 64, offset: 1344)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !199, file: !6, line: 1595, baseType: !194, size: 64, offset: 1408)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !199, file: !6, line: 1596, baseType: !4173, offset: 1472)
!4173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4174, elements: !2370)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !6, line: 1351, size: 128, elements: !4175)
!4175 = !{!4176, !4177, !4178, !4179}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4174, file: !6, line: 1352, baseType: !7, size: 32)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4174, file: !6, line: 1353, baseType: !7, size: 32, offset: 32)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4174, file: !6, line: 1354, baseType: !7, size: 32, offset: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4174, file: !6, line: 1355, baseType: !215, size: 32, offset: 96)
!4180 = !{!0, !4181, !4186, !4191, !4196, !4201, !4206, !4267}
!4181 = !DIGlobalVariableExpression(var: !4182, expr: !DIExpression())
!4182 = distinct !DIGlobalVariable(name: "__exitcall_streamzap_driver_exit", scope: !2, file: !3, line: 490, type: !4183, isLocal: true, isDefinition: true)
!4183 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4184, line: 117, baseType: !4185)
!4184 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!4186 = !DIGlobalVariableExpression(var: !4187, expr: !DIExpression())
!4187 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author238", scope: !2, file: !3, line: 492, type: !4188, isLocal: true, isDefinition: true, align: 8)
!4188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 408, elements: !4189)
!4189 = !{!4190}
!4190 = !DISubrange(count: 51)
!4191 = !DIGlobalVariableExpression(var: !4192, expr: !DIExpression())
!4192 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description239", scope: !2, file: !3, line: 493, type: !4193, isLocal: true, isDefinition: true, align: 8)
!4193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 432, elements: !4194)
!4194 = !{!4195}
!4195 = !DISubrange(count: 54)
!4196 = !DIGlobalVariableExpression(var: !4197, expr: !DIExpression())
!4197 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file240", scope: !2, file: !3, line: 494, type: !4198, isLocal: true, isDefinition: true, align: 8)
!4198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 336, elements: !4199)
!4199 = !{!4200}
!4200 = !DISubrange(count: 42)
!4201 = !DIGlobalVariableExpression(var: !4202, expr: !DIExpression())
!4202 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license241", scope: !2, file: !3, line: 494, type: !4203, isLocal: true, isDefinition: true, align: 8)
!4203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 176, elements: !4204)
!4204 = !{!4205}
!4205 = !DISubrange(count: 22)
!4206 = !DIGlobalVariableExpression(var: !4207, expr: !DIExpression())
!4207 = distinct !DIGlobalVariable(name: "streamzap_driver", scope: !2, file: !3, line: 105, type: !4208, isLocal: true, isDefinition: true)
!4208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !6, line: 1184, size: 2112, elements: !4209)
!4209 = !{!4210, !4211, !4232, !4236, !4240, !4244, !4248, !4249, !4250, !4251, !4252, !4253, !4258, !4263, !4264, !4265, !4266}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4208, file: !6, line: 1185, baseType: !299, size: 64)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4208, file: !6, line: 1187, baseType: !4212, size: 64, offset: 64)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!215, !4035, !4215}
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4217)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3499, line: 121, size: 256, elements: !4218)
!4218 = !{!4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !4217, file: !3499, line: 123, baseType: !914, size: 16)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !4217, file: !3499, line: 126, baseType: !914, size: 16, offset: 16)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !4217, file: !3499, line: 127, baseType: !914, size: 16, offset: 32)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !4217, file: !3499, line: 128, baseType: !914, size: 16, offset: 48)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !4217, file: !3499, line: 129, baseType: !914, size: 16, offset: 64)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !4217, file: !3499, line: 132, baseType: !1402, size: 8, offset: 80)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !4217, file: !3499, line: 133, baseType: !1402, size: 8, offset: 88)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !4217, file: !3499, line: 134, baseType: !1402, size: 8, offset: 96)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4217, file: !3499, line: 137, baseType: !1402, size: 8, offset: 104)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4217, file: !3499, line: 138, baseType: !1402, size: 8, offset: 112)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4217, file: !3499, line: 139, baseType: !1402, size: 8, offset: 120)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4217, file: !3499, line: 142, baseType: !1402, size: 8, offset: 128)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4217, file: !3499, line: 145, baseType: !3518, size: 64, align: 64, offset: 192)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4208, file: !6, line: 1190, baseType: !4233, size: 64, offset: 128)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{null, !4035}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4208, file: !6, line: 1192, baseType: !4237, size: 64, offset: 192)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!215, !4035, !7, !218}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4208, file: !6, line: 1195, baseType: !4241, size: 64, offset: 256)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!215, !4035, !3529}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4208, file: !6, line: 1196, baseType: !4245, size: 64, offset: 320)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!215, !4035}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !4208, file: !6, line: 1197, baseType: !4245, size: 64, offset: 384)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !4208, file: !6, line: 1199, baseType: !4245, size: 64, offset: 448)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !4208, file: !6, line: 1200, baseType: !4245, size: 64, offset: 512)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4208, file: !6, line: 1202, baseType: !4215, size: 64, offset: 576)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4208, file: !6, line: 1203, baseType: !390, size: 64, offset: 640)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4208, file: !6, line: 1205, baseType: !4254, size: 128, offset: 704)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !6, line: 1091, size: 128, elements: !4255)
!4255 = !{!4256, !4257}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4254, file: !6, line: 1092, baseType: !239)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4254, file: !6, line: 1093, baseType: !222, size: 128)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !4208, file: !6, line: 1206, baseType: !4259, size: 1216, offset: 832)
!4259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !6, line: 1113, size: 1216, elements: !4260)
!4260 = !{!4261, !4262}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4259, file: !6, line: 1114, baseType: !3487, size: 1152)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !4259, file: !6, line: 1115, baseType: !215, size: 32, offset: 1152)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !4208, file: !6, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !4208, file: !6, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !4208, file: !6, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !4208, file: !6, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!4267 = !DIGlobalVariableExpression(var: !4268, expr: !DIExpression())
!4268 = distinct !DIGlobalVariable(name: "streamzap_table", scope: !2, file: !3, line: 37, type: !4269, isLocal: true, isDefinition: true)
!4269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4216, size: 512, elements: !283)
!4270 = !{i32 7, !"Dwarf Version", i32 4}
!4271 = !{i32 2, !"Debug Info Version", i32 3}
!4272 = !{i32 1, !"wchar_size", i32 2}
!4273 = !{i32 1, !"Code Model", i32 2}
!4274 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4275 = distinct !DISubprogram(name: "streamzap_driver_init", scope: !3, file: !3, line: 490, type: !4276, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4276 = !DISubroutineType(types: !4277)
!4277 = !{!215}
!4278 = !DILocation(line: 490, column: 1, scope: !4275)
!4279 = distinct !DISubprogram(name: "streamzap_driver_exit", scope: !3, file: !3, line: 490, type: !1917, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4280 = !DILocation(line: 490, column: 1, scope: !4279)
!4281 = distinct !DISubprogram(name: "streamzap_probe", scope: !3, file: !3, line: 319, type: !4213, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4282 = !DILocalVariable(name: "intf", arg: 1, scope: !4281, file: !3, line: 319, type: !4035)
!4283 = !DILocation(line: 319, column: 50, scope: !4281)
!4284 = !DILocalVariable(name: "id", arg: 2, scope: !4281, file: !3, line: 320, type: !4215)
!4285 = !DILocation(line: 320, column: 35, scope: !4281)
!4286 = !DILocalVariable(name: "usbdev", scope: !4281, file: !3, line: 322, type: !259)
!4287 = !DILocation(line: 322, column: 21, scope: !4281)
!4288 = !DILocation(line: 322, column: 50, scope: !4281)
!4289 = !DILocation(line: 322, column: 30, scope: !4281)
!4290 = !DILocalVariable(name: "iface_host", scope: !4281, file: !3, line: 323, type: !4039)
!4291 = !DILocation(line: 323, column: 29, scope: !4281)
!4292 = !DILocalVariable(name: "sz", scope: !4281, file: !3, line: 324, type: !4293)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamzap_ir", file: !3, line: 62, size: 2432, elements: !4295)
!4295 = !{!4296, !4683, !4684, !4685, !4686, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4294, file: !3, line: 64, baseType: !4297, size: 64)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_dev", file: !158, line: 162, size: 9536, elements: !4299)
!4299 = !{!4300, !4301, !4302, !4306, !4307, !4308, !4316, !4317, !4318, !4334, !4335, !4336, !4339, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4642, !4646, !4650, !4654, !4655, !4656, !4660, !4664, !4668, !4672, !4673, !4678, !4679}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4298, file: !158, line: 163, baseType: !292, size: 5568)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "managed_alloc", scope: !4298, file: !158, line: 164, baseType: !548, size: 8, offset: 5568)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_groups", scope: !4298, file: !158, line: 165, baseType: !4303, size: 320, offset: 5632)
!4303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 320, elements: !4304)
!4304 = !{!4305}
!4305 = !DISubrange(count: 5)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !4298, file: !158, line: 166, baseType: !299, size: 64, offset: 5952)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "input_phys", scope: !4298, file: !158, line: 167, baseType: !299, size: 64, offset: 6016)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "input_id", scope: !4298, file: !158, line: 168, baseType: !4309, size: 64, offset: 6080)
!4309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !4310, line: 59, size: 64, elements: !4311)
!4310 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!4311 = !{!4312, !4313, !4314, !4315}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4309, file: !4310, line: 60, baseType: !914, size: 16)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4309, file: !4310, line: 61, baseType: !914, size: 16, offset: 16)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4309, file: !4310, line: 62, baseType: !914, size: 16, offset: 32)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4309, file: !4310, line: 63, baseType: !914, size: 16, offset: 48)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !4298, file: !158, line: 169, baseType: !299, size: 64, offset: 6144)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "map_name", scope: !4298, file: !158, line: 170, baseType: !299, size: 64, offset: 6208)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "rc_map", scope: !4298, file: !158, line: 171, baseType: !4319, size: 256, offset: 6272)
!4319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map", file: !4320, line: 157, size: 256, elements: !4321)
!4320 = !DIFile(filename: "./include/media/rc-map.h", directory: "/home/lizy2001/genbc/linux")
!4321 = !{!4322, !4328, !4329, !4330, !4331, !4332, !4333}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "scan", scope: !4319, file: !4320, line: 158, baseType: !4323, size: 64)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map_table", file: !4320, line: 140, size: 128, elements: !4325)
!4325 = !{!4326, !4327}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !4324, file: !4320, line: 141, baseType: !479, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4324, file: !4320, line: 142, baseType: !269, size: 32, offset: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4319, file: !4320, line: 159, baseType: !7, size: 32, offset: 64)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4319, file: !4320, line: 160, baseType: !7, size: 32, offset: 96)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4319, file: !4320, line: 161, baseType: !7, size: 32, offset: 128)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "rc_proto", scope: !4319, file: !4320, line: 162, baseType: !126, size: 32, offset: 160)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4319, file: !4320, line: 163, baseType: !299, size: 64, offset: 192)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4319, file: !4320, line: 164, baseType: !239, offset: 256)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4298, file: !158, line: 172, baseType: !1227, size: 192, offset: 6528)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4298, file: !158, line: 173, baseType: !7, size: 32, offset: 6720)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4298, file: !158, line: 174, baseType: !4337, size: 64, offset: 6784)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DICompositeType(tag: DW_TAG_structure_type, name: "ir_raw_event_ctrl", file: !158, line: 174, flags: DIFlagFwdDecl)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "input_dev", scope: !4298, file: !158, line: 175, baseType: !4340, size: 64, offset: 6848)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !4342, line: 131, size: 10432, elements: !4343)
!4342 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!4343 = !{!4344, !4345, !4346, !4347, !4348, !4349, !4350, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4377, !4382, !4477, !4480, !4481, !4482, !4484, !4487, !4497, !4498, !4499, !4500, !4501, !4505, !4509, !4513, !4517, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4604, !4605}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4341, file: !4342, line: 132, baseType: !299, size: 64)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4341, file: !4342, line: 133, baseType: !299, size: 64, offset: 64)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !4341, file: !4342, line: 134, baseType: !299, size: 64, offset: 128)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4341, file: !4342, line: 135, baseType: !4309, size: 64, offset: 192)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4341, file: !4342, line: 137, baseType: !1419, size: 64, offset: 256)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4341, file: !4342, line: 139, baseType: !1419, size: 64, offset: 320)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4341, file: !4342, line: 140, baseType: !4351, size: 768, offset: 384)
!4351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 768, elements: !2275)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4341, file: !4342, line: 141, baseType: !1419, size: 64, offset: 1152)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4341, file: !4342, line: 142, baseType: !1419, size: 64, offset: 1216)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4341, file: !4342, line: 143, baseType: !1419, size: 64, offset: 1280)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4341, file: !4342, line: 144, baseType: !1419, size: 64, offset: 1344)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4341, file: !4342, line: 145, baseType: !1419, size: 64, offset: 1408)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4341, file: !4342, line: 146, baseType: !3877, size: 128, offset: 1472)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4341, file: !4342, line: 147, baseType: !1419, size: 64, offset: 1600)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !4341, file: !4342, line: 149, baseType: !7, size: 32, offset: 1664)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !4341, file: !4342, line: 151, baseType: !7, size: 32, offset: 1696)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !4341, file: !4342, line: 152, baseType: !7, size: 32, offset: 1728)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4341, file: !4342, line: 153, baseType: !218, size: 64, offset: 1792)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !4341, file: !4342, line: 155, baseType: !4364, size: 64, offset: 1856)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DISubroutineType(types: !4366)
!4366 = !{!215, !4340, !4367, !2722}
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4369)
!4369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !4310, line: 114, size: 320, elements: !4370)
!4370 = !{!4371, !4372, !4373, !4374, !4375}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4369, file: !4310, line: 116, baseType: !1402, size: 8)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4369, file: !4310, line: 117, baseType: !1402, size: 8, offset: 8)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4369, file: !4310, line: 118, baseType: !914, size: 16, offset: 16)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4369, file: !4310, line: 119, baseType: !271, size: 32, offset: 32)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !4369, file: !4310, line: 120, baseType: !4376, size: 256, offset: 64)
!4376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1402, size: 256, elements: !2269)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !4341, file: !4342, line: 158, baseType: !4378, size: 64, offset: 1920)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{!215, !4340, !4381}
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !4341, file: !4342, line: 161, baseType: !4383, size: 64, offset: 1984)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !4342, line: 534, size: 896, elements: !4385)
!4385 = !{!4386, !4453, !4457, !4461, !4465, !4466, !4470, !4471, !4472, !4473, !4474, !4475}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !4384, file: !4342, line: 535, baseType: !4387, size: 64)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!215, !4340, !4390, !4390}
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !4310, line: 450, size: 384, elements: !4392)
!4392 = !{!4393, !4394, !4395, !4396, !4401, !4406}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4391, file: !4310, line: 451, baseType: !914, size: 16)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4391, file: !4310, line: 452, baseType: !1258, size: 16, offset: 16)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !4391, file: !4310, line: 453, baseType: !914, size: 16, offset: 32)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !4391, file: !4310, line: 454, baseType: !4397, size: 32, offset: 48)
!4397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !4310, line: 316, size: 32, elements: !4398)
!4398 = !{!4399, !4400}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !4397, file: !4310, line: 317, baseType: !914, size: 16)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4397, file: !4310, line: 318, baseType: !914, size: 16, offset: 16)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !4391, file: !4310, line: 455, baseType: !4402, size: 32, offset: 80)
!4402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !4310, line: 306, size: 32, elements: !4403)
!4403 = !{!4404, !4405}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4402, file: !4310, line: 307, baseType: !914, size: 16)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4402, file: !4310, line: 308, baseType: !914, size: 16, offset: 16)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !4391, file: !4310, line: 463, baseType: !4407, size: 256, offset: 128)
!4407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4391, file: !4310, line: 457, size: 256, elements: !4408)
!4408 = !{!4409, !4420, !4426, !4438, !4448}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !4407, file: !4310, line: 458, baseType: !4410, size: 80)
!4410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !4310, line: 345, size: 80, elements: !4411)
!4411 = !{!4412, !4413}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4410, file: !4310, line: 346, baseType: !1258, size: 16)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4410, file: !4310, line: 347, baseType: !4414, size: 64, offset: 16)
!4414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !4310, line: 333, size: 64, elements: !4415)
!4415 = !{!4416, !4417, !4418, !4419}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !4414, file: !4310, line: 334, baseType: !914, size: 16)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !4414, file: !4310, line: 335, baseType: !914, size: 16, offset: 16)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !4414, file: !4310, line: 336, baseType: !914, size: 16, offset: 32)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !4414, file: !4310, line: 337, baseType: !914, size: 16, offset: 48)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !4407, file: !4310, line: 459, baseType: !4421, size: 96)
!4421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !4310, line: 356, size: 96, elements: !4422)
!4422 = !{!4423, !4424, !4425}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !4421, file: !4310, line: 357, baseType: !1258, size: 16)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !4421, file: !4310, line: 358, baseType: !1258, size: 16, offset: 16)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4421, file: !4310, line: 359, baseType: !4414, size: 64, offset: 32)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !4407, file: !4310, line: 460, baseType: !4427, size: 256)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !4310, line: 401, size: 256, elements: !4428)
!4428 = !{!4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !4427, file: !4310, line: 402, baseType: !914, size: 16)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4427, file: !4310, line: 403, baseType: !914, size: 16, offset: 16)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !4427, file: !4310, line: 404, baseType: !1258, size: 16, offset: 32)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4427, file: !4310, line: 405, baseType: !1258, size: 16, offset: 48)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !4427, file: !4310, line: 406, baseType: !914, size: 16, offset: 64)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4427, file: !4310, line: 408, baseType: !4414, size: 64, offset: 80)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !4427, file: !4310, line: 410, baseType: !271, size: 32, offset: 160)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !4427, file: !4310, line: 411, baseType: !4437, size: 64, offset: 192)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4407, file: !4310, line: 461, baseType: !4439, size: 192)
!4439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4440, size: 192, elements: !283)
!4440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !4310, line: 372, size: 96, elements: !4441)
!4441 = !{!4442, !4443, !4444, !4445, !4446, !4447}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !4440, file: !4310, line: 373, baseType: !914, size: 16)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !4440, file: !4310, line: 374, baseType: !914, size: 16, offset: 16)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !4440, file: !4310, line: 376, baseType: !1258, size: 16, offset: 32)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !4440, file: !4310, line: 377, baseType: !1258, size: 16, offset: 48)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !4440, file: !4310, line: 379, baseType: !914, size: 16, offset: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !4440, file: !4310, line: 380, baseType: !1258, size: 16, offset: 80)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !4407, file: !4310, line: 462, baseType: !4449, size: 32)
!4449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !4310, line: 422, size: 32, elements: !4450)
!4450 = !{!4451, !4452}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !4449, file: !4310, line: 423, baseType: !914, size: 16)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !4449, file: !4310, line: 424, baseType: !914, size: 16, offset: 16)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !4384, file: !4342, line: 537, baseType: !4454, size: 64, offset: 64)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DISubroutineType(types: !4456)
!4456 = !{!215, !4340, !215}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !4384, file: !4342, line: 539, baseType: !4458, size: 64, offset: 128)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{!215, !4340, !215, !215}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !4384, file: !4342, line: 540, baseType: !4462, size: 64, offset: 192)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{null, !4340, !913}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !4384, file: !4342, line: 541, baseType: !4462, size: 64, offset: 256)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4384, file: !4342, line: 543, baseType: !4467, size: 64, offset: 320)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DISubroutineType(types: !4469)
!4469 = !{null, !4383}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4384, file: !4342, line: 545, baseType: !218, size: 64, offset: 384)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4384, file: !4342, line: 547, baseType: !3877, size: 128, offset: 448)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4384, file: !4342, line: 549, baseType: !1227, size: 192, offset: 576)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !4384, file: !4342, line: 551, baseType: !215, size: 32, offset: 768)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !4384, file: !4342, line: 552, baseType: !4390, size: 64, offset: 832)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !4384, file: !4342, line: 553, baseType: !4476, offset: 896)
!4476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, elements: !2370)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !4341, file: !4342, line: 163, baseType: !4478, size: 64, offset: 2048)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !4342, line: 24, flags: DIFlagFwdDecl)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !4341, file: !4342, line: 165, baseType: !7, size: 32, offset: 2112)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4341, file: !4342, line: 166, baseType: !3606, size: 320, offset: 2176)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !4341, file: !4342, line: 168, baseType: !4483, size: 64, offset: 2496)
!4483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 64, elements: !283)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !4341, file: !4342, line: 170, baseType: !4485, size: 64, offset: 2560)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !4342, line: 170, flags: DIFlagFwdDecl)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !4341, file: !4342, line: 172, baseType: !4488, size: 64, offset: 2624)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !4310, line: 90, size: 192, elements: !4490)
!4490 = !{!4491, !4492, !4493, !4494, !4495, !4496}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4489, file: !4310, line: 91, baseType: !1494, size: 32)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4489, file: !4310, line: 92, baseType: !1494, size: 32, offset: 32)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4489, file: !4310, line: 93, baseType: !1494, size: 32, offset: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4489, file: !4310, line: 94, baseType: !1494, size: 32, offset: 96)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4489, file: !4310, line: 95, baseType: !1494, size: 32, offset: 128)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4489, file: !4310, line: 96, baseType: !1494, size: 32, offset: 160)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4341, file: !4342, line: 174, baseType: !4351, size: 768, offset: 2688)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !4341, file: !4342, line: 175, baseType: !1419, size: 64, offset: 3456)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !4341, file: !4342, line: 176, baseType: !1419, size: 64, offset: 3520)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !4341, file: !4342, line: 177, baseType: !1419, size: 64, offset: 3584)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4341, file: !4342, line: 179, baseType: !4502, size: 64, offset: 3648)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!215, !4340}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4341, file: !4342, line: 180, baseType: !4506, size: 64, offset: 3712)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{null, !4340}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4341, file: !4342, line: 181, baseType: !4510, size: 64, offset: 3776)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{!215, !4340, !414}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4341, file: !4342, line: 182, baseType: !4514, size: 64, offset: 3840)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!215, !4340, !7, !7, !215}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !4341, file: !4342, line: 184, baseType: !4518, size: 64, offset: 3904)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !4342, line: 337, size: 576, elements: !4520)
!4520 = !{!4521, !4522, !4523, !4524, !4525, !4591, !4592}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4519, file: !4342, line: 339, baseType: !218, size: 64)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4519, file: !4342, line: 341, baseType: !215, size: 32, offset: 64)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4519, file: !4342, line: 342, baseType: !299, size: 64, offset: 128)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4519, file: !4342, line: 344, baseType: !4340, size: 64, offset: 192)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4519, file: !4342, line: 345, baseType: !4526, size: 64, offset: 256)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !4342, line: 302, size: 960, elements: !4528)
!4528 = !{!4529, !4530, !4534, !4545, !4549, !4553, !4580, !4584, !4585, !4586, !4587, !4588, !4589, !4590}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4527, file: !4342, line: 304, baseType: !218, size: 64)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4527, file: !4342, line: 306, baseType: !4531, size: 64, offset: 64)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{null, !4518, !7, !7, !215}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4527, file: !4342, line: 307, baseType: !4535, size: 64, offset: 128)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{null, !4518, !4538, !7}
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4540)
!4540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !4342, line: 32, size: 64, elements: !4541)
!4541 = !{!4542, !4543, !4544}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4540, file: !4342, line: 33, baseType: !914, size: 16)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4540, file: !4342, line: 34, baseType: !914, size: 16, offset: 16)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4540, file: !4342, line: 35, baseType: !1494, size: 32, offset: 32)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4527, file: !4342, line: 309, baseType: !4546, size: 64, offset: 192)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!548, !4518, !7, !7, !215}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4527, file: !4342, line: 310, baseType: !4550, size: 64, offset: 256)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!548, !4526, !4340}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4527, file: !4342, line: 311, baseType: !4554, size: 64, offset: 320)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!215, !4526, !4340, !4557}
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4559)
!4559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3499, line: 342, size: 1600, elements: !4560)
!4560 = !{!4561, !4562, !4563, !4564, !4565, !4566, !4568, !4570, !4571, !4572, !4573, !4574, !4575, !4577, !4578, !4579}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4559, file: !3499, line: 344, baseType: !3518, size: 64)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4559, file: !3499, line: 346, baseType: !914, size: 16, offset: 64)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4559, file: !3499, line: 347, baseType: !914, size: 16, offset: 80)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4559, file: !3499, line: 348, baseType: !914, size: 16, offset: 96)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4559, file: !3499, line: 349, baseType: !914, size: 16, offset: 112)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4559, file: !3499, line: 351, baseType: !4567, size: 64, offset: 128)
!4567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3518, size: 64, elements: !1420)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4559, file: !3499, line: 352, baseType: !4569, size: 768, offset: 192)
!4569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3518, size: 768, elements: !2275)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4559, file: !3499, line: 353, baseType: !4567, size: 64, offset: 960)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4559, file: !3499, line: 354, baseType: !4567, size: 64, offset: 1024)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4559, file: !3499, line: 355, baseType: !4567, size: 64, offset: 1088)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4559, file: !3499, line: 356, baseType: !4567, size: 64, offset: 1152)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4559, file: !3499, line: 357, baseType: !4567, size: 64, offset: 1216)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4559, file: !3499, line: 358, baseType: !4576, size: 128, offset: 1280)
!4576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3518, size: 128, elements: !283)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4559, file: !3499, line: 359, baseType: !4567, size: 64, offset: 1408)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4559, file: !3499, line: 360, baseType: !4567, size: 64, offset: 1472)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4559, file: !3499, line: 362, baseType: !3518, size: 64, offset: 1536)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4527, file: !4342, line: 312, baseType: !4581, size: 64, offset: 384)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{null, !4518}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4527, file: !4342, line: 313, baseType: !4581, size: 64, offset: 448)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4527, file: !4342, line: 315, baseType: !548, size: 8, offset: 512)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4527, file: !4342, line: 316, baseType: !215, size: 32, offset: 544)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4527, file: !4342, line: 317, baseType: !299, size: 64, offset: 576)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4527, file: !4342, line: 319, baseType: !4557, size: 64, offset: 640)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4527, file: !4342, line: 321, baseType: !222, size: 128, offset: 704)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4527, file: !4342, line: 322, baseType: !222, size: 128, offset: 832)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4519, file: !4342, line: 347, baseType: !222, size: 128, offset: 320)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4519, file: !4342, line: 348, baseType: !222, size: 128, offset: 448)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !4341, file: !4342, line: 186, baseType: !239, offset: 3968)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4341, file: !4342, line: 187, baseType: !1227, size: 192, offset: 3968)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4341, file: !4342, line: 189, baseType: !7, size: 32, offset: 4160)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !4341, file: !4342, line: 190, baseType: !548, size: 8, offset: 4192)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4341, file: !4342, line: 192, baseType: !292, size: 5568, offset: 4224)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4341, file: !4342, line: 194, baseType: !222, size: 128, offset: 9792)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4341, file: !4342, line: 195, baseType: !222, size: 128, offset: 9920)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !4341, file: !4342, line: 197, baseType: !7, size: 32, offset: 10048)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !4341, file: !4342, line: 198, baseType: !7, size: 32, offset: 10080)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !4341, file: !4342, line: 199, baseType: !4603, size: 64, offset: 10112)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !4341, file: !4342, line: 201, baseType: !548, size: 8, offset: 10176)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4341, file: !4342, line: 203, baseType: !4606, size: 192, offset: 10240)
!4606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1349, size: 192, elements: !337)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "driver_type", scope: !4298, file: !158, line: 176, baseType: !157, size: 32, offset: 6912)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !4298, file: !158, line: 177, baseType: !548, size: 8, offset: 6944)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "encode_wakeup", scope: !4298, file: !158, line: 178, baseType: !548, size: 8, offset: 6952)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_protocols", scope: !4298, file: !158, line: 179, baseType: !479, size: 64, offset: 6976)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "enabled_protocols", scope: !4298, file: !158, line: 180, baseType: !479, size: 64, offset: 7040)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_wakeup_protocols", scope: !4298, file: !158, line: 181, baseType: !479, size: 64, offset: 7104)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_protocol", scope: !4298, file: !158, line: 182, baseType: !126, size: 32, offset: 7168)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "scancode_filter", scope: !4298, file: !158, line: 183, baseType: !4615, size: 64, offset: 7200)
!4615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_scancode_filter", file: !158, line: 38, size: 64, elements: !4616)
!4616 = !{!4617, !4618}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4615, file: !158, line: 39, baseType: !269, size: 32)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4615, file: !158, line: 40, baseType: !269, size: 32, offset: 32)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "scancode_wakeup_filter", scope: !4298, file: !158, line: 184, baseType: !4615, size: 64, offset: 7264)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "scancode_mask", scope: !4298, file: !158, line: 185, baseType: !269, size: 32, offset: 7328)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4298, file: !158, line: 186, baseType: !269, size: 32, offset: 7360)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4298, file: !158, line: 187, baseType: !218, size: 64, offset: 7424)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "keylock", scope: !4298, file: !158, line: 188, baseType: !239, offset: 7488)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "keypressed", scope: !4298, file: !158, line: 189, baseType: !548, size: 8, offset: 7488)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "keyup_jiffies", scope: !4298, file: !158, line: 190, baseType: !386, size: 64, offset: 7552)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "timer_keyup", scope: !4298, file: !158, line: 191, baseType: !3606, size: 320, offset: 7616)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "timer_repeat", scope: !4298, file: !158, line: 192, baseType: !3606, size: 320, offset: 7936)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "last_keycode", scope: !4298, file: !158, line: 193, baseType: !269, size: 32, offset: 8256)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "last_protocol", scope: !4298, file: !158, line: 194, baseType: !126, size: 32, offset: 8288)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "last_scancode", scope: !4298, file: !158, line: 195, baseType: !479, size: 64, offset: 8320)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "last_toggle", scope: !4298, file: !158, line: 196, baseType: !1401, size: 8, offset: 8384)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4298, file: !158, line: 197, baseType: !269, size: 32, offset: 8416)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "min_timeout", scope: !4298, file: !158, line: 198, baseType: !269, size: 32, offset: 8448)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "max_timeout", scope: !4298, file: !158, line: 199, baseType: !269, size: 32, offset: 8480)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "rx_resolution", scope: !4298, file: !158, line: 200, baseType: !269, size: 32, offset: 8512)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "tx_resolution", scope: !4298, file: !158, line: 201, baseType: !269, size: 32, offset: 8544)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4298, file: !158, line: 211, baseType: !548, size: 8, offset: 8576)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "change_protocol", scope: !4298, file: !158, line: 212, baseType: !4639, size: 64, offset: 8640)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!215, !4297, !3702}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4298, file: !158, line: 213, baseType: !4643, size: 64, offset: 8704)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!215, !4297}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4298, file: !158, line: 214, baseType: !4647, size: 64, offset: 8768)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{null, !4297}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "s_tx_mask", scope: !4298, file: !158, line: 215, baseType: !4651, size: 64, offset: 8832)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!215, !4297, !269}
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "s_tx_carrier", scope: !4298, file: !158, line: 216, baseType: !4651, size: 64, offset: 8896)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "s_tx_duty_cycle", scope: !4298, file: !158, line: 217, baseType: !4651, size: 64, offset: 8960)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "s_rx_carrier_range", scope: !4298, file: !158, line: 218, baseType: !4657, size: 64, offset: 9024)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!215, !4297, !269, !269}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "tx_ir", scope: !4298, file: !158, line: 219, baseType: !4661, size: 64, offset: 9088)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!215, !4297, !2722, !7}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "s_idle", scope: !4298, file: !158, line: 220, baseType: !4665, size: 64, offset: 9152)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{null, !4297, !548}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "s_learning_mode", scope: !4298, file: !158, line: 221, baseType: !4669, size: 64, offset: 9216)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{!215, !4297, !215}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "s_carrier_report", scope: !4298, file: !158, line: 222, baseType: !4669, size: 64, offset: 9280)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "s_filter", scope: !4298, file: !158, line: 223, baseType: !4674, size: 64, offset: 9344)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!215, !4297, !4677}
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "s_wakeup_filter", scope: !4298, file: !158, line: 225, baseType: !4674, size: 64, offset: 9408)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "s_timeout", scope: !4298, file: !158, line: 227, baseType: !4680, size: 64, offset: 9472)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!215, !4297, !7}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4294, file: !3, line: 67, baseType: !291, size: 64, offset: 64)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "usbdev", scope: !4294, file: !3, line: 70, baseType: !259, size: 64, offset: 128)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !4294, file: !3, line: 71, baseType: !4035, size: 64, offset: 192)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !4294, file: !3, line: 72, baseType: !4687, size: 64, offset: 256)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "urb_in", scope: !4294, file: !3, line: 73, baseType: !198, size: 64, offset: 320)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "buf_in", scope: !4294, file: !3, line: 76, baseType: !3921, size: 64, offset: 384)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "dma_in", scope: !4294, file: !3, line: 77, baseType: !974, size: 64, offset: 448)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "buf_in_len", scope: !4294, file: !3, line: 78, baseType: !7, size: 32, offset: 512)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "decoder_state", scope: !4294, file: !3, line: 81, baseType: !163, size: 32, offset: 544)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !4294, file: !3, line: 83, baseType: !548, size: 8, offset: 576)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "sum", scope: !4294, file: !3, line: 85, baseType: !386, size: 64, offset: 640)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "signal_last", scope: !4294, file: !3, line: 87, baseType: !1349, size: 64, offset: 704)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "signal_start", scope: !4294, file: !3, line: 88, baseType: !1349, size: 64, offset: 768)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_enabled", scope: !4294, file: !3, line: 89, baseType: !548, size: 8, offset: 832)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4294, file: !3, line: 91, baseType: !3504, size: 1024, offset: 840)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4294, file: !3, line: 92, baseType: !4700, size: 512, offset: 1864)
!4700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 512, elements: !341)
!4701 = !DILocation(line: 324, column: 23, scope: !4281)
!4702 = !DILocalVariable(name: "buf", scope: !4281, file: !3, line: 325, type: !4703)
!4703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 504, elements: !4704)
!4704 = !{!4705}
!4705 = !DISubrange(count: 63)
!4706 = !DILocation(line: 325, column: 7, scope: !4281)
!4707 = !DILocalVariable(name: "name", scope: !4281, file: !3, line: 325, type: !3504)
!4708 = !DILocation(line: 325, column: 16, scope: !4281)
!4709 = !DILocalVariable(name: "retval", scope: !4281, file: !3, line: 326, type: !215)
!4710 = !DILocation(line: 326, column: 6, scope: !4281)
!4711 = !DILocalVariable(name: "pipe", scope: !4281, file: !3, line: 327, type: !215)
!4712 = !DILocation(line: 327, column: 6, scope: !4281)
!4713 = !DILocalVariable(name: "maxp", scope: !4281, file: !3, line: 327, type: !215)
!4714 = !DILocation(line: 327, column: 12, scope: !4281)
!4715 = !DILocation(line: 330, column: 7, scope: !4281)
!4716 = !DILocation(line: 330, column: 5, scope: !4281)
!4717 = !DILocation(line: 331, column: 7, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 331, column: 6)
!4719 = !DILocation(line: 331, column: 6, scope: !4281)
!4720 = !DILocation(line: 332, column: 3, scope: !4718)
!4721 = !DILocation(line: 334, column: 15, scope: !4281)
!4722 = !DILocation(line: 334, column: 2, scope: !4281)
!4723 = !DILocation(line: 334, column: 6, scope: !4281)
!4724 = !DILocation(line: 334, column: 13, scope: !4281)
!4725 = !DILocation(line: 335, column: 18, scope: !4281)
!4726 = !DILocation(line: 335, column: 2, scope: !4281)
!4727 = !DILocation(line: 335, column: 6, scope: !4281)
!4728 = !DILocation(line: 335, column: 16, scope: !4281)
!4729 = !DILocation(line: 338, column: 15, scope: !4281)
!4730 = !DILocation(line: 338, column: 21, scope: !4281)
!4731 = !DILocation(line: 338, column: 13, scope: !4281)
!4732 = !DILocation(line: 340, column: 6, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 340, column: 6)
!4734 = !DILocation(line: 340, column: 18, scope: !4733)
!4735 = !DILocation(line: 340, column: 23, scope: !4733)
!4736 = !DILocation(line: 340, column: 37, scope: !4733)
!4737 = !DILocation(line: 340, column: 6, scope: !4281)
!4738 = !DILocation(line: 341, column: 3, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4733, file: !3, line: 340, column: 43)
!4740 = !DILocation(line: 343, column: 10, scope: !4739)
!4741 = !DILocation(line: 344, column: 3, scope: !4739)
!4742 = !DILocation(line: 347, column: 19, scope: !4281)
!4743 = !DILocation(line: 347, column: 31, scope: !4281)
!4744 = !DILocation(line: 347, column: 43, scope: !4281)
!4745 = !DILocation(line: 347, column: 2, scope: !4281)
!4746 = !DILocation(line: 347, column: 6, scope: !4281)
!4747 = !DILocation(line: 347, column: 15, scope: !4281)
!4748 = !DILocation(line: 348, column: 27, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 348, column: 6)
!4750 = !DILocation(line: 348, column: 31, scope: !4749)
!4751 = !DILocation(line: 348, column: 7, scope: !4749)
!4752 = !DILocation(line: 348, column: 6, scope: !4281)
!4753 = !DILocation(line: 349, column: 3, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4749, file: !3, line: 348, column: 42)
!4755 = !DILocation(line: 351, column: 10, scope: !4754)
!4756 = !DILocation(line: 352, column: 3, scope: !4754)
!4757 = !DILocation(line: 355, column: 29, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 355, column: 6)
!4759 = !DILocation(line: 355, column: 33, scope: !4758)
!4760 = !DILocation(line: 355, column: 7, scope: !4758)
!4761 = !DILocation(line: 355, column: 6, scope: !4281)
!4762 = !DILocation(line: 356, column: 3, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4758, file: !3, line: 355, column: 44)
!4764 = !DILocation(line: 358, column: 10, scope: !4763)
!4765 = !DILocation(line: 359, column: 3, scope: !4763)
!4766 = !DILocation(line: 362, column: 9, scope: !4281)
!4767 = !DILocation(line: 362, column: 7, scope: !4281)
!4768 = !DILocation(line: 363, column: 23, scope: !4281)
!4769 = !DILocation(line: 363, column: 31, scope: !4281)
!4770 = !DILocation(line: 363, column: 37, scope: !4281)
!4771 = !DILocation(line: 363, column: 9, scope: !4281)
!4772 = !DILocation(line: 363, column: 7, scope: !4281)
!4773 = !DILocation(line: 365, column: 6, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 365, column: 6)
!4775 = !DILocation(line: 365, column: 11, scope: !4774)
!4776 = !DILocation(line: 365, column: 6, scope: !4281)
!4777 = !DILocation(line: 366, column: 3, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4774, file: !3, line: 365, column: 17)
!4779 = !DILocation(line: 368, column: 10, scope: !4778)
!4780 = !DILocation(line: 369, column: 3, scope: !4778)
!4781 = !DILocation(line: 373, column: 34, scope: !4281)
!4782 = !DILocation(line: 373, column: 42, scope: !4281)
!4783 = !DILocation(line: 373, column: 61, scope: !4281)
!4784 = !DILocation(line: 373, column: 65, scope: !4281)
!4785 = !DILocation(line: 373, column: 15, scope: !4281)
!4786 = !DILocation(line: 373, column: 2, scope: !4281)
!4787 = !DILocation(line: 373, column: 6, scope: !4281)
!4788 = !DILocation(line: 373, column: 13, scope: !4281)
!4789 = !DILocation(line: 374, column: 7, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 374, column: 6)
!4791 = !DILocation(line: 374, column: 11, scope: !4790)
!4792 = !DILocation(line: 374, column: 6, scope: !4281)
!4793 = !DILocation(line: 375, column: 3, scope: !4790)
!4794 = !DILocation(line: 377, column: 15, scope: !4281)
!4795 = !DILocation(line: 377, column: 2, scope: !4281)
!4796 = !DILocation(line: 377, column: 6, scope: !4281)
!4797 = !DILocation(line: 377, column: 13, scope: !4281)
!4798 = !DILocation(line: 378, column: 7, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 378, column: 6)
!4800 = !DILocation(line: 378, column: 11, scope: !4799)
!4801 = !DILocation(line: 378, column: 6, scope: !4281)
!4802 = !DILocation(line: 379, column: 3, scope: !4799)
!4803 = !DILocation(line: 381, column: 13, scope: !4281)
!4804 = !DILocation(line: 381, column: 19, scope: !4281)
!4805 = !DILocation(line: 381, column: 2, scope: !4281)
!4806 = !DILocation(line: 381, column: 6, scope: !4281)
!4807 = !DILocation(line: 381, column: 10, scope: !4281)
!4808 = !DILocation(line: 382, column: 19, scope: !4281)
!4809 = !DILocation(line: 382, column: 2, scope: !4281)
!4810 = !DILocation(line: 382, column: 6, scope: !4281)
!4811 = !DILocation(line: 382, column: 17, scope: !4281)
!4812 = !DILocation(line: 384, column: 6, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 384, column: 6)
!4814 = !DILocation(line: 384, column: 14, scope: !4813)
!4815 = !DILocation(line: 384, column: 25, scope: !4813)
!4816 = !DILocation(line: 385, column: 6, scope: !4813)
!4817 = !DILocation(line: 385, column: 20, scope: !4813)
!4818 = !DILocation(line: 385, column: 28, scope: !4813)
!4819 = !DILocation(line: 385, column: 36, scope: !4813)
!4820 = !DILocation(line: 385, column: 47, scope: !4813)
!4821 = !DILocation(line: 386, column: 6, scope: !4813)
!4822 = !DILocation(line: 385, column: 9, scope: !4813)
!4823 = !DILocation(line: 386, column: 24, scope: !4813)
!4824 = !DILocation(line: 384, column: 6, scope: !4281)
!4825 = !DILocation(line: 387, column: 11, scope: !4813)
!4826 = !DILocation(line: 387, column: 17, scope: !4813)
!4827 = !DILocation(line: 387, column: 3, scope: !4813)
!4828 = !DILocation(line: 389, column: 6, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 389, column: 6)
!4830 = !DILocation(line: 389, column: 14, scope: !4829)
!4831 = !DILocation(line: 389, column: 25, scope: !4829)
!4832 = !DILocation(line: 390, column: 6, scope: !4829)
!4833 = !DILocation(line: 390, column: 20, scope: !4829)
!4834 = !DILocation(line: 390, column: 28, scope: !4829)
!4835 = !DILocation(line: 390, column: 36, scope: !4829)
!4836 = !DILocation(line: 390, column: 47, scope: !4829)
!4837 = !DILocation(line: 391, column: 6, scope: !4829)
!4838 = !DILocation(line: 390, column: 9, scope: !4829)
!4839 = !DILocation(line: 391, column: 24, scope: !4829)
!4840 = !DILocation(line: 389, column: 6, scope: !4281)
!4841 = !DILocation(line: 392, column: 12, scope: !4829)
!4842 = !DILocation(line: 392, column: 26, scope: !4829)
!4843 = !DILocation(line: 392, column: 19, scope: !4829)
!4844 = !DILocation(line: 392, column: 17, scope: !4829)
!4845 = !DILocation(line: 392, column: 55, scope: !4829)
!4846 = !DILocation(line: 392, column: 48, scope: !4829)
!4847 = !DILocation(line: 392, column: 46, scope: !4829)
!4848 = !DILocation(line: 393, column: 12, scope: !4829)
!4849 = !DILocation(line: 392, column: 3, scope: !4829)
!4850 = !DILocation(line: 395, column: 35, scope: !4281)
!4851 = !DILocation(line: 395, column: 13, scope: !4281)
!4852 = !DILocation(line: 395, column: 2, scope: !4281)
!4853 = !DILocation(line: 395, column: 6, scope: !4281)
!4854 = !DILocation(line: 395, column: 11, scope: !4281)
!4855 = !DILocation(line: 396, column: 7, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 396, column: 6)
!4857 = !DILocation(line: 396, column: 11, scope: !4856)
!4858 = !DILocation(line: 396, column: 6, scope: !4281)
!4859 = !DILocation(line: 397, column: 3, scope: !4856)
!4860 = !DILocation(line: 399, column: 2, scope: !4281)
!4861 = !DILocation(line: 399, column: 6, scope: !4281)
!4862 = !DILocation(line: 399, column: 11, scope: !4281)
!4863 = !DILocation(line: 400, column: 2, scope: !4281)
!4864 = !DILocation(line: 400, column: 6, scope: !4281)
!4865 = !DILocation(line: 400, column: 20, scope: !4281)
!4866 = !DILocation(line: 402, column: 2, scope: !4281)
!4867 = !DILocation(line: 402, column: 6, scope: !4281)
!4868 = !DILocation(line: 402, column: 22, scope: !4281)
!4869 = !DILocation(line: 403, column: 2, scope: !4281)
!4870 = !DILocation(line: 403, column: 6, scope: !4281)
!4871 = !DILocation(line: 403, column: 12, scope: !4281)
!4872 = !DILocation(line: 403, column: 20, scope: !4281)
!4873 = !DILocation(line: 411, column: 21, scope: !4281)
!4874 = !DILocation(line: 411, column: 2, scope: !4281)
!4875 = !DILocation(line: 411, column: 6, scope: !4281)
!4876 = !DILocation(line: 411, column: 19, scope: !4281)
!4877 = !DILocation(line: 414, column: 19, scope: !4281)
!4878 = !DILocation(line: 414, column: 23, scope: !4281)
!4879 = !DILocation(line: 414, column: 31, scope: !4281)
!4880 = !DILocation(line: 414, column: 39, scope: !4281)
!4881 = !DILocation(line: 414, column: 45, scope: !4281)
!4882 = !DILocation(line: 414, column: 49, scope: !4281)
!4883 = !DILocation(line: 415, column: 5, scope: !4281)
!4884 = !DILocation(line: 416, column: 5, scope: !4281)
!4885 = !DILocation(line: 416, column: 9, scope: !4281)
!4886 = !DILocation(line: 416, column: 13, scope: !4281)
!4887 = !DILocation(line: 416, column: 23, scope: !4281)
!4888 = !DILocation(line: 414, column: 2, scope: !4281)
!4889 = !DILocation(line: 417, column: 29, scope: !4281)
!4890 = !DILocation(line: 417, column: 33, scope: !4281)
!4891 = !DILocation(line: 417, column: 2, scope: !4281)
!4892 = !DILocation(line: 417, column: 6, scope: !4281)
!4893 = !DILocation(line: 417, column: 14, scope: !4281)
!4894 = !DILocation(line: 417, column: 27, scope: !4281)
!4895 = !DILocation(line: 418, column: 2, scope: !4281)
!4896 = !DILocation(line: 418, column: 6, scope: !4281)
!4897 = !DILocation(line: 418, column: 14, scope: !4281)
!4898 = !DILocation(line: 418, column: 29, scope: !4281)
!4899 = !DILocation(line: 420, column: 19, scope: !4281)
!4900 = !DILocation(line: 420, column: 25, scope: !4281)
!4901 = !DILocation(line: 420, column: 2, scope: !4281)
!4902 = !DILocation(line: 422, column: 21, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 422, column: 6)
!4904 = !DILocation(line: 422, column: 25, scope: !4903)
!4905 = !DILocation(line: 422, column: 6, scope: !4903)
!4906 = !DILocation(line: 422, column: 6, scope: !4281)
!4907 = !DILocation(line: 423, column: 3, scope: !4903)
!4908 = !DILocation(line: 425, column: 2, scope: !4281)
!4909 = !DILocation(line: 428, column: 2, scope: !4281)
!4910 = !DILabel(scope: !4281, name: "rc_dev_fail", file: !3, line: 430)
!4911 = !DILocation(line: 430, column: 1, scope: !4281)
!4912 = !DILocation(line: 431, column: 15, scope: !4281)
!4913 = !DILocation(line: 431, column: 19, scope: !4281)
!4914 = !DILocation(line: 431, column: 2, scope: !4281)
!4915 = !DILabel(scope: !4281, name: "free_buf_in", file: !3, line: 432)
!4916 = !DILocation(line: 432, column: 1, scope: !4281)
!4917 = !DILocation(line: 433, column: 20, scope: !4281)
!4918 = !DILocation(line: 433, column: 28, scope: !4281)
!4919 = !DILocation(line: 433, column: 34, scope: !4281)
!4920 = !DILocation(line: 433, column: 38, scope: !4281)
!4921 = !DILocation(line: 433, column: 46, scope: !4281)
!4922 = !DILocation(line: 433, column: 50, scope: !4281)
!4923 = !DILocation(line: 433, column: 2, scope: !4281)
!4924 = !DILabel(scope: !4281, name: "free_sz", file: !3, line: 434)
!4925 = !DILocation(line: 434, column: 1, scope: !4281)
!4926 = !DILocation(line: 435, column: 8, scope: !4281)
!4927 = !DILocation(line: 435, column: 2, scope: !4281)
!4928 = !DILocation(line: 437, column: 9, scope: !4281)
!4929 = !DILocation(line: 437, column: 2, scope: !4281)
!4930 = !DILocation(line: 438, column: 1, scope: !4281)
!4931 = distinct !DISubprogram(name: "streamzap_disconnect", scope: !3, file: !3, line: 450, type: !4234, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4932 = !DILocalVariable(name: "interface", arg: 1, scope: !4931, file: !3, line: 450, type: !4035)
!4933 = !DILocation(line: 450, column: 56, scope: !4931)
!4934 = !DILocalVariable(name: "sz", scope: !4931, file: !3, line: 452, type: !4293)
!4935 = !DILocation(line: 452, column: 23, scope: !4931)
!4936 = !DILocation(line: 452, column: 45, scope: !4931)
!4937 = !DILocation(line: 452, column: 28, scope: !4931)
!4938 = !DILocalVariable(name: "usbdev", scope: !4931, file: !3, line: 453, type: !259)
!4939 = !DILocation(line: 453, column: 21, scope: !4931)
!4940 = !DILocation(line: 453, column: 50, scope: !4931)
!4941 = !DILocation(line: 453, column: 30, scope: !4931)
!4942 = !DILocation(line: 455, column: 19, scope: !4931)
!4943 = !DILocation(line: 455, column: 2, scope: !4931)
!4944 = !DILocation(line: 457, column: 7, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4931, file: !3, line: 457, column: 6)
!4946 = !DILocation(line: 457, column: 6, scope: !4931)
!4947 = !DILocation(line: 458, column: 3, scope: !4945)
!4948 = !DILocation(line: 460, column: 2, scope: !4931)
!4949 = !DILocation(line: 460, column: 6, scope: !4931)
!4950 = !DILocation(line: 460, column: 13, scope: !4931)
!4951 = !DILocation(line: 461, column: 23, scope: !4931)
!4952 = !DILocation(line: 461, column: 27, scope: !4931)
!4953 = !DILocation(line: 461, column: 2, scope: !4931)
!4954 = !DILocation(line: 462, column: 15, scope: !4931)
!4955 = !DILocation(line: 462, column: 19, scope: !4931)
!4956 = !DILocation(line: 462, column: 2, scope: !4931)
!4957 = !DILocation(line: 463, column: 15, scope: !4931)
!4958 = !DILocation(line: 463, column: 19, scope: !4931)
!4959 = !DILocation(line: 463, column: 2, scope: !4931)
!4960 = !DILocation(line: 464, column: 20, scope: !4931)
!4961 = !DILocation(line: 464, column: 28, scope: !4931)
!4962 = !DILocation(line: 464, column: 32, scope: !4931)
!4963 = !DILocation(line: 464, column: 44, scope: !4931)
!4964 = !DILocation(line: 464, column: 48, scope: !4931)
!4965 = !DILocation(line: 464, column: 56, scope: !4931)
!4966 = !DILocation(line: 464, column: 60, scope: !4931)
!4967 = !DILocation(line: 464, column: 2, scope: !4931)
!4968 = !DILocation(line: 466, column: 8, scope: !4931)
!4969 = !DILocation(line: 466, column: 2, scope: !4931)
!4970 = !DILocation(line: 467, column: 1, scope: !4931)
!4971 = distinct !DISubprogram(name: "streamzap_suspend", scope: !3, file: !3, line: 469, type: !4242, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4972 = !DILocalVariable(name: "intf", arg: 1, scope: !4971, file: !3, line: 469, type: !4035)
!4973 = !DILocation(line: 469, column: 52, scope: !4971)
!4974 = !DILocalVariable(name: "message", arg: 2, scope: !4971, file: !3, line: 469, type: !3529)
!4975 = !DILocation(line: 469, column: 71, scope: !4971)
!4976 = !DILocalVariable(name: "sz", scope: !4971, file: !3, line: 471, type: !4293)
!4977 = !DILocation(line: 471, column: 23, scope: !4971)
!4978 = !DILocation(line: 471, column: 45, scope: !4971)
!4979 = !DILocation(line: 471, column: 28, scope: !4971)
!4980 = !DILocation(line: 473, column: 15, scope: !4971)
!4981 = !DILocation(line: 473, column: 19, scope: !4971)
!4982 = !DILocation(line: 473, column: 2, scope: !4971)
!4983 = !DILocation(line: 475, column: 2, scope: !4971)
!4984 = distinct !DISubprogram(name: "streamzap_resume", scope: !3, file: !3, line: 478, type: !4246, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4985 = !DILocalVariable(name: "intf", arg: 1, scope: !4984, file: !3, line: 478, type: !4035)
!4986 = !DILocation(line: 478, column: 51, scope: !4984)
!4987 = !DILocalVariable(name: "sz", scope: !4984, file: !3, line: 480, type: !4293)
!4988 = !DILocation(line: 480, column: 23, scope: !4984)
!4989 = !DILocation(line: 480, column: 45, scope: !4984)
!4990 = !DILocation(line: 480, column: 28, scope: !4984)
!4991 = !DILocation(line: 482, column: 21, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4984, file: !3, line: 482, column: 6)
!4993 = !DILocation(line: 482, column: 25, scope: !4992)
!4994 = !DILocation(line: 482, column: 6, scope: !4992)
!4995 = !DILocation(line: 482, column: 6, scope: !4984)
!4996 = !DILocation(line: 483, column: 3, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4992, file: !3, line: 482, column: 46)
!4998 = !DILocation(line: 484, column: 3, scope: !4997)
!4999 = !DILocation(line: 487, column: 2, scope: !4984)
!5000 = !DILocation(line: 488, column: 1, scope: !4984)
!5001 = distinct !DISubprogram(name: "interface_to_usbdev", scope: !6, file: !6, line: 715, type: !5002, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5002 = !DISubroutineType(types: !5003)
!5003 = !{!259, !4035}
!5004 = !DILocalVariable(name: "intf", arg: 1, scope: !5001, file: !6, line: 715, type: !4035)
!5005 = !DILocation(line: 715, column: 76, scope: !5001)
!5006 = !DILocalVariable(name: "__mptr", scope: !5007, file: !6, line: 717, type: !218)
!5007 = distinct !DILexicalBlock(scope: !5001, file: !6, line: 717, column: 9)
!5008 = !DILocation(line: 717, column: 9, scope: !5007)
!5009 = !DILocation(line: 717, column: 9, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !5007, file: !6, line: 717, column: 9)
!5011 = !DILocation(line: 717, column: 2, scope: !5001)
!5012 = distinct !DISubprogram(name: "kzalloc", scope: !175, file: !175, line: 662, type: !5013, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5013 = !DISubroutineType(types: !5014)
!5014 = !{!218, !383, !192}
!5015 = !DILocalVariable(name: "s", arg: 1, scope: !5016, file: !175, line: 445, type: !989)
!5016 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !175, file: !175, line: 445, type: !5017, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5017 = !DISubroutineType(types: !5018)
!5018 = !{!218, !989, !192, !383}
!5019 = !DILocation(line: 445, column: 72, scope: !5016, inlinedAt: !5020)
!5020 = distinct !DILocation(line: 552, column: 10, scope: !5021, inlinedAt: !5024)
!5021 = distinct !DILexicalBlock(scope: !5022, file: !175, line: 540, column: 34)
!5022 = distinct !DILexicalBlock(scope: !5023, file: !175, line: 540, column: 6)
!5023 = distinct !DISubprogram(name: "kmalloc", scope: !175, file: !175, line: 538, type: !5013, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5024 = distinct !DILocation(line: 664, column: 9, scope: !5012)
!5025 = !DILocalVariable(name: "flags", arg: 2, scope: !5016, file: !175, line: 446, type: !192)
!5026 = !DILocation(line: 446, column: 9, scope: !5016, inlinedAt: !5020)
!5027 = !DILocalVariable(name: "size", arg: 3, scope: !5016, file: !175, line: 446, type: !383)
!5028 = !DILocation(line: 446, column: 23, scope: !5016, inlinedAt: !5020)
!5029 = !DILocalVariable(name: "ret", scope: !5016, file: !175, line: 448, type: !218)
!5030 = !DILocation(line: 448, column: 8, scope: !5016, inlinedAt: !5020)
!5031 = !DILocalVariable(name: "flags", arg: 1, scope: !5032, file: !175, line: 318, type: !192)
!5032 = distinct !DISubprogram(name: "kmalloc_type", scope: !175, file: !175, line: 318, type: !5033, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5033 = !DISubroutineType(types: !5034)
!5034 = !{!174, !192}
!5035 = !DILocation(line: 318, column: 67, scope: !5032, inlinedAt: !5036)
!5036 = distinct !DILocation(line: 553, column: 20, scope: !5021, inlinedAt: !5024)
!5037 = !DILocalVariable(name: "size", arg: 1, scope: !5038, file: !175, line: 346, type: !383)
!5038 = distinct !DISubprogram(name: "kmalloc_index", scope: !175, file: !175, line: 346, type: !5039, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5039 = !DISubroutineType(types: !5040)
!5040 = !{!7, !383}
!5041 = !DILocation(line: 346, column: 58, scope: !5038, inlinedAt: !5042)
!5042 = distinct !DILocation(line: 547, column: 11, scope: !5021, inlinedAt: !5024)
!5043 = !DILocalVariable(name: "size", arg: 1, scope: !5044, file: !175, line: 472, type: !383)
!5044 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !175, file: !175, line: 472, type: !5045, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5045 = !DISubroutineType(types: !5046)
!5046 = !{!218, !383, !192, !7}
!5047 = !DILocation(line: 472, column: 28, scope: !5044, inlinedAt: !5048)
!5048 = distinct !DILocation(line: 481, column: 9, scope: !5049, inlinedAt: !5050)
!5049 = distinct !DISubprogram(name: "kmalloc_large", scope: !175, file: !175, line: 478, type: !5013, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5050 = distinct !DILocation(line: 545, column: 11, scope: !5051, inlinedAt: !5024)
!5051 = distinct !DILexicalBlock(scope: !5021, file: !175, line: 544, column: 7)
!5052 = !DILocalVariable(name: "flags", arg: 2, scope: !5044, file: !175, line: 472, type: !192)
!5053 = !DILocation(line: 472, column: 40, scope: !5044, inlinedAt: !5048)
!5054 = !DILocalVariable(name: "order", arg: 3, scope: !5044, file: !175, line: 472, type: !7)
!5055 = !DILocation(line: 472, column: 60, scope: !5044, inlinedAt: !5048)
!5056 = !DILocalVariable(name: "size", arg: 1, scope: !5049, file: !175, line: 478, type: !383)
!5057 = !DILocation(line: 478, column: 51, scope: !5049, inlinedAt: !5050)
!5058 = !DILocalVariable(name: "flags", arg: 2, scope: !5049, file: !175, line: 478, type: !192)
!5059 = !DILocation(line: 478, column: 63, scope: !5049, inlinedAt: !5050)
!5060 = !DILocalVariable(name: "order", scope: !5049, file: !175, line: 480, type: !7)
!5061 = !DILocation(line: 480, column: 15, scope: !5049, inlinedAt: !5050)
!5062 = !DILocalVariable(name: "size", arg: 1, scope: !5023, file: !175, line: 538, type: !383)
!5063 = !DILocation(line: 538, column: 45, scope: !5023, inlinedAt: !5024)
!5064 = !DILocalVariable(name: "flags", arg: 2, scope: !5023, file: !175, line: 538, type: !192)
!5065 = !DILocation(line: 538, column: 57, scope: !5023, inlinedAt: !5024)
!5066 = !DILocalVariable(name: "index", scope: !5021, file: !175, line: 542, type: !7)
!5067 = !DILocation(line: 542, column: 16, scope: !5021, inlinedAt: !5024)
!5068 = !DILocalVariable(name: "size", arg: 1, scope: !5012, file: !175, line: 662, type: !383)
!5069 = !DILocation(line: 662, column: 36, scope: !5012)
!5070 = !DILocalVariable(name: "flags", arg: 2, scope: !5012, file: !175, line: 662, type: !192)
!5071 = !DILocation(line: 662, column: 48, scope: !5012)
!5072 = !DILocation(line: 664, column: 17, scope: !5012)
!5073 = !DILocation(line: 664, column: 23, scope: !5012)
!5074 = !DILocation(line: 664, column: 29, scope: !5012)
!5075 = !DILocation(line: 540, column: 27, scope: !5022, inlinedAt: !5024)
!5076 = !DILocation(line: 540, column: 6, scope: !5022, inlinedAt: !5024)
!5077 = !DILocation(line: 540, column: 6, scope: !5023, inlinedAt: !5024)
!5078 = !DILocation(line: 544, column: 7, scope: !5051, inlinedAt: !5024)
!5079 = !DILocation(line: 544, column: 12, scope: !5051, inlinedAt: !5024)
!5080 = !DILocation(line: 544, column: 7, scope: !5021, inlinedAt: !5024)
!5081 = !DILocation(line: 545, column: 25, scope: !5051, inlinedAt: !5024)
!5082 = !DILocation(line: 545, column: 31, scope: !5051, inlinedAt: !5024)
!5083 = !DILocation(line: 480, column: 33, scope: !5049, inlinedAt: !5050)
!5084 = !DILocation(line: 480, column: 23, scope: !5049, inlinedAt: !5050)
!5085 = !DILocation(line: 481, column: 29, scope: !5049, inlinedAt: !5050)
!5086 = !DILocation(line: 481, column: 35, scope: !5049, inlinedAt: !5050)
!5087 = !DILocation(line: 481, column: 42, scope: !5049, inlinedAt: !5050)
!5088 = !DILocation(line: 474, column: 23, scope: !5044, inlinedAt: !5048)
!5089 = !DILocation(line: 474, column: 29, scope: !5044, inlinedAt: !5048)
!5090 = !DILocation(line: 474, column: 36, scope: !5044, inlinedAt: !5048)
!5091 = !DILocation(line: 474, column: 9, scope: !5044, inlinedAt: !5048)
!5092 = !DILocation(line: 545, column: 4, scope: !5051, inlinedAt: !5024)
!5093 = !DILocation(line: 547, column: 25, scope: !5021, inlinedAt: !5024)
!5094 = !DILocation(line: 348, column: 7, scope: !5095, inlinedAt: !5042)
!5095 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 348, column: 6)
!5096 = !DILocation(line: 348, column: 6, scope: !5038, inlinedAt: !5042)
!5097 = !DILocation(line: 349, column: 3, scope: !5095, inlinedAt: !5042)
!5098 = !DILocation(line: 351, column: 6, scope: !5099, inlinedAt: !5042)
!5099 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 351, column: 6)
!5100 = !DILocation(line: 351, column: 11, scope: !5099, inlinedAt: !5042)
!5101 = !DILocation(line: 351, column: 6, scope: !5038, inlinedAt: !5042)
!5102 = !DILocation(line: 352, column: 3, scope: !5099, inlinedAt: !5042)
!5103 = !DILocation(line: 354, column: 32, scope: !5104, inlinedAt: !5042)
!5104 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 354, column: 6)
!5105 = !DILocation(line: 354, column: 37, scope: !5104, inlinedAt: !5042)
!5106 = !DILocation(line: 354, column: 42, scope: !5104, inlinedAt: !5042)
!5107 = !DILocation(line: 354, column: 45, scope: !5104, inlinedAt: !5042)
!5108 = !DILocation(line: 354, column: 50, scope: !5104, inlinedAt: !5042)
!5109 = !DILocation(line: 354, column: 6, scope: !5038, inlinedAt: !5042)
!5110 = !DILocation(line: 355, column: 3, scope: !5104, inlinedAt: !5042)
!5111 = !DILocation(line: 356, column: 32, scope: !5112, inlinedAt: !5042)
!5112 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 356, column: 6)
!5113 = !DILocation(line: 356, column: 37, scope: !5112, inlinedAt: !5042)
!5114 = !DILocation(line: 356, column: 43, scope: !5112, inlinedAt: !5042)
!5115 = !DILocation(line: 356, column: 46, scope: !5112, inlinedAt: !5042)
!5116 = !DILocation(line: 356, column: 51, scope: !5112, inlinedAt: !5042)
!5117 = !DILocation(line: 356, column: 6, scope: !5038, inlinedAt: !5042)
!5118 = !DILocation(line: 357, column: 3, scope: !5112, inlinedAt: !5042)
!5119 = !DILocation(line: 358, column: 6, scope: !5120, inlinedAt: !5042)
!5120 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 358, column: 6)
!5121 = !DILocation(line: 358, column: 11, scope: !5120, inlinedAt: !5042)
!5122 = !DILocation(line: 358, column: 6, scope: !5038, inlinedAt: !5042)
!5123 = !DILocation(line: 358, column: 26, scope: !5120, inlinedAt: !5042)
!5124 = !DILocation(line: 359, column: 6, scope: !5125, inlinedAt: !5042)
!5125 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 359, column: 6)
!5126 = !DILocation(line: 359, column: 11, scope: !5125, inlinedAt: !5042)
!5127 = !DILocation(line: 359, column: 6, scope: !5038, inlinedAt: !5042)
!5128 = !DILocation(line: 359, column: 26, scope: !5125, inlinedAt: !5042)
!5129 = !DILocation(line: 360, column: 6, scope: !5130, inlinedAt: !5042)
!5130 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 360, column: 6)
!5131 = !DILocation(line: 360, column: 11, scope: !5130, inlinedAt: !5042)
!5132 = !DILocation(line: 360, column: 6, scope: !5038, inlinedAt: !5042)
!5133 = !DILocation(line: 360, column: 26, scope: !5130, inlinedAt: !5042)
!5134 = !DILocation(line: 361, column: 6, scope: !5135, inlinedAt: !5042)
!5135 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 361, column: 6)
!5136 = !DILocation(line: 361, column: 11, scope: !5135, inlinedAt: !5042)
!5137 = !DILocation(line: 361, column: 6, scope: !5038, inlinedAt: !5042)
!5138 = !DILocation(line: 361, column: 26, scope: !5135, inlinedAt: !5042)
!5139 = !DILocation(line: 362, column: 6, scope: !5140, inlinedAt: !5042)
!5140 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 362, column: 6)
!5141 = !DILocation(line: 362, column: 11, scope: !5140, inlinedAt: !5042)
!5142 = !DILocation(line: 362, column: 6, scope: !5038, inlinedAt: !5042)
!5143 = !DILocation(line: 362, column: 26, scope: !5140, inlinedAt: !5042)
!5144 = !DILocation(line: 363, column: 6, scope: !5145, inlinedAt: !5042)
!5145 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 363, column: 6)
!5146 = !DILocation(line: 363, column: 11, scope: !5145, inlinedAt: !5042)
!5147 = !DILocation(line: 363, column: 6, scope: !5038, inlinedAt: !5042)
!5148 = !DILocation(line: 363, column: 26, scope: !5145, inlinedAt: !5042)
!5149 = !DILocation(line: 364, column: 6, scope: !5150, inlinedAt: !5042)
!5150 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 364, column: 6)
!5151 = !DILocation(line: 364, column: 11, scope: !5150, inlinedAt: !5042)
!5152 = !DILocation(line: 364, column: 6, scope: !5038, inlinedAt: !5042)
!5153 = !DILocation(line: 364, column: 26, scope: !5150, inlinedAt: !5042)
!5154 = !DILocation(line: 365, column: 6, scope: !5155, inlinedAt: !5042)
!5155 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 365, column: 6)
!5156 = !DILocation(line: 365, column: 11, scope: !5155, inlinedAt: !5042)
!5157 = !DILocation(line: 365, column: 6, scope: !5038, inlinedAt: !5042)
!5158 = !DILocation(line: 365, column: 26, scope: !5155, inlinedAt: !5042)
!5159 = !DILocation(line: 366, column: 6, scope: !5160, inlinedAt: !5042)
!5160 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 366, column: 6)
!5161 = !DILocation(line: 366, column: 11, scope: !5160, inlinedAt: !5042)
!5162 = !DILocation(line: 366, column: 6, scope: !5038, inlinedAt: !5042)
!5163 = !DILocation(line: 366, column: 26, scope: !5160, inlinedAt: !5042)
!5164 = !DILocation(line: 367, column: 6, scope: !5165, inlinedAt: !5042)
!5165 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 367, column: 6)
!5166 = !DILocation(line: 367, column: 11, scope: !5165, inlinedAt: !5042)
!5167 = !DILocation(line: 367, column: 6, scope: !5038, inlinedAt: !5042)
!5168 = !DILocation(line: 367, column: 26, scope: !5165, inlinedAt: !5042)
!5169 = !DILocation(line: 368, column: 6, scope: !5170, inlinedAt: !5042)
!5170 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 368, column: 6)
!5171 = !DILocation(line: 368, column: 11, scope: !5170, inlinedAt: !5042)
!5172 = !DILocation(line: 368, column: 6, scope: !5038, inlinedAt: !5042)
!5173 = !DILocation(line: 368, column: 26, scope: !5170, inlinedAt: !5042)
!5174 = !DILocation(line: 369, column: 6, scope: !5175, inlinedAt: !5042)
!5175 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 369, column: 6)
!5176 = !DILocation(line: 369, column: 11, scope: !5175, inlinedAt: !5042)
!5177 = !DILocation(line: 369, column: 6, scope: !5038, inlinedAt: !5042)
!5178 = !DILocation(line: 369, column: 26, scope: !5175, inlinedAt: !5042)
!5179 = !DILocation(line: 370, column: 6, scope: !5180, inlinedAt: !5042)
!5180 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 370, column: 6)
!5181 = !DILocation(line: 370, column: 11, scope: !5180, inlinedAt: !5042)
!5182 = !DILocation(line: 370, column: 6, scope: !5038, inlinedAt: !5042)
!5183 = !DILocation(line: 370, column: 26, scope: !5180, inlinedAt: !5042)
!5184 = !DILocation(line: 371, column: 6, scope: !5185, inlinedAt: !5042)
!5185 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 371, column: 6)
!5186 = !DILocation(line: 371, column: 11, scope: !5185, inlinedAt: !5042)
!5187 = !DILocation(line: 371, column: 6, scope: !5038, inlinedAt: !5042)
!5188 = !DILocation(line: 371, column: 26, scope: !5185, inlinedAt: !5042)
!5189 = !DILocation(line: 372, column: 6, scope: !5190, inlinedAt: !5042)
!5190 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 372, column: 6)
!5191 = !DILocation(line: 372, column: 11, scope: !5190, inlinedAt: !5042)
!5192 = !DILocation(line: 372, column: 6, scope: !5038, inlinedAt: !5042)
!5193 = !DILocation(line: 372, column: 26, scope: !5190, inlinedAt: !5042)
!5194 = !DILocation(line: 373, column: 6, scope: !5195, inlinedAt: !5042)
!5195 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 373, column: 6)
!5196 = !DILocation(line: 373, column: 11, scope: !5195, inlinedAt: !5042)
!5197 = !DILocation(line: 373, column: 6, scope: !5038, inlinedAt: !5042)
!5198 = !DILocation(line: 373, column: 26, scope: !5195, inlinedAt: !5042)
!5199 = !DILocation(line: 374, column: 6, scope: !5200, inlinedAt: !5042)
!5200 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 374, column: 6)
!5201 = !DILocation(line: 374, column: 11, scope: !5200, inlinedAt: !5042)
!5202 = !DILocation(line: 374, column: 6, scope: !5038, inlinedAt: !5042)
!5203 = !DILocation(line: 374, column: 26, scope: !5200, inlinedAt: !5042)
!5204 = !DILocation(line: 375, column: 6, scope: !5205, inlinedAt: !5042)
!5205 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 375, column: 6)
!5206 = !DILocation(line: 375, column: 11, scope: !5205, inlinedAt: !5042)
!5207 = !DILocation(line: 375, column: 6, scope: !5038, inlinedAt: !5042)
!5208 = !DILocation(line: 375, column: 27, scope: !5205, inlinedAt: !5042)
!5209 = !DILocation(line: 376, column: 6, scope: !5210, inlinedAt: !5042)
!5210 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 376, column: 6)
!5211 = !DILocation(line: 376, column: 11, scope: !5210, inlinedAt: !5042)
!5212 = !DILocation(line: 376, column: 6, scope: !5038, inlinedAt: !5042)
!5213 = !DILocation(line: 376, column: 32, scope: !5210, inlinedAt: !5042)
!5214 = !DILocation(line: 377, column: 6, scope: !5215, inlinedAt: !5042)
!5215 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 377, column: 6)
!5216 = !DILocation(line: 377, column: 11, scope: !5215, inlinedAt: !5042)
!5217 = !DILocation(line: 377, column: 6, scope: !5038, inlinedAt: !5042)
!5218 = !DILocation(line: 377, column: 32, scope: !5215, inlinedAt: !5042)
!5219 = !DILocation(line: 378, column: 6, scope: !5220, inlinedAt: !5042)
!5220 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 378, column: 6)
!5221 = !DILocation(line: 378, column: 11, scope: !5220, inlinedAt: !5042)
!5222 = !DILocation(line: 378, column: 6, scope: !5038, inlinedAt: !5042)
!5223 = !DILocation(line: 378, column: 32, scope: !5220, inlinedAt: !5042)
!5224 = !DILocation(line: 379, column: 6, scope: !5225, inlinedAt: !5042)
!5225 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 379, column: 6)
!5226 = !DILocation(line: 379, column: 11, scope: !5225, inlinedAt: !5042)
!5227 = !DILocation(line: 379, column: 6, scope: !5038, inlinedAt: !5042)
!5228 = !DILocation(line: 379, column: 33, scope: !5225, inlinedAt: !5042)
!5229 = !DILocation(line: 380, column: 6, scope: !5230, inlinedAt: !5042)
!5230 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 380, column: 6)
!5231 = !DILocation(line: 380, column: 11, scope: !5230, inlinedAt: !5042)
!5232 = !DILocation(line: 380, column: 6, scope: !5038, inlinedAt: !5042)
!5233 = !DILocation(line: 380, column: 33, scope: !5230, inlinedAt: !5042)
!5234 = !DILocation(line: 381, column: 6, scope: !5235, inlinedAt: !5042)
!5235 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 381, column: 6)
!5236 = !DILocation(line: 381, column: 11, scope: !5235, inlinedAt: !5042)
!5237 = !DILocation(line: 381, column: 6, scope: !5038, inlinedAt: !5042)
!5238 = !DILocation(line: 381, column: 33, scope: !5235, inlinedAt: !5042)
!5239 = !DILocation(line: 382, column: 2, scope: !5240, inlinedAt: !5042)
!5240 = distinct !DILexicalBlock(scope: !5241, file: !175, line: 382, column: 2)
!5241 = distinct !DILexicalBlock(scope: !5038, file: !175, line: 382, column: 2)
!5242 = !{i32 -2143558614, i32 -2143558585, i32 -2143558539, i32 -2143558481, i32 -2143558427, i32 -2143558373, i32 -2143558318, i32 -2143558287}
!5243 = !DILocation(line: 382, column: 2, scope: !5244, inlinedAt: !5042)
!5244 = distinct !DILexicalBlock(scope: !5245, file: !175, line: 382, column: 2)
!5245 = distinct !DILexicalBlock(scope: !5241, file: !175, line: 382, column: 2)
!5246 = !{i32 -2143557844, i32 -2143557837, i32 -2143557783, i32 -2143557752, i32 -2143557722}
!5247 = !DILocation(line: 382, column: 2, scope: !5245, inlinedAt: !5042)
!5248 = !DILocation(line: 386, column: 1, scope: !5038, inlinedAt: !5042)
!5249 = !DILocation(line: 547, column: 9, scope: !5021, inlinedAt: !5024)
!5250 = !DILocation(line: 549, column: 8, scope: !5251, inlinedAt: !5024)
!5251 = distinct !DILexicalBlock(scope: !5021, file: !175, line: 549, column: 7)
!5252 = !DILocation(line: 549, column: 7, scope: !5021, inlinedAt: !5024)
!5253 = !DILocation(line: 550, column: 4, scope: !5251, inlinedAt: !5024)
!5254 = !DILocation(line: 553, column: 33, scope: !5021, inlinedAt: !5024)
!5255 = !DILocation(line: 325, column: 6, scope: !5256, inlinedAt: !5036)
!5256 = distinct !DILexicalBlock(scope: !5032, file: !175, line: 325, column: 6)
!5257 = !DILocation(line: 325, column: 6, scope: !5032, inlinedAt: !5036)
!5258 = !DILocation(line: 326, column: 3, scope: !5256, inlinedAt: !5036)
!5259 = !DILocation(line: 332, column: 9, scope: !5032, inlinedAt: !5036)
!5260 = !DILocation(line: 332, column: 15, scope: !5032, inlinedAt: !5036)
!5261 = !DILocation(line: 332, column: 2, scope: !5032, inlinedAt: !5036)
!5262 = !DILocation(line: 336, column: 1, scope: !5032, inlinedAt: !5036)
!5263 = !DILocation(line: 553, column: 5, scope: !5021, inlinedAt: !5024)
!5264 = !DILocation(line: 553, column: 41, scope: !5021, inlinedAt: !5024)
!5265 = !DILocation(line: 554, column: 5, scope: !5021, inlinedAt: !5024)
!5266 = !DILocation(line: 554, column: 12, scope: !5021, inlinedAt: !5024)
!5267 = !DILocation(line: 448, column: 31, scope: !5016, inlinedAt: !5020)
!5268 = !DILocation(line: 448, column: 34, scope: !5016, inlinedAt: !5020)
!5269 = !DILocation(line: 448, column: 14, scope: !5016, inlinedAt: !5020)
!5270 = !DILocation(line: 450, column: 22, scope: !5016, inlinedAt: !5020)
!5271 = !DILocation(line: 450, column: 25, scope: !5016, inlinedAt: !5020)
!5272 = !DILocation(line: 450, column: 30, scope: !5016, inlinedAt: !5020)
!5273 = !DILocation(line: 450, column: 36, scope: !5016, inlinedAt: !5020)
!5274 = !DILocation(line: 450, column: 8, scope: !5016, inlinedAt: !5020)
!5275 = !DILocation(line: 450, column: 6, scope: !5016, inlinedAt: !5020)
!5276 = !DILocation(line: 451, column: 9, scope: !5016, inlinedAt: !5020)
!5277 = !DILocation(line: 552, column: 3, scope: !5021, inlinedAt: !5024)
!5278 = !DILocation(line: 557, column: 19, scope: !5023, inlinedAt: !5024)
!5279 = !DILocation(line: 557, column: 25, scope: !5023, inlinedAt: !5024)
!5280 = !DILocation(line: 557, column: 9, scope: !5023, inlinedAt: !5024)
!5281 = !DILocation(line: 557, column: 2, scope: !5023, inlinedAt: !5024)
!5282 = !DILocation(line: 558, column: 1, scope: !5023, inlinedAt: !5024)
!5283 = !DILocation(line: 664, column: 2, scope: !5012)
!5284 = distinct !DISubprogram(name: "usb_endpoint_dir_in", scope: !101, file: !101, line: 492, type: !5285, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5285 = !DISubroutineType(types: !5286)
!5286 = !{!215, !5287}
!5287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5288, size: 64)
!5288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3888)
!5289 = !DILocalVariable(name: "epd", arg: 1, scope: !5284, file: !101, line: 492, type: !5287)
!5290 = !DILocation(line: 492, column: 77, scope: !5284)
!5291 = !DILocation(line: 494, column: 11, scope: !5284)
!5292 = !DILocation(line: 494, column: 16, scope: !5284)
!5293 = !DILocation(line: 494, column: 33, scope: !5284)
!5294 = !DILocation(line: 494, column: 58, scope: !5284)
!5295 = !DILocation(line: 494, column: 2, scope: !5284)
!5296 = distinct !DISubprogram(name: "usb_endpoint_xfer_int", scope: !101, file: !101, line: 542, type: !5285, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5297 = !DILocalVariable(name: "epd", arg: 1, scope: !5296, file: !101, line: 543, type: !5287)
!5298 = !DILocation(line: 543, column: 43, scope: !5296)
!5299 = !DILocation(line: 545, column: 11, scope: !5296)
!5300 = !DILocation(line: 545, column: 16, scope: !5296)
!5301 = !DILocation(line: 545, column: 29, scope: !5296)
!5302 = !DILocation(line: 545, column: 59, scope: !5296)
!5303 = !DILocation(line: 545, column: 2, scope: !5296)
!5304 = distinct !DISubprogram(name: "__create_pipe", scope: !6, file: !6, line: 1945, type: !5305, scopeLine: 1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5305 = !DISubroutineType(types: !5306)
!5306 = !{!7, !259, !7}
!5307 = !DILocalVariable(name: "dev", arg: 1, scope: !5304, file: !6, line: 1945, type: !259)
!5308 = !DILocation(line: 1945, column: 61, scope: !5304)
!5309 = !DILocalVariable(name: "endpoint", arg: 2, scope: !5304, file: !6, line: 1946, type: !7)
!5310 = !DILocation(line: 1946, column: 16, scope: !5304)
!5311 = !DILocation(line: 1948, column: 10, scope: !5304)
!5312 = !DILocation(line: 1948, column: 15, scope: !5304)
!5313 = !DILocation(line: 1948, column: 22, scope: !5304)
!5314 = !DILocation(line: 1948, column: 31, scope: !5304)
!5315 = !DILocation(line: 1948, column: 40, scope: !5304)
!5316 = !DILocation(line: 1948, column: 28, scope: !5304)
!5317 = !DILocation(line: 1948, column: 2, scope: !5304)
!5318 = distinct !DISubprogram(name: "usb_maxpacket", scope: !6, file: !6, line: 1980, type: !5319, scopeLine: 1981, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5319 = !DISubroutineType(types: !5320)
!5320 = !{!914, !259, !215, !215}
!5321 = !DILocalVariable(name: "udev", arg: 1, scope: !5318, file: !6, line: 1980, type: !259)
!5322 = !DILocation(line: 1980, column: 34, scope: !5318)
!5323 = !DILocalVariable(name: "pipe", arg: 2, scope: !5318, file: !6, line: 1980, type: !215)
!5324 = !DILocation(line: 1980, column: 44, scope: !5318)
!5325 = !DILocalVariable(name: "is_out", arg: 3, scope: !5318, file: !6, line: 1980, type: !215)
!5326 = !DILocation(line: 1980, column: 54, scope: !5318)
!5327 = !DILocalVariable(name: "ep", scope: !5318, file: !6, line: 1982, type: !4057)
!5328 = !DILocation(line: 1982, column: 28, scope: !5318)
!5329 = !DILocalVariable(name: "epnum", scope: !5318, file: !6, line: 1983, type: !7)
!5330 = !DILocation(line: 1983, column: 13, scope: !5318)
!5331 = !DILocation(line: 1983, column: 21, scope: !5318)
!5332 = !DILocation(line: 1985, column: 6, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5318, file: !6, line: 1985, column: 6)
!5334 = !DILocation(line: 1985, column: 6, scope: !5318)
!5335 = !DILocalVariable(name: "__ret_warn_on", scope: !5336, file: !6, line: 1986, type: !215)
!5336 = distinct !DILexicalBlock(scope: !5337, file: !6, line: 1986, column: 3)
!5337 = distinct !DILexicalBlock(scope: !5333, file: !6, line: 1985, column: 14)
!5338 = !DILocation(line: 1986, column: 3, scope: !5336)
!5339 = !DILocation(line: 1986, column: 3, scope: !5340)
!5340 = distinct !DILexicalBlock(scope: !5336, file: !6, line: 1986, column: 3)
!5341 = !DILocation(line: 1986, column: 3, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5340, file: !6, line: 1986, column: 3)
!5343 = !DILocation(line: 1986, column: 3, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5342, file: !6, line: 1986, column: 3)
!5345 = !DILocation(line: 1986, column: 3, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5342, file: !6, line: 1986, column: 3)
!5347 = !{i32 -2142624303, i32 -2142624274, i32 -2142624228, i32 -2142624170, i32 -2142624116, i32 -2142624062, i32 -2142624007, i32 -2142623976}
!5348 = !DILocation(line: 1986, column: 3, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5342, file: !6, line: 1986, column: 3)
!5350 = !{i32 -2142623574, i32 -2142623567, i32 -2142623515, i32 -2142623484, i32 -2142623454}
!5351 = !DILocation(line: 1986, column: 3, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5342, file: !6, line: 1986, column: 3)
!5353 = !DILocation(line: 1987, column: 8, scope: !5337)
!5354 = !DILocation(line: 1987, column: 14, scope: !5337)
!5355 = !DILocation(line: 1987, column: 21, scope: !5337)
!5356 = !DILocation(line: 1987, column: 6, scope: !5337)
!5357 = !DILocation(line: 1988, column: 2, scope: !5337)
!5358 = !DILocalVariable(name: "__ret_warn_on", scope: !5359, file: !6, line: 1989, type: !215)
!5359 = distinct !DILexicalBlock(scope: !5360, file: !6, line: 1989, column: 3)
!5360 = distinct !DILexicalBlock(scope: !5333, file: !6, line: 1988, column: 9)
!5361 = !DILocation(line: 1989, column: 3, scope: !5359)
!5362 = !DILocation(line: 1989, column: 3, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5359, file: !6, line: 1989, column: 3)
!5364 = !DILocation(line: 1989, column: 3, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5363, file: !6, line: 1989, column: 3)
!5366 = !DILocation(line: 1989, column: 3, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5365, file: !6, line: 1989, column: 3)
!5368 = !DILocation(line: 1989, column: 3, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5365, file: !6, line: 1989, column: 3)
!5370 = !{i32 -2142622802, i32 -2142622773, i32 -2142622727, i32 -2142622669, i32 -2142622615, i32 -2142622561, i32 -2142622506, i32 -2142622475}
!5371 = !DILocation(line: 1989, column: 3, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5365, file: !6, line: 1989, column: 3)
!5373 = !{i32 -2142622073, i32 -2142622066, i32 -2142622014, i32 -2142621983, i32 -2142621953}
!5374 = !DILocation(line: 1989, column: 3, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5365, file: !6, line: 1989, column: 3)
!5376 = !DILocation(line: 1990, column: 8, scope: !5360)
!5377 = !DILocation(line: 1990, column: 14, scope: !5360)
!5378 = !DILocation(line: 1990, column: 20, scope: !5360)
!5379 = !DILocation(line: 1990, column: 6, scope: !5360)
!5380 = !DILocation(line: 1992, column: 7, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5318, file: !6, line: 1992, column: 6)
!5382 = !DILocation(line: 1992, column: 6, scope: !5318)
!5383 = !DILocation(line: 1993, column: 3, scope: !5381)
!5384 = !DILocation(line: 1996, column: 28, scope: !5318)
!5385 = !DILocation(line: 1996, column: 32, scope: !5318)
!5386 = !DILocation(line: 1996, column: 9, scope: !5318)
!5387 = !DILocation(line: 1996, column: 2, scope: !5318)
!5388 = !DILocation(line: 1997, column: 1, scope: !5318)
!5389 = distinct !DISubprogram(name: "streamzap_init_rc_dev", scope: !3, file: !3, line: 272, type: !5390, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5390 = !DISubroutineType(types: !5391)
!5391 = !{!4297, !4293}
!5392 = !DILocalVariable(name: "sz", arg: 1, scope: !5389, file: !3, line: 272, type: !4293)
!5393 = !DILocation(line: 272, column: 66, scope: !5389)
!5394 = !DILocalVariable(name: "rdev", scope: !5389, file: !3, line: 274, type: !4297)
!5395 = !DILocation(line: 274, column: 17, scope: !5389)
!5396 = !DILocalVariable(name: "dev", scope: !5389, file: !3, line: 275, type: !291)
!5397 = !DILocation(line: 275, column: 17, scope: !5389)
!5398 = !DILocation(line: 275, column: 23, scope: !5389)
!5399 = !DILocation(line: 275, column: 27, scope: !5389)
!5400 = !DILocalVariable(name: "ret", scope: !5389, file: !3, line: 276, type: !215)
!5401 = !DILocation(line: 276, column: 6, scope: !5389)
!5402 = !DILocation(line: 278, column: 9, scope: !5389)
!5403 = !DILocation(line: 278, column: 7, scope: !5389)
!5404 = !DILocation(line: 279, column: 7, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 279, column: 6)
!5406 = !DILocation(line: 279, column: 6, scope: !5389)
!5407 = !DILocation(line: 280, column: 3, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5405, file: !3, line: 279, column: 13)
!5409 = !DILocation(line: 281, column: 3, scope: !5408)
!5410 = !DILocation(line: 284, column: 11, scope: !5389)
!5411 = !DILocation(line: 284, column: 15, scope: !5389)
!5412 = !DILocation(line: 285, column: 4, scope: !5389)
!5413 = !DILocation(line: 286, column: 4, scope: !5389)
!5414 = !DILocation(line: 284, column: 2, scope: !5389)
!5415 = !DILocation(line: 287, column: 16, scope: !5389)
!5416 = !DILocation(line: 287, column: 20, scope: !5389)
!5417 = !DILocation(line: 287, column: 28, scope: !5389)
!5418 = !DILocation(line: 287, column: 32, scope: !5389)
!5419 = !DILocation(line: 287, column: 2, scope: !5389)
!5420 = !DILocation(line: 288, column: 10, scope: !5389)
!5421 = !DILocation(line: 288, column: 14, scope: !5389)
!5422 = !DILocation(line: 288, column: 2, scope: !5389)
!5423 = !DILocation(line: 290, column: 22, scope: !5389)
!5424 = !DILocation(line: 290, column: 26, scope: !5389)
!5425 = !DILocation(line: 290, column: 2, scope: !5389)
!5426 = !DILocation(line: 290, column: 8, scope: !5389)
!5427 = !DILocation(line: 290, column: 20, scope: !5389)
!5428 = !DILocation(line: 291, column: 21, scope: !5389)
!5429 = !DILocation(line: 291, column: 25, scope: !5389)
!5430 = !DILocation(line: 291, column: 2, scope: !5389)
!5431 = !DILocation(line: 291, column: 8, scope: !5389)
!5432 = !DILocation(line: 291, column: 19, scope: !5389)
!5433 = !DILocation(line: 292, column: 18, scope: !5389)
!5434 = !DILocation(line: 292, column: 22, scope: !5389)
!5435 = !DILocation(line: 292, column: 31, scope: !5389)
!5436 = !DILocation(line: 292, column: 37, scope: !5389)
!5437 = !DILocation(line: 292, column: 2, scope: !5389)
!5438 = !DILocation(line: 293, column: 21, scope: !5389)
!5439 = !DILocation(line: 293, column: 2, scope: !5389)
!5440 = !DILocation(line: 293, column: 8, scope: !5389)
!5441 = !DILocation(line: 293, column: 12, scope: !5389)
!5442 = !DILocation(line: 293, column: 19, scope: !5389)
!5443 = !DILocation(line: 294, column: 15, scope: !5389)
!5444 = !DILocation(line: 294, column: 2, scope: !5389)
!5445 = !DILocation(line: 294, column: 8, scope: !5389)
!5446 = !DILocation(line: 294, column: 13, scope: !5389)
!5447 = !DILocation(line: 295, column: 2, scope: !5389)
!5448 = !DILocation(line: 295, column: 8, scope: !5389)
!5449 = !DILocation(line: 295, column: 26, scope: !5389)
!5450 = !DILocation(line: 296, column: 2, scope: !5389)
!5451 = !DILocation(line: 296, column: 8, scope: !5389)
!5452 = !DILocation(line: 296, column: 20, scope: !5389)
!5453 = !DILocation(line: 297, column: 2, scope: !5389)
!5454 = !DILocation(line: 297, column: 8, scope: !5389)
!5455 = !DILocation(line: 297, column: 17, scope: !5389)
!5456 = !DILocation(line: 299, column: 27, scope: !5389)
!5457 = !DILocation(line: 299, column: 8, scope: !5389)
!5458 = !DILocation(line: 299, column: 6, scope: !5389)
!5459 = !DILocation(line: 300, column: 6, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 300, column: 6)
!5461 = !DILocation(line: 300, column: 10, scope: !5460)
!5462 = !DILocation(line: 300, column: 6, scope: !5389)
!5463 = !DILocation(line: 301, column: 3, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5460, file: !3, line: 300, column: 15)
!5465 = !DILocation(line: 302, column: 3, scope: !5464)
!5466 = !DILocation(line: 305, column: 9, scope: !5389)
!5467 = !DILocation(line: 305, column: 2, scope: !5389)
!5468 = !DILabel(scope: !5389, name: "out", file: !3, line: 307)
!5469 = !DILocation(line: 307, column: 1, scope: !5389)
!5470 = !DILocation(line: 308, column: 17, scope: !5389)
!5471 = !DILocation(line: 308, column: 2, scope: !5389)
!5472 = !DILocation(line: 309, column: 2, scope: !5389)
!5473 = !DILocation(line: 310, column: 1, scope: !5389)
!5474 = distinct !DISubprogram(name: "ktime_get_real", scope: !182, file: !182, line: 77, type: !1397, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5475 = !DILocation(line: 79, column: 9, scope: !5474)
!5476 = !DILocation(line: 79, column: 2, scope: !5474)
!5477 = distinct !DISubprogram(name: "usb_fill_int_urb", scope: !6, file: !6, line: 1688, type: !5478, scopeLine: 1696, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5478 = !DISubroutineType(types: !5479)
!5479 = !{null, !198, !259, !7, !218, !215, !194, !218, !215}
!5480 = !DILocalVariable(name: "urb", arg: 1, scope: !5477, file: !6, line: 1688, type: !198)
!5481 = !DILocation(line: 1688, column: 49, scope: !5477)
!5482 = !DILocalVariable(name: "dev", arg: 2, scope: !5477, file: !6, line: 1689, type: !259)
!5483 = !DILocation(line: 1689, column: 28, scope: !5477)
!5484 = !DILocalVariable(name: "pipe", arg: 3, scope: !5477, file: !6, line: 1690, type: !7)
!5485 = !DILocation(line: 1690, column: 22, scope: !5477)
!5486 = !DILocalVariable(name: "transfer_buffer", arg: 4, scope: !5477, file: !6, line: 1691, type: !218)
!5487 = !DILocation(line: 1691, column: 15, scope: !5477)
!5488 = !DILocalVariable(name: "buffer_length", arg: 5, scope: !5477, file: !6, line: 1692, type: !215)
!5489 = !DILocation(line: 1692, column: 13, scope: !5477)
!5490 = !DILocalVariable(name: "complete_fn", arg: 6, scope: !5477, file: !6, line: 1693, type: !194)
!5491 = !DILocation(line: 1693, column: 24, scope: !5477)
!5492 = !DILocalVariable(name: "context", arg: 7, scope: !5477, file: !6, line: 1694, type: !218)
!5493 = !DILocation(line: 1694, column: 15, scope: !5477)
!5494 = !DILocalVariable(name: "interval", arg: 8, scope: !5477, file: !6, line: 1695, type: !215)
!5495 = !DILocation(line: 1695, column: 13, scope: !5477)
!5496 = !DILocation(line: 1697, column: 13, scope: !5477)
!5497 = !DILocation(line: 1697, column: 2, scope: !5477)
!5498 = !DILocation(line: 1697, column: 7, scope: !5477)
!5499 = !DILocation(line: 1697, column: 11, scope: !5477)
!5500 = !DILocation(line: 1698, column: 14, scope: !5477)
!5501 = !DILocation(line: 1698, column: 2, scope: !5477)
!5502 = !DILocation(line: 1698, column: 7, scope: !5477)
!5503 = !DILocation(line: 1698, column: 12, scope: !5477)
!5504 = !DILocation(line: 1699, column: 25, scope: !5477)
!5505 = !DILocation(line: 1699, column: 2, scope: !5477)
!5506 = !DILocation(line: 1699, column: 7, scope: !5477)
!5507 = !DILocation(line: 1699, column: 23, scope: !5477)
!5508 = !DILocation(line: 1700, column: 32, scope: !5477)
!5509 = !DILocation(line: 1700, column: 2, scope: !5477)
!5510 = !DILocation(line: 1700, column: 7, scope: !5477)
!5511 = !DILocation(line: 1700, column: 30, scope: !5477)
!5512 = !DILocation(line: 1701, column: 18, scope: !5477)
!5513 = !DILocation(line: 1701, column: 2, scope: !5477)
!5514 = !DILocation(line: 1701, column: 7, scope: !5477)
!5515 = !DILocation(line: 1701, column: 16, scope: !5477)
!5516 = !DILocation(line: 1702, column: 17, scope: !5477)
!5517 = !DILocation(line: 1702, column: 2, scope: !5477)
!5518 = !DILocation(line: 1702, column: 7, scope: !5477)
!5519 = !DILocation(line: 1702, column: 15, scope: !5477)
!5520 = !DILocation(line: 1704, column: 6, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5477, file: !6, line: 1704, column: 6)
!5522 = !DILocation(line: 1704, column: 11, scope: !5521)
!5523 = !DILocation(line: 1704, column: 17, scope: !5521)
!5524 = !DILocation(line: 1704, column: 35, scope: !5521)
!5525 = !DILocation(line: 1704, column: 38, scope: !5521)
!5526 = !DILocation(line: 1704, column: 43, scope: !5521)
!5527 = !DILocation(line: 1704, column: 49, scope: !5521)
!5528 = !DILocation(line: 1704, column: 6, scope: !5477)
!5529 = !DILocalVariable(name: "__UNIQUE_ID___x207", scope: !5530, file: !6, line: 1706, type: !215)
!5530 = distinct !DILexicalBlock(scope: !5531, file: !6, line: 1706, column: 14)
!5531 = distinct !DILexicalBlock(scope: !5521, file: !6, line: 1704, column: 69)
!5532 = !DILocation(line: 1706, column: 14, scope: !5530)
!5533 = !DILocalVariable(name: "__UNIQUE_ID___x205", scope: !5534, file: !6, line: 1706, type: !215)
!5534 = distinct !DILexicalBlock(scope: !5530, file: !6, line: 1706, column: 14)
!5535 = !DILocation(line: 1706, column: 14, scope: !5534)
!5536 = !DILocalVariable(name: "__UNIQUE_ID___y206", scope: !5534, file: !6, line: 1706, type: !215)
!5537 = !DILocalVariable(name: "__UNIQUE_ID___y208", scope: !5530, file: !6, line: 1706, type: !215)
!5538 = !DILocation(line: 1706, column: 12, scope: !5531)
!5539 = !DILocation(line: 1708, column: 25, scope: !5531)
!5540 = !DILocation(line: 1708, column: 34, scope: !5531)
!5541 = !DILocation(line: 1708, column: 21, scope: !5531)
!5542 = !DILocation(line: 1708, column: 3, scope: !5531)
!5543 = !DILocation(line: 1708, column: 8, scope: !5531)
!5544 = !DILocation(line: 1708, column: 17, scope: !5531)
!5545 = !DILocation(line: 1709, column: 2, scope: !5531)
!5546 = !DILocation(line: 1710, column: 19, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5521, file: !6, line: 1709, column: 9)
!5548 = !DILocation(line: 1710, column: 3, scope: !5547)
!5549 = !DILocation(line: 1710, column: 8, scope: !5547)
!5550 = !DILocation(line: 1710, column: 17, scope: !5547)
!5551 = !DILocation(line: 1713, column: 2, scope: !5477)
!5552 = !DILocation(line: 1713, column: 7, scope: !5477)
!5553 = !DILocation(line: 1713, column: 19, scope: !5477)
!5554 = !DILocation(line: 1714, column: 1, scope: !5477)
!5555 = distinct !DISubprogram(name: "streamzap_callback", scope: !3, file: !3, line: 188, type: !196, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5556 = !DILocalVariable(name: "urb", arg: 1, scope: !5555, file: !3, line: 188, type: !198)
!5557 = !DILocation(line: 188, column: 44, scope: !5555)
!5558 = !DILocalVariable(name: "sz", scope: !5555, file: !3, line: 190, type: !4293)
!5559 = !DILocation(line: 190, column: 23, scope: !5555)
!5560 = !DILocalVariable(name: "i", scope: !5555, file: !3, line: 191, type: !7)
!5561 = !DILocation(line: 191, column: 15, scope: !5555)
!5562 = !DILocalVariable(name: "len", scope: !5555, file: !3, line: 192, type: !215)
!5563 = !DILocation(line: 192, column: 6, scope: !5555)
!5564 = !DILocation(line: 194, column: 7, scope: !5565)
!5565 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 194, column: 6)
!5566 = !DILocation(line: 194, column: 6, scope: !5555)
!5567 = !DILocation(line: 195, column: 3, scope: !5565)
!5568 = !DILocation(line: 197, column: 7, scope: !5555)
!5569 = !DILocation(line: 197, column: 12, scope: !5555)
!5570 = !DILocation(line: 197, column: 5, scope: !5555)
!5571 = !DILocation(line: 198, column: 8, scope: !5555)
!5572 = !DILocation(line: 198, column: 13, scope: !5555)
!5573 = !DILocation(line: 198, column: 6, scope: !5555)
!5574 = !DILocation(line: 200, column: 10, scope: !5555)
!5575 = !DILocation(line: 200, column: 15, scope: !5555)
!5576 = !DILocation(line: 200, column: 2, scope: !5555)
!5577 = !DILocation(line: 208, column: 3, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 200, column: 23)
!5579 = !DILocation(line: 209, column: 3, scope: !5578)
!5580 = !DILocation(line: 211, column: 3, scope: !5578)
!5581 = !DILocation(line: 215, column: 9, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 215, column: 2)
!5583 = !DILocation(line: 215, column: 7, scope: !5582)
!5584 = !DILocation(line: 215, column: 14, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5582, file: !3, line: 215, column: 2)
!5586 = !DILocation(line: 215, column: 18, scope: !5585)
!5587 = !DILocation(line: 215, column: 16, scope: !5585)
!5588 = !DILocation(line: 215, column: 2, scope: !5582)
!5589 = !DILocation(line: 218, column: 11, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5585, file: !3, line: 215, column: 28)
!5591 = !DILocation(line: 218, column: 15, scope: !5590)
!5592 = !DILocation(line: 218, column: 3, scope: !5590)
!5593 = !DILocation(line: 220, column: 9, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5595, file: !3, line: 220, column: 8)
!5595 = distinct !DILexicalBlock(scope: !5590, file: !3, line: 218, column: 30)
!5596 = !DILocation(line: 220, column: 13, scope: !5594)
!5597 = !DILocation(line: 220, column: 20, scope: !5594)
!5598 = !DILocation(line: 220, column: 23, scope: !5594)
!5599 = !DILocation(line: 220, column: 40, scope: !5594)
!5600 = !DILocation(line: 220, column: 8, scope: !5595)
!5601 = !DILocation(line: 222, column: 5, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 221, column: 20)
!5603 = !DILocation(line: 222, column: 9, scope: !5602)
!5604 = !DILocation(line: 222, column: 23, scope: !5602)
!5605 = !DILocation(line: 223, column: 5, scope: !5602)
!5606 = !DILocation(line: 224, column: 16, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 224, column: 15)
!5608 = !DILocation(line: 224, column: 20, scope: !5607)
!5609 = !DILocation(line: 224, column: 27, scope: !5607)
!5610 = !DILocation(line: 224, column: 30, scope: !5607)
!5611 = !DILocation(line: 225, column: 6, scope: !5607)
!5612 = !DILocation(line: 224, column: 15, scope: !5594)
!5613 = !DILocation(line: 226, column: 24, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5607, file: !3, line: 225, column: 24)
!5615 = !DILocation(line: 226, column: 28, scope: !5614)
!5616 = !DILocation(line: 226, column: 32, scope: !5614)
!5617 = !DILocation(line: 226, column: 39, scope: !5614)
!5618 = !DILocation(line: 226, column: 5, scope: !5614)
!5619 = !DILocation(line: 227, column: 5, scope: !5614)
!5620 = !DILocation(line: 227, column: 9, scope: !5614)
!5621 = !DILocation(line: 227, column: 23, scope: !5614)
!5622 = !DILocation(line: 228, column: 5, scope: !5614)
!5623 = !DILocation(line: 230, column: 24, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5607, file: !3, line: 229, column: 11)
!5625 = !DILocation(line: 230, column: 28, scope: !5624)
!5626 = !DILocation(line: 230, column: 32, scope: !5624)
!5627 = !DILocation(line: 230, column: 39, scope: !5624)
!5628 = !DILocation(line: 230, column: 5, scope: !5624)
!5629 = !DILocation(line: 231, column: 24, scope: !5624)
!5630 = !DILocation(line: 231, column: 28, scope: !5624)
!5631 = !DILocation(line: 231, column: 32, scope: !5624)
!5632 = !DILocation(line: 231, column: 39, scope: !5624)
!5633 = !DILocation(line: 231, column: 5, scope: !5624)
!5634 = !DILocation(line: 233, column: 4, scope: !5595)
!5635 = !DILocation(line: 235, column: 23, scope: !5595)
!5636 = !DILocation(line: 235, column: 27, scope: !5595)
!5637 = !DILocation(line: 235, column: 31, scope: !5595)
!5638 = !DILocation(line: 235, column: 38, scope: !5595)
!5639 = !DILocation(line: 235, column: 4, scope: !5595)
!5640 = !DILocation(line: 236, column: 4, scope: !5595)
!5641 = !DILocation(line: 236, column: 8, scope: !5595)
!5642 = !DILocation(line: 236, column: 22, scope: !5595)
!5643 = !DILocation(line: 237, column: 4, scope: !5595)
!5644 = !DILocation(line: 239, column: 8, scope: !5645)
!5645 = distinct !DILexicalBlock(scope: !5595, file: !3, line: 239, column: 8)
!5646 = !DILocation(line: 239, column: 12, scope: !5645)
!5647 = !DILocation(line: 239, column: 19, scope: !5645)
!5648 = !DILocation(line: 239, column: 22, scope: !5645)
!5649 = !DILocation(line: 239, column: 8, scope: !5595)
!5650 = !DILocalVariable(name: "rawir", scope: !5651, file: !3, line: 240, type: !5652)
!5651 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 239, column: 37)
!5652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ir_raw_event", file: !158, line: 299, size: 64, elements: !5653)
!5653 = !{!5654, !5659, !5660, !5661, !5662, !5663}
!5654 = !DIDerivedType(tag: DW_TAG_member, scope: !5652, file: !158, line: 300, baseType: !5655, size: 32)
!5655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5652, file: !158, line: 300, size: 32, elements: !5656)
!5656 = !{!5657, !5658}
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !5655, file: !158, line: 301, baseType: !269, size: 32)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "carrier", scope: !5655, file: !158, line: 302, baseType: !269, size: 32)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "duty_cycle", scope: !5652, file: !158, line: 304, baseType: !1401, size: 8, offset: 32)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "pulse", scope: !5652, file: !158, line: 306, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 40)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5652, file: !158, line: 307, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 40)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5652, file: !158, line: 308, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 40)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_report", scope: !5652, file: !158, line: 309, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 40)
!5664 = !DILocation(line: 240, column: 25, scope: !5651)
!5665 = !DILocation(line: 240, column: 33, scope: !5651)
!5666 = !DILocation(line: 242, column: 6, scope: !5651)
!5667 = !DILocation(line: 242, column: 18, scope: !5651)
!5668 = !DILocation(line: 242, column: 22, scope: !5651)
!5669 = !DILocation(line: 242, column: 28, scope: !5651)
!5670 = !DILocation(line: 244, column: 5, scope: !5651)
!5671 = !DILocation(line: 244, column: 9, scope: !5651)
!5672 = !DILocation(line: 244, column: 14, scope: !5651)
!5673 = !DILocation(line: 245, column: 9, scope: !5674)
!5674 = distinct !DILexicalBlock(scope: !5651, file: !3, line: 245, column: 9)
!5675 = !DILocation(line: 245, column: 13, scope: !5674)
!5676 = !DILocation(line: 245, column: 9, scope: !5651)
!5677 = !DILocation(line: 246, column: 14, scope: !5674)
!5678 = !DILocation(line: 246, column: 6, scope: !5674)
!5679 = !DILocation(line: 247, column: 25, scope: !5651)
!5680 = !DILocation(line: 247, column: 29, scope: !5651)
!5681 = !DILocation(line: 247, column: 5, scope: !5651)
!5682 = !DILocation(line: 248, column: 24, scope: !5651)
!5683 = !DILocation(line: 248, column: 28, scope: !5651)
!5684 = !DILocation(line: 248, column: 5, scope: !5651)
!5685 = !DILocation(line: 249, column: 4, scope: !5651)
!5686 = !DILocation(line: 250, column: 24, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 249, column: 11)
!5688 = !DILocation(line: 250, column: 28, scope: !5687)
!5689 = !DILocation(line: 250, column: 32, scope: !5687)
!5690 = !DILocation(line: 250, column: 39, scope: !5687)
!5691 = !DILocation(line: 250, column: 5, scope: !5687)
!5692 = !DILocation(line: 252, column: 4, scope: !5595)
!5693 = !DILocation(line: 252, column: 8, scope: !5595)
!5694 = !DILocation(line: 252, column: 22, scope: !5595)
!5695 = !DILocation(line: 253, column: 4, scope: !5595)
!5696 = !DILocation(line: 255, column: 9, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5595, file: !3, line: 255, column: 8)
!5698 = !DILocation(line: 255, column: 13, scope: !5697)
!5699 = !DILocation(line: 255, column: 20, scope: !5697)
!5700 = !DILocation(line: 255, column: 23, scope: !5697)
!5701 = !DILocation(line: 255, column: 40, scope: !5697)
!5702 = !DILocation(line: 255, column: 8, scope: !5595)
!5703 = !DILocation(line: 257, column: 5, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5697, file: !3, line: 256, column: 20)
!5705 = !DILocation(line: 257, column: 9, scope: !5704)
!5706 = !DILocation(line: 257, column: 23, scope: !5704)
!5707 = !DILocation(line: 258, column: 5, scope: !5704)
!5708 = !DILocation(line: 260, column: 23, scope: !5595)
!5709 = !DILocation(line: 260, column: 27, scope: !5595)
!5710 = !DILocation(line: 260, column: 31, scope: !5595)
!5711 = !DILocation(line: 260, column: 38, scope: !5595)
!5712 = !DILocation(line: 260, column: 4, scope: !5595)
!5713 = !DILocation(line: 261, column: 4, scope: !5595)
!5714 = !DILocation(line: 261, column: 8, scope: !5595)
!5715 = !DILocation(line: 261, column: 22, scope: !5595)
!5716 = !DILocation(line: 262, column: 4, scope: !5595)
!5717 = !DILocation(line: 264, column: 2, scope: !5590)
!5718 = !DILocation(line: 215, column: 24, scope: !5585)
!5719 = !DILocation(line: 215, column: 2, scope: !5585)
!5720 = distinct !{!5720, !5588, !5721}
!5721 = !DILocation(line: 264, column: 2, scope: !5582)
!5722 = !DILocation(line: 266, column: 22, scope: !5555)
!5723 = !DILocation(line: 266, column: 26, scope: !5555)
!5724 = !DILocation(line: 266, column: 2, scope: !5555)
!5725 = !DILocation(line: 267, column: 17, scope: !5555)
!5726 = !DILocation(line: 267, column: 2, scope: !5555)
!5727 = !DILocation(line: 269, column: 2, scope: !5555)
!5728 = !DILocation(line: 270, column: 1, scope: !5555)
!5729 = distinct !DISubprogram(name: "usb_set_intfdata", scope: !6, file: !6, line: 268, type: !5730, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5730 = !DISubroutineType(types: !5731)
!5731 = !{null, !4035, !218}
!5732 = !DILocalVariable(name: "intf", arg: 1, scope: !5729, file: !6, line: 268, type: !4035)
!5733 = !DILocation(line: 268, column: 59, scope: !5729)
!5734 = !DILocalVariable(name: "data", arg: 2, scope: !5729, file: !6, line: 268, type: !218)
!5735 = !DILocation(line: 268, column: 71, scope: !5729)
!5736 = !DILocation(line: 270, column: 19, scope: !5729)
!5737 = !DILocation(line: 270, column: 25, scope: !5729)
!5738 = !DILocation(line: 270, column: 30, scope: !5729)
!5739 = !DILocation(line: 270, column: 2, scope: !5729)
!5740 = !DILocation(line: 271, column: 1, scope: !5729)
!5741 = distinct !DISubprogram(name: "get_order", scope: !5742, file: !5742, line: 29, type: !5743, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5742 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5743 = !DISubroutineType(types: !5744)
!5744 = !{!215, !386}
!5745 = !DILocalVariable(name: "x", arg: 1, scope: !5746, file: !5747, line: 366, type: !480)
!5746 = distinct !DISubprogram(name: "fls64", scope: !5747, file: !5747, line: 366, type: !5748, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5747 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5748 = !DISubroutineType(types: !5749)
!5749 = !{!215, !480}
!5750 = !DILocation(line: 366, column: 40, scope: !5746, inlinedAt: !5751)
!5751 = distinct !DILocation(line: 46, column: 9, scope: !5741)
!5752 = !DILocalVariable(name: "bitpos", scope: !5746, file: !5747, line: 368, type: !215)
!5753 = !DILocation(line: 368, column: 6, scope: !5746, inlinedAt: !5751)
!5754 = !DILocalVariable(name: "size", arg: 1, scope: !5741, file: !5742, line: 29, type: !386)
!5755 = !DILocation(line: 29, column: 63, scope: !5741)
!5756 = !DILocation(line: 31, column: 27, scope: !5757)
!5757 = distinct !DILexicalBlock(scope: !5741, file: !5742, line: 31, column: 6)
!5758 = !DILocation(line: 31, column: 6, scope: !5757)
!5759 = !DILocation(line: 31, column: 6, scope: !5741)
!5760 = !DILocation(line: 32, column: 8, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5762, file: !5742, line: 32, column: 7)
!5762 = distinct !DILexicalBlock(scope: !5757, file: !5742, line: 31, column: 34)
!5763 = !DILocation(line: 32, column: 7, scope: !5762)
!5764 = !DILocation(line: 33, column: 4, scope: !5761)
!5765 = !DILocation(line: 35, column: 7, scope: !5766)
!5766 = distinct !DILexicalBlock(scope: !5762, file: !5742, line: 35, column: 7)
!5767 = !DILocation(line: 35, column: 12, scope: !5766)
!5768 = !DILocation(line: 35, column: 7, scope: !5762)
!5769 = !DILocation(line: 36, column: 4, scope: !5766)
!5770 = !DILocation(line: 38, column: 10, scope: !5762)
!5771 = !DILocation(line: 38, column: 28, scope: !5762)
!5772 = !DILocation(line: 38, column: 41, scope: !5762)
!5773 = !DILocation(line: 38, column: 3, scope: !5762)
!5774 = !DILocation(line: 41, column: 6, scope: !5741)
!5775 = !DILocation(line: 42, column: 7, scope: !5741)
!5776 = !DILocation(line: 46, column: 15, scope: !5741)
!5777 = !DILocation(line: 374, column: 2, scope: !5746, inlinedAt: !5751)
!5778 = !DILocation(line: 376, column: 14, scope: !5746, inlinedAt: !5751)
!5779 = !{i32 388017}
!5780 = !DILocation(line: 377, column: 9, scope: !5746, inlinedAt: !5751)
!5781 = !DILocation(line: 377, column: 16, scope: !5746, inlinedAt: !5751)
!5782 = !DILocation(line: 46, column: 2, scope: !5741)
!5783 = !DILocation(line: 48, column: 1, scope: !5741)
!5784 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5785, file: !5785, line: 30, type: !5786, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5785 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5786 = !DISubroutineType(types: !5787)
!5787 = !{!215, !479}
!5788 = !DILocation(line: 366, column: 40, scope: !5746, inlinedAt: !5789)
!5789 = distinct !DILocation(line: 32, column: 9, scope: !5784)
!5790 = !DILocation(line: 368, column: 6, scope: !5746, inlinedAt: !5789)
!5791 = !DILocalVariable(name: "n", arg: 1, scope: !5784, file: !5785, line: 30, type: !479)
!5792 = !DILocation(line: 30, column: 21, scope: !5784)
!5793 = !DILocation(line: 32, column: 15, scope: !5784)
!5794 = !DILocation(line: 374, column: 2, scope: !5746, inlinedAt: !5789)
!5795 = !DILocation(line: 376, column: 14, scope: !5746, inlinedAt: !5789)
!5796 = !DILocation(line: 377, column: 9, scope: !5746, inlinedAt: !5789)
!5797 = !DILocation(line: 377, column: 16, scope: !5746, inlinedAt: !5789)
!5798 = !DILocation(line: 32, column: 18, scope: !5784)
!5799 = !DILocation(line: 32, column: 2, scope: !5784)
!5800 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5801, file: !5801, line: 137, type: !5802, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5801 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5802 = !DISubroutineType(types: !5803)
!5803 = !{!218, !989, !2166, !383, !192}
!5804 = !DILocalVariable(name: "s", arg: 1, scope: !5800, file: !5801, line: 137, type: !989)
!5805 = !DILocation(line: 137, column: 54, scope: !5800)
!5806 = !DILocalVariable(name: "object", arg: 2, scope: !5800, file: !5801, line: 137, type: !2166)
!5807 = !DILocation(line: 137, column: 69, scope: !5800)
!5808 = !DILocalVariable(name: "size", arg: 3, scope: !5800, file: !5801, line: 138, type: !383)
!5809 = !DILocation(line: 138, column: 12, scope: !5800)
!5810 = !DILocalVariable(name: "flags", arg: 4, scope: !5800, file: !5801, line: 138, type: !192)
!5811 = !DILocation(line: 138, column: 24, scope: !5800)
!5812 = !DILocation(line: 140, column: 17, scope: !5800)
!5813 = !DILocation(line: 140, column: 2, scope: !5800)
!5814 = distinct !DISubprogram(name: "usb_endpoint_maxp", scope: !101, file: !101, line: 647, type: !5285, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5815 = !DILocalVariable(name: "epd", arg: 1, scope: !5814, file: !101, line: 647, type: !5287)
!5816 = !DILocation(line: 647, column: 75, scope: !5814)
!5817 = !DILocation(line: 649, column: 9, scope: !5814)
!5818 = !DILocation(line: 649, column: 44, scope: !5814)
!5819 = !DILocation(line: 649, column: 2, scope: !5814)
!5820 = distinct !DISubprogram(name: "usb_make_path", scope: !6, file: !6, line: 912, type: !5821, scopeLine: 913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5821 = !DISubroutineType(types: !5822)
!5822 = !{!215, !259, !336, !383}
!5823 = !DILocalVariable(name: "dev", arg: 1, scope: !5820, file: !6, line: 912, type: !259)
!5824 = !DILocation(line: 912, column: 52, scope: !5820)
!5825 = !DILocalVariable(name: "buf", arg: 2, scope: !5820, file: !6, line: 912, type: !336)
!5826 = !DILocation(line: 912, column: 63, scope: !5820)
!5827 = !DILocalVariable(name: "size", arg: 3, scope: !5820, file: !6, line: 912, type: !383)
!5828 = !DILocation(line: 912, column: 75, scope: !5820)
!5829 = !DILocalVariable(name: "actual", scope: !5820, file: !6, line: 914, type: !215)
!5830 = !DILocation(line: 914, column: 6, scope: !5820)
!5831 = !DILocation(line: 915, column: 20, scope: !5820)
!5832 = !DILocation(line: 915, column: 25, scope: !5820)
!5833 = !DILocation(line: 915, column: 44, scope: !5820)
!5834 = !DILocation(line: 915, column: 49, scope: !5820)
!5835 = !DILocation(line: 915, column: 54, scope: !5820)
!5836 = !DILocation(line: 916, column: 6, scope: !5820)
!5837 = !DILocation(line: 916, column: 11, scope: !5820)
!5838 = !DILocation(line: 915, column: 11, scope: !5820)
!5839 = !DILocation(line: 915, column: 9, scope: !5820)
!5840 = !DILocation(line: 917, column: 10, scope: !5820)
!5841 = !DILocation(line: 917, column: 25, scope: !5820)
!5842 = !DILocation(line: 917, column: 20, scope: !5820)
!5843 = !DILocation(line: 917, column: 17, scope: !5820)
!5844 = !DILocation(line: 917, column: 9, scope: !5820)
!5845 = !DILocation(line: 917, column: 38, scope: !5820)
!5846 = !DILocation(line: 917, column: 2, scope: !5820)
!5847 = distinct !DISubprogram(name: "usb_to_input_id", scope: !5848, file: !5848, line: 18, type: !5849, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5848 = !DIFile(filename: "./include/linux/usb/input.h", directory: "/home/lizy2001/genbc/linux")
!5849 = !DISubroutineType(types: !5850)
!5850 = !{null, !5851, !5853}
!5851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5852, size: 64)
!5852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!5853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!5854 = !DILocalVariable(name: "dev", arg: 1, scope: !5847, file: !5848, line: 18, type: !5851)
!5855 = !DILocation(line: 18, column: 42, scope: !5847)
!5856 = !DILocalVariable(name: "id", arg: 2, scope: !5847, file: !5848, line: 18, type: !5853)
!5857 = !DILocation(line: 18, column: 64, scope: !5847)
!5858 = !DILocation(line: 20, column: 2, scope: !5847)
!5859 = !DILocation(line: 20, column: 6, scope: !5847)
!5860 = !DILocation(line: 20, column: 14, scope: !5847)
!5861 = !DILocation(line: 21, column: 15, scope: !5847)
!5862 = !DILocation(line: 21, column: 2, scope: !5847)
!5863 = !DILocation(line: 21, column: 6, scope: !5847)
!5864 = !DILocation(line: 21, column: 13, scope: !5847)
!5865 = !DILocation(line: 22, column: 16, scope: !5847)
!5866 = !DILocation(line: 22, column: 2, scope: !5847)
!5867 = !DILocation(line: 22, column: 6, scope: !5847)
!5868 = !DILocation(line: 22, column: 14, scope: !5847)
!5869 = !DILocation(line: 23, column: 16, scope: !5847)
!5870 = !DILocation(line: 23, column: 2, scope: !5847)
!5871 = !DILocation(line: 23, column: 6, scope: !5847)
!5872 = !DILocation(line: 23, column: 14, scope: !5847)
!5873 = !DILocation(line: 24, column: 1, scope: !5847)
!5874 = distinct !DISubprogram(name: "sz_push_half_pulse", scope: !3, file: !3, line: 158, type: !5875, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5875 = !DISubroutineType(types: !5876)
!5876 = !{null, !4293, !485}
!5877 = !DILocalVariable(name: "sz", arg: 1, scope: !5874, file: !3, line: 158, type: !4293)
!5878 = !DILocation(line: 158, column: 53, scope: !5874)
!5879 = !DILocalVariable(name: "value", arg: 2, scope: !5874, file: !3, line: 159, type: !485)
!5880 = !DILocation(line: 159, column: 25, scope: !5874)
!5881 = !DILocation(line: 161, column: 21, scope: !5874)
!5882 = !DILocation(line: 161, column: 26, scope: !5874)
!5883 = !DILocation(line: 161, column: 32, scope: !5874)
!5884 = !DILocation(line: 161, column: 49, scope: !5874)
!5885 = !DILocation(line: 161, column: 25, scope: !5874)
!5886 = !DILocation(line: 161, column: 2, scope: !5874)
!5887 = !DILocation(line: 162, column: 1, scope: !5874)
!5888 = distinct !DISubprogram(name: "sz_push_half_space", scope: !3, file: !3, line: 176, type: !5889, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5889 = !DISubroutineType(types: !5890)
!5890 = !{null, !4293, !386}
!5891 = !DILocalVariable(name: "sz", arg: 1, scope: !5888, file: !3, line: 176, type: !4293)
!5892 = !DILocation(line: 176, column: 53, scope: !5888)
!5893 = !DILocalVariable(name: "value", arg: 2, scope: !5888, file: !3, line: 177, type: !386)
!5894 = !DILocation(line: 177, column: 25, scope: !5888)
!5895 = !DILocation(line: 179, column: 21, scope: !5888)
!5896 = !DILocation(line: 179, column: 25, scope: !5888)
!5897 = !DILocation(line: 179, column: 31, scope: !5888)
!5898 = !DILocation(line: 179, column: 2, scope: !5888)
!5899 = !DILocation(line: 180, column: 1, scope: !5888)
!5900 = distinct !DISubprogram(name: "sz_push_full_pulse", scope: !3, file: !3, line: 121, type: !5875, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5901 = !DILocalVariable(name: "sz", arg: 1, scope: !5900, file: !3, line: 121, type: !4293)
!5902 = !DILocation(line: 121, column: 53, scope: !5900)
!5903 = !DILocalVariable(name: "value", arg: 2, scope: !5900, file: !3, line: 122, type: !485)
!5904 = !DILocation(line: 122, column: 25, scope: !5900)
!5905 = !DILocalVariable(name: "rawir", scope: !5900, file: !3, line: 124, type: !5652)
!5906 = !DILocation(line: 124, column: 22, scope: !5900)
!5907 = !DILocation(line: 126, column: 6, scope: !5908)
!5908 = distinct !DILexicalBlock(scope: !5900, file: !3, line: 126, column: 6)
!5909 = !DILocation(line: 126, column: 10, scope: !5908)
!5910 = !DILocation(line: 126, column: 6, scope: !5900)
!5911 = !DILocalVariable(name: "delta", scope: !5912, file: !3, line: 127, type: !215)
!5912 = distinct !DILexicalBlock(scope: !5908, file: !3, line: 126, column: 16)
!5913 = !DILocation(line: 127, column: 7, scope: !5912)
!5914 = !DILocation(line: 129, column: 21, scope: !5912)
!5915 = !DILocation(line: 129, column: 25, scope: !5912)
!5916 = !DILocation(line: 129, column: 3, scope: !5912)
!5917 = !DILocation(line: 129, column: 7, scope: !5912)
!5918 = !DILocation(line: 129, column: 19, scope: !5912)
!5919 = !DILocation(line: 130, column: 22, scope: !5912)
!5920 = !DILocation(line: 130, column: 3, scope: !5912)
!5921 = !DILocation(line: 130, column: 7, scope: !5912)
!5922 = !DILocation(line: 130, column: 20, scope: !5912)
!5923 = !DILocation(line: 132, column: 26, scope: !5912)
!5924 = !DILocation(line: 132, column: 30, scope: !5912)
!5925 = !DILocation(line: 132, column: 44, scope: !5912)
!5926 = !DILocation(line: 132, column: 48, scope: !5912)
!5927 = !DILocation(line: 132, column: 11, scope: !5912)
!5928 = !DILocation(line: 132, column: 9, scope: !5912)
!5929 = !DILocation(line: 133, column: 9, scope: !5912)
!5930 = !DILocation(line: 133, column: 15, scope: !5912)
!5931 = !DILocation(line: 134, column: 7, scope: !5932)
!5932 = distinct !DILexicalBlock(scope: !5912, file: !3, line: 134, column: 7)
!5933 = !DILocation(line: 134, column: 13, scope: !5932)
!5934 = !DILocation(line: 134, column: 7, scope: !5912)
!5935 = !DILocation(line: 136, column: 10, scope: !5936)
!5936 = distinct !DILexicalBlock(scope: !5932, file: !3, line: 134, column: 36)
!5937 = !DILocation(line: 136, column: 19, scope: !5936)
!5938 = !DILocation(line: 137, column: 3, scope: !5936)
!5939 = !DILocation(line: 138, column: 21, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5932, file: !3, line: 137, column: 10)
!5941 = !DILocation(line: 138, column: 10, scope: !5940)
!5942 = !DILocation(line: 138, column: 19, scope: !5940)
!5943 = !DILocation(line: 139, column: 22, scope: !5940)
!5944 = !DILocation(line: 139, column: 26, scope: !5940)
!5945 = !DILocation(line: 139, column: 10, scope: !5940)
!5946 = !DILocation(line: 139, column: 19, scope: !5940)
!5947 = !DILocation(line: 140, column: 28, scope: !5940)
!5948 = !DILocation(line: 140, column: 37, scope: !5940)
!5949 = !DILocation(line: 140, column: 21, scope: !5940)
!5950 = !DILocation(line: 141, column: 31, scope: !5940)
!5951 = !DILocation(line: 140, column: 10, scope: !5940)
!5952 = !DILocation(line: 140, column: 19, scope: !5940)
!5953 = !DILocation(line: 143, column: 11, scope: !5912)
!5954 = !DILocation(line: 143, column: 3, scope: !5912)
!5955 = !DILocation(line: 145, column: 3, scope: !5912)
!5956 = !DILocation(line: 145, column: 7, scope: !5912)
!5957 = !DILocation(line: 145, column: 12, scope: !5912)
!5958 = !DILocation(line: 146, column: 3, scope: !5912)
!5959 = !DILocation(line: 146, column: 7, scope: !5912)
!5960 = !DILocation(line: 146, column: 11, scope: !5912)
!5961 = !DILocation(line: 147, column: 2, scope: !5912)
!5962 = !DILocation(line: 149, column: 8, scope: !5900)
!5963 = !DILocation(line: 149, column: 14, scope: !5900)
!5964 = !DILocation(line: 150, column: 26, scope: !5900)
!5965 = !DILocation(line: 150, column: 20, scope: !5900)
!5966 = !DILocation(line: 150, column: 33, scope: !5900)
!5967 = !DILocation(line: 150, column: 8, scope: !5900)
!5968 = !DILocation(line: 150, column: 17, scope: !5900)
!5969 = !DILocation(line: 151, column: 8, scope: !5900)
!5970 = !DILocation(line: 151, column: 17, scope: !5900)
!5971 = !DILocation(line: 152, column: 19, scope: !5900)
!5972 = !DILocation(line: 152, column: 13, scope: !5900)
!5973 = !DILocation(line: 152, column: 2, scope: !5900)
!5974 = !DILocation(line: 152, column: 6, scope: !5900)
!5975 = !DILocation(line: 152, column: 10, scope: !5900)
!5976 = !DILocation(line: 153, column: 26, scope: !5900)
!5977 = !DILocation(line: 153, column: 35, scope: !5900)
!5978 = !DILocation(line: 153, column: 19, scope: !5900)
!5979 = !DILocation(line: 154, column: 29, scope: !5900)
!5980 = !DILocation(line: 153, column: 8, scope: !5900)
!5981 = !DILocation(line: 153, column: 17, scope: !5900)
!5982 = !DILocation(line: 155, column: 10, scope: !5900)
!5983 = !DILocation(line: 155, column: 2, scope: !5900)
!5984 = !DILocation(line: 156, column: 1, scope: !5900)
!5985 = distinct !DISubprogram(name: "sz_push", scope: !3, file: !3, line: 114, type: !5986, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5986 = !DISubroutineType(types: !5987)
!5987 = !{null, !4293, !5652}
!5988 = !DILocalVariable(name: "sz", arg: 1, scope: !5985, file: !3, line: 114, type: !4293)
!5989 = !DILocation(line: 114, column: 42, scope: !5985)
!5990 = !DILocalVariable(name: "rawir", arg: 2, scope: !5985, file: !3, line: 114, type: !5652)
!5991 = !DILocation(line: 114, column: 66, scope: !5985)
!5992 = !DILocation(line: 118, column: 33, scope: !5985)
!5993 = !DILocation(line: 118, column: 37, scope: !5985)
!5994 = !DILocation(line: 118, column: 2, scope: !5985)
!5995 = !DILocation(line: 119, column: 1, scope: !5985)
!5996 = distinct !DISubprogram(name: "ir_raw_event_reset", scope: !158, file: !158, line: 329, type: !4648, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5997 = !DILocalVariable(name: "dev", arg: 1, scope: !5996, file: !158, line: 329, type: !4297)
!5998 = !DILocation(line: 329, column: 54, scope: !5996)
!5999 = !DILocation(line: 331, column: 21, scope: !5996)
!6000 = !DILocation(line: 331, column: 50, scope: !5996)
!6001 = !DILocation(line: 331, column: 2, scope: !5996)
!6002 = !DILocation(line: 332, column: 2, scope: !5996)
!6003 = !DILocation(line: 332, column: 7, scope: !5996)
!6004 = !DILocation(line: 332, column: 12, scope: !5996)
!6005 = !DILocation(line: 333, column: 22, scope: !5996)
!6006 = !DILocation(line: 333, column: 2, scope: !5996)
!6007 = !DILocation(line: 334, column: 1, scope: !5996)
!6008 = distinct !DISubprogram(name: "sz_push_full_space", scope: !3, file: !3, line: 164, type: !5875, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!6009 = !DILocalVariable(name: "sz", arg: 1, scope: !6008, file: !3, line: 164, type: !4293)
!6010 = !DILocation(line: 164, column: 53, scope: !6008)
!6011 = !DILocalVariable(name: "value", arg: 2, scope: !6008, file: !3, line: 165, type: !485)
!6012 = !DILocation(line: 165, column: 25, scope: !6008)
!6013 = !DILocalVariable(name: "rawir", scope: !6008, file: !3, line: 167, type: !5652)
!6014 = !DILocation(line: 167, column: 22, scope: !6008)
!6015 = !DILocation(line: 169, column: 8, scope: !6008)
!6016 = !DILocation(line: 169, column: 14, scope: !6008)
!6017 = !DILocation(line: 170, column: 26, scope: !6008)
!6018 = !DILocation(line: 170, column: 20, scope: !6008)
!6019 = !DILocation(line: 170, column: 33, scope: !6008)
!6020 = !DILocation(line: 170, column: 8, scope: !6008)
!6021 = !DILocation(line: 170, column: 17, scope: !6008)
!6022 = !DILocation(line: 171, column: 8, scope: !6008)
!6023 = !DILocation(line: 171, column: 17, scope: !6008)
!6024 = !DILocation(line: 172, column: 19, scope: !6008)
!6025 = !DILocation(line: 172, column: 13, scope: !6008)
!6026 = !DILocation(line: 172, column: 2, scope: !6008)
!6027 = !DILocation(line: 172, column: 6, scope: !6008)
!6028 = !DILocation(line: 172, column: 10, scope: !6008)
!6029 = !DILocation(line: 173, column: 10, scope: !6008)
!6030 = !DILocation(line: 173, column: 2, scope: !6008)
!6031 = !DILocation(line: 174, column: 1, scope: !6008)
!6032 = distinct !DISubprogram(name: "ktime_us_delta", scope: !1350, file: !1350, line: 169, type: !6033, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!6033 = !DISubroutineType(types: !6034)
!6034 = !{!831, !6035, !6035}
!6035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1349)
!6036 = !DILocalVariable(name: "later", arg: 1, scope: !6032, file: !1350, line: 169, type: !6035)
!6037 = !DILocation(line: 169, column: 48, scope: !6032)
!6038 = !DILocalVariable(name: "earlier", arg: 2, scope: !6032, file: !1350, line: 169, type: !6035)
!6039 = !DILocation(line: 169, column: 69, scope: !6032)
!6040 = !DILocation(line: 171, column: 27, scope: !6032)
!6041 = !DILocation(line: 171, column: 15, scope: !6032)
!6042 = !DILocation(line: 171, column: 8, scope: !6032)
!6043 = distinct !DISubprogram(name: "ktime_to_us", scope: !1350, file: !1350, line: 159, type: !6044, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!6044 = !DISubroutineType(types: !6045)
!6045 = !{!831, !6035}
!6046 = !DILocalVariable(name: "kt", arg: 1, scope: !6043, file: !1350, line: 159, type: !6035)
!6047 = !DILocation(line: 159, column: 45, scope: !6043)
!6048 = !DILocation(line: 161, column: 21, scope: !6043)
!6049 = !DILocation(line: 161, column: 9, scope: !6043)
!6050 = !DILocation(line: 161, column: 2, scope: !6043)
!6051 = distinct !DISubprogram(name: "ktime_divns", scope: !1350, file: !1350, line: 148, type: !6052, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!6052 = !DISubroutineType(types: !6053)
!6053 = !{!831, !6035, !831}
!6054 = !DILocalVariable(name: "kt", arg: 1, scope: !6051, file: !1350, line: 148, type: !6035)
!6055 = !DILocation(line: 148, column: 45, scope: !6051)
!6056 = !DILocalVariable(name: "div", arg: 2, scope: !6051, file: !1350, line: 148, type: !831)
!6057 = !DILocation(line: 148, column: 53, scope: !6051)
!6058 = !DILocalVariable(name: "__ret_warn_on", scope: !6059, file: !1350, line: 154, type: !215)
!6059 = distinct !DILexicalBlock(scope: !6051, file: !1350, line: 154, column: 2)
!6060 = !DILocation(line: 154, column: 2, scope: !6059)
!6061 = !DILocation(line: 154, column: 2, scope: !6062)
!6062 = distinct !DILexicalBlock(scope: !6059, file: !1350, line: 154, column: 2)
!6063 = !DILocation(line: 154, column: 2, scope: !6064)
!6064 = distinct !DILexicalBlock(scope: !6062, file: !1350, line: 154, column: 2)
!6065 = !DILocation(line: 154, column: 2, scope: !6066)
!6066 = distinct !DILexicalBlock(scope: !6064, file: !1350, line: 154, column: 2)
!6067 = !DILocation(line: 154, column: 2, scope: !6068)
!6068 = distinct !DILexicalBlock(scope: !6064, file: !1350, line: 154, column: 2)
!6069 = !{i32 -2145147275, i32 -2145147246, i32 -2145147200, i32 -2145147142, i32 -2145147088, i32 -2145147034, i32 -2145146979, i32 -2145146948}
!6070 = !DILocation(line: 154, column: 2, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !6064, file: !1350, line: 154, column: 2)
!6072 = !{i32 -2145146545, i32 -2145146538, i32 -2145146486, i32 -2145146455, i32 -2145146425}
!6073 = !DILocation(line: 154, column: 2, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !6064, file: !1350, line: 154, column: 2)
!6075 = !DILocation(line: 155, column: 9, scope: !6051)
!6076 = !DILocation(line: 155, column: 14, scope: !6051)
!6077 = !DILocation(line: 155, column: 12, scope: !6051)
!6078 = !DILocation(line: 155, column: 2, scope: !6051)
!6079 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !80, file: !80, line: 660, type: !6080, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!6080 = !DISubroutineType(types: !6081)
!6081 = !{null, !291, !218}
!6082 = !DILocalVariable(name: "dev", arg: 1, scope: !6079, file: !80, line: 660, type: !291)
!6083 = !DILocation(line: 660, column: 51, scope: !6079)
!6084 = !DILocalVariable(name: "data", arg: 2, scope: !6079, file: !80, line: 660, type: !218)
!6085 = !DILocation(line: 660, column: 62, scope: !6079)
!6086 = !DILocation(line: 662, column: 21, scope: !6079)
!6087 = !DILocation(line: 662, column: 2, scope: !6079)
!6088 = !DILocation(line: 662, column: 7, scope: !6079)
!6089 = !DILocation(line: 662, column: 19, scope: !6079)
!6090 = !DILocation(line: 663, column: 1, scope: !6079)
!6091 = distinct !DISubprogram(name: "usb_get_intfdata", scope: !6, file: !6, line: 263, type: !6092, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!6092 = !DISubroutineType(types: !6093)
!6093 = !{!218, !4035}
!6094 = !DILocalVariable(name: "intf", arg: 1, scope: !6091, file: !6, line: 263, type: !4035)
!6095 = !DILocation(line: 263, column: 60, scope: !6091)
!6096 = !DILocation(line: 265, column: 26, scope: !6091)
!6097 = !DILocation(line: 265, column: 32, scope: !6091)
!6098 = !DILocation(line: 265, column: 9, scope: !6091)
!6099 = !DILocation(line: 265, column: 2, scope: !6091)
!6100 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !80, file: !80, line: 655, type: !6101, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!6101 = !DISubroutineType(types: !6102)
!6102 = !{!218, !3752}
!6103 = !DILocalVariable(name: "dev", arg: 1, scope: !6100, file: !80, line: 655, type: !3752)
!6104 = !DILocation(line: 655, column: 58, scope: !6100)
!6105 = !DILocation(line: 657, column: 9, scope: !6100)
!6106 = !DILocation(line: 657, column: 14, scope: !6100)
!6107 = !DILocation(line: 657, column: 2, scope: !6100)
