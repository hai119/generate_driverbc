; ModuleID = '../bcout/drivers/media/rc/ttusbir.llvm.bc'
source_filename = "drivers/media/rc/ttusbir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_ttusbir_driver_init6:\09\09\09"
module asm ".long\09ttusbir_driver_init - .\09\09\09"
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
%struct.ttusbir = type { %struct.rc_dev*, %struct.device*, %struct.usb_device*, [4 x %struct.urb*], %struct.led_classdev, %struct.urb*, [5 x i8], i32, i32, i8, i8, %struct.atomic_t, [64 x i8] }
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
%struct.led_classdev = type { i8*, i32, i32, i32, i64, void (%struct.led_classdev*, i32)*, i32 (%struct.led_classdev*, i32)*, i32 (%struct.led_classdev*)*, i32 (%struct.led_classdev*, i64*, i64*)*, i32 (%struct.led_classdev*, %struct.led_pattern*, i32, i32)*, i32 (%struct.led_classdev*)*, %struct.device*, %struct.attribute_group**, %struct.list_head, i8*, i64, i64, %struct.timer_list, i32, i32, void (%struct.led_classdev*)*, %struct.work_struct, i32, %struct.mutex }
%struct.led_pattern = type { i32, i32 }
%struct.urb = type { %struct.kref, i32, i8*, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.usb_anchor*, %struct.usb_device*, %struct.usb_host_endpoint*, i32, i32, i32, i32, i8*, i64, %struct.scatterlist*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i8*, void (%struct.urb*)*, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.led_init_data = type { %struct.fwnode_handle*, i8*, i8*, i8 }
%struct.ir_raw_event = type { %union.anon.66, i8, i8 }
%union.anon.66 = type { i32 }

@__UNIQUE_ID___addressable_ttusbir_driver_init239 = internal global i8* bitcast (i32 ()* @ttusbir_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@ttusbir_driver = internal global %struct.usb_driver { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @ttusbir_probe, void (%struct.usb_interface*)* @ttusbir_disconnect, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* @ttusbir_suspend, i32 (%struct.usb_interface*)* @ttusbir_resume, i32 (%struct.usb_interface*)* @ttusbir_resume, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, %struct.usb_device_id* getelementptr inbounds ([2 x %struct.usb_device_id], [2 x %struct.usb_device_id]* @ttusbir_table, i32 0, i32 0), %struct.attribute_group** null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, align 8, !dbg !4665
@__exitcall_ttusbir_driver_exit = internal global void ()* @ttusbir_driver_exit, section ".exitcall.exit", align 8, !dbg !4642
@__UNIQUE_ID_description240 = internal constant [48 x i8] c"ttusbir.description=TechnoTrend USB IR Receiver\00", section ".modinfo", align 1, !dbg !4647
@__UNIQUE_ID_author241 = internal constant [42 x i8] c"ttusbir.author=Sean Young <sean@mess.org>\00", section ".modinfo", align 1, !dbg !4652
@__UNIQUE_ID_file242 = internal constant [38 x i8] c"ttusbir.file=drivers/media/rc/ttusbir\00", section ".modinfo", align 1, !dbg !4657
@__UNIQUE_ID_license243 = internal constant [20 x i8] c"ttusbir.license=GPL\00", section ".modinfo", align 1, !dbg !4662
@.str = private unnamed_addr constant [8 x i8] c"ttusbir\00", align 1
@ttusbir_table = internal constant [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2888, i16 8195, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !4726
@.str.1 = private unnamed_addr constant [33 x i8] c"cannot find expected altsetting\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ttusbir:green:power\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"rc-feedback\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"TechnoTrend USB IR Receiver\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"rc-tt-1500\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to register rc device %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"failed to submit urb %d\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"failed to resubmit urb: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"failed to submit bulk urb: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"usb-%s-%s\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"failed to submit urb: %d\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_ttusbir_driver_init239 to i8*), i8* bitcast (void ()* @ttusbir_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_ttusbir_driver_exit to i8*), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__UNIQUE_ID_description240, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__UNIQUE_ID_author241, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__UNIQUE_ID_file242, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license243, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @ttusbir_driver_init() #0 section ".init.text" !dbg !4734 {
entry:
  %call = call i32 @usb_register_driver(%struct.usb_driver* @ttusbir_driver, %struct.module* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #9, !dbg !4737
  ret i32 %call, !dbg !4737
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @ttusbir_driver_exit() #0 section ".exit.text" !dbg !4738 {
entry:
  call void @usb_deregister(%struct.usb_driver* @ttusbir_driver) #9, !dbg !4739
  ret void, !dbg !4739
}

; Function Attrs: noredzone
declare dso_local void @usb_deregister(%struct.usb_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_register_driver(%struct.usb_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ttusbir_probe(%struct.usb_interface* %intf, %struct.usb_device_id* %id) #2 !dbg !4740 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !4741, metadata !DIExpression()), !dbg !4747
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !4752, metadata !DIExpression()), !dbg !4753
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4754, metadata !DIExpression()), !dbg !4762
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4764, metadata !DIExpression()), !dbg !4765
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !4766, metadata !DIExpression()), !dbg !4767
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !4768, metadata !DIExpression()), !dbg !4769
  %retval = alloca i32, align 4
  %intf.addr = alloca %struct.usb_interface*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  %tt = alloca %struct.ttusbir*, align 8
  %idesc = alloca %struct.usb_interface_descriptor*, align 8
  %desc = alloca %struct.usb_endpoint_descriptor*, align 8
  %rc = alloca %struct.rc_dev*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ret = alloca i32, align 4
  %altsetting = alloca i32, align 4
  %max_packet = alloca i32, align 4
  %bulk_out_endp = alloca i32, align 4
  %iso_in_endp = alloca i32, align 4
  %urb = alloca %struct.urb*, align 8
  %buffer = alloca i8*, align 8
  %urb167 = alloca %struct.urb*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4770, metadata !DIExpression()), !dbg !4771
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !4772, metadata !DIExpression()), !dbg !4773
  call void @llvm.dbg.declare(metadata %struct.ttusbir** %tt, metadata !4774, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.declare(metadata %struct.usb_interface_descriptor** %idesc, metadata !4776, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %desc, metadata !4779, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %rc, metadata !4782, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4784, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.declare(metadata i32* %j, metadata !4786, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4788, metadata !DIExpression()), !dbg !4789
  call void @llvm.dbg.declare(metadata i32* %altsetting, metadata !4790, metadata !DIExpression()), !dbg !4791
  store i32 -1, i32* %altsetting, align 4, !dbg !4791
  %call = call i8* @kzalloc(i64 408, i32 3264) #9, !dbg !4792
  %0 = bitcast i8* %call to %struct.ttusbir*, !dbg !4792
  store %struct.ttusbir* %0, %struct.ttusbir** %tt, align 8, !dbg !4793
  %call1 = call %struct.rc_dev* @rc_allocate_device(i32 1) #9, !dbg !4794
  store %struct.rc_dev* %call1, %struct.rc_dev** %rc, align 8, !dbg !4795
  %1 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !4796
  %tobool = icmp ne %struct.ttusbir* %1, null, !dbg !4796
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4798

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4799
  %tobool2 = icmp ne %struct.rc_dev* %2, null, !dbg !4799
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4800

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -12, i32* %ret, align 4, !dbg !4801
  br label %out, !dbg !4803

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4, !dbg !4804
  br label %for.cond, !dbg !4806

for.cond:                                         ; preds = %for.inc45, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !4807
  %4 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4809
  %num_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %4, i32 0, i32 2, !dbg !4810
  %5 = load i32, i32* %num_altsetting, align 8, !dbg !4810
  %cmp = icmp ult i32 %3, %5, !dbg !4811
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4812

land.rhs:                                         ; preds = %for.cond
  %6 = load i32, i32* %altsetting, align 4, !dbg !4813
  %cmp3 = icmp eq i32 %6, -1, !dbg !4814
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ], !dbg !4815
  br i1 %7, label %for.body, label %for.end47, !dbg !4816

for.body:                                         ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %max_packet, metadata !4817, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.declare(metadata i32* %bulk_out_endp, metadata !4820, metadata !DIExpression()), !dbg !4821
  store i32 -1, i32* %bulk_out_endp, align 4, !dbg !4821
  call void @llvm.dbg.declare(metadata i32* %iso_in_endp, metadata !4822, metadata !DIExpression()), !dbg !4823
  store i32 -1, i32* %iso_in_endp, align 4, !dbg !4823
  %8 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4824
  %altsetting4 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %8, i32 0, i32 0, !dbg !4825
  %9 = load %struct.usb_host_interface*, %struct.usb_host_interface** %altsetting4, align 8, !dbg !4825
  %10 = load i32, i32* %i, align 4, !dbg !4826
  %idxprom = sext i32 %10 to i64, !dbg !4824
  %arrayidx = getelementptr %struct.usb_host_interface, %struct.usb_host_interface* %9, i64 %idxprom, !dbg !4824
  %desc5 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %arrayidx, i32 0, i32 0, !dbg !4827
  store %struct.usb_interface_descriptor* %desc5, %struct.usb_interface_descriptor** %idesc, align 8, !dbg !4828
  store i32 0, i32* %j, align 4, !dbg !4829
  br label %for.cond6, !dbg !4831

for.cond6:                                        ; preds = %for.inc, %for.body
  %11 = load i32, i32* %j, align 4, !dbg !4832
  %12 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %idesc, align 8, !dbg !4834
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %12, i32 0, i32 4, !dbg !4835
  %13 = load i8, i8* %bNumEndpoints, align 1, !dbg !4835
  %conv = zext i8 %13 to i32, !dbg !4834
  %cmp7 = icmp slt i32 %11, %conv, !dbg !4836
  br i1 %cmp7, label %for.body9, label %for.end, !dbg !4837

for.body9:                                        ; preds = %for.cond6
  %14 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4838
  %altsetting10 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 0, !dbg !4840
  %15 = load %struct.usb_host_interface*, %struct.usb_host_interface** %altsetting10, align 8, !dbg !4840
  %16 = load i32, i32* %i, align 4, !dbg !4841
  %idxprom11 = sext i32 %16 to i64, !dbg !4838
  %arrayidx12 = getelementptr %struct.usb_host_interface, %struct.usb_host_interface* %15, i64 %idxprom11, !dbg !4838
  %endpoint = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %arrayidx12, i32 0, i32 3, !dbg !4842
  %17 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint, align 8, !dbg !4842
  %18 = load i32, i32* %j, align 4, !dbg !4843
  %idxprom13 = sext i32 %18 to i64, !dbg !4838
  %arrayidx14 = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %17, i64 %idxprom13, !dbg !4838
  %desc15 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx14, i32 0, i32 0, !dbg !4844
  store %struct.usb_endpoint_descriptor* %desc15, %struct.usb_endpoint_descriptor** %desc, align 8, !dbg !4845
  %19 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc, align 8, !dbg !4846
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %19, i32 0, i32 4, !dbg !4846
  %20 = load i16, i16* %wMaxPacketSize, align 1, !dbg !4846
  %conv16 = zext i16 %20 to i32, !dbg !4846
  store i32 %conv16, i32* %max_packet, align 4, !dbg !4847
  %21 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc, align 8, !dbg !4848
  %call17 = call i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %21) #9, !dbg !4850
  %tobool18 = icmp ne i32 %call17, 0, !dbg !4850
  br i1 %tobool18, label %land.lhs.true, label %if.else, !dbg !4851

land.lhs.true:                                    ; preds = %for.body9
  %22 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc, align 8, !dbg !4852
  %call19 = call i32 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor* %22) #9, !dbg !4853
  %tobool20 = icmp ne i32 %call19, 0, !dbg !4853
  br i1 %tobool20, label %land.lhs.true21, label %if.else, !dbg !4854

land.lhs.true21:                                  ; preds = %land.lhs.true
  %23 = load i32, i32* %max_packet, align 4, !dbg !4855
  %cmp22 = icmp eq i32 %23, 16, !dbg !4856
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !4857

if.then24:                                        ; preds = %land.lhs.true21
  %24 = load i32, i32* %j, align 4, !dbg !4858
  store i32 %24, i32* %iso_in_endp, align 4, !dbg !4859
  br label %if.end35, !dbg !4860

if.else:                                          ; preds = %land.lhs.true21, %land.lhs.true, %for.body9
  %25 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc, align 8, !dbg !4861
  %call25 = call i32 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor* %25) #9, !dbg !4863
  %tobool26 = icmp ne i32 %call25, 0, !dbg !4863
  br i1 %tobool26, label %land.lhs.true27, label %if.end34, !dbg !4864

land.lhs.true27:                                  ; preds = %if.else
  %26 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc, align 8, !dbg !4865
  %call28 = call i32 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %26) #9, !dbg !4866
  %tobool29 = icmp ne i32 %call28, 0, !dbg !4866
  br i1 %tobool29, label %land.lhs.true30, label %if.end34, !dbg !4867

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %27 = load i32, i32* %max_packet, align 4, !dbg !4868
  %cmp31 = icmp eq i32 %27, 32, !dbg !4869
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !4870

if.then33:                                        ; preds = %land.lhs.true30
  %28 = load i32, i32* %j, align 4, !dbg !4871
  store i32 %28, i32* %bulk_out_endp, align 4, !dbg !4872
  br label %if.end34, !dbg !4873

if.end34:                                         ; preds = %if.then33, %land.lhs.true30, %land.lhs.true27, %if.else
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then24
  %29 = load i32, i32* %bulk_out_endp, align 4, !dbg !4874
  %cmp36 = icmp ne i32 %29, -1, !dbg !4876
  br i1 %cmp36, label %land.lhs.true38, label %if.end44, !dbg !4877

land.lhs.true38:                                  ; preds = %if.end35
  %30 = load i32, i32* %iso_in_endp, align 4, !dbg !4878
  %cmp39 = icmp ne i32 %30, -1, !dbg !4879
  br i1 %cmp39, label %if.then41, label %if.end44, !dbg !4880

if.then41:                                        ; preds = %land.lhs.true38
  %31 = load i32, i32* %bulk_out_endp, align 4, !dbg !4881
  %32 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !4883
  %bulk_out_endp42 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %32, i32 0, i32 7, !dbg !4884
  store i32 %31, i32* %bulk_out_endp42, align 8, !dbg !4885
  %33 = load i32, i32* %iso_in_endp, align 4, !dbg !4886
  %34 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !4887
  %iso_in_endp43 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %34, i32 0, i32 8, !dbg !4888
  store i32 %33, i32* %iso_in_endp43, align 4, !dbg !4889
  %35 = load i32, i32* %i, align 4, !dbg !4890
  store i32 %35, i32* %altsetting, align 4, !dbg !4891
  br label %for.end, !dbg !4892

if.end44:                                         ; preds = %land.lhs.true38, %if.end35
  br label %for.inc, !dbg !4893

for.inc:                                          ; preds = %if.end44
  %36 = load i32, i32* %j, align 4, !dbg !4894
  %inc = add i32 %36, 1, !dbg !4894
  store i32 %inc, i32* %j, align 4, !dbg !4894
  br label %for.cond6, !dbg !4895, !llvm.loop !4896

for.end:                                          ; preds = %if.then41, %for.cond6
  br label %for.inc45, !dbg !4898

for.inc45:                                        ; preds = %for.end
  %37 = load i32, i32* %i, align 4, !dbg !4899
  %inc46 = add i32 %37, 1, !dbg !4899
  store i32 %inc46, i32* %i, align 4, !dbg !4899
  br label %for.cond, !dbg !4900, !llvm.loop !4901

for.end47:                                        ; preds = %land.end
  %38 = load i32, i32* %altsetting, align 4, !dbg !4903
  %cmp48 = icmp eq i32 %38, -1, !dbg !4905
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !4906

if.then50:                                        ; preds = %for.end47
  %39 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4907
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %39, i32 0, i32 7, !dbg !4907
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0)) #10, !dbg !4907
  store i32 -19, i32* %ret, align 4, !dbg !4909
  br label %out, !dbg !4910

if.end51:                                         ; preds = %for.end47
  %40 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4911
  %dev52 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %40, i32 0, i32 7, !dbg !4912
  %41 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !4913
  %dev53 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %41, i32 0, i32 1, !dbg !4914
  store %struct.device* %dev52, %struct.device** %dev53, align 8, !dbg !4915
  %42 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4916
  %call54 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %42) #9, !dbg !4917
  %43 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !4918
  %udev = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %43, i32 0, i32 2, !dbg !4919
  store %struct.usb_device* %call54, %struct.usb_device** %udev, align 8, !dbg !4920
  %44 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4921
  %45 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !4922
  %rc55 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %45, i32 0, i32 0, !dbg !4923
  store %struct.rc_dev* %44, %struct.rc_dev** %rc55, align 8, !dbg !4924
  %46 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !4925
  %udev56 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %46, i32 0, i32 2, !dbg !4926
  %47 = load %struct.usb_device*, %struct.usb_device** %udev56, align 8, !dbg !4926
  %48 = load i32, i32* %altsetting, align 4, !dbg !4927
  %call57 = call i32 @usb_set_interface(%struct.usb_device* %47, i32 0, i32 %48) #9, !dbg !4928
  store i32 %call57, i32* %ret, align 4, !dbg !4929
  %49 = load i32, i32* %ret, align 4, !dbg !4930
  %tobool58 = icmp ne i32 %49, 0, !dbg !4930
  br i1 %tobool58, label %if.then59, label %if.end60, !dbg !4932

if.then59:                                        ; preds = %if.end51
  br label %out, !dbg !4933

if.end60:                                         ; preds = %if.end51
  store i32 0, i32* %i, align 4, !dbg !4934
  br label %for.cond61, !dbg !4936

for.cond61:                                       ; preds = %for.inc95, %if.end60
  %50 = load i32, i32* %i, align 4, !dbg !4937
  %cmp62 = icmp slt i32 %50, 4, !dbg !4939
  br i1 %cmp62, label %for.body64, label %for.end97, !dbg !4940

for.body64:                                       ; preds = %for.cond61
  call void @llvm.dbg.declare(metadata %struct.urb** %urb, metadata !4941, metadata !DIExpression()), !dbg !4943
  %call65 = call %struct.urb* @usb_alloc_urb(i32 8, i32 3264) #9, !dbg !4944
  store %struct.urb* %call65, %struct.urb** %urb, align 8, !dbg !4943
  call void @llvm.dbg.declare(metadata i8** %buffer, metadata !4945, metadata !DIExpression()), !dbg !4946
  %51 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !4947
  %tobool66 = icmp ne %struct.urb* %51, null, !dbg !4947
  br i1 %tobool66, label %if.end68, label %if.then67, !dbg !4949

if.then67:                                        ; preds = %for.body64
  store i32 -12, i32* %ret, align 4, !dbg !4950
  br label %out, !dbg !4952

if.end68:                                         ; preds = %for.body64
  %52 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !4953
  %udev69 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %52, i32 0, i32 2, !dbg !4954
  %53 = load %struct.usb_device*, %struct.usb_device** %udev69, align 8, !dbg !4954
  %54 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !4955
  %dev70 = getelementptr inbounds %struct.urb, %struct.urb* %54, i32 0, i32 8, !dbg !4956
  store %struct.usb_device* %53, %struct.usb_device** %dev70, align 8, !dbg !4957
  %55 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !4958
  %56 = bitcast %struct.ttusbir* %55 to i8*, !dbg !4958
  %57 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !4959
  %context = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 27, !dbg !4960
  store i8* %56, i8** %context, align 8, !dbg !4961
  %58 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !4962
  %udev71 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %58, i32 0, i32 2, !dbg !4962
  %59 = load %struct.usb_device*, %struct.usb_device** %udev71, align 8, !dbg !4962
  %60 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !4962
  %iso_in_endp72 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %60, i32 0, i32 8, !dbg !4962
  %61 = load i32, i32* %iso_in_endp72, align 4, !dbg !4962
  %call73 = call i32 @__create_pipe(%struct.usb_device* %59, i32 %61) #9, !dbg !4962
  %or = or i32 0, %call73, !dbg !4962
  %or74 = or i32 %or, 128, !dbg !4962
  %62 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !4963
  %pipe = getelementptr inbounds %struct.urb, %struct.urb* %62, i32 0, i32 10, !dbg !4964
  store i32 %or74, i32* %pipe, align 8, !dbg !4965
  %63 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !4966
  %interval = getelementptr inbounds %struct.urb, %struct.urb* %63, i32 0, i32 25, !dbg !4967
  store i32 1, i32* %interval, align 8, !dbg !4968
  %64 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !4969
  %udev75 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %64, i32 0, i32 2, !dbg !4970
  %65 = load %struct.usb_device*, %struct.usb_device** %udev75, align 8, !dbg !4970
  %66 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !4971
  %transfer_dma = getelementptr inbounds %struct.urb, %struct.urb* %66, i32 0, i32 15, !dbg !4972
  %call76 = call i8* @usb_alloc_coherent(%struct.usb_device* %65, i64 128, i32 3264, i64* %transfer_dma) #9, !dbg !4973
  store i8* %call76, i8** %buffer, align 8, !dbg !4974
  %67 = load i8*, i8** %buffer, align 8, !dbg !4975
  %tobool77 = icmp ne i8* %67, null, !dbg !4975
  br i1 %tobool77, label %if.end79, label %if.then78, !dbg !4977

if.then78:                                        ; preds = %if.end68
  %68 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !4978
  call void @usb_free_urb(%struct.urb* %68) #9, !dbg !4980
  store i32 -12, i32* %ret, align 4, !dbg !4981
  br label %out, !dbg !4982

if.end79:                                         ; preds = %if.end68
  %69 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !4983
  %transfer_flags = getelementptr inbounds %struct.urb, %struct.urb* %69, i32 0, i32 13, !dbg !4984
  store i32 6, i32* %transfer_flags, align 4, !dbg !4985
  %70 = load i8*, i8** %buffer, align 8, !dbg !4986
  %71 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !4987
  %transfer_buffer = getelementptr inbounds %struct.urb, %struct.urb* %71, i32 0, i32 14, !dbg !4988
  store i8* %70, i8** %transfer_buffer, align 8, !dbg !4989
  %72 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !4990
  %complete = getelementptr inbounds %struct.urb, %struct.urb* %72, i32 0, i32 28, !dbg !4991
  store void (%struct.urb*)* @ttusbir_urb_complete, void (%struct.urb*)** %complete, align 8, !dbg !4992
  %73 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !4993
  %number_of_packets = getelementptr inbounds %struct.urb, %struct.urb* %73, i32 0, i32 24, !dbg !4994
  store i32 8, i32* %number_of_packets, align 4, !dbg !4995
  %74 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !4996
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %74, i32 0, i32 19, !dbg !4997
  store i32 128, i32* %transfer_buffer_length, align 8, !dbg !4998
  store i32 0, i32* %j, align 4, !dbg !4999
  br label %for.cond80, !dbg !5001

for.cond80:                                       ; preds = %for.inc89, %if.end79
  %75 = load i32, i32* %j, align 4, !dbg !5002
  %cmp81 = icmp slt i32 %75, 8, !dbg !5004
  br i1 %cmp81, label %for.body83, label %for.end91, !dbg !5005

for.body83:                                       ; preds = %for.cond80
  %76 = load i32, i32* %j, align 4, !dbg !5006
  %mul = mul i32 %76, 16, !dbg !5008
  %77 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5009
  %iso_frame_desc = getelementptr inbounds %struct.urb, %struct.urb* %77, i32 0, i32 29, !dbg !5010
  %78 = load i32, i32* %j, align 4, !dbg !5011
  %idxprom84 = sext i32 %78 to i64, !dbg !5009
  %arrayidx85 = getelementptr [0 x %struct.usb_iso_packet_descriptor], [0 x %struct.usb_iso_packet_descriptor]* %iso_frame_desc, i64 0, i64 %idxprom84, !dbg !5009
  %offset = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %arrayidx85, i32 0, i32 0, !dbg !5012
  store i32 %mul, i32* %offset, align 8, !dbg !5013
  %79 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5014
  %iso_frame_desc86 = getelementptr inbounds %struct.urb, %struct.urb* %79, i32 0, i32 29, !dbg !5015
  %80 = load i32, i32* %j, align 4, !dbg !5016
  %idxprom87 = sext i32 %80 to i64, !dbg !5014
  %arrayidx88 = getelementptr [0 x %struct.usb_iso_packet_descriptor], [0 x %struct.usb_iso_packet_descriptor]* %iso_frame_desc86, i64 0, i64 %idxprom87, !dbg !5014
  %length = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %arrayidx88, i32 0, i32 1, !dbg !5017
  store i32 16, i32* %length, align 4, !dbg !5018
  br label %for.inc89, !dbg !5019

for.inc89:                                        ; preds = %for.body83
  %81 = load i32, i32* %j, align 4, !dbg !5020
  %inc90 = add i32 %81, 1, !dbg !5020
  store i32 %inc90, i32* %j, align 4, !dbg !5020
  br label %for.cond80, !dbg !5021, !llvm.loop !5022

for.end91:                                        ; preds = %for.cond80
  %82 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5024
  %83 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5025
  %urb92 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %83, i32 0, i32 3, !dbg !5026
  %84 = load i32, i32* %i, align 4, !dbg !5027
  %idxprom93 = sext i32 %84 to i64, !dbg !5025
  %arrayidx94 = getelementptr [4 x %struct.urb*], [4 x %struct.urb*]* %urb92, i64 0, i64 %idxprom93, !dbg !5025
  store %struct.urb* %82, %struct.urb** %arrayidx94, align 8, !dbg !5028
  br label %for.inc95, !dbg !5029

for.inc95:                                        ; preds = %for.end91
  %85 = load i32, i32* %i, align 4, !dbg !5030
  %inc96 = add i32 %85, 1, !dbg !5030
  store i32 %inc96, i32* %i, align 4, !dbg !5030
  br label %for.cond61, !dbg !5031, !llvm.loop !5032

for.end97:                                        ; preds = %for.cond61
  %call98 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #9, !dbg !5034
  %86 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5035
  %bulk_urb = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %86, i32 0, i32 5, !dbg !5036
  store %struct.urb* %call98, %struct.urb** %bulk_urb, align 8, !dbg !5037
  %87 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5038
  %bulk_urb99 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %87, i32 0, i32 5, !dbg !5040
  %88 = load %struct.urb*, %struct.urb** %bulk_urb99, align 8, !dbg !5040
  %tobool100 = icmp ne %struct.urb* %88, null, !dbg !5038
  br i1 %tobool100, label %if.end102, label %if.then101, !dbg !5041

if.then101:                                       ; preds = %for.end97
  store i32 -12, i32* %ret, align 4, !dbg !5042
  br label %out, !dbg !5044

if.end102:                                        ; preds = %for.end97
  %89 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5045
  %bulk_buffer = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %89, i32 0, i32 6, !dbg !5046
  %arrayidx103 = getelementptr [5 x i8], [5 x i8]* %bulk_buffer, i64 0, i64 0, !dbg !5045
  store i8 -86, i8* %arrayidx103, align 8, !dbg !5047
  %90 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5048
  %bulk_buffer104 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %90, i32 0, i32 6, !dbg !5049
  %arrayidx105 = getelementptr [5 x i8], [5 x i8]* %bulk_buffer104, i64 0, i64 1, !dbg !5048
  store i8 1, i8* %arrayidx105, align 1, !dbg !5050
  %91 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5051
  %bulk_buffer106 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %91, i32 0, i32 6, !dbg !5052
  %arrayidx107 = getelementptr [5 x i8], [5 x i8]* %bulk_buffer106, i64 0, i64 2, !dbg !5051
  store i8 5, i8* %arrayidx107, align 2, !dbg !5053
  %92 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5054
  %bulk_buffer108 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %92, i32 0, i32 6, !dbg !5055
  %arrayidx109 = getelementptr [5 x i8], [5 x i8]* %bulk_buffer108, i64 0, i64 3, !dbg !5054
  store i8 1, i8* %arrayidx109, align 1, !dbg !5056
  %93 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5057
  %bulk_urb110 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %93, i32 0, i32 5, !dbg !5058
  %94 = load %struct.urb*, %struct.urb** %bulk_urb110, align 8, !dbg !5058
  %95 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5059
  %udev111 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %95, i32 0, i32 2, !dbg !5060
  %96 = load %struct.usb_device*, %struct.usb_device** %udev111, align 8, !dbg !5060
  %97 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5061
  %udev112 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %97, i32 0, i32 2, !dbg !5061
  %98 = load %struct.usb_device*, %struct.usb_device** %udev112, align 8, !dbg !5061
  %99 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5061
  %bulk_out_endp113 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %99, i32 0, i32 7, !dbg !5061
  %100 = load i32, i32* %bulk_out_endp113, align 8, !dbg !5061
  %call114 = call i32 @__create_pipe(%struct.usb_device* %98, i32 %100) #9, !dbg !5061
  %or115 = or i32 -1073741824, %call114, !dbg !5061
  %101 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5062
  %bulk_buffer116 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %101, i32 0, i32 6, !dbg !5063
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %bulk_buffer116, i64 0, i64 0, !dbg !5062
  %102 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5064
  %103 = bitcast %struct.ttusbir* %102 to i8*, !dbg !5064
  call void @usb_fill_bulk_urb(%struct.urb* %94, %struct.usb_device* %96, i32 %or115, i8* %arraydecay, i32 5, void (%struct.urb*)* @ttusbir_bulk_complete, i8* %103) #9, !dbg !5065
  %104 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5066
  %led = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %104, i32 0, i32 4, !dbg !5067
  %name = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %led, i32 0, i32 0, !dbg !5068
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %name, align 8, !dbg !5069
  %105 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5070
  %led117 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %105, i32 0, i32 4, !dbg !5071
  %default_trigger = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %led117, i32 0, i32 14, !dbg !5072
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %default_trigger, align 8, !dbg !5073
  %106 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5074
  %led118 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %106, i32 0, i32 4, !dbg !5075
  %brightness_set = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %led118, i32 0, i32 5, !dbg !5076
  store void (%struct.led_classdev*, i32)* @ttusbir_brightness_set, void (%struct.led_classdev*, i32)** %brightness_set, align 8, !dbg !5077
  %107 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5078
  %led119 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %107, i32 0, i32 4, !dbg !5079
  %brightness_get = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %led119, i32 0, i32 7, !dbg !5080
  store i32 (%struct.led_classdev*)* @ttusbir_brightness_get, i32 (%struct.led_classdev*)** %brightness_get, align 8, !dbg !5081
  %108 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5082
  %led_on = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %108, i32 0, i32 9, !dbg !5083
  store i8 1, i8* %led_on, align 8, !dbg !5084
  %109 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5085
  %is_led_on = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %109, i32 0, i32 10, !dbg !5086
  store i8 1, i8* %is_led_on, align 1, !dbg !5087
  %110 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5088
  %led_complete = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %110, i32 0, i32 11, !dbg !5089
  store %struct.atomic_t* %led_complete, %struct.atomic_t** %v.addr.i, align 8
  store i32 0, i32* %i.addr.i, align 4
  %111 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5090
  %112 = bitcast %struct.atomic_t* %111 to i8*, !dbg !5090
  store i8* %112, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %113 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5091
  %114 = load i64, i64* %size.addr.i.i, align 8, !dbg !5092
  %conv.i.i = trunc i64 %114 to i32, !dbg !5092
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %113, i32 %conv.i.i) #11, !dbg !5093
  %115 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5094
  %116 = load i64, i64* %size.addr.i.i, align 8, !dbg !5094
  call void @kcsan_check_access(i8* %115, i64 %116, i32 5) #11, !dbg !5094
  %117 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5095
  %118 = load i32, i32* %i.addr.i, align 4, !dbg !5096
  store %struct.atomic_t* %117, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %118, i32* %i.addr.i.i, align 4
  %119 = load i32, i32* %i.addr.i.i, align 4, !dbg !5097
  %120 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5097
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %120, i32 0, i32 0, !dbg !5097
  store volatile i32 %119, i32* %counter.i.i, align 4, !dbg !5097
  %121 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5099
  %dev120 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %121, i32 0, i32 7, !dbg !5100
  %122 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5101
  %led121 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %122, i32 0, i32 4, !dbg !5102
  %call122 = call i32 @led_classdev_register(%struct.device* %dev120, %struct.led_classdev* %led121) #9, !dbg !5103
  store i32 %call122, i32* %ret, align 4, !dbg !5104
  %123 = load i32, i32* %ret, align 4, !dbg !5105
  %tobool123 = icmp ne i32 %123, 0, !dbg !5105
  br i1 %tobool123, label %if.then124, label %if.end125, !dbg !5107

if.then124:                                       ; preds = %if.end102
  br label %out, !dbg !5108

if.end125:                                        ; preds = %if.end102
  %124 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5109
  %udev126 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %124, i32 0, i32 2, !dbg !5110
  %125 = load %struct.usb_device*, %struct.usb_device** %udev126, align 8, !dbg !5110
  %126 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5111
  %phys = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %126, i32 0, i32 12, !dbg !5112
  %arraydecay127 = getelementptr inbounds [64 x i8], [64 x i8]* %phys, i64 0, i64 0, !dbg !5111
  %call128 = call i32 @usb_make_path(%struct.usb_device* %125, i8* %arraydecay127, i64 64) #9, !dbg !5113
  %127 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5114
  %device_name = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %127, i32 0, i32 3, !dbg !5115
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8** %device_name, align 8, !dbg !5116
  %128 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5117
  %phys129 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %128, i32 0, i32 12, !dbg !5118
  %arraydecay130 = getelementptr inbounds [64 x i8], [64 x i8]* %phys129, i64 0, i64 0, !dbg !5117
  %129 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5119
  %input_phys = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %129, i32 0, i32 4, !dbg !5120
  store i8* %arraydecay130, i8** %input_phys, align 8, !dbg !5121
  %130 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5122
  %udev131 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %130, i32 0, i32 2, !dbg !5123
  %131 = load %struct.usb_device*, %struct.usb_device** %udev131, align 8, !dbg !5123
  %132 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5124
  %input_id = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %132, i32 0, i32 5, !dbg !5125
  call void @usb_to_input_id(%struct.usb_device* %131, %struct.input_id* %input_id) #9, !dbg !5126
  %133 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5127
  %dev132 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %133, i32 0, i32 7, !dbg !5128
  %134 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5129
  %dev133 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %134, i32 0, i32 0, !dbg !5130
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev133, i32 0, i32 1, !dbg !5131
  store %struct.device* %dev132, %struct.device** %parent, align 8, !dbg !5132
  %135 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5133
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %135, i32 0, i32 16, !dbg !5134
  store i64 0, i64* %allowed_protocols, align 8, !dbg !5135
  %136 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5136
  %137 = bitcast %struct.ttusbir* %136 to i8*, !dbg !5136
  %138 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5137
  %priv = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %138, i32 0, i32 24, !dbg !5138
  store i8* %137, i8** %priv, align 8, !dbg !5139
  %139 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5140
  %driver_name = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %139, i32 0, i32 6, !dbg !5141
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %driver_name, align 8, !dbg !5142
  %140 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5143
  %map_name = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %140, i32 0, i32 7, !dbg !5144
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %map_name, align 8, !dbg !5145
  %141 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5146
  %min_timeout = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %141, i32 0, i32 35, !dbg !5147
  store i32 1, i32* %min_timeout, align 8, !dbg !5148
  %142 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5149
  %timeout = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %142, i32 0, i32 34, !dbg !5150
  store i32 125000, i32* %timeout, align 4, !dbg !5151
  %143 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5152
  %max_timeout = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %143, i32 0, i32 36, !dbg !5153
  store i32 1250000, i32* %max_timeout, align 4, !dbg !5154
  %144 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5155
  %rx_resolution = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %144, i32 0, i32 37, !dbg !5156
  store i32 14, i32* %rx_resolution, align 8, !dbg !5157
  %145 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5158
  %call134 = call i32 @rc_register_device(%struct.rc_dev* %145) #9, !dbg !5159
  store i32 %call134, i32* %ret, align 4, !dbg !5160
  %146 = load i32, i32* %ret, align 4, !dbg !5161
  %tobool135 = icmp ne i32 %146, 0, !dbg !5161
  br i1 %tobool135, label %if.then136, label %if.end138, !dbg !5163

if.then136:                                       ; preds = %if.end125
  %147 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5164
  %dev137 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %147, i32 0, i32 7, !dbg !5164
  %148 = load i32, i32* %ret, align 4, !dbg !5164
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev137, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %148) #10, !dbg !5164
  br label %out2, !dbg !5166

if.end138:                                        ; preds = %if.end125
  %149 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5167
  %150 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5168
  %151 = bitcast %struct.ttusbir* %150 to i8*, !dbg !5168
  call void @usb_set_intfdata(%struct.usb_interface* %149, i8* %151) #9, !dbg !5169
  store i32 0, i32* %i, align 4, !dbg !5170
  br label %for.cond139, !dbg !5172

for.cond139:                                      ; preds = %for.inc151, %if.end138
  %152 = load i32, i32* %i, align 4, !dbg !5173
  %cmp140 = icmp slt i32 %152, 4, !dbg !5175
  br i1 %cmp140, label %for.body142, label %for.end153, !dbg !5176

for.body142:                                      ; preds = %for.cond139
  %153 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5177
  %urb143 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %153, i32 0, i32 3, !dbg !5179
  %154 = load i32, i32* %i, align 4, !dbg !5180
  %idxprom144 = sext i32 %154 to i64, !dbg !5177
  %arrayidx145 = getelementptr [4 x %struct.urb*], [4 x %struct.urb*]* %urb143, i64 0, i64 %idxprom144, !dbg !5177
  %155 = load %struct.urb*, %struct.urb** %arrayidx145, align 8, !dbg !5177
  %call146 = call i32 @usb_submit_urb(%struct.urb* %155, i32 3264) #9, !dbg !5181
  store i32 %call146, i32* %ret, align 4, !dbg !5182
  %156 = load i32, i32* %ret, align 4, !dbg !5183
  %tobool147 = icmp ne i32 %156, 0, !dbg !5183
  br i1 %tobool147, label %if.then148, label %if.end150, !dbg !5185

if.then148:                                       ; preds = %for.body142
  %157 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5186
  %dev149 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %157, i32 0, i32 1, !dbg !5186
  %158 = load %struct.device*, %struct.device** %dev149, align 8, !dbg !5186
  %159 = load i32, i32* %ret, align 4, !dbg !5186
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %158, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %159) #10, !dbg !5186
  br label %out3, !dbg !5188

if.end150:                                        ; preds = %for.body142
  br label %for.inc151, !dbg !5189

for.inc151:                                       ; preds = %if.end150
  %160 = load i32, i32* %i, align 4, !dbg !5190
  %inc152 = add i32 %160, 1, !dbg !5190
  store i32 %inc152, i32* %i, align 4, !dbg !5190
  br label %for.cond139, !dbg !5191, !llvm.loop !5192

for.end153:                                       ; preds = %for.cond139
  store i32 0, i32* %retval, align 4, !dbg !5194
  br label %return, !dbg !5194

out3:                                             ; preds = %if.then148
  call void @llvm.dbg.label(metadata !5195), !dbg !5196
  %161 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5197
  call void @rc_unregister_device(%struct.rc_dev* %161) #9, !dbg !5198
  store %struct.rc_dev* null, %struct.rc_dev** %rc, align 8, !dbg !5199
  br label %out2, !dbg !5200

out2:                                             ; preds = %out3, %if.then136
  call void @llvm.dbg.label(metadata !5201), !dbg !5202
  %162 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5203
  %led154 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %162, i32 0, i32 4, !dbg !5204
  call void @led_classdev_unregister(%struct.led_classdev* %led154) #9, !dbg !5205
  br label %out, !dbg !5205

out:                                              ; preds = %out2, %if.then124, %if.then101, %if.then78, %if.then67, %if.then59, %if.then50, %if.then
  call void @llvm.dbg.label(metadata !5206), !dbg !5207
  %163 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5208
  %tobool155 = icmp ne %struct.ttusbir* %163, null, !dbg !5208
  br i1 %tobool155, label %if.then156, label %if.end179, !dbg !5210

if.then156:                                       ; preds = %out
  store i32 0, i32* %i, align 4, !dbg !5211
  br label %for.cond157, !dbg !5214

for.cond157:                                      ; preds = %for.inc174, %if.then156
  %164 = load i32, i32* %i, align 4, !dbg !5215
  %cmp158 = icmp slt i32 %164, 4, !dbg !5217
  br i1 %cmp158, label %land.rhs160, label %land.end165, !dbg !5218

land.rhs160:                                      ; preds = %for.cond157
  %165 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5219
  %urb161 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %165, i32 0, i32 3, !dbg !5220
  %166 = load i32, i32* %i, align 4, !dbg !5221
  %idxprom162 = sext i32 %166 to i64, !dbg !5219
  %arrayidx163 = getelementptr [4 x %struct.urb*], [4 x %struct.urb*]* %urb161, i64 0, i64 %idxprom162, !dbg !5219
  %167 = load %struct.urb*, %struct.urb** %arrayidx163, align 8, !dbg !5219
  %tobool164 = icmp ne %struct.urb* %167, null, !dbg !5218
  br label %land.end165

land.end165:                                      ; preds = %land.rhs160, %for.cond157
  %168 = phi i1 [ false, %for.cond157 ], [ %tobool164, %land.rhs160 ], !dbg !5222
  br i1 %168, label %for.body166, label %for.end176, !dbg !5223

for.body166:                                      ; preds = %land.end165
  call void @llvm.dbg.declare(metadata %struct.urb** %urb167, metadata !5224, metadata !DIExpression()), !dbg !5226
  %169 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5227
  %urb168 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %169, i32 0, i32 3, !dbg !5228
  %170 = load i32, i32* %i, align 4, !dbg !5229
  %idxprom169 = sext i32 %170 to i64, !dbg !5227
  %arrayidx170 = getelementptr [4 x %struct.urb*], [4 x %struct.urb*]* %urb168, i64 0, i64 %idxprom169, !dbg !5227
  %171 = load %struct.urb*, %struct.urb** %arrayidx170, align 8, !dbg !5227
  store %struct.urb* %171, %struct.urb** %urb167, align 8, !dbg !5226
  %172 = load %struct.urb*, %struct.urb** %urb167, align 8, !dbg !5230
  call void @usb_kill_urb(%struct.urb* %172) #9, !dbg !5231
  %173 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5232
  %udev171 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %173, i32 0, i32 2, !dbg !5233
  %174 = load %struct.usb_device*, %struct.usb_device** %udev171, align 8, !dbg !5233
  %175 = load %struct.urb*, %struct.urb** %urb167, align 8, !dbg !5234
  %transfer_buffer172 = getelementptr inbounds %struct.urb, %struct.urb* %175, i32 0, i32 14, !dbg !5235
  %176 = load i8*, i8** %transfer_buffer172, align 8, !dbg !5235
  %177 = load %struct.urb*, %struct.urb** %urb167, align 8, !dbg !5236
  %transfer_dma173 = getelementptr inbounds %struct.urb, %struct.urb* %177, i32 0, i32 15, !dbg !5237
  %178 = load i64, i64* %transfer_dma173, align 8, !dbg !5237
  call void @usb_free_coherent(%struct.usb_device* %174, i64 128, i8* %176, i64 %178) #9, !dbg !5238
  %179 = load %struct.urb*, %struct.urb** %urb167, align 8, !dbg !5239
  call void @usb_free_urb(%struct.urb* %179) #9, !dbg !5240
  br label %for.inc174, !dbg !5241

for.inc174:                                       ; preds = %for.body166
  %180 = load i32, i32* %i, align 4, !dbg !5242
  %inc175 = add i32 %180, 1, !dbg !5242
  store i32 %inc175, i32* %i, align 4, !dbg !5242
  br label %for.cond157, !dbg !5243, !llvm.loop !5244

for.end176:                                       ; preds = %land.end165
  %181 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5246
  %bulk_urb177 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %181, i32 0, i32 5, !dbg !5247
  %182 = load %struct.urb*, %struct.urb** %bulk_urb177, align 8, !dbg !5247
  call void @usb_kill_urb(%struct.urb* %182) #9, !dbg !5248
  %183 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5249
  %bulk_urb178 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %183, i32 0, i32 5, !dbg !5250
  %184 = load %struct.urb*, %struct.urb** %bulk_urb178, align 8, !dbg !5250
  call void @usb_free_urb(%struct.urb* %184) #9, !dbg !5251
  %185 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5252
  %186 = bitcast %struct.ttusbir* %185 to i8*, !dbg !5252
  call void @kfree(i8* %186) #9, !dbg !5253
  br label %if.end179, !dbg !5254

if.end179:                                        ; preds = %for.end176, %out
  %187 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5255
  call void @rc_free_device(%struct.rc_dev* %187) #9, !dbg !5256
  %188 = load i32, i32* %ret, align 4, !dbg !5257
  store i32 %188, i32* %retval, align 4, !dbg !5258
  br label %return, !dbg !5258

return:                                           ; preds = %if.end179, %for.end153
  %189 = load i32, i32* %retval, align 4, !dbg !5259
  ret i32 %189, !dbg !5259
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ttusbir_disconnect(%struct.usb_interface* %intf) #2 !dbg !5260 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %tt = alloca %struct.ttusbir*, align 8
  %udev = alloca %struct.usb_device*, align 8
  %i = alloca i32, align 4
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5261, metadata !DIExpression()), !dbg !5262
  call void @llvm.dbg.declare(metadata %struct.ttusbir** %tt, metadata !5263, metadata !DIExpression()), !dbg !5264
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5265
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #9, !dbg !5266
  %1 = bitcast i8* %call to %struct.ttusbir*, !dbg !5266
  store %struct.ttusbir* %1, %struct.ttusbir** %tt, align 8, !dbg !5264
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !5267, metadata !DIExpression()), !dbg !5268
  %2 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5269
  %udev1 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %2, i32 0, i32 2, !dbg !5270
  %3 = load %struct.usb_device*, %struct.usb_device** %udev1, align 8, !dbg !5270
  store %struct.usb_device* %3, %struct.usb_device** %udev, align 8, !dbg !5268
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5271, metadata !DIExpression()), !dbg !5272
  %4 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5273
  %udev2 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %4, i32 0, i32 2, !dbg !5274
  store %struct.usb_device* null, %struct.usb_device** %udev2, align 8, !dbg !5275
  %5 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5276
  %rc = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %5, i32 0, i32 0, !dbg !5277
  %6 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5277
  call void @rc_unregister_device(%struct.rc_dev* %6) #9, !dbg !5278
  %7 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5279
  %led = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %7, i32 0, i32 4, !dbg !5280
  call void @led_classdev_unregister(%struct.led_classdev* %led) #9, !dbg !5281
  store i32 0, i32* %i, align 4, !dbg !5282
  br label %for.cond, !dbg !5284

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !dbg !5285
  %cmp = icmp slt i32 %8, 4, !dbg !5287
  br i1 %cmp, label %for.body, label %for.end, !dbg !5288

for.body:                                         ; preds = %for.cond
  %9 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5289
  %urb = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %9, i32 0, i32 3, !dbg !5291
  %10 = load i32, i32* %i, align 4, !dbg !5292
  %idxprom = sext i32 %10 to i64, !dbg !5289
  %arrayidx = getelementptr [4 x %struct.urb*], [4 x %struct.urb*]* %urb, i64 0, i64 %idxprom, !dbg !5289
  %11 = load %struct.urb*, %struct.urb** %arrayidx, align 8, !dbg !5289
  call void @usb_kill_urb(%struct.urb* %11) #9, !dbg !5293
  %12 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5294
  %13 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5295
  %urb3 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %13, i32 0, i32 3, !dbg !5296
  %14 = load i32, i32* %i, align 4, !dbg !5297
  %idxprom4 = sext i32 %14 to i64, !dbg !5295
  %arrayidx5 = getelementptr [4 x %struct.urb*], [4 x %struct.urb*]* %urb3, i64 0, i64 %idxprom4, !dbg !5295
  %15 = load %struct.urb*, %struct.urb** %arrayidx5, align 8, !dbg !5295
  %transfer_buffer = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 14, !dbg !5298
  %16 = load i8*, i8** %transfer_buffer, align 8, !dbg !5298
  %17 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5299
  %urb6 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %17, i32 0, i32 3, !dbg !5300
  %18 = load i32, i32* %i, align 4, !dbg !5301
  %idxprom7 = sext i32 %18 to i64, !dbg !5299
  %arrayidx8 = getelementptr [4 x %struct.urb*], [4 x %struct.urb*]* %urb6, i64 0, i64 %idxprom7, !dbg !5299
  %19 = load %struct.urb*, %struct.urb** %arrayidx8, align 8, !dbg !5299
  %transfer_dma = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 15, !dbg !5302
  %20 = load i64, i64* %transfer_dma, align 8, !dbg !5302
  call void @usb_free_coherent(%struct.usb_device* %12, i64 128, i8* %16, i64 %20) #9, !dbg !5303
  %21 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5304
  %urb9 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %21, i32 0, i32 3, !dbg !5305
  %22 = load i32, i32* %i, align 4, !dbg !5306
  %idxprom10 = sext i32 %22 to i64, !dbg !5304
  %arrayidx11 = getelementptr [4 x %struct.urb*], [4 x %struct.urb*]* %urb9, i64 0, i64 %idxprom10, !dbg !5304
  %23 = load %struct.urb*, %struct.urb** %arrayidx11, align 8, !dbg !5304
  call void @usb_free_urb(%struct.urb* %23) #9, !dbg !5307
  br label %for.inc, !dbg !5308

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4, !dbg !5309
  %inc = add i32 %24, 1, !dbg !5309
  store i32 %inc, i32* %i, align 4, !dbg !5309
  br label %for.cond, !dbg !5310, !llvm.loop !5311

for.end:                                          ; preds = %for.cond
  %25 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5313
  %bulk_urb = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %25, i32 0, i32 5, !dbg !5314
  %26 = load %struct.urb*, %struct.urb** %bulk_urb, align 8, !dbg !5314
  call void @usb_kill_urb(%struct.urb* %26) #9, !dbg !5315
  %27 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5316
  %bulk_urb12 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %27, i32 0, i32 5, !dbg !5317
  %28 = load %struct.urb*, %struct.urb** %bulk_urb12, align 8, !dbg !5317
  call void @usb_free_urb(%struct.urb* %28) #9, !dbg !5318
  %29 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5319
  call void @usb_set_intfdata(%struct.usb_interface* %29, i8* null) #9, !dbg !5320
  %30 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5321
  %31 = bitcast %struct.ttusbir* %30 to i8*, !dbg !5321
  call void @kfree(i8* %31) #9, !dbg !5322
  ret void, !dbg !5323
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ttusbir_suspend(%struct.usb_interface* %intf, i32 %message.coerce) #2 !dbg !5324 {
entry:
  %message = alloca %struct.pm_message, align 4
  %intf.addr = alloca %struct.usb_interface*, align 8
  %tt = alloca %struct.ttusbir*, align 8
  %i = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.pm_message, %struct.pm_message* %message, i32 0, i32 0
  store i32 %message.coerce, i32* %coerce.dive, align 4
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5325, metadata !DIExpression()), !dbg !5326
  call void @llvm.dbg.declare(metadata %struct.pm_message* %message, metadata !5327, metadata !DIExpression()), !dbg !5328
  call void @llvm.dbg.declare(metadata %struct.ttusbir** %tt, metadata !5329, metadata !DIExpression()), !dbg !5330
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5331
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #9, !dbg !5332
  %1 = bitcast i8* %call to %struct.ttusbir*, !dbg !5332
  store %struct.ttusbir* %1, %struct.ttusbir** %tt, align 8, !dbg !5330
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5333, metadata !DIExpression()), !dbg !5334
  store i32 0, i32* %i, align 4, !dbg !5335
  br label %for.cond, !dbg !5337

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !5338
  %cmp = icmp slt i32 %2, 4, !dbg !5340
  br i1 %cmp, label %for.body, label %for.end, !dbg !5341

for.body:                                         ; preds = %for.cond
  %3 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5342
  %urb = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %3, i32 0, i32 3, !dbg !5343
  %4 = load i32, i32* %i, align 4, !dbg !5344
  %idxprom = sext i32 %4 to i64, !dbg !5342
  %arrayidx = getelementptr [4 x %struct.urb*], [4 x %struct.urb*]* %urb, i64 0, i64 %idxprom, !dbg !5342
  %5 = load %struct.urb*, %struct.urb** %arrayidx, align 8, !dbg !5342
  call void @usb_kill_urb(%struct.urb* %5) #9, !dbg !5345
  br label %for.inc, !dbg !5345

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !5346
  %inc = add i32 %6, 1, !dbg !5346
  store i32 %inc, i32* %i, align 4, !dbg !5346
  br label %for.cond, !dbg !5347, !llvm.loop !5348

for.end:                                          ; preds = %for.cond
  %7 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5350
  %led = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %7, i32 0, i32 4, !dbg !5351
  call void @led_classdev_suspend(%struct.led_classdev* %led) #9, !dbg !5352
  %8 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5353
  %bulk_urb = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %8, i32 0, i32 5, !dbg !5354
  %9 = load %struct.urb*, %struct.urb** %bulk_urb, align 8, !dbg !5354
  call void @usb_kill_urb(%struct.urb* %9) #9, !dbg !5355
  ret i32 0, !dbg !5356
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ttusbir_resume(%struct.usb_interface* %intf) #2 !dbg !5357 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %tt = alloca %struct.ttusbir*, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5358, metadata !DIExpression()), !dbg !5359
  call void @llvm.dbg.declare(metadata %struct.ttusbir** %tt, metadata !5360, metadata !DIExpression()), !dbg !5361
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5362
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #9, !dbg !5363
  %1 = bitcast i8* %call to %struct.ttusbir*, !dbg !5363
  store %struct.ttusbir* %1, %struct.ttusbir** %tt, align 8, !dbg !5361
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5364, metadata !DIExpression()), !dbg !5365
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5366, metadata !DIExpression()), !dbg !5367
  %2 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5368
  %is_led_on = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %2, i32 0, i32 10, !dbg !5369
  store i8 1, i8* %is_led_on, align 1, !dbg !5370
  %3 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5371
  %led = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %3, i32 0, i32 4, !dbg !5372
  call void @led_classdev_resume(%struct.led_classdev* %led) #9, !dbg !5373
  store i32 0, i32* %i, align 4, !dbg !5374
  br label %for.cond, !dbg !5376

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !5377
  %cmp = icmp slt i32 %4, 4, !dbg !5379
  br i1 %cmp, label %for.body, label %for.end, !dbg !5380

for.body:                                         ; preds = %for.cond
  %5 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5381
  %urb = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %5, i32 0, i32 3, !dbg !5383
  %6 = load i32, i32* %i, align 4, !dbg !5384
  %idxprom = sext i32 %6 to i64, !dbg !5381
  %arrayidx = getelementptr [4 x %struct.urb*], [4 x %struct.urb*]* %urb, i64 0, i64 %idxprom, !dbg !5381
  %7 = load %struct.urb*, %struct.urb** %arrayidx, align 8, !dbg !5381
  %call1 = call i32 @usb_submit_urb(%struct.urb* %7, i32 3264) #9, !dbg !5385
  store i32 %call1, i32* %rc, align 4, !dbg !5386
  %8 = load i32, i32* %rc, align 4, !dbg !5387
  %tobool = icmp ne i32 %8, 0, !dbg !5387
  br i1 %tobool, label %if.then, label %if.end, !dbg !5389

if.then:                                          ; preds = %for.body
  %9 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5390
  %dev = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %9, i32 0, i32 1, !dbg !5390
  %10 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5390
  %11 = load i32, i32* %rc, align 4, !dbg !5390
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %11) #10, !dbg !5390
  br label %for.end, !dbg !5392

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5393

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4, !dbg !5394
  %inc = add i32 %12, 1, !dbg !5394
  store i32 %inc, i32* %i, align 4, !dbg !5394
  br label %for.cond, !dbg !5395, !llvm.loop !5396

for.end:                                          ; preds = %if.then, %for.cond
  %13 = load i32, i32* %rc, align 4, !dbg !5398
  ret i32 %13, !dbg !5399
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !5400 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5403, metadata !DIExpression()), !dbg !5407
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5413, metadata !DIExpression()), !dbg !5414
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5415, metadata !DIExpression()), !dbg !5416
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5417, metadata !DIExpression()), !dbg !5418
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5419, metadata !DIExpression()), !dbg !5423
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5425, metadata !DIExpression()), !dbg !5429
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5431, metadata !DIExpression()), !dbg !5435
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5440, metadata !DIExpression()), !dbg !5441
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5442, metadata !DIExpression()), !dbg !5443
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5444, metadata !DIExpression()), !dbg !5445
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5446, metadata !DIExpression()), !dbg !5447
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5448, metadata !DIExpression()), !dbg !5449
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5450, metadata !DIExpression()), !dbg !5451
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5452, metadata !DIExpression()), !dbg !5453
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5454, metadata !DIExpression()), !dbg !5455
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5456, metadata !DIExpression()), !dbg !5457
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5458, metadata !DIExpression()), !dbg !5459
  %0 = load i64, i64* %size.addr, align 8, !dbg !5460
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5461
  %or = or i32 %1, 256, !dbg !5462
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5463
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #12, !dbg !5464
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5465

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5466
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5467
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5468

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5469
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5470
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5471
  %call.i.i = call i32 @get_order(i64 %7) #13, !dbg !5472
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5449
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5473
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5474
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5475
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5476
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5477
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5478
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !5479
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5479
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5479
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5479
  call void @llvm.assume(i1 %maskcond.i.i.i) #12, !dbg !5479
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5480
  br label %kmalloc.exit, !dbg !5480

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5481
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5482
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5482
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5484

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5485
  br label %kmalloc_index.exit.i, !dbg !5485

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5486
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5488
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5489

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5490
  br label %kmalloc_index.exit.i, !dbg !5490

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5491
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5493
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5494

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5495
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5496
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5497

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5498
  br label %kmalloc_index.exit.i, !dbg !5498

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5499
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5501
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5502

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5503
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5504
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5505

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5506
  br label %kmalloc_index.exit.i, !dbg !5506

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5507
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5509
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5510

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5511
  br label %kmalloc_index.exit.i, !dbg !5511

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5512
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5514
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5515

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5516
  br label %kmalloc_index.exit.i, !dbg !5516

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5517
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5519
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5520

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5521
  br label %kmalloc_index.exit.i, !dbg !5521

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5522
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5524
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5525

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5526
  br label %kmalloc_index.exit.i, !dbg !5526

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5527
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5529
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5530

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5531
  br label %kmalloc_index.exit.i, !dbg !5531

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5532
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5534
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5535

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5536
  br label %kmalloc_index.exit.i, !dbg !5536

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5537
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5539
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5540

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5541
  br label %kmalloc_index.exit.i, !dbg !5541

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5542
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5544
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5545

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5546
  br label %kmalloc_index.exit.i, !dbg !5546

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5547
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5549
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5550

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5551
  br label %kmalloc_index.exit.i, !dbg !5551

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5552
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5554
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5555

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5556
  br label %kmalloc_index.exit.i, !dbg !5556

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5557
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5559
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5560

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5561
  br label %kmalloc_index.exit.i, !dbg !5561

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5562
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5564
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5565

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5566
  br label %kmalloc_index.exit.i, !dbg !5566

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5567
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5569
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5570

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5571
  br label %kmalloc_index.exit.i, !dbg !5571

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5572
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5574
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5575

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5576
  br label %kmalloc_index.exit.i, !dbg !5576

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5577
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5579
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5580

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5581
  br label %kmalloc_index.exit.i, !dbg !5581

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5582
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5584
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5585

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5586
  br label %kmalloc_index.exit.i, !dbg !5586

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5587
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5589
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5590

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5591
  br label %kmalloc_index.exit.i, !dbg !5591

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5592
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5594
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5595

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5596
  br label %kmalloc_index.exit.i, !dbg !5596

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5597
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5599
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5600

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5601
  br label %kmalloc_index.exit.i, !dbg !5601

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5602
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5604
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5605

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5606
  br label %kmalloc_index.exit.i, !dbg !5606

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5607
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5609
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5610

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5611
  br label %kmalloc_index.exit.i, !dbg !5611

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5612
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5614
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5615

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5616
  br label %kmalloc_index.exit.i, !dbg !5616

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5617
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5619
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5620

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5621
  br label %kmalloc_index.exit.i, !dbg !5621

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5622
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5624
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5625

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5626
  br label %kmalloc_index.exit.i, !dbg !5626

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 382, i32 0, i64 12) #12, !dbg !5627, !srcloc !5630
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 211) #12, !dbg !5631, !srcloc !5634
  unreachable, !dbg !5635

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5636
  store i32 %45, i32* %index.i, align 4, !dbg !5637
  %46 = load i32, i32* %index.i, align 4, !dbg !5638
  %tobool.i = icmp ne i32 %46, 0, !dbg !5638
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5640

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5641
  br label %kmalloc.exit, !dbg !5641

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5642
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5643
  %and.i.i = and i32 %48, 17, !dbg !5643
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5643
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5643
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5643
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5643
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5645

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5646
  br label %kmalloc_type.exit.i, !dbg !5646

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5647
  %and2.i.i = and i32 %49, 1, !dbg !5648
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5647
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5647
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5647
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5649
  br label %kmalloc_type.exit.i, !dbg !5649

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5650
  %idxprom.i = zext i32 %51 to i64, !dbg !5651
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5651
  %52 = load i32, i32* %index.i, align 4, !dbg !5652
  %idxprom6.i = zext i32 %52 to i64, !dbg !5651
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5651
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5651
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5653
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5654
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5655
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5656
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !5657
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5657
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5657
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5657
  call void @llvm.assume(i1 %maskcond.i.i) #12, !dbg !5657
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5418
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5658
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5659
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5660
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5661
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !5662
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5663
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5664
  store i8* %62, i8** %retval.i, align 8, !dbg !5665
  br label %kmalloc.exit, !dbg !5665

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5666
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5667
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !5668
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5668
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5668
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5668
  call void @llvm.assume(i1 %maskcond.i) #12, !dbg !5668
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5669
  br label %kmalloc.exit, !dbg !5669

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5670
  ret i8* %65, !dbg !5671
}

; Function Attrs: noredzone
declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5672 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5677, metadata !DIExpression()), !dbg !5678
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5679
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 2, !dbg !5680
  %1 = load i8, i8* %bEndpointAddress, align 1, !dbg !5680
  %conv = zext i8 %1 to i32, !dbg !5679
  %and = and i32 %conv, 128, !dbg !5681
  %cmp = icmp eq i32 %and, 128, !dbg !5682
  %conv1 = zext i1 %cmp to i32, !dbg !5682
  ret i32 %conv1, !dbg !5683
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5684 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5685, metadata !DIExpression()), !dbg !5686
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5687
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 3, !dbg !5688
  %1 = load i8, i8* %bmAttributes, align 1, !dbg !5688
  %conv = zext i8 %1 to i32, !dbg !5687
  %and = and i32 %conv, 3, !dbg !5689
  %cmp = icmp eq i32 %and, 1, !dbg !5690
  %conv1 = zext i1 %cmp to i32, !dbg !5690
  ret i32 %conv1, !dbg !5691
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5692 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5693, metadata !DIExpression()), !dbg !5694
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5695
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 2, !dbg !5696
  %1 = load i8, i8* %bEndpointAddress, align 1, !dbg !5696
  %conv = zext i8 %1 to i32, !dbg !5695
  %and = and i32 %conv, 128, !dbg !5697
  %cmp = icmp eq i32 %and, 0, !dbg !5698
  %conv1 = zext i1 %cmp to i32, !dbg !5698
  ret i32 %conv1, !dbg !5699
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5700 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5701, metadata !DIExpression()), !dbg !5702
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5703
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 3, !dbg !5704
  %1 = load i8, i8* %bmAttributes, align 1, !dbg !5704
  %conv = zext i8 %1 to i32, !dbg !5703
  %and = and i32 %conv, 3, !dbg !5705
  %cmp = icmp eq i32 %and, 2, !dbg !5706
  %conv1 = zext i1 %cmp to i32, !dbg !5706
  ret i32 %conv1, !dbg !5707
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %intf) #2 !dbg !5708 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5711, metadata !DIExpression()), !dbg !5712
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5713, metadata !DIExpression()), !dbg !5715
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5715
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5715
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !5715
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5715
  %2 = bitcast %struct.device* %1 to i8*, !dbg !5715
  store i8* %2, i8** %__mptr, align 8, !dbg !5715
  br label %do.body, !dbg !5715

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5716

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5715
  %add.ptr = getelementptr i8, i8* %3, i64 -160, !dbg !5715
  %4 = bitcast i8* %add.ptr to %struct.usb_device*, !dbg !5715
  store %struct.usb_device* %4, %struct.usb_device** %tmp, align 8, !dbg !5716
  %5 = load %struct.usb_device*, %struct.usb_device** %tmp, align 8, !dbg !5715
  ret %struct.usb_device* %5, !dbg !5718
}

; Function Attrs: noredzone
declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

; Function Attrs: noredzone
declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__create_pipe(%struct.usb_device* %dev, i32 %endpoint) #2 !dbg !5719 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5722, metadata !DIExpression()), !dbg !5723
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !5724, metadata !DIExpression()), !dbg !5725
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5726
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 0, !dbg !5727
  %1 = load i32, i32* %devnum, align 8, !dbg !5727
  %shl = shl i32 %1, 8, !dbg !5728
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !5729
  %shl1 = shl i32 %2, 15, !dbg !5730
  %or = or i32 %shl, %shl1, !dbg !5731
  ret i32 %or, !dbg !5732
}

; Function Attrs: noredzone
declare dso_local i8* @usb_alloc_coherent(%struct.usb_device*, i64, i32, i64*) #1

; Function Attrs: noredzone
declare dso_local void @usb_free_urb(%struct.urb*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ttusbir_urb_complete(%struct.urb* %urb) #2 !dbg !5733 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %tt = alloca %struct.ttusbir*, align 8
  %rc = alloca i32, align 4
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5734, metadata !DIExpression()), !dbg !5735
  call void @llvm.dbg.declare(metadata %struct.ttusbir** %tt, metadata !5736, metadata !DIExpression()), !dbg !5737
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5738
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !5739
  %1 = load i8*, i8** %context, align 8, !dbg !5739
  %2 = bitcast i8* %1 to %struct.ttusbir*, !dbg !5738
  store %struct.ttusbir* %2, %struct.ttusbir** %tt, align 8, !dbg !5737
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5740, metadata !DIExpression()), !dbg !5741
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5742
  %status = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 12, !dbg !5743
  %4 = load i32, i32* %status, align 8, !dbg !5743
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 -104, label %sw.bb1
    i32 -2, label %sw.bb1
    i32 -108, label %sw.bb1
    i32 -32, label %sw.bb2
  ], !dbg !5744

sw.bb:                                            ; preds = %entry
  %5 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5745
  %6 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5747
  %transfer_buffer = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 14, !dbg !5748
  %7 = load i8*, i8** %transfer_buffer, align 8, !dbg !5748
  call void @ttusbir_process_ir_data(%struct.ttusbir* %5, i8* %7) #9, !dbg !5749
  br label %sw.epilog, !dbg !5750

sw.bb1:                                           ; preds = %entry, %entry, %entry
  %8 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5751
  %call = call i32 @usb_unlink_urb(%struct.urb* %8) #9, !dbg !5752
  br label %if.end, !dbg !5753

sw.bb2:                                           ; preds = %entry
  br label %sw.default, !dbg !5753

sw.default:                                       ; preds = %entry, %sw.bb2
  br label %sw.epilog, !dbg !5754

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5755
  %call3 = call i32 @usb_submit_urb(%struct.urb* %9, i32 2592) #9, !dbg !5756
  store i32 %call3, i32* %rc, align 4, !dbg !5757
  %10 = load i32, i32* %rc, align 4, !dbg !5758
  %tobool = icmp ne i32 %10, 0, !dbg !5758
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5760

land.lhs.true:                                    ; preds = %sw.epilog
  %11 = load i32, i32* %rc, align 4, !dbg !5761
  %cmp = icmp ne i32 %11, -19, !dbg !5762
  br i1 %cmp, label %if.then, label %if.end, !dbg !5763

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5764
  %dev = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %12, i32 0, i32 1, !dbg !5764
  %13 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5764
  %14 = load i32, i32* %rc, align 4, !dbg !5764
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %14) #10, !dbg !5764
  br label %if.end, !dbg !5764

if.end:                                           ; preds = %sw.bb1, %if.then, %land.lhs.true, %sw.epilog
  ret void, !dbg !5765
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_fill_bulk_urb(%struct.urb* %urb, %struct.usb_device* %dev, i32 %pipe, i8* %transfer_buffer, i32 %buffer_length, void (%struct.urb*)* %complete_fn, i8* %context) #2 !dbg !5766 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %dev.addr = alloca %struct.usb_device*, align 8
  %pipe.addr = alloca i32, align 4
  %transfer_buffer.addr = alloca i8*, align 8
  %buffer_length.addr = alloca i32, align 4
  %complete_fn.addr = alloca void (%struct.urb*)*, align 8
  %context.addr = alloca i8*, align 8
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5769, metadata !DIExpression()), !dbg !5770
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5771, metadata !DIExpression()), !dbg !5772
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !5773, metadata !DIExpression()), !dbg !5774
  store i8* %transfer_buffer, i8** %transfer_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %transfer_buffer.addr, metadata !5775, metadata !DIExpression()), !dbg !5776
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_length.addr, metadata !5777, metadata !DIExpression()), !dbg !5778
  store void (%struct.urb*)* %complete_fn, void (%struct.urb*)** %complete_fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.urb*)** %complete_fn.addr, metadata !5779, metadata !DIExpression()), !dbg !5780
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !5781, metadata !DIExpression()), !dbg !5782
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5783
  %1 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5784
  %dev1 = getelementptr inbounds %struct.urb, %struct.urb* %1, i32 0, i32 8, !dbg !5785
  store %struct.usb_device* %0, %struct.usb_device** %dev1, align 8, !dbg !5786
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !5787
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5788
  %pipe2 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 10, !dbg !5789
  store i32 %2, i32* %pipe2, align 8, !dbg !5790
  %4 = load i8*, i8** %transfer_buffer.addr, align 8, !dbg !5791
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5792
  %transfer_buffer3 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 14, !dbg !5793
  store i8* %4, i8** %transfer_buffer3, align 8, !dbg !5794
  %6 = load i32, i32* %buffer_length.addr, align 4, !dbg !5795
  %7 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5796
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 19, !dbg !5797
  store i32 %6, i32* %transfer_buffer_length, align 8, !dbg !5798
  %8 = load void (%struct.urb*)*, void (%struct.urb*)** %complete_fn.addr, align 8, !dbg !5799
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5800
  %complete = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 28, !dbg !5801
  store void (%struct.urb*)* %8, void (%struct.urb*)** %complete, align 8, !dbg !5802
  %10 = load i8*, i8** %context.addr, align 8, !dbg !5803
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5804
  %context4 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 27, !dbg !5805
  store i8* %10, i8** %context4, align 8, !dbg !5806
  ret void, !dbg !5807
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ttusbir_bulk_complete(%struct.urb* %urb) #2 !dbg !5808 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5809, metadata !DIExpression()), !dbg !5813
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5817, metadata !DIExpression()), !dbg !5819
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5821, metadata !DIExpression()), !dbg !5822
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5823, metadata !DIExpression()), !dbg !5824
  %urb.addr = alloca %struct.urb*, align 8
  %tt = alloca %struct.ttusbir*, align 8
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5825, metadata !DIExpression()), !dbg !5826
  call void @llvm.dbg.declare(metadata %struct.ttusbir** %tt, metadata !5827, metadata !DIExpression()), !dbg !5828
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5829
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !5830
  %1 = load i8*, i8** %context, align 8, !dbg !5830
  %2 = bitcast i8* %1 to %struct.ttusbir*, !dbg !5829
  store %struct.ttusbir* %2, %struct.ttusbir** %tt, align 8, !dbg !5828
  %3 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5831
  %led_complete = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %3, i32 0, i32 11, !dbg !5832
  store %struct.atomic_t* %led_complete, %struct.atomic_t** %v.addr.i, align 8
  %4 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5833
  %5 = bitcast %struct.atomic_t* %4 to i8*, !dbg !5833
  store i8* %5, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5834
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5835
  %conv.i.i = trunc i64 %7 to i32, !dbg !5835
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %6, i32 %conv.i.i) #11, !dbg !5836
  %8 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5837
  %9 = load i64, i64* %size.addr.i.i, align 8, !dbg !5837
  call void @kcsan_check_access(i8* %8, i64 %9, i32 7) #11, !dbg !5837
  %10 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5838
  store %struct.atomic_t* %10, %struct.atomic_t** %v.addr.i1.i, align 8
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5839
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %11, i32 0, i32 0, !dbg !5840
  call void asm sideeffect "decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #12, !dbg !5841, !srcloc !5842
  %12 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5843
  %status = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 12, !dbg !5844
  %13 = load i32, i32* %status, align 8, !dbg !5844
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb
    i32 -104, label %sw.bb1
    i32 -2, label %sw.bb1
    i32 -108, label %sw.bb1
    i32 -32, label %sw.bb2
  ], !dbg !5845

sw.bb:                                            ; preds = %entry
  br label %sw.epilog, !dbg !5846

sw.bb1:                                           ; preds = %entry, %entry, %entry
  %14 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5848
  %call = call i32 @usb_unlink_urb(%struct.urb* %14) #9, !dbg !5849
  br label %return, !dbg !5850

sw.bb2:                                           ; preds = %entry
  br label %sw.default, !dbg !5850

sw.default:                                       ; preds = %entry, %sw.bb2
  br label %sw.epilog, !dbg !5851

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %15 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5852
  call void @ttusbir_set_led(%struct.ttusbir* %15) #9, !dbg !5853
  br label %return, !dbg !5854

return:                                           ; preds = %sw.epilog, %sw.bb1
  ret void, !dbg !5854
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ttusbir_brightness_set(%struct.led_classdev* %led_dev, i32 %brightness) #2 !dbg !5855 {
entry:
  %led_dev.addr = alloca %struct.led_classdev*, align 8
  %brightness.addr = alloca i32, align 4
  %tt = alloca %struct.ttusbir*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ttusbir*, align 8
  store %struct.led_classdev* %led_dev, %struct.led_classdev** %led_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_dev.addr, metadata !5856, metadata !DIExpression()), !dbg !5857
  store i32 %brightness, i32* %brightness.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %brightness.addr, metadata !5858, metadata !DIExpression()), !dbg !5859
  call void @llvm.dbg.declare(metadata %struct.ttusbir** %tt, metadata !5860, metadata !DIExpression()), !dbg !5861
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5862, metadata !DIExpression()), !dbg !5864
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_dev.addr, align 8, !dbg !5864
  %1 = bitcast %struct.led_classdev* %0 to i8*, !dbg !5864
  store i8* %1, i8** %__mptr, align 8, !dbg !5864
  br label %do.body, !dbg !5864

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5865

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5864
  %add.ptr = getelementptr i8, i8* %2, i64 -56, !dbg !5864
  %3 = bitcast i8* %add.ptr to %struct.ttusbir*, !dbg !5864
  store %struct.ttusbir* %3, %struct.ttusbir** %tmp, align 8, !dbg !5865
  %4 = load %struct.ttusbir*, %struct.ttusbir** %tmp, align 8, !dbg !5864
  store %struct.ttusbir* %4, %struct.ttusbir** %tt, align 8, !dbg !5861
  %5 = load i32, i32* %brightness.addr, align 4, !dbg !5867
  %cmp = icmp ne i32 %5, 0, !dbg !5868
  %6 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5869
  %led_on = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %6, i32 0, i32 9, !dbg !5870
  %frombool = zext i1 %cmp to i8, !dbg !5871
  store i8 %frombool, i8* %led_on, align 8, !dbg !5871
  %7 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5872
  call void @ttusbir_set_led(%struct.ttusbir* %7) #9, !dbg !5873
  ret void, !dbg !5874
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ttusbir_brightness_get(%struct.led_classdev* %led_dev) #2 !dbg !5875 {
entry:
  %led_dev.addr = alloca %struct.led_classdev*, align 8
  %tt = alloca %struct.ttusbir*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ttusbir*, align 8
  store %struct.led_classdev* %led_dev, %struct.led_classdev** %led_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_dev.addr, metadata !5876, metadata !DIExpression()), !dbg !5877
  call void @llvm.dbg.declare(metadata %struct.ttusbir** %tt, metadata !5878, metadata !DIExpression()), !dbg !5879
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5880, metadata !DIExpression()), !dbg !5882
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_dev.addr, align 8, !dbg !5882
  %1 = bitcast %struct.led_classdev* %0 to i8*, !dbg !5882
  store i8* %1, i8** %__mptr, align 8, !dbg !5882
  br label %do.body, !dbg !5882

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5883

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5882
  %add.ptr = getelementptr i8, i8* %2, i64 -56, !dbg !5882
  %3 = bitcast i8* %add.ptr to %struct.ttusbir*, !dbg !5882
  store %struct.ttusbir* %3, %struct.ttusbir** %tmp, align 8, !dbg !5883
  %4 = load %struct.ttusbir*, %struct.ttusbir** %tmp, align 8, !dbg !5882
  store %struct.ttusbir* %4, %struct.ttusbir** %tt, align 8, !dbg !5879
  %5 = load %struct.ttusbir*, %struct.ttusbir** %tt, align 8, !dbg !5885
  %led_on = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %5, i32 0, i32 9, !dbg !5886
  %6 = load i8, i8* %led_on, align 8, !dbg !5886
  %tobool = trunc i8 %6 to i1, !dbg !5886
  %7 = zext i1 %tobool to i64, !dbg !5885
  %cond = select i1 %tobool, i32 255, i32 0, !dbg !5885
  ret i32 %cond, !dbg !5887
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @led_classdev_register(%struct.device* %parent, %struct.led_classdev* %led_cdev) #2 !dbg !5888 {
entry:
  %parent.addr = alloca %struct.device*, align 8
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !5891, metadata !DIExpression()), !dbg !5892
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !5893, metadata !DIExpression()), !dbg !5894
  %0 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !5895
  %1 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !5896
  %call = call i32 @led_classdev_register_ext(%struct.device* %0, %struct.led_classdev* %1, %struct.led_init_data* null) #9, !dbg !5897
  ret i32 %call, !dbg !5898
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_make_path(%struct.usb_device* %dev, i8* %buf, i64 %size) #2 !dbg !5899 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %actual = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5902, metadata !DIExpression()), !dbg !5903
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5904, metadata !DIExpression()), !dbg !5905
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5906, metadata !DIExpression()), !dbg !5907
  call void @llvm.dbg.declare(metadata i32* %actual, metadata !5908, metadata !DIExpression()), !dbg !5909
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !5910
  %1 = load i64, i64* %size.addr, align 8, !dbg !5911
  %2 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5912
  %bus = getelementptr inbounds %struct.usb_device, %struct.usb_device* %2, i32 0, i32 12, !dbg !5913
  %3 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !5913
  %bus_name = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %3, i32 0, i32 3, !dbg !5914
  %4 = load i8*, i8** %bus_name, align 8, !dbg !5914
  %5 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5915
  %devpath = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 1, !dbg !5916
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %devpath, i64 0, i64 0, !dbg !5915
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* %4, i8* %arraydecay) #9, !dbg !5917
  store i32 %call, i32* %actual, align 4, !dbg !5918
  %6 = load i32, i32* %actual, align 4, !dbg !5919
  %7 = load i64, i64* %size.addr, align 8, !dbg !5920
  %conv = trunc i64 %7 to i32, !dbg !5921
  %cmp = icmp sge i32 %6, %conv, !dbg !5922
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5923

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !5923

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %actual, align 4, !dbg !5924
  br label %cond.end, !dbg !5923

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %8, %cond.false ], !dbg !5923
  ret i32 %cond, !dbg !5925
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_to_input_id(%struct.usb_device* %dev, %struct.input_id* %id) #2 !dbg !5926 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %id.addr = alloca %struct.input_id*, align 8
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5933, metadata !DIExpression()), !dbg !5934
  store %struct.input_id* %id, %struct.input_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_id** %id.addr, metadata !5935, metadata !DIExpression()), !dbg !5936
  %0 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5937
  %bustype = getelementptr inbounds %struct.input_id, %struct.input_id* %0, i32 0, i32 0, !dbg !5938
  store i16 3, i16* %bustype, align 2, !dbg !5939
  %1 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5940
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %1, i32 0, i32 15, !dbg !5940
  %idVendor = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 7, !dbg !5940
  %2 = load i16, i16* %idVendor, align 8, !dbg !5940
  %3 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5941
  %vendor = getelementptr inbounds %struct.input_id, %struct.input_id* %3, i32 0, i32 1, !dbg !5942
  store i16 %2, i16* %vendor, align 2, !dbg !5943
  %4 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5944
  %descriptor1 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %4, i32 0, i32 15, !dbg !5944
  %idProduct = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor1, i32 0, i32 8, !dbg !5944
  %5 = load i16, i16* %idProduct, align 2, !dbg !5944
  %6 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5945
  %product = getelementptr inbounds %struct.input_id, %struct.input_id* %6, i32 0, i32 2, !dbg !5946
  store i16 %5, i16* %product, align 2, !dbg !5947
  %7 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5948
  %descriptor2 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 15, !dbg !5948
  %bcdDevice = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor2, i32 0, i32 9, !dbg !5948
  %8 = load i16, i16* %bcdDevice, align 4, !dbg !5948
  %9 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5949
  %version = getelementptr inbounds %struct.input_id, %struct.input_id* %9, i32 0, i32 3, !dbg !5950
  store i16 %8, i16* %version, align 2, !dbg !5951
  ret void, !dbg !5952
}

; Function Attrs: noredzone
declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_set_intfdata(%struct.usb_interface* %intf, i8* %data) #2 !dbg !5953 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5956, metadata !DIExpression()), !dbg !5957
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5958, metadata !DIExpression()), !dbg !5959
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5960
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5961
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5962
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #9, !dbg !5963
  ret void, !dbg !5964
}

; Function Attrs: noredzone
declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @rc_unregister_device(%struct.rc_dev*) #1

; Function Attrs: noredzone
declare dso_local void @led_classdev_unregister(%struct.led_classdev*) #1

; Function Attrs: noredzone
declare dso_local void @usb_kill_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local void @usb_free_coherent(%struct.usb_device*, i64, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noredzone
declare dso_local void @rc_free_device(%struct.rc_dev*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5965 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5969, metadata !DIExpression()), !dbg !5974
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5976, metadata !DIExpression()), !dbg !5977
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5978, metadata !DIExpression()), !dbg !5979
  %0 = load i64, i64* %size.addr, align 8, !dbg !5980
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5982
  br i1 %1, label %if.then, label %if.end447, !dbg !5983

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5984
  %tobool = icmp ne i64 %2, 0, !dbg !5984
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5987

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5988
  br label %return, !dbg !5988

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5989
  %cmp = icmp ult i64 %3, 4096, !dbg !5991
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5992

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5993
  br label %return, !dbg !5993

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub = sub i64 %4, 1, !dbg !5994
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5994
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5994

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub4 = sub i64 %6, 1, !dbg !5994
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5994
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5994

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub6 = sub i64 %8, 1, !dbg !5994
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5994
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5994

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5994

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub9 = sub i64 %9, 1, !dbg !5994
  %and = and i64 %sub9, -9223372036854775808, !dbg !5994
  %tobool10 = icmp ne i64 %and, 0, !dbg !5994
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5994

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5994

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub13 = sub i64 %10, 1, !dbg !5994
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5994
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5994
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5994

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5994

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub18 = sub i64 %11, 1, !dbg !5994
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5994
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5994
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5994

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5994

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub23 = sub i64 %12, 1, !dbg !5994
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5994
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5994
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5994

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5994

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub28 = sub i64 %13, 1, !dbg !5994
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5994
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5994
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5994

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5994

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub33 = sub i64 %14, 1, !dbg !5994
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5994
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5994
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5994

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5994

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub38 = sub i64 %15, 1, !dbg !5994
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5994
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5994
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5994

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5994

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub43 = sub i64 %16, 1, !dbg !5994
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5994
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5994
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5994

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5994

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub48 = sub i64 %17, 1, !dbg !5994
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5994
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5994
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5994

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5994

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub53 = sub i64 %18, 1, !dbg !5994
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5994
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5994
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5994

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5994

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub58 = sub i64 %19, 1, !dbg !5994
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5994
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5994
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5994

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5994

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub63 = sub i64 %20, 1, !dbg !5994
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5994
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5994
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5994

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5994

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub68 = sub i64 %21, 1, !dbg !5994
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5994
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5994
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5994

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5994

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub73 = sub i64 %22, 1, !dbg !5994
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5994
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5994
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5994

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5994

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub78 = sub i64 %23, 1, !dbg !5994
  %and79 = and i64 %sub78, 562949953421312, !dbg !5994
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5994
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5994

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5994

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub83 = sub i64 %24, 1, !dbg !5994
  %and84 = and i64 %sub83, 281474976710656, !dbg !5994
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5994
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5994

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5994

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub88 = sub i64 %25, 1, !dbg !5994
  %and89 = and i64 %sub88, 140737488355328, !dbg !5994
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5994
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5994

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5994

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub93 = sub i64 %26, 1, !dbg !5994
  %and94 = and i64 %sub93, 70368744177664, !dbg !5994
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5994
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5994

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5994

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub98 = sub i64 %27, 1, !dbg !5994
  %and99 = and i64 %sub98, 35184372088832, !dbg !5994
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5994
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5994

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5994

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub103 = sub i64 %28, 1, !dbg !5994
  %and104 = and i64 %sub103, 17592186044416, !dbg !5994
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5994
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5994

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5994

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub108 = sub i64 %29, 1, !dbg !5994
  %and109 = and i64 %sub108, 8796093022208, !dbg !5994
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5994
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5994

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5994

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub113 = sub i64 %30, 1, !dbg !5994
  %and114 = and i64 %sub113, 4398046511104, !dbg !5994
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5994
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5994

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5994

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub118 = sub i64 %31, 1, !dbg !5994
  %and119 = and i64 %sub118, 2199023255552, !dbg !5994
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5994
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5994

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5994

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub123 = sub i64 %32, 1, !dbg !5994
  %and124 = and i64 %sub123, 1099511627776, !dbg !5994
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5994
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5994

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5994

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub128 = sub i64 %33, 1, !dbg !5994
  %and129 = and i64 %sub128, 549755813888, !dbg !5994
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5994
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5994

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5994

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub133 = sub i64 %34, 1, !dbg !5994
  %and134 = and i64 %sub133, 274877906944, !dbg !5994
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5994
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5994

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5994

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub138 = sub i64 %35, 1, !dbg !5994
  %and139 = and i64 %sub138, 137438953472, !dbg !5994
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5994
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5994

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5994

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub143 = sub i64 %36, 1, !dbg !5994
  %and144 = and i64 %sub143, 68719476736, !dbg !5994
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5994
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5994

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5994

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub148 = sub i64 %37, 1, !dbg !5994
  %and149 = and i64 %sub148, 34359738368, !dbg !5994
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5994
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5994

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5994

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub153 = sub i64 %38, 1, !dbg !5994
  %and154 = and i64 %sub153, 17179869184, !dbg !5994
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5994
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5994

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5994

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub158 = sub i64 %39, 1, !dbg !5994
  %and159 = and i64 %sub158, 8589934592, !dbg !5994
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5994
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5994

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5994

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub163 = sub i64 %40, 1, !dbg !5994
  %and164 = and i64 %sub163, 4294967296, !dbg !5994
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5994
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5994

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5994

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub168 = sub i64 %41, 1, !dbg !5994
  %and169 = and i64 %sub168, 2147483648, !dbg !5994
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5994
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5994

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5994

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub173 = sub i64 %42, 1, !dbg !5994
  %and174 = and i64 %sub173, 1073741824, !dbg !5994
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5994
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5994

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5994

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub178 = sub i64 %43, 1, !dbg !5994
  %and179 = and i64 %sub178, 536870912, !dbg !5994
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5994
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5994

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5994

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub183 = sub i64 %44, 1, !dbg !5994
  %and184 = and i64 %sub183, 268435456, !dbg !5994
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5994
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5994

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5994

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub188 = sub i64 %45, 1, !dbg !5994
  %and189 = and i64 %sub188, 134217728, !dbg !5994
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5994
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5994

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5994

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub193 = sub i64 %46, 1, !dbg !5994
  %and194 = and i64 %sub193, 67108864, !dbg !5994
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5994
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5994

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5994

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub198 = sub i64 %47, 1, !dbg !5994
  %and199 = and i64 %sub198, 33554432, !dbg !5994
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5994
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5994

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5994

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub203 = sub i64 %48, 1, !dbg !5994
  %and204 = and i64 %sub203, 16777216, !dbg !5994
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5994
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5994

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5994

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub208 = sub i64 %49, 1, !dbg !5994
  %and209 = and i64 %sub208, 8388608, !dbg !5994
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5994
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5994

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5994

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub213 = sub i64 %50, 1, !dbg !5994
  %and214 = and i64 %sub213, 4194304, !dbg !5994
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5994
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5994

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5994

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub218 = sub i64 %51, 1, !dbg !5994
  %and219 = and i64 %sub218, 2097152, !dbg !5994
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5994
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5994

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5994

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub223 = sub i64 %52, 1, !dbg !5994
  %and224 = and i64 %sub223, 1048576, !dbg !5994
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5994
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5994

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5994

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub228 = sub i64 %53, 1, !dbg !5994
  %and229 = and i64 %sub228, 524288, !dbg !5994
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5994
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5994

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5994

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub233 = sub i64 %54, 1, !dbg !5994
  %and234 = and i64 %sub233, 262144, !dbg !5994
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5994
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5994

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5994

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub238 = sub i64 %55, 1, !dbg !5994
  %and239 = and i64 %sub238, 131072, !dbg !5994
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5994
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5994

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5994

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub243 = sub i64 %56, 1, !dbg !5994
  %and244 = and i64 %sub243, 65536, !dbg !5994
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5994
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5994

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5994

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub248 = sub i64 %57, 1, !dbg !5994
  %and249 = and i64 %sub248, 32768, !dbg !5994
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5994
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5994

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5994

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub253 = sub i64 %58, 1, !dbg !5994
  %and254 = and i64 %sub253, 16384, !dbg !5994
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5994
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5994

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5994

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub258 = sub i64 %59, 1, !dbg !5994
  %and259 = and i64 %sub258, 8192, !dbg !5994
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5994
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5994

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5994

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub263 = sub i64 %60, 1, !dbg !5994
  %and264 = and i64 %sub263, 4096, !dbg !5994
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5994
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5994

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5994

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub268 = sub i64 %61, 1, !dbg !5994
  %and269 = and i64 %sub268, 2048, !dbg !5994
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5994
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5994

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5994

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub273 = sub i64 %62, 1, !dbg !5994
  %and274 = and i64 %sub273, 1024, !dbg !5994
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5994
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5994

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5994

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub278 = sub i64 %63, 1, !dbg !5994
  %and279 = and i64 %sub278, 512, !dbg !5994
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5994
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5994

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5994

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub283 = sub i64 %64, 1, !dbg !5994
  %and284 = and i64 %sub283, 256, !dbg !5994
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5994
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5994

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5994

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub288 = sub i64 %65, 1, !dbg !5994
  %and289 = and i64 %sub288, 128, !dbg !5994
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5994
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5994

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5994

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub293 = sub i64 %66, 1, !dbg !5994
  %and294 = and i64 %sub293, 64, !dbg !5994
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5994
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5994

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5994

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub298 = sub i64 %67, 1, !dbg !5994
  %and299 = and i64 %sub298, 32, !dbg !5994
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5994
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5994

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5994

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub303 = sub i64 %68, 1, !dbg !5994
  %and304 = and i64 %sub303, 16, !dbg !5994
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5994
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5994

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5994

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub308 = sub i64 %69, 1, !dbg !5994
  %and309 = and i64 %sub308, 8, !dbg !5994
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5994
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5994

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5994

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub313 = sub i64 %70, 1, !dbg !5994
  %and314 = and i64 %sub313, 4, !dbg !5994
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5994
  %71 = zext i1 %tobool315 to i64, !dbg !5994
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5994
  br label %cond.end, !dbg !5994

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5994
  br label %cond.end317, !dbg !5994

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5994
  br label %cond.end319, !dbg !5994

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5994
  br label %cond.end321, !dbg !5994

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5994
  br label %cond.end323, !dbg !5994

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5994
  br label %cond.end325, !dbg !5994

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5994
  br label %cond.end327, !dbg !5994

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5994
  br label %cond.end329, !dbg !5994

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5994
  br label %cond.end331, !dbg !5994

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5994
  br label %cond.end333, !dbg !5994

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5994
  br label %cond.end335, !dbg !5994

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5994
  br label %cond.end337, !dbg !5994

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5994
  br label %cond.end339, !dbg !5994

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5994
  br label %cond.end341, !dbg !5994

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5994
  br label %cond.end343, !dbg !5994

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5994
  br label %cond.end345, !dbg !5994

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5994
  br label %cond.end347, !dbg !5994

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5994
  br label %cond.end349, !dbg !5994

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5994
  br label %cond.end351, !dbg !5994

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5994
  br label %cond.end353, !dbg !5994

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5994
  br label %cond.end355, !dbg !5994

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5994
  br label %cond.end357, !dbg !5994

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5994
  br label %cond.end359, !dbg !5994

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5994
  br label %cond.end361, !dbg !5994

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5994
  br label %cond.end363, !dbg !5994

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5994
  br label %cond.end365, !dbg !5994

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5994
  br label %cond.end367, !dbg !5994

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5994
  br label %cond.end369, !dbg !5994

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5994
  br label %cond.end371, !dbg !5994

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5994
  br label %cond.end373, !dbg !5994

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5994
  br label %cond.end375, !dbg !5994

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5994
  br label %cond.end377, !dbg !5994

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5994
  br label %cond.end379, !dbg !5994

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5994
  br label %cond.end381, !dbg !5994

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5994
  br label %cond.end383, !dbg !5994

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5994
  br label %cond.end385, !dbg !5994

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5994
  br label %cond.end387, !dbg !5994

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5994
  br label %cond.end389, !dbg !5994

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5994
  br label %cond.end391, !dbg !5994

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5994
  br label %cond.end393, !dbg !5994

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5994
  br label %cond.end395, !dbg !5994

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5994
  br label %cond.end397, !dbg !5994

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5994
  br label %cond.end399, !dbg !5994

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5994
  br label %cond.end401, !dbg !5994

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5994
  br label %cond.end403, !dbg !5994

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5994
  br label %cond.end405, !dbg !5994

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5994
  br label %cond.end407, !dbg !5994

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5994
  br label %cond.end409, !dbg !5994

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5994
  br label %cond.end411, !dbg !5994

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5994
  br label %cond.end413, !dbg !5994

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5994
  br label %cond.end415, !dbg !5994

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5994
  br label %cond.end417, !dbg !5994

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5994
  br label %cond.end419, !dbg !5994

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5994
  br label %cond.end421, !dbg !5994

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5994
  br label %cond.end423, !dbg !5994

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5994
  br label %cond.end425, !dbg !5994

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5994
  br label %cond.end427, !dbg !5994

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5994
  br label %cond.end429, !dbg !5994

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5994
  br label %cond.end431, !dbg !5994

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5994
  br label %cond.end433, !dbg !5994

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5994
  br label %cond.end435, !dbg !5994

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5994
  br label %cond.end437, !dbg !5994

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5994
  br label %cond.end440, !dbg !5994

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5994

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5994
  br label %cond.end444, !dbg !5994

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5994
  %sub443 = sub i64 %72, 1, !dbg !5994
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !5994
  br label %cond.end444, !dbg !5994

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5994
  %sub446 = sub i32 %cond445, 12, !dbg !5995
  %add = add i32 %sub446, 1, !dbg !5996
  store i32 %add, i32* %retval, align 4, !dbg !5997
  br label %return, !dbg !5997

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5998
  %dec = add i64 %73, -1, !dbg !5998
  store i64 %dec, i64* %size.addr, align 8, !dbg !5998
  %74 = load i64, i64* %size.addr, align 8, !dbg !5999
  %shr = lshr i64 %74, 12, !dbg !5999
  store i64 %shr, i64* %size.addr, align 8, !dbg !5999
  %75 = load i64, i64* %size.addr, align 8, !dbg !6000
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5977
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6001
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6002
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !6001, !srcloc !6003
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6001
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6004
  %add.i = add i32 %79, 1, !dbg !6005
  store i32 %add.i, i32* %retval, align 4, !dbg !6006
  br label %return, !dbg !6006

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6007
  ret i32 %80, !dbg !6007
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !6008 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5969, metadata !DIExpression()), !dbg !6012
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5976, metadata !DIExpression()), !dbg !6014
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6015, metadata !DIExpression()), !dbg !6016
  %0 = load i64, i64* %n.addr, align 8, !dbg !6017
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6014
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6018
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6019
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !6018, !srcloc !6003
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6018
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6020
  %add.i = add i32 %4, 1, !dbg !6021
  %sub = sub i32 %add.i, 1, !dbg !6022
  ret i32 %sub, !dbg !6023
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !6024 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6028, metadata !DIExpression()), !dbg !6029
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6030, metadata !DIExpression()), !dbg !6031
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6032, metadata !DIExpression()), !dbg !6033
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6034, metadata !DIExpression()), !dbg !6035
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6036
  ret i8* %0, !dbg !6037
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ttusbir_process_ir_data(%struct.ttusbir* %tt, i8* %buf) #2 !dbg !6038 {
entry:
  %x.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr.i, metadata !6042, metadata !DIExpression()), !dbg !6044
  %r.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %r.i, metadata !6052, metadata !DIExpression()), !dbg !6053
  %word.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %word.addr.i, metadata !6054, metadata !DIExpression()), !dbg !6058
  %tt.addr = alloca %struct.ttusbir*, align 8
  %buf.addr = alloca i8*, align 8
  %rawir = alloca %struct.ir_raw_event, align 4
  %i = alloca i32, align 4
  %v = alloca i32, align 4
  %b = alloca i32, align 4
  %event = alloca i8, align 1
  store %struct.ttusbir* %tt, %struct.ttusbir** %tt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ttusbir** %tt.addr, metadata !6061, metadata !DIExpression()), !dbg !6062
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6063, metadata !DIExpression()), !dbg !6064
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event* %rawir, metadata !6065, metadata !DIExpression()), !dbg !6078
  %0 = bitcast %struct.ir_raw_event* %rawir to i8*, !dbg !6078
  call void @llvm.memset.p0i8.i64(i8* align 4 %0, i8 0, i64 8, i1 false), !dbg !6078
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6079, metadata !DIExpression()), !dbg !6080
  call void @llvm.dbg.declare(metadata i32* %v, metadata !6081, metadata !DIExpression()), !dbg !6082
  call void @llvm.dbg.declare(metadata i32* %b, metadata !6083, metadata !DIExpression()), !dbg !6084
  call void @llvm.dbg.declare(metadata i8* %event, metadata !6085, metadata !DIExpression()), !dbg !6086
  store i8 0, i8* %event, align 1, !dbg !6086
  store i32 0, i32* %i, align 4, !dbg !6087
  br label %for.cond, !dbg !6088

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !6089
  %cmp = icmp ult i32 %1, 128, !dbg !6090
  br i1 %cmp, label %for.body, label %for.end, !dbg !6091

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !6092
  %3 = load i32, i32* %i, align 4, !dbg !6093
  %idxprom = zext i32 %3 to i64, !dbg !6092
  %arrayidx = getelementptr i8, i8* %2, i64 %idxprom, !dbg !6092
  %4 = load i8, i8* %arrayidx, align 1, !dbg !6092
  %conv = zext i8 %4 to i32, !dbg !6092
  %and = and i32 %conv, 254, !dbg !6094
  store i32 %and, i32* %v, align 4, !dbg !6095
  %5 = load i32, i32* %v, align 4, !dbg !6096
  switch i32 %5, label %sw.default [
    i32 254, label %sw.bb
    i32 0, label %sw.bb1
  ], !dbg !6097

sw.bb:                                            ; preds = %for.body
  %pulse = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 2, !dbg !6098
  %bf.load = load i8, i8* %pulse, align 1, !dbg !6099
  %bf.clear = and i8 %bf.load, -2, !dbg !6099
  store i8 %bf.clear, i8* %pulse, align 1, !dbg !6099
  %6 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 0, !dbg !6100
  %duration = bitcast %union.anon.66* %6 to i32*, !dbg !6100
  store i32 62, i32* %duration, align 4, !dbg !6101
  %7 = load %struct.ttusbir*, %struct.ttusbir** %tt.addr, align 8, !dbg !6102
  %rc = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %7, i32 0, i32 0, !dbg !6104
  %8 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !6104
  %call = call i32 @ir_raw_event_store_with_filter(%struct.rc_dev* %8, %struct.ir_raw_event* %rawir) #9, !dbg !6105
  %tobool = icmp ne i32 %call, 0, !dbg !6105
  br i1 %tobool, label %if.then, label %if.end, !dbg !6106

if.then:                                          ; preds = %sw.bb
  store i8 1, i8* %event, align 1, !dbg !6107
  br label %if.end, !dbg !6108

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog, !dbg !6109

sw.bb1:                                           ; preds = %for.body
  %pulse2 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 2, !dbg !6110
  %bf.load3 = load i8, i8* %pulse2, align 1, !dbg !6111
  %bf.clear4 = and i8 %bf.load3, -2, !dbg !6111
  %bf.set = or i8 %bf.clear4, 1, !dbg !6111
  store i8 %bf.set, i8* %pulse2, align 1, !dbg !6111
  %9 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 0, !dbg !6112
  %duration5 = bitcast %union.anon.66* %9 to i32*, !dbg !6112
  store i32 62, i32* %duration5, align 4, !dbg !6113
  %10 = load %struct.ttusbir*, %struct.ttusbir** %tt.addr, align 8, !dbg !6114
  %rc6 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %10, i32 0, i32 0, !dbg !6116
  %11 = load %struct.rc_dev*, %struct.rc_dev** %rc6, align 8, !dbg !6116
  %call7 = call i32 @ir_raw_event_store_with_filter(%struct.rc_dev* %11, %struct.ir_raw_event* %rawir) #9, !dbg !6117
  %tobool8 = icmp ne i32 %call7, 0, !dbg !6117
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !6118

if.then9:                                         ; preds = %sw.bb1
  store i8 1, i8* %event, align 1, !dbg !6119
  br label %if.end10, !dbg !6120

if.end10:                                         ; preds = %if.then9, %sw.bb1
  br label %sw.epilog, !dbg !6121

sw.default:                                       ; preds = %for.body
  %12 = load i32, i32* %v, align 4, !dbg !6122
  %and11 = and i32 %12, 2, !dbg !6123
  %tobool12 = icmp ne i32 %and11, 0, !dbg !6123
  br i1 %tobool12, label %if.then13, label %if.else, !dbg !6124

if.then13:                                        ; preds = %sw.default
  %13 = load i32, i32* %v, align 4, !dbg !6125
  %or = or i32 %13, 1, !dbg !6126
  %conv14 = zext i32 %or to i64, !dbg !6125
  store i64 %conv14, i64* %word.addr.i, align 8
  %14 = load i64, i64* %word.addr.i, align 8, !dbg !6127
  %neg.i = xor i64 %14, -1, !dbg !6128
  %15 = call i64 asm "rep; bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %neg.i) #15, !dbg !6129, !srcloc !6130
  store i64 %15, i64* %word.addr.i, align 8, !dbg !6129
  %16 = load i64, i64* %word.addr.i, align 8, !dbg !6131
  %conv16 = trunc i64 %16 to i32, !dbg !6132
  store i32 %conv16, i32* %b, align 4, !dbg !6133
  %pulse17 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 2, !dbg !6134
  %bf.load18 = load i8, i8* %pulse17, align 1, !dbg !6135
  %bf.clear19 = and i8 %bf.load18, -2, !dbg !6135
  %bf.set20 = or i8 %bf.clear19, 1, !dbg !6135
  store i8 %bf.set20, i8* %pulse17, align 1, !dbg !6135
  br label %if.end25, !dbg !6136

if.else:                                          ; preds = %sw.default
  %17 = load i32, i32* %v, align 4, !dbg !6137
  store i32 %17, i32* %x.addr.i, align 4
  %18 = load i32, i32* %x.addr.i, align 4, !dbg !6138
  %19 = call i32 asm "bsfl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %18, i32 -1) #14, !dbg !6139, !srcloc !6140
  store i32 %19, i32* %r.i, align 4, !dbg !6139
  %20 = load i32, i32* %r.i, align 4, !dbg !6141
  %add.i = add i32 %20, 1, !dbg !6142
  %sub = sub i32 %add.i, 1, !dbg !6143
  store i32 %sub, i32* %b, align 4, !dbg !6144
  %pulse22 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 2, !dbg !6145
  %bf.load23 = load i8, i8* %pulse22, align 1, !dbg !6146
  %bf.clear24 = and i8 %bf.load23, -2, !dbg !6146
  store i8 %bf.clear24, i8* %pulse22, align 1, !dbg !6146
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then13
  %21 = load i32, i32* %b, align 4, !dbg !6147
  %sub26 = sub i32 8, %21, !dbg !6148
  %mul = mul i32 7, %sub26, !dbg !6149
  %22 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 0, !dbg !6150
  %duration27 = bitcast %union.anon.66* %22 to i32*, !dbg !6150
  store i32 %mul, i32* %duration27, align 4, !dbg !6151
  %23 = load %struct.ttusbir*, %struct.ttusbir** %tt.addr, align 8, !dbg !6152
  %rc28 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %23, i32 0, i32 0, !dbg !6154
  %24 = load %struct.rc_dev*, %struct.rc_dev** %rc28, align 8, !dbg !6154
  %call29 = call i32 @ir_raw_event_store_with_filter(%struct.rc_dev* %24, %struct.ir_raw_event* %rawir) #9, !dbg !6155
  %tobool30 = icmp ne i32 %call29, 0, !dbg !6155
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !6156

if.then31:                                        ; preds = %if.end25
  store i8 1, i8* %event, align 1, !dbg !6157
  br label %if.end32, !dbg !6158

if.end32:                                         ; preds = %if.then31, %if.end25
  %pulse33 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 2, !dbg !6159
  %bf.load34 = load i8, i8* %pulse33, align 1, !dbg !6159
  %bf.clear35 = and i8 %bf.load34, 1, !dbg !6159
  %bf.cast = zext i8 %bf.clear35 to i32, !dbg !6159
  %tobool36 = icmp ne i32 %bf.cast, 0, !dbg !6160
  %lnot = xor i1 %tobool36, true, !dbg !6160
  %lnot.ext = zext i1 %lnot to i32, !dbg !6160
  %pulse37 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 2, !dbg !6161
  %25 = trunc i32 %lnot.ext to i8, !dbg !6162
  %bf.load38 = load i8, i8* %pulse37, align 1, !dbg !6162
  %bf.value = and i8 %25, 1, !dbg !6162
  %bf.clear39 = and i8 %bf.load38, -2, !dbg !6162
  %bf.set40 = or i8 %bf.clear39, %bf.value, !dbg !6162
  store i8 %bf.set40, i8* %pulse37, align 1, !dbg !6162
  %bf.result.cast = zext i8 %bf.value to i32, !dbg !6162
  %26 = load i32, i32* %b, align 4, !dbg !6163
  %mul41 = mul i32 7, %26, !dbg !6164
  %27 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 0, !dbg !6165
  %duration42 = bitcast %union.anon.66* %27 to i32*, !dbg !6165
  store i32 %mul41, i32* %duration42, align 4, !dbg !6166
  %28 = load %struct.ttusbir*, %struct.ttusbir** %tt.addr, align 8, !dbg !6167
  %rc43 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %28, i32 0, i32 0, !dbg !6169
  %29 = load %struct.rc_dev*, %struct.rc_dev** %rc43, align 8, !dbg !6169
  %call44 = call i32 @ir_raw_event_store_with_filter(%struct.rc_dev* %29, %struct.ir_raw_event* %rawir) #9, !dbg !6170
  %tobool45 = icmp ne i32 %call44, 0, !dbg !6170
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6171

if.then46:                                        ; preds = %if.end32
  store i8 1, i8* %event, align 1, !dbg !6172
  br label %if.end47, !dbg !6173

if.end47:                                         ; preds = %if.then46, %if.end32
  br label %sw.epilog, !dbg !6174

sw.epilog:                                        ; preds = %if.end47, %if.end10, %if.end
  br label %for.inc, !dbg !6175

for.inc:                                          ; preds = %sw.epilog
  %30 = load i32, i32* %i, align 4, !dbg !6176
  %inc = add i32 %30, 1, !dbg !6176
  store i32 %inc, i32* %i, align 4, !dbg !6176
  br label %for.cond, !dbg !6177, !llvm.loop !6178

for.end:                                          ; preds = %for.cond
  %31 = load i8, i8* %event, align 1, !dbg !6180
  %tobool48 = trunc i8 %31 to i1, !dbg !6180
  br i1 %tobool48, label %if.then49, label %if.end51, !dbg !6182

if.then49:                                        ; preds = %for.end
  %32 = load %struct.ttusbir*, %struct.ttusbir** %tt.addr, align 8, !dbg !6183
  %rc50 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %32, i32 0, i32 0, !dbg !6184
  %33 = load %struct.rc_dev*, %struct.rc_dev** %rc50, align 8, !dbg !6184
  call void @ir_raw_event_handle(%struct.rc_dev* %33) #9, !dbg !6185
  br label %if.end51, !dbg !6185

if.end51:                                         ; preds = %if.then49, %for.end
  ret void, !dbg !6186
}

; Function Attrs: noredzone
declare dso_local i32 @usb_unlink_urb(%struct.urb*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noredzone
declare dso_local i32 @ir_raw_event_store_with_filter(%struct.rc_dev*, %struct.ir_raw_event*) #1

; Function Attrs: noredzone
declare dso_local void @ir_raw_event_handle(%struct.rc_dev*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ttusbir_set_led(%struct.ttusbir* %tt) #2 !dbg !6187 {
entry:
  %v.addr.i1.i16 = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i16, metadata !5809, metadata !DIExpression()), !dbg !6190
  %v.addr.i.i17 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i17, metadata !5817, metadata !DIExpression()), !dbg !6197
  %size.addr.i.i18 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i18, metadata !5821, metadata !DIExpression()), !dbg !6199
  %v.addr.i19 = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i19, metadata !5823, metadata !DIExpression()), !dbg !6200
  %v.addr.i5.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i5.i.i.i, metadata !6201, metadata !DIExpression()), !dbg !6205
  %old.addr.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %old.addr.i.i.i.i, metadata !6218, metadata !DIExpression()), !dbg !6219
  %new.addr.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %new.addr.i.i.i.i, metadata !6220, metadata !DIExpression()), !dbg !6221
  %success.i.i.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %success.i.i.i.i, metadata !6222, metadata !DIExpression()), !dbg !6224
  %_old.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %_old.i.i.i.i, metadata !6225, metadata !DIExpression()), !dbg !6224
  %__old.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__old.i.i.i.i, metadata !6226, metadata !DIExpression()), !dbg !6224
  %__new.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__new.i.i.i.i, metadata !6227, metadata !DIExpression()), !dbg !6224
  %__ptr.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %__ptr.i.i.i.i, metadata !6228, metadata !DIExpression()), !dbg !6224
  %tmp.i.i.i.i = alloca i64, align 8
  %v.addr.i.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i.i, metadata !6229, metadata !DIExpression()), !dbg !6235
  %v.addr.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i, metadata !6237, metadata !DIExpression()), !dbg !6238
  %a.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i.i.i, metadata !6239, metadata !DIExpression()), !dbg !6240
  %u.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i.i.i, metadata !6241, metadata !DIExpression()), !dbg !6242
  %c.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %c.i.i.i, metadata !6243, metadata !DIExpression()), !dbg !6244
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !6245, metadata !DIExpression()), !dbg !6246
  %a.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i.i, metadata !6247, metadata !DIExpression()), !dbg !6248
  %u.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i.i, metadata !6249, metadata !DIExpression()), !dbg !6250
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5817, metadata !DIExpression()), !dbg !6251
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5821, metadata !DIExpression()), !dbg !6253
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !6254, metadata !DIExpression()), !dbg !6255
  %a.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i, metadata !6256, metadata !DIExpression()), !dbg !6257
  %u.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i, metadata !6258, metadata !DIExpression()), !dbg !6259
  %tt.addr = alloca %struct.ttusbir*, align 8
  %ret = alloca i32, align 4
  store %struct.ttusbir* %tt, %struct.ttusbir** %tt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ttusbir** %tt.addr, metadata !6260, metadata !DIExpression()), !dbg !6261
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6262, metadata !DIExpression()), !dbg !6263
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !6264, !srcloc !6265
  %0 = load %struct.ttusbir*, %struct.ttusbir** %tt.addr, align 8, !dbg !6266
  %led_on = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %0, i32 0, i32 9, !dbg !6267
  %1 = load i8, i8* %led_on, align 8, !dbg !6267
  %tobool = trunc i8 %1 to i1, !dbg !6267
  %conv = zext i1 %tobool to i32, !dbg !6266
  %2 = load %struct.ttusbir*, %struct.ttusbir** %tt.addr, align 8, !dbg !6268
  %is_led_on = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %2, i32 0, i32 10, !dbg !6269
  %3 = load i8, i8* %is_led_on, align 1, !dbg !6269
  %tobool1 = trunc i8 %3 to i1, !dbg !6269
  %conv2 = zext i1 %tobool1 to i32, !dbg !6268
  %cmp = icmp ne i32 %conv, %conv2, !dbg !6270
  br i1 %cmp, label %land.lhs.true, label %if.end15, !dbg !6271

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.ttusbir*, %struct.ttusbir** %tt.addr, align 8, !dbg !6272
  %udev = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %4, i32 0, i32 2, !dbg !6273
  %5 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !6273
  %tobool4 = icmp ne %struct.usb_device* %5, null, !dbg !6272
  br i1 %tobool4, label %land.lhs.true5, label %if.end15, !dbg !6274

land.lhs.true5:                                   ; preds = %land.lhs.true
  %6 = load %struct.ttusbir*, %struct.ttusbir** %tt.addr, align 8, !dbg !6275
  %led_complete = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %6, i32 0, i32 11, !dbg !6276
  store %struct.atomic_t* %led_complete, %struct.atomic_t** %v.addr.i, align 8
  store i32 1, i32* %a.addr.i, align 4
  store i32 1, i32* %u.addr.i, align 4
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6277
  %8 = bitcast %struct.atomic_t* %7 to i8*, !dbg !6277
  store i8* %8, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %9 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6278
  %10 = load i64, i64* %size.addr.i.i, align 8, !dbg !6279
  %conv.i.i = trunc i64 %10 to i32, !dbg !6279
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %9, i32 %conv.i.i) #11, !dbg !6280
  %11 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6281
  %12 = load i64, i64* %size.addr.i.i, align 8, !dbg !6281
  call void @kcsan_check_access(i8* %11, i64 %12, i32 7) #11, !dbg !6281
  %13 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6282
  %14 = load i32, i32* %a.addr.i, align 4, !dbg !6283
  %15 = load i32, i32* %u.addr.i, align 4, !dbg !6284
  store %struct.atomic_t* %13, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %14, i32* %a.addr.i.i, align 4
  store i32 %15, i32* %u.addr.i.i, align 4
  %16 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !6285
  %17 = load i32, i32* %a.addr.i.i, align 4, !dbg !6286
  %18 = load i32, i32* %u.addr.i.i, align 4, !dbg !6287
  store %struct.atomic_t* %16, %struct.atomic_t** %v.addr.i.i.i, align 8
  store i32 %17, i32* %a.addr.i.i.i, align 4
  store i32 %18, i32* %u.addr.i.i.i, align 4
  %19 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !6288
  store %struct.atomic_t* %19, %struct.atomic_t** %v.addr.i.i.i.i, align 8
  %20 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i.i, align 8, !dbg !6289
  %counter.i.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %20, i32 0, i32 0, !dbg !6289
  %21 = load volatile i32, i32* %counter.i.i.i.i, align 4, !dbg !6289
  store i32 %21, i32* %c.i.i.i, align 4, !dbg !6244
  br label %do.body.i.i.i, !dbg !6290

do.body.i.i.i:                                    ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i, %land.lhs.true5
  %22 = load i32, i32* %c.i.i.i, align 4, !dbg !6291
  %23 = load i32, i32* %u.addr.i.i.i, align 4, !dbg !6291
  %cmp.i.i.i = icmp eq i32 %22, %23, !dbg !6291
  %lnot.i.i.i = xor i1 %cmp.i.i.i, true, !dbg !6291
  %lnot.ext.i.i.i = zext i1 %cmp.i.i.i to i32, !dbg !6291
  %conv.i.i.i = sext i32 %lnot.ext.i.i.i to i64, !dbg !6291
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i, !dbg !6294

if.then.i.i.i:                                    ; preds = %do.body.i.i.i
  br label %atomic_add_unless.exit, !dbg !6295

if.end.i.i.i:                                     ; preds = %do.body.i.i.i
  %24 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !6296
  %25 = load i32, i32* %c.i.i.i, align 4, !dbg !6297
  %26 = load i32, i32* %a.addr.i.i.i, align 4, !dbg !6298
  %add.i.i.i = add i32 %25, %26, !dbg !6299
  store %struct.atomic_t* %24, %struct.atomic_t** %v.addr.i5.i.i.i, align 8
  store i32* %c.i.i.i, i32** %old.addr.i.i.i.i, align 8
  store i32 %add.i.i.i, i32* %new.addr.i.i.i.i, align 4
  %27 = load i32*, i32** %old.addr.i.i.i.i, align 8, !dbg !6224
  store i32* %27, i32** %_old.i.i.i.i, align 8, !dbg !6224
  %28 = load i32*, i32** %_old.i.i.i.i, align 8, !dbg !6224
  %29 = load i32, i32* %28, align 4, !dbg !6224
  store i32 %29, i32* %__old.i.i.i.i, align 4, !dbg !6224
  %30 = load i32, i32* %new.addr.i.i.i.i, align 4, !dbg !6224
  store i32 %30, i32* %__new.i.i.i.i, align 4, !dbg !6224
  %31 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i5.i.i.i, align 8, !dbg !6224
  %counter.i6.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %31, i32 0, i32 0, !dbg !6224
  store i32* %counter.i6.i.i.i, i32** %__ptr.i.i.i.i, align 8, !dbg !6224
  %32 = load i32*, i32** %__ptr.i.i.i.i, align 8, !dbg !6224
  %33 = load i32, i32* %__old.i.i.i.i, align 4, !dbg !6224
  %34 = load i32, i32* %__new.i.i.i.i, align 4, !dbg !6224
  %35 = call { i8, i32 } asm sideeffect "cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %32, i32 %34, i32* %32, i32 %33) #12, !dbg !6224, !srcloc !6300
  %asmresult.i.i.i.i = extractvalue { i8, i32 } %35, 0, !dbg !6224
  %asmresult1.i.i.i.i = extractvalue { i8, i32 } %35, 1, !dbg !6224
  store i8 %asmresult.i.i.i.i, i8* %success.i.i.i.i, align 1, !dbg !6224
  store i32 %asmresult1.i.i.i.i, i32* %__old.i.i.i.i, align 4, !dbg !6224
  %36 = load i8, i8* %success.i.i.i.i, align 1, !dbg !6301
  %tobool.i.i.i.i = trunc i8 %36 to i1, !dbg !6301
  %lnot.i.i.i.i = xor i1 %tobool.i.i.i.i, true, !dbg !6301
  %lnot3.i.i.i.i = xor i1 %tobool.i.i.i.i, true, !dbg !6301
  %lnot.ext.i.i.i.i = zext i1 %lnot3.i.i.i.i to i32, !dbg !6301
  %conv.i.i.i.i = sext i32 %lnot.ext.i.i.i.i to i64, !dbg !6301
  br i1 %lnot3.i.i.i.i, label %if.then.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i, !dbg !6224

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  %37 = load i32, i32* %__old.i.i.i.i, align 4, !dbg !6301
  %38 = load i32*, i32** %_old.i.i.i.i, align 8, !dbg !6301
  store i32 %37, i32* %38, align 4, !dbg !6301
  br label %arch_atomic_try_cmpxchg.exit.i.i.i, !dbg !6301

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %if.then.i.i.i.i, %if.end.i.i.i
  %39 = load i8, i8* %success.i.i.i.i, align 1, !dbg !6224
  %tobool5.i.i.i.i = trunc i8 %39 to i1, !dbg !6224
  %lnot6.i.i.i.i = xor i1 %tobool5.i.i.i.i, true, !dbg !6224
  %lnot.ext9.i.i.i.i = zext i1 %tobool5.i.i.i.i to i32, !dbg !6224
  %conv10.i.i.i.i = sext i32 %lnot.ext9.i.i.i.i to i64, !dbg !6224
  store i64 %conv10.i.i.i.i, i64* %tmp.i.i.i.i, align 8, !dbg !6301
  %40 = load i64, i64* %tmp.i.i.i.i, align 8, !dbg !6224
  %tobool11.i.i.i.i = icmp ne i64 %40, 0, !dbg !6303
  %lnot3.i.i.i = xor i1 %tobool11.i.i.i.i, true, !dbg !6304
  br i1 %lnot3.i.i.i, label %do.body.i.i.i, label %atomic_add_unless.exit, !dbg !6305, !llvm.loop !6306

atomic_add_unless.exit:                           ; preds = %if.then.i.i.i, %arch_atomic_try_cmpxchg.exit.i.i.i
  %41 = load i32, i32* %c.i.i.i, align 4, !dbg !6308
  %42 = load i32, i32* %u.addr.i.i, align 4, !dbg !6309
  %cmp.i.i = icmp ne i32 %41, %42, !dbg !6310
  br i1 %cmp.i.i, label %if.then, label %if.end15, !dbg !6311

if.then:                                          ; preds = %atomic_add_unless.exit
  %43 = load %struct.ttusbir*, %struct.ttusbir** %tt.addr, align 8, !dbg !6312
  %led_on7 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %43, i32 0, i32 9, !dbg !6313
  %44 = load i8, i8* %led_on7, align 8, !dbg !6313
  %tobool8 = trunc i8 %44 to i1, !dbg !6313
  %45 = load %struct.ttusbir*, %struct.ttusbir** %tt.addr, align 8, !dbg !6314
  %is_led_on9 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %45, i32 0, i32 10, !dbg !6315
  %frombool = zext i1 %tobool8 to i8, !dbg !6316
  store i8 %frombool, i8* %is_led_on9, align 1, !dbg !6316
  %conv10 = zext i1 %tobool8 to i8, !dbg !6314
  %46 = load %struct.ttusbir*, %struct.ttusbir** %tt.addr, align 8, !dbg !6317
  %bulk_buffer = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %46, i32 0, i32 6, !dbg !6318
  %arrayidx = getelementptr [5 x i8], [5 x i8]* %bulk_buffer, i64 0, i64 4, !dbg !6317
  store i8 %conv10, i8* %arrayidx, align 4, !dbg !6319
  %47 = load %struct.ttusbir*, %struct.ttusbir** %tt.addr, align 8, !dbg !6320
  %bulk_urb = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %47, i32 0, i32 5, !dbg !6321
  %48 = load %struct.urb*, %struct.urb** %bulk_urb, align 8, !dbg !6321
  %call11 = call i32 @usb_submit_urb(%struct.urb* %48, i32 2592) #9, !dbg !6322
  store i32 %call11, i32* %ret, align 4, !dbg !6323
  %49 = load i32, i32* %ret, align 4, !dbg !6324
  %tobool12 = icmp ne i32 %49, 0, !dbg !6324
  br i1 %tobool12, label %if.then13, label %if.end, !dbg !6325

if.then13:                                        ; preds = %if.then
  %50 = load %struct.ttusbir*, %struct.ttusbir** %tt.addr, align 8, !dbg !6326
  %dev = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %50, i32 0, i32 1, !dbg !6326
  %51 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6326
  %52 = load i32, i32* %ret, align 4, !dbg !6326
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %52) #10, !dbg !6326
  %53 = load %struct.ttusbir*, %struct.ttusbir** %tt.addr, align 8, !dbg !6327
  %led_complete14 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %53, i32 0, i32 11, !dbg !6328
  store %struct.atomic_t* %led_complete14, %struct.atomic_t** %v.addr.i19, align 8
  %54 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i19, align 8, !dbg !6329
  %55 = bitcast %struct.atomic_t* %54 to i8*, !dbg !6329
  store i8* %55, i8** %v.addr.i.i17, align 8
  store i64 4, i64* %size.addr.i.i18, align 8
  %56 = load i8*, i8** %v.addr.i.i17, align 8, !dbg !6330
  %57 = load i64, i64* %size.addr.i.i18, align 8, !dbg !6331
  %conv.i.i20 = trunc i64 %57 to i32, !dbg !6331
  %call.i.i21 = call zeroext i1 @kasan_check_write(i8* %56, i32 %conv.i.i20) #11, !dbg !6332
  %58 = load i8*, i8** %v.addr.i.i17, align 8, !dbg !6333
  %59 = load i64, i64* %size.addr.i.i18, align 8, !dbg !6333
  call void @kcsan_check_access(i8* %58, i64 %59, i32 7) #11, !dbg !6333
  %60 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i19, align 8, !dbg !6334
  store %struct.atomic_t* %60, %struct.atomic_t** %v.addr.i1.i16, align 8
  %61 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i16, align 8, !dbg !6335
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %61, i32 0, i32 0, !dbg !6336
  call void asm sideeffect "decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #12, !dbg !6337, !srcloc !5842
  br label %if.end, !dbg !6338

if.end:                                           ; preds = %if.then13, %if.then
  br label %if.end15, !dbg !6339

if.end15:                                         ; preds = %if.end, %atomic_add_unless.exit, %land.lhs.true, %entry
  ret void, !dbg !6340
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !6341 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6345, metadata !DIExpression()), !dbg !6346
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6347, metadata !DIExpression()), !dbg !6348
  ret i1 true, !dbg !6349
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !6350 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6354, metadata !DIExpression()), !dbg !6355
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6356, metadata !DIExpression()), !dbg !6357
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6358, metadata !DIExpression()), !dbg !6359
  ret void, !dbg !6360
}

; Function Attrs: noredzone
declare dso_local i32 @led_classdev_register_ext(%struct.device*, %struct.led_classdev*, %struct.led_init_data*) #1

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !6361 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6364, metadata !DIExpression()), !dbg !6365
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6366, metadata !DIExpression()), !dbg !6367
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6368
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6369
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !6370
  store i8* %0, i8** %driver_data, align 8, !dbg !6371
  ret void, !dbg !6372
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
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !6382 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6385, metadata !DIExpression()), !dbg !6386
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6387
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !6388
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6388
  ret i8* %1, !dbg !6389
}

; Function Attrs: noredzone
declare dso_local void @led_classdev_suspend(%struct.led_classdev*) #1

; Function Attrs: noredzone
declare dso_local void @led_classdev_resume(%struct.led_classdev*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind willreturn }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind }
attributes #13 = { noredzone nounwind readnone }
attributes #14 = { nounwind readonly }
attributes #15 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4729, !4730, !4731, !4732}
!llvm.ident = !{!4733}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttusbir_driver_init239", scope: !2, file: !3, line: 430, type: !193, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !182, globals: !4641, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/rc/ttusbir.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !20, !26, !31, !37, !44, !50, !59, !67, !73, !79, !86, !94, !100, !131, !137, !149, !158, !163, !170, !175}
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
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rc_proto", file: !101, line: 200, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/uapi/linux/lirc.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130}
!103 = !DIEnumerator(name: "RC_PROTO_UNKNOWN", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "RC_PROTO_OTHER", value: 1, isUnsigned: true)
!105 = !DIEnumerator(name: "RC_PROTO_RC5", value: 2, isUnsigned: true)
!106 = !DIEnumerator(name: "RC_PROTO_RC5X_20", value: 3, isUnsigned: true)
!107 = !DIEnumerator(name: "RC_PROTO_RC5_SZ", value: 4, isUnsigned: true)
!108 = !DIEnumerator(name: "RC_PROTO_JVC", value: 5, isUnsigned: true)
!109 = !DIEnumerator(name: "RC_PROTO_SONY12", value: 6, isUnsigned: true)
!110 = !DIEnumerator(name: "RC_PROTO_SONY15", value: 7, isUnsigned: true)
!111 = !DIEnumerator(name: "RC_PROTO_SONY20", value: 8, isUnsigned: true)
!112 = !DIEnumerator(name: "RC_PROTO_NEC", value: 9, isUnsigned: true)
!113 = !DIEnumerator(name: "RC_PROTO_NECX", value: 10, isUnsigned: true)
!114 = !DIEnumerator(name: "RC_PROTO_NEC32", value: 11, isUnsigned: true)
!115 = !DIEnumerator(name: "RC_PROTO_SANYO", value: 12, isUnsigned: true)
!116 = !DIEnumerator(name: "RC_PROTO_MCIR2_KBD", value: 13, isUnsigned: true)
!117 = !DIEnumerator(name: "RC_PROTO_MCIR2_MSE", value: 14, isUnsigned: true)
!118 = !DIEnumerator(name: "RC_PROTO_RC6_0", value: 15, isUnsigned: true)
!119 = !DIEnumerator(name: "RC_PROTO_RC6_6A_20", value: 16, isUnsigned: true)
!120 = !DIEnumerator(name: "RC_PROTO_RC6_6A_24", value: 17, isUnsigned: true)
!121 = !DIEnumerator(name: "RC_PROTO_RC6_6A_32", value: 18, isUnsigned: true)
!122 = !DIEnumerator(name: "RC_PROTO_RC6_MCE", value: 19, isUnsigned: true)
!123 = !DIEnumerator(name: "RC_PROTO_SHARP", value: 20, isUnsigned: true)
!124 = !DIEnumerator(name: "RC_PROTO_XMP", value: 21, isUnsigned: true)
!125 = !DIEnumerator(name: "RC_PROTO_CEC", value: 22, isUnsigned: true)
!126 = !DIEnumerator(name: "RC_PROTO_IMON", value: 23, isUnsigned: true)
!127 = !DIEnumerator(name: "RC_PROTO_RCMM12", value: 24, isUnsigned: true)
!128 = !DIEnumerator(name: "RC_PROTO_RCMM24", value: 25, isUnsigned: true)
!129 = !DIEnumerator(name: "RC_PROTO_RCMM32", value: 26, isUnsigned: true)
!130 = !DIEnumerator(name: "RC_PROTO_XBOX_DVD", value: 27, isUnsigned: true)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rc_driver_type", file: !132, line: 27, baseType: !7, size: 32, elements: !133)
!132 = !DIFile(filename: "./include/media/rc-core.h", directory: "/home/lizy2001/genbc/linux")
!133 = !{!134, !135, !136}
!134 = !DIEnumerator(name: "RC_DRIVER_SCANCODE", value: 0, isUnsigned: true)
!135 = !DIEnumerator(name: "RC_DRIVER_IR_RAW", value: 1, isUnsigned: true)
!136 = !DIEnumerator(name: "RC_DRIVER_IR_RAW_TX", value: 2, isUnsigned: true)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !138, line: 1156, baseType: !7, size: 32, elements: !139)
!138 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/lizy2001/genbc/linux")
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147, !148}
!140 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0, isUnsigned: true)
!141 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1, isUnsigned: true)
!142 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2, isUnsigned: true)
!143 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3, isUnsigned: true)
!144 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4, isUnsigned: true)
!145 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5, isUnsigned: true)
!146 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6, isUnsigned: true)
!147 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7, isUnsigned: true)
!148 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8, isUnsigned: true)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !138, line: 1146, baseType: !7, size: 32, elements: !150)
!150 = !{!151, !152, !153, !154, !155, !156, !157}
!151 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0, isUnsigned: true)
!152 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1, isUnsigned: true)
!153 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2, isUnsigned: true)
!154 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3, isUnsigned: true)
!155 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4, isUnsigned: true)
!156 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5, isUnsigned: true)
!157 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6, isUnsigned: true)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_removable", file: !6, line: 476, baseType: !7, size: 32, elements: !159)
!159 = !{!160, !161, !162}
!160 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE_UNKNOWN", value: 0, isUnsigned: true)
!161 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE", value: 1, isUnsigned: true)
!162 = !DIEnumerator(name: "USB_DEVICE_FIXED", value: 2, isUnsigned: true)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "led_brightness", file: !164, line: 29, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/leds.h", directory: "/home/lizy2001/genbc/linux")
!165 = !{!166, !167, !168, !169}
!166 = !DIEnumerator(name: "LED_OFF", value: 0, isUnsigned: true)
!167 = !DIEnumerator(name: "LED_ON", value: 1, isUnsigned: true)
!168 = !DIEnumerator(name: "LED_HALF", value: 127, isUnsigned: true)
!169 = !DIEnumerator(name: "LED_FULL", value: 255, isUnsigned: true)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !171, line: 10, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!172 = !{!173, !174}
!173 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!174 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !176, line: 305, baseType: !7, size: 32, elements: !177)
!176 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!177 = !{!178, !179, !180, !181}
!178 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!179 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!180 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!181 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!182 = !{!183, !186, !188, !191, !193, !194, !4114, !717, !4117, !4119, !4640, !198}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !185, line: 76, flags: DIFlagFwdDecl)
!185 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !187, line: 148, baseType: !7)
!187 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !189, line: 24, baseType: !190)
!189 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!190 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !192, line: 29, baseType: !188)
!192 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !6, line: 631, size: 10624, elements: !196)
!196 = !{!197, !199, !204, !208, !209, !210, !211, !212, !215, !216, !220, !221, !3856, !3896, !3897, !3914, !3975, !4057, !4058, !4060, !4061, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4096, !4097, !4098, !4103, !4110, !4111, !4112, !4113}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !195, file: !6, line: 632, baseType: !198, size: 32)
!198 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !195, file: !6, line: 633, baseType: !200, size: 128, offset: 32)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 128, elements: !202)
!201 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!202 = !{!203}
!203 = !DISubrange(count: 16)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !195, file: !6, line: 634, baseType: !205, size: 32, offset: 160)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !206, line: 21, baseType: !207)
!206 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !189, line: 27, baseType: !7)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !195, file: !6, line: 635, baseType: !137, size: 32, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !195, file: !6, line: 636, baseType: !149, size: 32, offset: 224)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !195, file: !6, line: 637, baseType: !7, size: 32, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !195, file: !6, line: 638, baseType: !7, size: 32, offset: 288)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !195, file: !6, line: 640, baseType: !213, size: 64, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !6, line: 474, flags: DIFlagFwdDecl)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !195, file: !6, line: 641, baseType: !198, size: 32, offset: 384)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !195, file: !6, line: 643, baseType: !217, size: 64, offset: 416)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 2)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !195, file: !6, line: 645, baseType: !194, size: 64, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !195, file: !6, line: 646, baseType: !222, size: 64, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !6, line: 424, size: 960, elements: !224)
!224 = !{!225, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3850, !3851, !3852, !3853, !3854, !3855}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !223, file: !6, line: 425, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !80, line: 461, size: 5568, elements: !228)
!228 = !{!229, !3387, !3388, !3391, !3392, !3443, !3534, !3535, !3536, !3537, !3538, !3547, !3652, !3665, !3668, !3669, !3673, !3675, !3676, !3677, !3681, !3687, !3688, !3691, !3695, !3785, !3786, !3787, !3788, !3789, !3821, !3822, !3823, !3826, !3829, !3830, !3831, !3832}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !227, file: !80, line: 462, baseType: !230, size: 512)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !231, line: 64, size: 512, elements: !232)
!231 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!232 = !{!233, !236, !242, !244, !304, !3238, !3377, !3382, !3383, !3384, !3385, !3386}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !230, file: !231, line: 65, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !230, file: !231, line: 66, baseType: !237, size: 128, offset: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !187, line: 178, size: 128, elements: !238)
!238 = !{!239, !241}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !237, file: !187, line: 179, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !237, file: !187, line: 179, baseType: !240, size: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !230, file: !231, line: 67, baseType: !243, size: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !230, file: !231, line: 68, baseType: !245, size: 64, offset: 256)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !231, line: 192, size: 704, elements: !247)
!247 = !{!248, !249, !265, !266}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !246, file: !231, line: 193, baseType: !237, size: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !246, file: !231, line: 194, baseType: !250, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !251, line: 83, baseType: !252)
!251 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !251, line: 71, elements: !253)
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, scope: !252, file: !251, line: 72, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !252, file: !251, line: 72, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !255, file: !251, line: 73, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !251, line: 20, elements: !259)
!259 = !{!260}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !258, file: !251, line: 21, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !262, line: 25, baseType: !263)
!262 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !262, line: 25, elements: !264)
!264 = !{}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !246, file: !231, line: 195, baseType: !230, size: 512, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !246, file: !231, line: 196, baseType: !267, size: 64, offset: 640)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !231, line: 156, size: 192, elements: !270)
!270 = !{!271, !276, !281}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !269, file: !231, line: 157, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!198, !245, !243}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !269, file: !231, line: 158, baseType: !277, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!234, !245, !243}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !269, file: !231, line: 159, baseType: !282, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!198, !245, !243, !286}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !231, line: 148, size: 20736, elements: !288)
!288 = !{!289, !294, !298, !299, !303}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !287, file: !231, line: 149, baseType: !290, size: 192)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 192, elements: !292)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!292 = !{!293}
!293 = !DISubrange(count: 3)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !287, file: !231, line: 150, baseType: !295, size: 4096, offset: 192)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 4096, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !287, file: !231, line: 151, baseType: !198, size: 32, offset: 4288)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !287, file: !231, line: 152, baseType: !300, size: 16384, offset: 4320)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 16384, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 2048)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !287, file: !231, line: 153, baseType: !198, size: 32, offset: 20704)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !230, file: !231, line: 69, baseType: !305, size: 64, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !231, line: 138, size: 448, elements: !307)
!307 = !{!308, !312, !341, !343, !3200, !3228, !3232}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !306, file: !231, line: 139, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !243}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !306, file: !231, line: 140, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !316, line: 230, size: 128, elements: !317)
!316 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!317 = !{!318, !333}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !315, file: !316, line: 231, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!322, !243, !327, !291}
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !187, line: 60, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !324, line: 73, baseType: !325)
!324 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !324, line: 15, baseType: !326)
!326 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !316, line: 30, size: 128, elements: !329)
!329 = !{!330, !331}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !328, file: !316, line: 31, baseType: !234, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !328, file: !316, line: 32, baseType: !332, size: 16, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !187, line: 19, baseType: !190)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !315, file: !316, line: 232, baseType: !334, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!322, !243, !327, !234, !337}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !187, line: 55, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !324, line: 72, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !324, line: 16, baseType: !340)
!340 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !306, file: !231, line: 141, baseType: !342, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !306, file: !231, line: 142, baseType: !344, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !316, line: 84, size: 320, elements: !348)
!348 = !{!349, !350, !354, !3197, !3198}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !347, file: !316, line: 85, baseType: !234, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !347, file: !316, line: 86, baseType: !351, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!332, !243, !327, !198}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !347, file: !316, line: 88, baseType: !355, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!332, !243, !358, !198}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !316, line: 168, size: 448, elements: !360)
!360 = !{!361, !362, !363, !364, !3192, !3193}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !359, file: !316, line: 169, baseType: !328, size: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !359, file: !316, line: 170, baseType: !337, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !359, file: !316, line: 171, baseType: !193, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !359, file: !316, line: 172, baseType: !365, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!322, !368, !243, !358, !291, !543, !337}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !51, line: 916, size: 1856, align: 32, elements: !370)
!370 = !{!371, !389, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3175, !3176, !3185, !3186, !3187, !3188, !3189, !3190, !3191}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !369, file: !51, line: 920, baseType: !372, size: 128)
!372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !51, line: 917, size: 128, elements: !373)
!373 = !{!374, !380}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !372, file: !51, line: 918, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !376, line: 58, size: 64, elements: !377)
!376 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !375, file: !376, line: 59, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !372, file: !51, line: 919, baseType: !381, size: 128, align: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !187, line: 216, size: 128, align: 64, elements: !382)
!382 = !{!383, !385}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !381, file: !187, line: 217, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !381, file: !187, line: 218, baseType: !386, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !384}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !369, file: !51, line: 921, baseType: !390, size: 128, offset: 128)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !391, line: 8, size: 128, elements: !392)
!391 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!392 = !{!393, !397}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !390, file: !391, line: 9, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !396, line: 18, flags: DIFlagFwdDecl)
!396 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!397 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !390, file: !391, line: 10, baseType: !398, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !396, line: 89, size: 1536, elements: !400)
!400 = !{!401, !402, !412, !420, !421, !440, !3125, !3127, !3139, !3140, !3141, !3142, !3143, !3149, !3150, !3151}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !399, file: !396, line: 91, baseType: !7, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !399, file: !396, line: 92, baseType: !403, size: 32, offset: 32)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !404, line: 277, baseType: !405)
!404 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !404, line: 277, size: 32, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !405, file: !404, line: 277, baseType: !408, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !404, line: 70, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !404, line: 65, size: 32, elements: !410)
!410 = !{!411}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !409, file: !404, line: 66, baseType: !7, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !399, file: !396, line: 93, baseType: !413, size: 128, offset: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !414, line: 38, size: 128, elements: !415)
!414 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!415 = !{!416, !418}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !413, file: !414, line: 39, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !413, file: !414, line: 39, baseType: !419, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !399, file: !396, line: 94, baseType: !398, size: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !399, file: !396, line: 95, baseType: !422, size: 128, offset: 256)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !396, line: 47, size: 128, elements: !423)
!423 = !{!424, !436}
!424 = !DIDerivedType(tag: DW_TAG_member, scope: !422, file: !396, line: 48, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !422, file: !396, line: 48, size: 64, elements: !426)
!426 = !{!427, !432}
!427 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !396, line: 49, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !425, file: !396, line: 49, size: 64, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !428, file: !396, line: 50, baseType: !205, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !428, file: !396, line: 50, baseType: !205, size: 32, offset: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !425, file: !396, line: 52, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !206, line: 23, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !189, line: 31, baseType: !435)
!435 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !422, file: !396, line: 54, baseType: !437, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!439 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !399, file: !396, line: 96, baseType: !441, size: 64, offset: 384)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !51, line: 610, size: 4224, elements: !443)
!443 = !{!444, !445, !446, !454, !461, !462, !610, !2829, !2830, !2831, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !3093, !3101, !3102, !3103, !3121, !3122, !3123, !3124}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !442, file: !51, line: 611, baseType: !332, size: 16)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !442, file: !51, line: 612, baseType: !190, size: 16, offset: 16)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !442, file: !51, line: 613, baseType: !447, size: 32, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !448, line: 23, baseType: !449)
!448 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !448, line: 21, size: 32, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !449, file: !448, line: 22, baseType: !452, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !187, line: 32, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !324, line: 49, baseType: !7)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !442, file: !51, line: 614, baseType: !455, size: 32, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !448, line: 28, baseType: !456)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !448, line: 26, size: 32, elements: !457)
!457 = !{!458}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !456, file: !448, line: 27, baseType: !459, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !187, line: 33, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !324, line: 50, baseType: !7)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !442, file: !51, line: 615, baseType: !7, size: 32, offset: 96)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !442, file: !51, line: 622, baseType: !463, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !51, line: 1864, size: 1536, align: 512, elements: !466)
!466 = !{!467, !471, !484, !488, !494, !498, !504, !508, !512, !516, !520, !521, !527, !531, !557, !586, !590, !596, !601, !605, !606}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !465, file: !51, line: 1865, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!398, !441, !398, !7}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !465, file: !51, line: 1866, baseType: !472, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!234, !398, !441, !475}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !477, line: 10, size: 128, elements: !478)
!477 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!478 = !{!479, !483}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !476, file: !477, line: 11, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !193}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !476, file: !477, line: 12, baseType: !193, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !465, file: !51, line: 1867, baseType: !485, size: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!198, !441, !198}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !465, file: !51, line: 1868, baseType: !489, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!492, !441, !198}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !51, line: 581, flags: DIFlagFwdDecl)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !465, file: !51, line: 1870, baseType: !495, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!198, !398, !291, !198}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !465, file: !51, line: 1872, baseType: !499, size: 64, offset: 320)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!198, !441, !398, !332, !502}
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !187, line: 30, baseType: !503)
!503 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !465, file: !51, line: 1873, baseType: !505, size: 64, offset: 384)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!198, !398, !441, !398}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !465, file: !51, line: 1874, baseType: !509, size: 64, offset: 448)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!198, !441, !398}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !465, file: !51, line: 1875, baseType: !513, size: 64, offset: 512)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!198, !441, !398, !234}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !465, file: !51, line: 1876, baseType: !517, size: 64, offset: 576)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!198, !441, !398, !332}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !465, file: !51, line: 1877, baseType: !509, size: 64, offset: 640)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !465, file: !51, line: 1878, baseType: !522, size: 64, offset: 704)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!198, !441, !398, !332, !525}
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !187, line: 16, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !187, line: 13, baseType: !205)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !465, file: !51, line: 1879, baseType: !528, size: 64, offset: 768)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!198, !441, !398, !441, !398, !7}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !465, file: !51, line: 1881, baseType: !532, size: 64, offset: 832)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!198, !398, !535}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !51, line: 219, size: 640, elements: !537)
!537 = !{!538, !539, !540, !541, !542, !546, !554, !555, !556}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !536, file: !51, line: 220, baseType: !7, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !536, file: !51, line: 221, baseType: !332, size: 16, offset: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !536, file: !51, line: 222, baseType: !447, size: 32, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !536, file: !51, line: 223, baseType: !455, size: 32, offset: 96)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !536, file: !51, line: 224, baseType: !543, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !187, line: 46, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !324, line: 88, baseType: !545)
!545 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !536, file: !51, line: 225, baseType: !547, size: 128, offset: 192)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !548, line: 13, size: 128, elements: !549)
!548 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!549 = !{!550, !553}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !547, file: !548, line: 14, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !548, line: 8, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !189, line: 30, baseType: !545)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !547, file: !548, line: 15, baseType: !326, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !536, file: !51, line: 226, baseType: !547, size: 128, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !536, file: !51, line: 227, baseType: !547, size: 128, offset: 448)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !536, file: !51, line: 234, baseType: !368, size: 64, offset: 576)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !465, file: !51, line: 1882, baseType: !558, size: 64, offset: 896)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!198, !561, !563, !205, !7}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !565, line: 22, size: 1152, elements: !566)
!565 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!566 = !{!567, !568, !569, !570, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !564, file: !565, line: 23, baseType: !205, size: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !564, file: !565, line: 24, baseType: !332, size: 16, offset: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !564, file: !565, line: 25, baseType: !7, size: 32, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !564, file: !565, line: 26, baseType: !571, size: 32, offset: 96)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !187, line: 104, baseType: !205)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !564, file: !565, line: 27, baseType: !433, size: 64, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !564, file: !565, line: 28, baseType: !433, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !564, file: !565, line: 37, baseType: !433, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !564, file: !565, line: 38, baseType: !525, size: 32, offset: 320)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !564, file: !565, line: 39, baseType: !525, size: 32, offset: 352)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !564, file: !565, line: 40, baseType: !447, size: 32, offset: 384)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !564, file: !565, line: 41, baseType: !455, size: 32, offset: 416)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !564, file: !565, line: 42, baseType: !543, size: 64, offset: 448)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !564, file: !565, line: 43, baseType: !547, size: 128, offset: 512)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !564, file: !565, line: 44, baseType: !547, size: 128, offset: 640)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !564, file: !565, line: 45, baseType: !547, size: 128, offset: 768)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !564, file: !565, line: 46, baseType: !547, size: 128, offset: 896)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !564, file: !565, line: 47, baseType: !433, size: 64, offset: 1024)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !564, file: !565, line: 48, baseType: !433, size: 64, offset: 1088)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !465, file: !51, line: 1883, baseType: !587, size: 64, offset: 960)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!322, !398, !291, !337}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !465, file: !51, line: 1884, baseType: !591, size: 64, offset: 1024)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!198, !441, !594, !433, !433}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !51, line: 50, flags: DIFlagFwdDecl)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !465, file: !51, line: 1886, baseType: !597, size: 64, offset: 1088)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!198, !441, !600, !198}
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !465, file: !51, line: 1887, baseType: !602, size: 64, offset: 1152)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!198, !441, !398, !368, !7, !332}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !465, file: !51, line: 1890, baseType: !517, size: 64, offset: 1216)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !465, file: !51, line: 1891, baseType: !607, size: 64, offset: 1280)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!198, !441, !492, !198}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !442, file: !51, line: 623, baseType: !611, size: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !51, line: 1416, size: 9472, elements: !613)
!613 = !{!614, !615, !616, !617, !618, !619, !666, !2436, !2518, !2601, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2617, !2621, !2622, !2625, !2626, !2629, !2630, !2631, !2672, !2699, !2700, !2701, !2702, !2703, !2704, !2707, !2709, !2716, !2717, !2719, !2720, !2721, !2780, !2781, !2796, !2797, !2798, !2799, !2800, !2803, !2804, !2805, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !612, file: !51, line: 1417, baseType: !237, size: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !612, file: !51, line: 1418, baseType: !525, size: 32, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !612, file: !51, line: 1419, baseType: !439, size: 8, offset: 160)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !612, file: !51, line: 1420, baseType: !340, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !612, file: !51, line: 1421, baseType: !543, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !612, file: !51, line: 1422, baseType: !620, size: 64, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !51, line: 2228, size: 576, elements: !622)
!622 = !{!623, !624, !625, !632, !636, !640, !644, !645, !646, !656, !659, !660, !661, !663, !664, !665}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !621, file: !51, line: 2229, baseType: !234, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !621, file: !51, line: 2230, baseType: !198, size: 32, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !621, file: !51, line: 2238, baseType: !626, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!198, !629}
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !631, line: 28, flags: DIFlagFwdDecl)
!631 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!632 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !621, file: !51, line: 2239, baseType: !633, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !635)
!635 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !51, line: 70, flags: DIFlagFwdDecl)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !621, file: !51, line: 2240, baseType: !637, size: 64, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!398, !620, !198, !234, !193}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !621, file: !51, line: 2242, baseType: !641, size: 64, offset: 320)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !611}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !621, file: !51, line: 2243, baseType: !183, size: 64, offset: 384)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !621, file: !51, line: 2244, baseType: !620, size: 64, offset: 448)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !621, file: !51, line: 2245, baseType: !647, size: 64, offset: 512)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !187, line: 182, size: 64, elements: !648)
!648 = !{!649}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !647, file: !187, line: 183, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !187, line: 186, size: 128, elements: !652)
!652 = !{!653, !654}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !651, file: !187, line: 187, baseType: !650, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !651, file: !187, line: 187, baseType: !655, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !621, file: !51, line: 2247, baseType: !657, offset: 576)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !658, line: 187, elements: !264)
!658 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!659 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !621, file: !51, line: 2248, baseType: !657, offset: 576)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !621, file: !51, line: 2249, baseType: !657, offset: 576)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !621, file: !51, line: 2250, baseType: !662, offset: 576)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !657, elements: !292)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !621, file: !51, line: 2252, baseType: !657, offset: 576)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !621, file: !51, line: 2253, baseType: !657, offset: 576)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !621, file: !51, line: 2254, baseType: !657, offset: 576)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !612, file: !51, line: 1423, baseType: !667, size: 64, offset: 384)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !669)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !51, line: 1935, size: 1472, elements: !670)
!670 = !{!671, !675, !679, !680, !684, !690, !694, !695, !696, !700, !704, !705, !706, !707, !713, !718, !719, !726, !727, !728, !729, !2420, !2435}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !669, file: !51, line: 1936, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!441, !611}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !669, file: !51, line: 1937, baseType: !676, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{null, !441}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !669, file: !51, line: 1938, baseType: !676, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !669, file: !51, line: 1940, baseType: !681, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{null, !441, !198}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !669, file: !51, line: 1941, baseType: !685, size: 64, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!198, !441, !688}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !51, line: 289, flags: DIFlagFwdDecl)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !669, file: !51, line: 1942, baseType: !691, size: 64, offset: 320)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!198, !441}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !669, file: !51, line: 1943, baseType: !676, size: 64, offset: 384)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !669, file: !51, line: 1944, baseType: !641, size: 64, offset: 448)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !669, file: !51, line: 1945, baseType: !697, size: 64, offset: 512)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!198, !611, !198}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !669, file: !51, line: 1946, baseType: !701, size: 64, offset: 576)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!198, !611}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !669, file: !51, line: 1947, baseType: !701, size: 64, offset: 640)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !669, file: !51, line: 1948, baseType: !701, size: 64, offset: 704)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !669, file: !51, line: 1949, baseType: !701, size: 64, offset: 768)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !669, file: !51, line: 1950, baseType: !708, size: 64, offset: 832)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!198, !398, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !51, line: 57, flags: DIFlagFwdDecl)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !669, file: !51, line: 1951, baseType: !714, size: 64, offset: 896)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!198, !611, !717, !291}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !669, file: !51, line: 1952, baseType: !641, size: 64, offset: 960)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !669, file: !51, line: 1954, baseType: !720, size: 64, offset: 1024)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!198, !723, !398}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !725, line: 539, flags: DIFlagFwdDecl)
!725 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!726 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !669, file: !51, line: 1955, baseType: !720, size: 64, offset: 1088)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !669, file: !51, line: 1956, baseType: !720, size: 64, offset: 1152)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !669, file: !51, line: 1957, baseType: !720, size: 64, offset: 1216)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !669, file: !51, line: 1963, baseType: !730, size: 64, offset: 1280)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!198, !611, !733, !186}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !735, line: 68, size: 512, align: 128, elements: !736)
!735 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!736 = !{!737, !738, !2412, !2419}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !734, file: !735, line: 69, baseType: !340, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, scope: !734, file: !735, line: 77, baseType: !739, size: 320, offset: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !734, file: !735, line: 77, size: 320, elements: !740)
!740 = !{!741, !927, !932, !960, !968, !974, !2343, !2411}
!741 = !DIDerivedType(tag: DW_TAG_member, scope: !739, file: !735, line: 78, baseType: !742, size: 320)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !739, file: !735, line: 78, size: 320, elements: !743)
!743 = !{!744, !745, !925, !926}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !742, file: !735, line: 84, baseType: !237, size: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !742, file: !735, line: 86, baseType: !746, size: 64, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !51, line: 451, size: 1216, align: 64, elements: !748)
!748 = !{!749, !750, !757, !758, !763, !778, !794, !795, !796, !797, !918, !919, !922, !923, !924}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !747, file: !51, line: 452, baseType: !441, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !747, file: !51, line: 453, baseType: !751, size: 128, offset: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !752, line: 292, size: 128, elements: !753)
!752 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!753 = !{!754, !755, !756}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !751, file: !752, line: 293, baseType: !250)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !751, file: !752, line: 295, baseType: !186, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !751, file: !752, line: 296, baseType: !193, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !747, file: !51, line: 454, baseType: !186, size: 32, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !747, file: !51, line: 455, baseType: !759, size: 32, offset: 224)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !187, line: 168, baseType: !760)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !187, line: 166, size: 32, elements: !761)
!761 = !{!762}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !760, file: !187, line: 167, baseType: !198, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !747, file: !51, line: 460, baseType: !764, size: 128, offset: 256)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !765, line: 125, size: 128, elements: !766)
!765 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!766 = !{!767, !777}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !764, file: !765, line: 126, baseType: !768, size: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !765, line: 31, size: 64, elements: !769)
!769 = !{!770}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !768, file: !765, line: 32, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !765, line: 24, size: 192, align: 64, elements: !773)
!773 = !{!774, !775, !776}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !772, file: !765, line: 25, baseType: !340, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !772, file: !765, line: 26, baseType: !771, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !772, file: !765, line: 27, baseType: !771, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !764, file: !765, line: 127, baseType: !771, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !747, file: !51, line: 461, baseType: !779, size: 256, offset: 384)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !780, line: 35, size: 256, elements: !781)
!780 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!781 = !{!782, !790, !791, !793}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !779, file: !780, line: 36, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !784, line: 13, baseType: !785)
!784 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !187, line: 175, baseType: !786)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !187, line: 173, size: 64, elements: !787)
!787 = !{!788}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !786, file: !187, line: 174, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !206, line: 22, baseType: !552)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !779, file: !780, line: 42, baseType: !783, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !779, file: !780, line: 46, baseType: !792, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !251, line: 29, baseType: !258)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !779, file: !780, line: 47, baseType: !237, size: 128, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !747, file: !51, line: 462, baseType: !340, size: 64, offset: 640)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !747, file: !51, line: 463, baseType: !340, size: 64, offset: 704)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !747, file: !51, line: 464, baseType: !340, size: 64, offset: 768)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !747, file: !51, line: 465, baseType: !798, size: 64, offset: 832)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !800)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !51, line: 367, size: 1408, elements: !801)
!801 = !{!802, !806, !810, !814, !818, !822, !828, !834, !838, !843, !847, !851, !855, !882, !886, !892, !893, !894, !898, !903, !907, !914}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !800, file: !51, line: 368, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!198, !733, !688}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !800, file: !51, line: 369, baseType: !807, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{!198, !368, !733}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !800, file: !51, line: 372, baseType: !811, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!198, !746, !688}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !800, file: !51, line: 375, baseType: !815, size: 64, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{!198, !733}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !800, file: !51, line: 381, baseType: !819, size: 64, offset: 256)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!198, !368, !746, !240, !7}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !800, file: !51, line: 383, baseType: !823, size: 64, offset: 320)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{null, !826}
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !51, line: 290, flags: DIFlagFwdDecl)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !800, file: !51, line: 385, baseType: !829, size: 64, offset: 384)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!198, !368, !746, !543, !7, !7, !832, !833}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !800, file: !51, line: 388, baseType: !835, size: 64, offset: 448)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!198, !368, !746, !543, !7, !7, !733, !193}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !800, file: !51, line: 393, baseType: !839, size: 64, offset: 512)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!842, !746, !842}
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !187, line: 125, baseType: !433)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !800, file: !51, line: 394, baseType: !844, size: 64, offset: 576)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{null, !733, !7, !7}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !800, file: !51, line: 395, baseType: !848, size: 64, offset: 640)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!198, !733, !186}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !800, file: !51, line: 396, baseType: !852, size: 64, offset: 704)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{null, !733}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !800, file: !51, line: 397, baseType: !856, size: 64, offset: 768)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!322, !859, !880}
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !51, line: 320, size: 384, elements: !861)
!861 = !{!862, !863, !864, !868, !869, !870, !872, !873}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !860, file: !51, line: 321, baseType: !368, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !860, file: !51, line: 326, baseType: !543, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !860, file: !51, line: 327, baseType: !865, size: 64, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !859, !326, !326}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !860, file: !51, line: 328, baseType: !193, size: 64, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !860, file: !51, line: 329, baseType: !198, size: 32, offset: 256)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !860, file: !51, line: 330, baseType: !871, size: 16, offset: 288)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !206, line: 19, baseType: !188)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !860, file: !51, line: 331, baseType: !871, size: 16, offset: 304)
!873 = !DIDerivedType(tag: DW_TAG_member, scope: !860, file: !51, line: 332, baseType: !874, size: 64, offset: 320)
!874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !860, file: !51, line: 332, size: 64, elements: !875)
!875 = !{!876, !877}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !874, file: !51, line: 333, baseType: !7, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !874, file: !51, line: 334, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !51, line: 334, flags: DIFlagFwdDecl)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !51, line: 64, flags: DIFlagFwdDecl)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !800, file: !51, line: 402, baseType: !883, size: 64, offset: 832)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{!198, !746, !733, !733, !13}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !800, file: !51, line: 404, baseType: !887, size: 64, offset: 896)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!502, !733, !890}
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !891, line: 305, baseType: !7)
!891 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!892 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !800, file: !51, line: 405, baseType: !852, size: 64, offset: 960)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !800, file: !51, line: 406, baseType: !815, size: 64, offset: 1024)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !800, file: !51, line: 407, baseType: !895, size: 64, offset: 1088)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!198, !733, !340, !340}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !800, file: !51, line: 409, baseType: !899, size: 64, offset: 1152)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{null, !733, !902, !902}
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !800, file: !51, line: 410, baseType: !904, size: 64, offset: 1216)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!198, !746, !733}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !800, file: !51, line: 413, baseType: !908, size: 64, offset: 1280)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{!198, !911, !368, !913}
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !51, line: 61, flags: DIFlagFwdDecl)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !800, file: !51, line: 415, baseType: !915, size: 64, offset: 1344)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{null, !368}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !747, file: !51, line: 466, baseType: !340, size: 64, offset: 896)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !747, file: !51, line: 467, baseType: !920, size: 32, offset: 960)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !921, line: 8, baseType: !205)
!921 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!922 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !747, file: !51, line: 468, baseType: !250, offset: 992)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !747, file: !51, line: 469, baseType: !237, size: 128, offset: 1024)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !747, file: !51, line: 470, baseType: !193, size: 64, offset: 1152)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !742, file: !735, line: 87, baseType: !340, size: 64, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !742, file: !735, line: 94, baseType: !340, size: 64, offset: 256)
!927 = !DIDerivedType(tag: DW_TAG_member, scope: !739, file: !735, line: 96, baseType: !928, size: 64)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !739, file: !735, line: 96, size: 64, elements: !929)
!929 = !{!930}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !928, file: !735, line: 101, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !187, line: 143, baseType: !433)
!932 = !DIDerivedType(tag: DW_TAG_member, scope: !739, file: !735, line: 103, baseType: !933, size: 320)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !739, file: !735, line: 103, size: 320, elements: !934)
!934 = !{!935, !945, !948, !949}
!935 = !DIDerivedType(tag: DW_TAG_member, scope: !933, file: !735, line: 104, baseType: !936, size: 128)
!936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !933, file: !735, line: 104, size: 128, elements: !937)
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !936, file: !735, line: 105, baseType: !237, size: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, scope: !936, file: !735, line: 106, baseType: !940, size: 128)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !735, line: 106, size: 128, elements: !941)
!941 = !{!942, !943, !944}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !940, file: !735, line: 107, baseType: !733, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !940, file: !735, line: 109, baseType: !198, size: 32, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !940, file: !735, line: 110, baseType: !198, size: 32, offset: 96)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !933, file: !735, line: 117, baseType: !946, size: 64, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !735, line: 117, flags: DIFlagFwdDecl)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !933, file: !735, line: 119, baseType: !193, size: 64, offset: 192)
!949 = !DIDerivedType(tag: DW_TAG_member, scope: !933, file: !735, line: 120, baseType: !950, size: 64, offset: 256)
!950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !933, file: !735, line: 120, size: 64, elements: !951)
!951 = !{!952, !953, !954}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !950, file: !735, line: 121, baseType: !193, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !950, file: !735, line: 122, baseType: !340, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !950, file: !735, line: 123, baseType: !955, size: 32)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !950, file: !735, line: 123, size: 32, elements: !956)
!956 = !{!957, !958, !959}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !955, file: !735, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !955, file: !735, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !955, file: !735, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!960 = !DIDerivedType(tag: DW_TAG_member, scope: !739, file: !735, line: 130, baseType: !961, size: 192)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !739, file: !735, line: 130, size: 192, elements: !962)
!962 = !{!963, !964, !965, !966, !967}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !961, file: !735, line: 131, baseType: !340, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !961, file: !735, line: 134, baseType: !439, size: 8, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !961, file: !735, line: 135, baseType: !439, size: 8, offset: 72)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !961, file: !735, line: 136, baseType: !759, size: 32, offset: 96)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !961, file: !735, line: 137, baseType: !7, size: 32, offset: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, scope: !739, file: !735, line: 139, baseType: !969, size: 256)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !739, file: !735, line: 139, size: 256, elements: !970)
!970 = !{!971, !972, !973}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !969, file: !735, line: 140, baseType: !340, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !969, file: !735, line: 141, baseType: !759, size: 32, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !969, file: !735, line: 143, baseType: !237, size: 128, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, scope: !739, file: !735, line: 145, baseType: !975, size: 256)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !739, file: !735, line: 145, size: 256, elements: !976)
!976 = !{!977, !978, !980, !981, !2342}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !975, file: !735, line: 146, baseType: !340, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !975, file: !735, line: 147, baseType: !979, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !725, line: 509, baseType: !733)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !975, file: !735, line: 148, baseType: !340, size: 64, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !975, file: !735, line: 149, baseType: !982, size: 64, offset: 192)
!982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !975, file: !735, line: 149, size: 64, elements: !983)
!983 = !{!984, !2341}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !982, file: !735, line: 150, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !735, line: 388, size: 7296, elements: !987)
!987 = !{!988, !2337}
!988 = !DIDerivedType(tag: DW_TAG_member, scope: !986, file: !735, line: 389, baseType: !989, size: 7296)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !986, file: !735, line: 389, size: 7296, elements: !990)
!990 = !{!991, !1109, !1110, !1111, !1115, !1116, !1117, !1118, !1119, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1160, !1168, !1171, !1217, !1218, !2321, !2322, !2325, !2326, !2327, !2330, !2331, !2332, !2335, !2336}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !989, file: !735, line: 390, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !735, line: 305, size: 1472, elements: !994)
!994 = !{!995, !996, !997, !998, !999, !1000, !1001, !1002, !1009, !1010, !1015, !1016, !1019, !1103, !1104, !1105, !1106, !1107}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !993, file: !735, line: 308, baseType: !340, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !993, file: !735, line: 309, baseType: !340, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !993, file: !735, line: 313, baseType: !992, size: 64, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !993, file: !735, line: 313, baseType: !992, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !993, file: !735, line: 315, baseType: !772, size: 192, align: 64, offset: 256)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !993, file: !735, line: 323, baseType: !340, size: 64, offset: 448)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !993, file: !735, line: 327, baseType: !985, size: 64, offset: 512)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !993, file: !735, line: 333, baseType: !1003, size: 64, offset: 576)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !725, line: 284, baseType: !1004)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !725, line: 284, size: 64, elements: !1005)
!1005 = !{!1006}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1004, file: !725, line: 284, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1008, line: 19, baseType: !340)
!1008 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !993, file: !735, line: 334, baseType: !340, size: 64, offset: 640)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !993, file: !735, line: 343, baseType: !1011, size: 256, offset: 704)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !993, file: !735, line: 340, size: 256, elements: !1012)
!1012 = !{!1013, !1014}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1011, file: !735, line: 341, baseType: !772, size: 192, align: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1011, file: !735, line: 342, baseType: !340, size: 64, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !993, file: !735, line: 351, baseType: !237, size: 128, offset: 960)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !993, file: !735, line: 353, baseType: !1017, size: 64, offset: 1088)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !735, line: 353, flags: DIFlagFwdDecl)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !993, file: !735, line: 356, baseType: !1020, size: 64, offset: 1152)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1022)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !21, line: 557, size: 832, elements: !1023)
!1023 = !{!1024, !1028, !1029, !1033, !1037, !1077, !1081, !1085, !1089, !1090, !1091, !1095, !1099}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1022, file: !21, line: 558, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !992}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1022, file: !21, line: 559, baseType: !1025, size: 64, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1022, file: !21, line: 560, baseType: !1030, size: 64, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!198, !992, !340}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1022, file: !21, line: 561, baseType: !1034, size: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!198, !992}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1022, file: !21, line: 562, baseType: !1038, size: 64, offset: 256)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !735, line: 682, baseType: !7)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !21, line: 508, size: 768, elements: !1044)
!1044 = !{!1045, !1046, !1047, !1048, !1049, !1050, !1057, !1064, !1070, !1071, !1072, !1074, !1076}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1043, file: !21, line: 509, baseType: !992, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1043, file: !21, line: 510, baseType: !7, size: 32, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1043, file: !21, line: 511, baseType: !186, size: 32, offset: 96)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1043, file: !21, line: 512, baseType: !340, size: 64, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1043, file: !21, line: 513, baseType: !340, size: 64, offset: 192)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1043, file: !21, line: 514, baseType: !1051, size: 64, offset: 256)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !725, line: 385, baseType: !1053)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !725, line: 385, size: 64, elements: !1054)
!1054 = !{!1055}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1053, file: !725, line: 385, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1008, line: 15, baseType: !340)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1043, file: !21, line: 516, baseType: !1058, size: 64, offset: 320)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !725, line: 359, baseType: !1060)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !725, line: 359, size: 64, elements: !1061)
!1061 = !{!1062}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1060, file: !725, line: 359, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1008, line: 16, baseType: !340)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1043, file: !21, line: 519, baseType: !1065, size: 64, offset: 384)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1008, line: 21, baseType: !1066)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1008, line: 21, size: 64, elements: !1067)
!1067 = !{!1068}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1066, file: !1008, line: 21, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1008, line: 14, baseType: !340)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1043, file: !21, line: 521, baseType: !733, size: 64, offset: 448)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1043, file: !21, line: 522, baseType: !733, size: 64, offset: 512)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1043, file: !21, line: 528, baseType: !1073, size: 64, offset: 576)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1043, file: !21, line: 532, baseType: !1075, size: 64, offset: 640)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1043, file: !21, line: 536, baseType: !979, size: 64, offset: 704)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1022, file: !21, line: 563, baseType: !1078, size: 64, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!1041, !1042, !20}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1022, file: !21, line: 565, baseType: !1082, size: 64, offset: 384)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{null, !1042, !340, !340}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1022, file: !21, line: 567, baseType: !1086, size: 64, offset: 448)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!340, !992}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1022, file: !21, line: 571, baseType: !1038, size: 64, offset: 512)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1022, file: !21, line: 574, baseType: !1038, size: 64, offset: 576)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1022, file: !21, line: 579, baseType: !1092, size: 64, offset: 640)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!198, !992, !340, !193, !198, !198}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1022, file: !21, line: 585, baseType: !1096, size: 64, offset: 704)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!234, !992}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1022, file: !21, line: 615, baseType: !1100, size: 64, offset: 768)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!733, !992, !340}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !993, file: !735, line: 359, baseType: !340, size: 64, offset: 1216)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !993, file: !735, line: 361, baseType: !368, size: 64, offset: 1280)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !993, file: !735, line: 362, baseType: !193, size: 64, offset: 1344)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !993, file: !735, line: 365, baseType: !783, size: 64, offset: 1408)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !993, file: !735, line: 373, baseType: !1108, offset: 1472)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !735, line: 296, elements: !264)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !989, file: !735, line: 391, baseType: !768, size: 64, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !989, file: !735, line: 392, baseType: !433, size: 64, offset: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !989, file: !735, line: 394, baseType: !1112, size: 64, offset: 192)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!340, !368, !340, !340, !340, !340}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !989, file: !735, line: 398, baseType: !340, size: 64, offset: 256)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !989, file: !735, line: 399, baseType: !340, size: 64, offset: 320)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !989, file: !735, line: 405, baseType: !340, size: 64, offset: 384)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !989, file: !735, line: 406, baseType: !340, size: 64, offset: 448)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !989, file: !735, line: 407, baseType: !1120, size: 64, offset: 512)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !725, line: 286, baseType: !1122)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !725, line: 286, size: 64, elements: !1123)
!1123 = !{!1124}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1122, file: !725, line: 286, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1008, line: 18, baseType: !340)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !989, file: !735, line: 416, baseType: !759, size: 32, offset: 576)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !989, file: !735, line: 428, baseType: !759, size: 32, offset: 608)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !989, file: !735, line: 437, baseType: !759, size: 32, offset: 640)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !989, file: !735, line: 447, baseType: !759, size: 32, offset: 672)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !989, file: !735, line: 450, baseType: !783, size: 64, offset: 704)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !989, file: !735, line: 452, baseType: !198, size: 32, offset: 768)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !989, file: !735, line: 454, baseType: !250, offset: 800)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !989, file: !735, line: 457, baseType: !779, size: 256, offset: 832)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !989, file: !735, line: 459, baseType: !237, size: 128, offset: 1088)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !989, file: !735, line: 466, baseType: !340, size: 64, offset: 1216)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !989, file: !735, line: 467, baseType: !340, size: 64, offset: 1280)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !989, file: !735, line: 469, baseType: !340, size: 64, offset: 1344)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !989, file: !735, line: 470, baseType: !340, size: 64, offset: 1408)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !989, file: !735, line: 471, baseType: !785, size: 64, offset: 1472)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !989, file: !735, line: 472, baseType: !340, size: 64, offset: 1536)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !989, file: !735, line: 473, baseType: !340, size: 64, offset: 1600)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !989, file: !735, line: 474, baseType: !340, size: 64, offset: 1664)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !989, file: !735, line: 475, baseType: !340, size: 64, offset: 1728)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !989, file: !735, line: 477, baseType: !250, offset: 1792)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !989, file: !735, line: 478, baseType: !340, size: 64, offset: 1792)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !989, file: !735, line: 478, baseType: !340, size: 64, offset: 1856)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !989, file: !735, line: 478, baseType: !340, size: 64, offset: 1920)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !989, file: !735, line: 478, baseType: !340, size: 64, offset: 1984)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !989, file: !735, line: 479, baseType: !340, size: 64, offset: 2048)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !989, file: !735, line: 479, baseType: !340, size: 64, offset: 2112)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !989, file: !735, line: 479, baseType: !340, size: 64, offset: 2176)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !989, file: !735, line: 480, baseType: !340, size: 64, offset: 2240)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !989, file: !735, line: 480, baseType: !340, size: 64, offset: 2304)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !989, file: !735, line: 480, baseType: !340, size: 64, offset: 2368)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !989, file: !735, line: 480, baseType: !340, size: 64, offset: 2432)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !989, file: !735, line: 482, baseType: !1157, size: 2816, offset: 2496)
!1157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 2816, elements: !1158)
!1158 = !{!1159}
!1159 = !DISubrange(count: 44)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !989, file: !735, line: 488, baseType: !1161, size: 256, offset: 5312)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1162, line: 60, size: 256, elements: !1163)
!1162 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1163 = !{!1164}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1161, file: !1162, line: 61, baseType: !1165, size: 256)
!1165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !783, size: 256, elements: !1166)
!1166 = !{!1167}
!1167 = !DISubrange(count: 4)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !989, file: !735, line: 490, baseType: !1169, size: 64, offset: 5568)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !735, line: 490, flags: DIFlagFwdDecl)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !989, file: !735, line: 493, baseType: !1172, size: 896, offset: 5632)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1173, line: 53, baseType: !1174)
!1173 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1173, line: 13, size: 896, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1179, !1182, !1183, !1190, !1191, !1211, !1212, !1213}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1174, file: !1173, line: 18, baseType: !433, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1174, file: !1173, line: 28, baseType: !785, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1174, file: !1173, line: 31, baseType: !779, size: 256, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1174, file: !1173, line: 32, baseType: !1180, size: 64, offset: 384)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1173, line: 32, flags: DIFlagFwdDecl)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1174, file: !1173, line: 37, baseType: !190, size: 16, offset: 448)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1174, file: !1173, line: 40, baseType: !1184, size: 192, offset: 512)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1185, line: 53, size: 192, elements: !1186)
!1185 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1186 = !{!1187, !1188, !1189}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1184, file: !1185, line: 54, baseType: !783, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1184, file: !1185, line: 55, baseType: !250, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1184, file: !1185, line: 59, baseType: !237, size: 128, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1174, file: !1173, line: 41, baseType: !193, size: 64, offset: 704)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1174, file: !1173, line: 42, baseType: !1192, size: 64, offset: 768)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1194)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1195, line: 13, size: 896, elements: !1196)
!1195 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1196 = !{!1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1194, file: !1195, line: 14, baseType: !193, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1194, file: !1195, line: 15, baseType: !340, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1194, file: !1195, line: 17, baseType: !340, size: 64, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1194, file: !1195, line: 17, baseType: !340, size: 64, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1194, file: !1195, line: 19, baseType: !326, size: 64, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1194, file: !1195, line: 21, baseType: !326, size: 64, offset: 320)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1194, file: !1195, line: 22, baseType: !326, size: 64, offset: 384)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1194, file: !1195, line: 23, baseType: !326, size: 64, offset: 448)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1194, file: !1195, line: 24, baseType: !326, size: 64, offset: 512)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1194, file: !1195, line: 25, baseType: !326, size: 64, offset: 576)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1194, file: !1195, line: 26, baseType: !326, size: 64, offset: 640)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1194, file: !1195, line: 27, baseType: !326, size: 64, offset: 704)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1194, file: !1195, line: 28, baseType: !326, size: 64, offset: 768)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1194, file: !1195, line: 29, baseType: !326, size: 64, offset: 832)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1174, file: !1173, line: 44, baseType: !759, size: 32, offset: 832)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1174, file: !1173, line: 50, baseType: !871, size: 16, offset: 864)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1174, file: !1173, line: 51, baseType: !1214, size: 16, offset: 880)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !206, line: 18, baseType: !1215)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !189, line: 23, baseType: !1216)
!1216 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !989, file: !735, line: 495, baseType: !340, size: 64, offset: 6528)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !989, file: !735, line: 497, baseType: !1219, size: 64, offset: 6592)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !735, line: 381, size: 384, elements: !1221)
!1221 = !{!1222, !1223, !2320}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1220, file: !735, line: 382, baseType: !759, size: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1220, file: !735, line: 383, baseType: !1224, size: 128, offset: 64)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !735, line: 376, size: 128, elements: !1225)
!1225 = !{!1226, !2318}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1224, file: !735, line: 377, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1229, line: 640, size: 48640, elements: !1230)
!1229 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1230 = !{!1231, !1237, !1239, !1240, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1257, !1275, !1286, !1371, !1372, !1373, !1384, !1385, !1387, !1388, !1389, !1390, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1469, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1507, !1509, !1510, !1511, !1523, !1524, !1525, !1526, !1527, !1528, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1552, !1557, !1739, !1740, !1741, !1742, !1743, !1746, !1749, !1752, !1755, !1759, !1860, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1906, !1907, !1908, !1909, !1910, !1915, !1916, !1917, !1920, !1921, !1924, !1927, !1930, !1933, !1976, !1979, !1980, !2059, !2060, !2063, !2064, !2067, !2068, !2069, !2073, !2074, !2075, !2088, !2089, !2090, !2100, !2105, !2108, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1228, file: !1229, line: 646, baseType: !1232, size: 128)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1233, line: 56, size: 128, elements: !1234)
!1233 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1234 = !{!1235, !1236}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1232, file: !1233, line: 57, baseType: !340, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1232, file: !1233, line: 58, baseType: !205, size: 32, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1228, file: !1229, line: 649, baseType: !1238, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !326)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1228, file: !1229, line: 657, baseType: !193, size: 64, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1228, file: !1229, line: 658, baseType: !1241, size: 32, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1242, line: 113, baseType: !1243)
!1242 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1242, line: 111, size: 32, elements: !1244)
!1244 = !{!1245}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1243, file: !1242, line: 112, baseType: !759, size: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1228, file: !1229, line: 660, baseType: !7, size: 32, offset: 288)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1228, file: !1229, line: 661, baseType: !7, size: 32, offset: 320)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1228, file: !1229, line: 684, baseType: !198, size: 32, offset: 352)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1228, file: !1229, line: 686, baseType: !198, size: 32, offset: 384)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1228, file: !1229, line: 687, baseType: !198, size: 32, offset: 416)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1228, file: !1229, line: 688, baseType: !198, size: 32, offset: 448)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1228, file: !1229, line: 689, baseType: !7, size: 32, offset: 480)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1228, file: !1229, line: 691, baseType: !1254, size: 64, offset: 512)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1256)
!1256 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1229, line: 691, flags: DIFlagFwdDecl)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1228, file: !1229, line: 692, baseType: !1258, size: 832, offset: 576)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1229, line: 451, size: 832, elements: !1259)
!1259 = !{!1260, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1258, file: !1229, line: 453, baseType: !1261, size: 128)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1229, line: 325, size: 128, elements: !1262)
!1262 = !{!1263, !1264}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1261, file: !1229, line: 326, baseType: !340, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1261, file: !1229, line: 327, baseType: !205, size: 32, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1258, file: !1229, line: 454, baseType: !772, size: 192, align: 64, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1258, file: !1229, line: 455, baseType: !237, size: 128, offset: 320)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1258, file: !1229, line: 456, baseType: !7, size: 32, offset: 448)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1258, file: !1229, line: 458, baseType: !433, size: 64, offset: 512)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1258, file: !1229, line: 459, baseType: !433, size: 64, offset: 576)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1258, file: !1229, line: 460, baseType: !433, size: 64, offset: 640)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1258, file: !1229, line: 461, baseType: !433, size: 64, offset: 704)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1258, file: !1229, line: 463, baseType: !433, size: 64, offset: 768)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1258, file: !1229, line: 465, baseType: !1274, offset: 832)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1229, line: 415, elements: !264)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1228, file: !1229, line: 693, baseType: !1276, size: 384, offset: 1408)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1229, line: 489, size: 384, elements: !1277)
!1277 = !{!1278, !1279, !1280, !1281, !1282, !1283, !1284}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1276, file: !1229, line: 490, baseType: !237, size: 128)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1276, file: !1229, line: 491, baseType: !340, size: 64, offset: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1276, file: !1229, line: 492, baseType: !340, size: 64, offset: 192)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1276, file: !1229, line: 493, baseType: !7, size: 32, offset: 256)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1276, file: !1229, line: 494, baseType: !190, size: 16, offset: 288)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1276, file: !1229, line: 495, baseType: !190, size: 16, offset: 304)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1276, file: !1229, line: 497, baseType: !1285, size: 64, offset: 320)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1228, file: !1229, line: 697, baseType: !1287, size: 1792, offset: 1792)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1229, line: 507, size: 1792, elements: !1288)
!1288 = !{!1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1368, !1369}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1287, file: !1229, line: 508, baseType: !772, size: 192, align: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1287, file: !1229, line: 515, baseType: !433, size: 64, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1287, file: !1229, line: 516, baseType: !433, size: 64, offset: 256)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1287, file: !1229, line: 517, baseType: !433, size: 64, offset: 320)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1287, file: !1229, line: 518, baseType: !433, size: 64, offset: 384)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1287, file: !1229, line: 519, baseType: !433, size: 64, offset: 448)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1287, file: !1229, line: 526, baseType: !789, size: 64, offset: 512)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1287, file: !1229, line: 527, baseType: !433, size: 64, offset: 576)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1287, file: !1229, line: 528, baseType: !7, size: 32, offset: 640)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1287, file: !1229, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1287, file: !1229, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1287, file: !1229, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1287, file: !1229, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1287, file: !1229, line: 563, baseType: !1303, size: 512, offset: 704)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !27, line: 118, size: 512, elements: !1304)
!1304 = !{!1305, !1313, !1314, !1319, !1362, !1365, !1366, !1367}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1303, file: !27, line: 119, baseType: !1306, size: 256)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1307, line: 9, size: 256, elements: !1308)
!1307 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1308 = !{!1309, !1310}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1306, file: !1307, line: 10, baseType: !772, size: 192, align: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1306, file: !1307, line: 11, baseType: !1311, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1312, line: 29, baseType: !789)
!1312 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1303, file: !27, line: 120, baseType: !1311, size: 64, offset: 256)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1303, file: !27, line: 121, baseType: !1315, size: 64, offset: 320)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!26, !1318}
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1303, file: !27, line: 122, baseType: !1320, size: 64, offset: 384)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !27, line: 159, size: 512, align: 512, elements: !1322)
!1322 = !{!1323, !1343, !1344, !1347, !1352, !1353, !1357, !1361}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1321, file: !27, line: 160, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !27, line: 214, size: 4608, align: 512, elements: !1326)
!1326 = !{!1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1325, file: !27, line: 215, baseType: !792)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1325, file: !27, line: 216, baseType: !7, size: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1325, file: !27, line: 217, baseType: !7, size: 32, offset: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1325, file: !27, line: 218, baseType: !7, size: 32, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1325, file: !27, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1325, file: !27, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1325, file: !27, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1325, file: !27, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1325, file: !27, line: 233, baseType: !1311, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1325, file: !27, line: 234, baseType: !1318, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1325, file: !27, line: 235, baseType: !1311, size: 64, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1325, file: !27, line: 236, baseType: !1318, size: 64, offset: 320)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1325, file: !27, line: 237, baseType: !1340, size: 4096, offset: 512)
!1340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1321, size: 4096, elements: !1341)
!1341 = !{!1342}
!1342 = !DISubrange(count: 8)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1321, file: !27, line: 161, baseType: !7, size: 32, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1321, file: !27, line: 162, baseType: !1345, size: 32, offset: 96)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !187, line: 27, baseType: !1346)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !324, line: 96, baseType: !198)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1321, file: !27, line: 163, baseType: !1348, size: 32, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !404, line: 276, baseType: !1349)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !404, line: 276, size: 32, elements: !1350)
!1350 = !{!1351}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1349, file: !404, line: 276, baseType: !408, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1321, file: !27, line: 164, baseType: !1318, size: 64, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1321, file: !27, line: 165, baseType: !1354, size: 128, offset: 256)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1307, line: 14, size: 128, elements: !1355)
!1355 = !{!1356}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1354, file: !1307, line: 15, baseType: !764, size: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1321, file: !27, line: 166, baseType: !1358, size: 64, offset: 384)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!1311}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1321, file: !27, line: 167, baseType: !1311, size: 64, offset: 448)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1303, file: !27, line: 123, baseType: !1363, size: 8, offset: 448)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !206, line: 17, baseType: !1364)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !189, line: 21, baseType: !439)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1303, file: !27, line: 124, baseType: !1363, size: 8, offset: 456)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1303, file: !27, line: 125, baseType: !1363, size: 8, offset: 464)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1303, file: !27, line: 126, baseType: !1363, size: 8, offset: 472)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1287, file: !1229, line: 572, baseType: !1303, size: 512, offset: 1216)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1287, file: !1229, line: 580, baseType: !1370, size: 64, offset: 1728)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1228, file: !1229, line: 721, baseType: !7, size: 32, offset: 3584)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1228, file: !1229, line: 722, baseType: !198, size: 32, offset: 3616)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1228, file: !1229, line: 723, baseType: !1374, size: 64, offset: 3648)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1376)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1377, line: 17, baseType: !1378)
!1377 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1377, line: 17, size: 64, elements: !1379)
!1379 = !{!1380}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1378, file: !1377, line: 17, baseType: !1381, size: 64)
!1381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 64, elements: !1382)
!1382 = !{!1383}
!1383 = !DISubrange(count: 1)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1228, file: !1229, line: 724, baseType: !1376, size: 64, offset: 3712)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1228, file: !1229, line: 749, baseType: !1386, offset: 3776)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1229, line: 290, elements: !264)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1228, file: !1229, line: 751, baseType: !237, size: 128, offset: 3776)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1228, file: !1229, line: 757, baseType: !985, size: 64, offset: 3904)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1228, file: !1229, line: 758, baseType: !985, size: 64, offset: 3968)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1228, file: !1229, line: 761, baseType: !1391, size: 320, offset: 4032)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1162, line: 34, size: 320, elements: !1392)
!1392 = !{!1393, !1394}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1391, file: !1162, line: 35, baseType: !433, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1391, file: !1162, line: 36, baseType: !1395, size: 256, offset: 64)
!1395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !992, size: 256, elements: !1166)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1228, file: !1229, line: 766, baseType: !198, size: 32, offset: 4352)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1228, file: !1229, line: 767, baseType: !198, size: 32, offset: 4384)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1228, file: !1229, line: 768, baseType: !198, size: 32, offset: 4416)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1228, file: !1229, line: 770, baseType: !198, size: 32, offset: 4448)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1228, file: !1229, line: 772, baseType: !340, size: 64, offset: 4480)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1228, file: !1229, line: 775, baseType: !7, size: 32, offset: 4544)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1228, file: !1229, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1228, file: !1229, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1228, file: !1229, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1228, file: !1229, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1228, file: !1229, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1228, file: !1229, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1228, file: !1229, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1228, file: !1229, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1228, file: !1229, line: 831, baseType: !340, size: 64, offset: 4672)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1228, file: !1229, line: 833, baseType: !1412, size: 384, offset: 4736)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !32, line: 25, size: 384, elements: !1413)
!1413 = !{!1414, !1419}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1412, file: !32, line: 26, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!326, !1418}
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, scope: !1412, file: !32, line: 27, baseType: !1420, size: 320, offset: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1412, file: !32, line: 27, size: 320, elements: !1421)
!1421 = !{!1422, !1432, !1459}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1420, file: !32, line: 36, baseType: !1423, size: 320)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1420, file: !32, line: 29, size: 320, elements: !1424)
!1424 = !{!1425, !1427, !1428, !1429, !1430, !1431}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1423, file: !32, line: 30, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1423, file: !32, line: 31, baseType: !205, size: 32, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1423, file: !32, line: 32, baseType: !205, size: 32, offset: 96)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1423, file: !32, line: 33, baseType: !205, size: 32, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1423, file: !32, line: 34, baseType: !433, size: 64, offset: 192)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1423, file: !32, line: 35, baseType: !1426, size: 64, offset: 256)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1420, file: !32, line: 46, baseType: !1433, size: 192)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1420, file: !32, line: 38, size: 192, elements: !1434)
!1434 = !{!1435, !1436, !1437, !1458}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1433, file: !32, line: 39, baseType: !1345, size: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1433, file: !32, line: 40, baseType: !31, size: 32, offset: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, scope: !1433, file: !32, line: 41, baseType: !1438, size: 64, offset: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1433, file: !32, line: 41, size: 64, elements: !1439)
!1439 = !{!1440, !1448}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1438, file: !32, line: 42, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1443, line: 7, size: 128, elements: !1444)
!1443 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1444 = !{!1445, !1447}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1442, file: !1443, line: 8, baseType: !1446, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !324, line: 93, baseType: !545)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1442, file: !1443, line: 9, baseType: !545, size: 64, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1438, file: !32, line: 43, baseType: !1449, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1451, line: 7, size: 64, elements: !1452)
!1451 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1452 = !{!1453, !1457}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1450, file: !1451, line: 8, baseType: !1454, size: 32)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1451, line: 5, baseType: !1455)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !206, line: 20, baseType: !1456)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !189, line: 26, baseType: !198)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1450, file: !1451, line: 9, baseType: !1455, size: 32, offset: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1433, file: !32, line: 45, baseType: !433, size: 64, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1420, file: !32, line: 54, baseType: !1460, size: 256)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1420, file: !32, line: 48, size: 256, elements: !1461)
!1461 = !{!1462, !1465, !1466, !1467, !1468}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1460, file: !32, line: 49, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !32, line: 14, flags: DIFlagFwdDecl)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1460, file: !32, line: 50, baseType: !198, size: 32, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1460, file: !32, line: 51, baseType: !198, size: 32, offset: 96)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1460, file: !32, line: 52, baseType: !340, size: 64, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1460, file: !32, line: 53, baseType: !340, size: 64, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1228, file: !1229, line: 835, baseType: !1470, size: 32, offset: 5120)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !187, line: 22, baseType: !1471)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !324, line: 28, baseType: !198)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1228, file: !1229, line: 836, baseType: !1470, size: 32, offset: 5152)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1228, file: !1229, line: 840, baseType: !340, size: 64, offset: 5184)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1228, file: !1229, line: 849, baseType: !1227, size: 64, offset: 5248)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1228, file: !1229, line: 852, baseType: !1227, size: 64, offset: 5312)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1228, file: !1229, line: 857, baseType: !237, size: 128, offset: 5376)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1228, file: !1229, line: 858, baseType: !237, size: 128, offset: 5504)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1228, file: !1229, line: 859, baseType: !1227, size: 64, offset: 5632)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1228, file: !1229, line: 867, baseType: !237, size: 128, offset: 5696)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1228, file: !1229, line: 868, baseType: !237, size: 128, offset: 5824)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1228, file: !1229, line: 871, baseType: !1482, size: 64, offset: 5952)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !60, line: 59, size: 768, elements: !1484)
!1484 = !{!1485, !1486, !1487, !1488, !1490, !1491, !1498, !1499}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1483, file: !60, line: 61, baseType: !1241, size: 32)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1483, file: !60, line: 62, baseType: !7, size: 32, offset: 32)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1483, file: !60, line: 63, baseType: !250, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1483, file: !60, line: 65, baseType: !1489, size: 256, offset: 64)
!1489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 256, elements: !1166)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1483, file: !60, line: 66, baseType: !647, size: 64, offset: 320)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1483, file: !60, line: 68, baseType: !1492, size: 128, offset: 384)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1493, line: 40, baseType: !1494)
!1493 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1493, line: 36, size: 128, elements: !1495)
!1495 = !{!1496, !1497}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1494, file: !1493, line: 37, baseType: !250)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1494, file: !1493, line: 38, baseType: !237, size: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1483, file: !60, line: 69, baseType: !381, size: 128, align: 64, offset: 512)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1483, file: !60, line: 70, baseType: !1500, size: 128, offset: 640)
!1500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1501, size: 128, elements: !1382)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !60, line: 54, size: 128, elements: !1502)
!1502 = !{!1503, !1504}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1501, file: !60, line: 55, baseType: !198, size: 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1501, file: !60, line: 56, baseType: !1505, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !60, line: 56, flags: DIFlagFwdDecl)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1228, file: !1229, line: 872, baseType: !1508, size: 512, offset: 6016)
!1508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 512, elements: !1166)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1228, file: !1229, line: 873, baseType: !237, size: 128, offset: 6528)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1228, file: !1229, line: 874, baseType: !237, size: 128, offset: 6656)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1228, file: !1229, line: 876, baseType: !1512, size: 64, offset: 6784)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1514, line: 26, size: 192, elements: !1515)
!1514 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1513, file: !1514, line: 27, baseType: !7, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1513, file: !1514, line: 28, baseType: !1518, size: 128, offset: 64)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1519, line: 43, size: 128, elements: !1520)
!1519 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1518, file: !1519, line: 44, baseType: !792)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1518, file: !1519, line: 45, baseType: !237, size: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1228, file: !1229, line: 879, baseType: !717, size: 64, offset: 6848)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1228, file: !1229, line: 882, baseType: !717, size: 64, offset: 6912)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1228, file: !1229, line: 884, baseType: !433, size: 64, offset: 6976)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1228, file: !1229, line: 885, baseType: !433, size: 64, offset: 7040)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1228, file: !1229, line: 890, baseType: !433, size: 64, offset: 7104)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1228, file: !1229, line: 891, baseType: !1529, size: 128, offset: 7168)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1229, line: 242, size: 128, elements: !1530)
!1530 = !{!1531, !1532, !1533}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1529, file: !1229, line: 244, baseType: !433, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1529, file: !1229, line: 245, baseType: !433, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1529, file: !1229, line: 246, baseType: !792, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1228, file: !1229, line: 900, baseType: !340, size: 64, offset: 7296)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1228, file: !1229, line: 901, baseType: !340, size: 64, offset: 7360)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1228, file: !1229, line: 904, baseType: !433, size: 64, offset: 7424)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1228, file: !1229, line: 907, baseType: !433, size: 64, offset: 7488)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1228, file: !1229, line: 910, baseType: !340, size: 64, offset: 7552)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1228, file: !1229, line: 911, baseType: !340, size: 64, offset: 7616)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1228, file: !1229, line: 914, baseType: !1541, size: 640, offset: 7680)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1542, line: 123, size: 640, elements: !1543)
!1542 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1543 = !{!1544, !1550, !1551}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1541, file: !1542, line: 124, baseType: !1545, size: 576)
!1545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1546, size: 576, elements: !292)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1542, line: 108, size: 192, elements: !1547)
!1547 = !{!1548, !1549}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1546, file: !1542, line: 109, baseType: !433, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1546, file: !1542, line: 110, baseType: !1354, size: 128, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1541, file: !1542, line: 125, baseType: !7, size: 32, offset: 576)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1541, file: !1542, line: 126, baseType: !7, size: 32, offset: 608)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1228, file: !1229, line: 917, baseType: !1553, size: 192, offset: 8320)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1542, line: 134, size: 192, elements: !1554)
!1554 = !{!1555, !1556}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1553, file: !1542, line: 135, baseType: !381, size: 128, align: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1553, file: !1542, line: 136, baseType: !7, size: 32, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1228, file: !1229, line: 923, baseType: !1558, size: 64, offset: 8512)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1560)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1561, line: 111, size: 1280, elements: !1562)
!1561 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1562 = !{!1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1580, !1581, !1582, !1583, !1584, !1585, !1692, !1693, !1694, !1695, !1721, !1724, !1734}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1560, file: !1561, line: 112, baseType: !759, size: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1560, file: !1561, line: 120, baseType: !447, size: 32, offset: 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1560, file: !1561, line: 121, baseType: !455, size: 32, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1560, file: !1561, line: 122, baseType: !447, size: 32, offset: 96)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1560, file: !1561, line: 123, baseType: !455, size: 32, offset: 128)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1560, file: !1561, line: 124, baseType: !447, size: 32, offset: 160)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1560, file: !1561, line: 125, baseType: !455, size: 32, offset: 192)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1560, file: !1561, line: 126, baseType: !447, size: 32, offset: 224)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1560, file: !1561, line: 127, baseType: !455, size: 32, offset: 256)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1560, file: !1561, line: 128, baseType: !7, size: 32, offset: 288)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1560, file: !1561, line: 129, baseType: !1574, size: 64, offset: 320)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1575, line: 26, baseType: !1576)
!1575 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1575, line: 24, size: 64, elements: !1577)
!1577 = !{!1578}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1576, file: !1575, line: 25, baseType: !1579, size: 64)
!1579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 64, elements: !218)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1560, file: !1561, line: 130, baseType: !1574, size: 64, offset: 384)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1560, file: !1561, line: 131, baseType: !1574, size: 64, offset: 448)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1560, file: !1561, line: 132, baseType: !1574, size: 64, offset: 512)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1560, file: !1561, line: 133, baseType: !1574, size: 64, offset: 576)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1560, file: !1561, line: 135, baseType: !439, size: 8, offset: 640)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1560, file: !1561, line: 137, baseType: !1586, size: 64, offset: 704)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1588, line: 189, size: 1664, elements: !1589)
!1588 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1589 = !{!1590, !1591, !1594, !1599, !1600, !1603, !1604, !1609, !1610, !1611, !1612, !1614, !1615, !1616, !1617, !1618, !1656, !1677}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1587, file: !1588, line: 190, baseType: !1241, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1587, file: !1588, line: 191, baseType: !1592, size: 32, offset: 32)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1588, line: 28, baseType: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !187, line: 98, baseType: !1455)
!1594 = !DIDerivedType(tag: DW_TAG_member, scope: !1587, file: !1588, line: 192, baseType: !1595, size: 192, offset: 64)
!1595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1587, file: !1588, line: 192, size: 192, elements: !1596)
!1596 = !{!1597, !1598}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1595, file: !1588, line: 193, baseType: !237, size: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1595, file: !1588, line: 194, baseType: !772, size: 192, align: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1587, file: !1588, line: 199, baseType: !779, size: 256, offset: 256)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1587, file: !1588, line: 200, baseType: !1601, size: 64, offset: 512)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1588, line: 200, flags: DIFlagFwdDecl)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1587, file: !1588, line: 201, baseType: !193, size: 64, offset: 576)
!1604 = !DIDerivedType(tag: DW_TAG_member, scope: !1587, file: !1588, line: 202, baseType: !1605, size: 64, offset: 640)
!1605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1587, file: !1588, line: 202, size: 64, elements: !1606)
!1606 = !{!1607, !1608}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1605, file: !1588, line: 203, baseType: !551, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1605, file: !1588, line: 204, baseType: !551, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1587, file: !1588, line: 206, baseType: !551, size: 64, offset: 704)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1587, file: !1588, line: 207, baseType: !447, size: 32, offset: 768)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1587, file: !1588, line: 208, baseType: !455, size: 32, offset: 800)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1587, file: !1588, line: 209, baseType: !1613, size: 32, offset: 832)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1588, line: 31, baseType: !571)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1587, file: !1588, line: 210, baseType: !190, size: 16, offset: 864)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1587, file: !1588, line: 211, baseType: !190, size: 16, offset: 880)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1587, file: !1588, line: 215, baseType: !1216, size: 16, offset: 896)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1587, file: !1588, line: 222, baseType: !340, size: 64, offset: 960)
!1618 = !DIDerivedType(tag: DW_TAG_member, scope: !1587, file: !1588, line: 239, baseType: !1619, size: 320, offset: 1024)
!1619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1587, file: !1588, line: 239, size: 320, elements: !1620)
!1620 = !{!1621, !1648}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1619, file: !1588, line: 240, baseType: !1622, size: 320)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1588, line: 108, size: 320, elements: !1623)
!1623 = !{!1624, !1625, !1637, !1640, !1647}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1622, file: !1588, line: 110, baseType: !340, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, scope: !1622, file: !1588, line: 111, baseType: !1626, size: 64, offset: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1622, file: !1588, line: 111, size: 64, elements: !1627)
!1627 = !{!1628, !1636}
!1628 = !DIDerivedType(tag: DW_TAG_member, scope: !1626, file: !1588, line: 112, baseType: !1629, size: 64)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1626, file: !1588, line: 112, size: 64, elements: !1630)
!1630 = !{!1631, !1632}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1629, file: !1588, line: 114, baseType: !871, size: 16)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1629, file: !1588, line: 115, baseType: !1633, size: 48, offset: 16)
!1633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 48, elements: !1634)
!1634 = !{!1635}
!1635 = !DISubrange(count: 6)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1626, file: !1588, line: 121, baseType: !340, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1622, file: !1588, line: 123, baseType: !1638, size: 64, offset: 128)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1588, line: 96, flags: DIFlagFwdDecl)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1622, file: !1588, line: 124, baseType: !1641, size: 64, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1588, line: 102, size: 192, elements: !1643)
!1643 = !{!1644, !1645, !1646}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1642, file: !1588, line: 103, baseType: !381, size: 128, align: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1642, file: !1588, line: 104, baseType: !1241, size: 32, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1642, file: !1588, line: 105, baseType: !502, size: 8, offset: 160)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1622, file: !1588, line: 125, baseType: !234, size: 64, offset: 256)
!1648 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !1588, line: 241, baseType: !1649, size: 320)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1619, file: !1588, line: 241, size: 320, elements: !1650)
!1650 = !{!1651, !1652, !1653, !1654, !1655}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1649, file: !1588, line: 242, baseType: !340, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1649, file: !1588, line: 243, baseType: !340, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1649, file: !1588, line: 244, baseType: !1638, size: 64, offset: 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1649, file: !1588, line: 245, baseType: !1641, size: 64, offset: 192)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1649, file: !1588, line: 246, baseType: !291, size: 64, offset: 256)
!1656 = !DIDerivedType(tag: DW_TAG_member, scope: !1587, file: !1588, line: 254, baseType: !1657, size: 256, offset: 1344)
!1657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1587, file: !1588, line: 254, size: 256, elements: !1658)
!1658 = !{!1659, !1665}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1657, file: !1588, line: 255, baseType: !1660, size: 256)
!1660 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1588, line: 128, size: 256, elements: !1661)
!1661 = !{!1662, !1663}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1660, file: !1588, line: 129, baseType: !193, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1660, file: !1588, line: 130, baseType: !1664, size: 256)
!1664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 256, elements: !1166)
!1665 = !DIDerivedType(tag: DW_TAG_member, scope: !1657, file: !1588, line: 256, baseType: !1666, size: 256)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1657, file: !1588, line: 256, size: 256, elements: !1667)
!1667 = !{!1668, !1669}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1666, file: !1588, line: 258, baseType: !237, size: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1666, file: !1588, line: 259, baseType: !1670, size: 128, offset: 128)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1671, line: 22, size: 128, elements: !1672)
!1671 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1672 = !{!1673, !1676}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1670, file: !1671, line: 23, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1671, line: 23, flags: DIFlagFwdDecl)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1670, file: !1671, line: 24, baseType: !340, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1587, file: !1588, line: 274, baseType: !1678, size: 64, offset: 1600)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1588, line: 170, size: 192, elements: !1680)
!1680 = !{!1681, !1690, !1691}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1679, file: !1588, line: 171, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1588, line: 165, baseType: !1683)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!198, !1586, !1686, !1688, !1586}
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1639)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1660)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1679, file: !1588, line: 172, baseType: !1586, size: 64, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1679, file: !1588, line: 173, baseType: !1638, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1560, file: !1561, line: 138, baseType: !1586, size: 64, offset: 768)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1560, file: !1561, line: 139, baseType: !1586, size: 64, offset: 832)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1560, file: !1561, line: 140, baseType: !1586, size: 64, offset: 896)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1560, file: !1561, line: 145, baseType: !1696, size: 64, offset: 960)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1698, line: 13, size: 896, elements: !1699)
!1698 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1699 = !{!1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1697, file: !1698, line: 14, baseType: !1241, size: 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1697, file: !1698, line: 15, baseType: !759, size: 32, offset: 32)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1697, file: !1698, line: 16, baseType: !759, size: 32, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1697, file: !1698, line: 21, baseType: !783, size: 64, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1697, file: !1698, line: 27, baseType: !340, size: 64, offset: 192)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1697, file: !1698, line: 28, baseType: !340, size: 64, offset: 256)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1697, file: !1698, line: 29, baseType: !783, size: 64, offset: 320)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1697, file: !1698, line: 32, baseType: !651, size: 128, offset: 384)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1697, file: !1698, line: 33, baseType: !447, size: 32, offset: 512)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1697, file: !1698, line: 37, baseType: !783, size: 64, offset: 576)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1697, file: !1698, line: 44, baseType: !1711, size: 256, offset: 640)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1712, line: 15, size: 256, elements: !1713)
!1712 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1713 = !{!1714, !1715, !1716, !1717, !1718, !1719, !1720}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1711, file: !1712, line: 16, baseType: !792)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1711, file: !1712, line: 18, baseType: !198, size: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1711, file: !1712, line: 19, baseType: !198, size: 32, offset: 32)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1711, file: !1712, line: 20, baseType: !198, size: 32, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1711, file: !1712, line: 21, baseType: !198, size: 32, offset: 96)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1711, file: !1712, line: 22, baseType: !340, size: 64, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1711, file: !1712, line: 23, baseType: !340, size: 64, offset: 192)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1560, file: !1561, line: 146, baseType: !1722, size: 64, offset: 1024)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !448, line: 18, flags: DIFlagFwdDecl)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1560, file: !1561, line: 147, baseType: !1725, size: 64, offset: 1088)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1561, line: 25, size: 64, elements: !1727)
!1727 = !{!1728, !1729, !1730}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1726, file: !1561, line: 26, baseType: !759, size: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1726, file: !1561, line: 27, baseType: !198, size: 32, offset: 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1726, file: !1561, line: 28, baseType: !1731, offset: 64)
!1731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, elements: !1732)
!1732 = !{!1733}
!1733 = !DISubrange(count: 0)
!1734 = !DIDerivedType(tag: DW_TAG_member, scope: !1560, file: !1561, line: 149, baseType: !1735, size: 128, offset: 1152)
!1735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1560, file: !1561, line: 149, size: 128, elements: !1736)
!1736 = !{!1737, !1738}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1735, file: !1561, line: 150, baseType: !198, size: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1735, file: !1561, line: 151, baseType: !381, size: 128, align: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1228, file: !1229, line: 926, baseType: !1558, size: 64, offset: 8576)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1228, file: !1229, line: 929, baseType: !1558, size: 64, offset: 8640)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1228, file: !1229, line: 933, baseType: !1586, size: 64, offset: 8704)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1228, file: !1229, line: 943, baseType: !200, size: 128, offset: 8768)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1228, file: !1229, line: 945, baseType: !1744, size: 64, offset: 8896)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1229, line: 49, flags: DIFlagFwdDecl)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1228, file: !1229, line: 956, baseType: !1747, size: 64, offset: 8960)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1229, line: 45, flags: DIFlagFwdDecl)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1228, file: !1229, line: 959, baseType: !1750, size: 64, offset: 9024)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1229, line: 959, flags: DIFlagFwdDecl)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1228, file: !1229, line: 962, baseType: !1753, size: 64, offset: 9088)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1229, line: 66, flags: DIFlagFwdDecl)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1228, file: !1229, line: 966, baseType: !1756, size: 64, offset: 9152)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1758, line: 35, flags: DIFlagFwdDecl)
!1758 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1228, file: !1229, line: 969, baseType: !1760, size: 64, offset: 9216)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1762, line: 82, size: 7296, elements: !1763)
!1762 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1769, !1770, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1799, !1808, !1809, !1811, !1812, !1813, !1816, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1846, !1847, !1854, !1855, !1856, !1857, !1858, !1859}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1761, file: !1762, line: 83, baseType: !1241, size: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1761, file: !1762, line: 84, baseType: !759, size: 32, offset: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1761, file: !1762, line: 85, baseType: !198, size: 32, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1761, file: !1762, line: 86, baseType: !237, size: 128, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1761, file: !1762, line: 88, baseType: !1492, size: 128, offset: 256)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1761, file: !1762, line: 91, baseType: !1227, size: 64, offset: 384)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1761, file: !1762, line: 94, baseType: !1771, size: 192, offset: 448)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1772, line: 30, size: 192, elements: !1773)
!1772 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1773 = !{!1774, !1775}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1771, file: !1772, line: 31, baseType: !237, size: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1771, file: !1772, line: 32, baseType: !1776, size: 64, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1777, line: 25, baseType: !1778)
!1777 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1777, line: 23, size: 64, elements: !1779)
!1779 = !{!1780}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1778, file: !1777, line: 24, baseType: !1381, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1761, file: !1762, line: 97, baseType: !647, size: 64, offset: 640)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1761, file: !1762, line: 100, baseType: !198, size: 32, offset: 704)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1761, file: !1762, line: 106, baseType: !198, size: 32, offset: 736)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1761, file: !1762, line: 107, baseType: !1227, size: 64, offset: 768)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1761, file: !1762, line: 110, baseType: !198, size: 32, offset: 832)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1761, file: !1762, line: 111, baseType: !7, size: 32, offset: 864)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1761, file: !1762, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1761, file: !1762, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1761, file: !1762, line: 128, baseType: !198, size: 32, offset: 928)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1761, file: !1762, line: 129, baseType: !237, size: 128, offset: 960)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1761, file: !1762, line: 132, baseType: !1303, size: 512, offset: 1088)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1761, file: !1762, line: 133, baseType: !1311, size: 64, offset: 1600)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1761, file: !1762, line: 140, baseType: !1794, size: 256, offset: 1664)
!1794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1795, size: 256, elements: !218)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1762, line: 38, size: 128, elements: !1796)
!1796 = !{!1797, !1798}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1795, file: !1762, line: 39, baseType: !433, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1795, file: !1762, line: 40, baseType: !433, size: 64, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1761, file: !1762, line: 146, baseType: !1800, size: 192, offset: 1920)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1762, line: 66, size: 192, elements: !1801)
!1801 = !{!1802}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1800, file: !1762, line: 67, baseType: !1803, size: 192)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1762, line: 47, size: 192, elements: !1804)
!1804 = !{!1805, !1806, !1807}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1803, file: !1762, line: 48, baseType: !785, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1803, file: !1762, line: 49, baseType: !785, size: 64, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1803, file: !1762, line: 50, baseType: !785, size: 64, offset: 128)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1761, file: !1762, line: 150, baseType: !1541, size: 640, offset: 2112)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1761, file: !1762, line: 153, baseType: !1810, size: 256, offset: 2752)
!1810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1482, size: 256, elements: !1166)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1761, file: !1762, line: 159, baseType: !1482, size: 64, offset: 3008)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1761, file: !1762, line: 162, baseType: !198, size: 32, offset: 3072)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1761, file: !1762, line: 164, baseType: !1814, size: 64, offset: 3136)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1762, line: 164, flags: DIFlagFwdDecl)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1761, file: !1762, line: 175, baseType: !1817, size: 32, offset: 3200)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !404, line: 805, baseType: !1818)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !404, line: 798, size: 32, elements: !1819)
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1818, file: !404, line: 803, baseType: !403, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1818, file: !404, line: 804, baseType: !250, offset: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1761, file: !1762, line: 176, baseType: !433, size: 64, offset: 3264)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1761, file: !1762, line: 176, baseType: !433, size: 64, offset: 3328)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1761, file: !1762, line: 176, baseType: !433, size: 64, offset: 3392)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1761, file: !1762, line: 176, baseType: !433, size: 64, offset: 3456)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1761, file: !1762, line: 177, baseType: !433, size: 64, offset: 3520)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1761, file: !1762, line: 178, baseType: !433, size: 64, offset: 3584)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1761, file: !1762, line: 179, baseType: !1529, size: 128, offset: 3648)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1761, file: !1762, line: 180, baseType: !340, size: 64, offset: 3776)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1761, file: !1762, line: 180, baseType: !340, size: 64, offset: 3840)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1761, file: !1762, line: 180, baseType: !340, size: 64, offset: 3904)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1761, file: !1762, line: 180, baseType: !340, size: 64, offset: 3968)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1761, file: !1762, line: 181, baseType: !340, size: 64, offset: 4032)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1761, file: !1762, line: 181, baseType: !340, size: 64, offset: 4096)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1761, file: !1762, line: 181, baseType: !340, size: 64, offset: 4160)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1761, file: !1762, line: 181, baseType: !340, size: 64, offset: 4224)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1761, file: !1762, line: 182, baseType: !340, size: 64, offset: 4288)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1761, file: !1762, line: 182, baseType: !340, size: 64, offset: 4352)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1761, file: !1762, line: 182, baseType: !340, size: 64, offset: 4416)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1761, file: !1762, line: 182, baseType: !340, size: 64, offset: 4480)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1761, file: !1762, line: 183, baseType: !340, size: 64, offset: 4544)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1761, file: !1762, line: 183, baseType: !340, size: 64, offset: 4608)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1761, file: !1762, line: 184, baseType: !1844, offset: 4672)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1845, line: 12, elements: !264)
!1845 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1761, file: !1762, line: 192, baseType: !435, size: 64, offset: 4672)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1761, file: !1762, line: 203, baseType: !1848, size: 2048, offset: 4736)
!1848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1849, size: 2048, elements: !202)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1850, line: 43, size: 128, elements: !1851)
!1850 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1851 = !{!1852, !1853}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1849, file: !1850, line: 44, baseType: !339, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1849, file: !1850, line: 45, baseType: !339, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1761, file: !1762, line: 220, baseType: !502, size: 8, offset: 6784)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1761, file: !1762, line: 221, baseType: !1216, size: 16, offset: 6800)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1761, file: !1762, line: 222, baseType: !1216, size: 16, offset: 6816)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1761, file: !1762, line: 224, baseType: !985, size: 64, offset: 6848)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1761, file: !1762, line: 227, baseType: !1184, size: 192, offset: 6912)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1761, file: !1762, line: 233, baseType: !1184, size: 192, offset: 7104)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1228, file: !1229, line: 970, baseType: !1861, size: 64, offset: 9280)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1762, line: 20, size: 16576, elements: !1863)
!1863 = !{!1864, !1865, !1866, !1867}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1862, file: !1762, line: 21, baseType: !250)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1862, file: !1762, line: 22, baseType: !1241, size: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1862, file: !1762, line: 23, baseType: !1492, size: 128, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1862, file: !1762, line: 24, baseType: !1868, size: 16384, offset: 192)
!1868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1869, size: 16384, elements: !296)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1772, line: 49, size: 256, elements: !1870)
!1870 = !{!1871}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1869, file: !1772, line: 50, baseType: !1872, size: 256)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1772, line: 35, size: 256, elements: !1873)
!1873 = !{!1874, !1881, !1882, !1888}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1872, file: !1772, line: 37, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1876, line: 19, baseType: !1877)
!1876 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1876, line: 18, baseType: !1879)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{null, !198}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1872, file: !1772, line: 38, baseType: !340, size: 64, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1872, file: !1772, line: 44, baseType: !1883, size: 64, offset: 128)
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1876, line: 22, baseType: !1884)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1876, line: 21, baseType: !1886)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{null}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1872, file: !1772, line: 46, baseType: !1776, size: 64, offset: 192)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1228, file: !1229, line: 971, baseType: !1776, size: 64, offset: 9344)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1228, file: !1229, line: 972, baseType: !1776, size: 64, offset: 9408)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1228, file: !1229, line: 974, baseType: !1776, size: 64, offset: 9472)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1228, file: !1229, line: 975, baseType: !1771, size: 192, offset: 9536)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1228, file: !1229, line: 976, baseType: !340, size: 64, offset: 9728)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1228, file: !1229, line: 977, baseType: !337, size: 64, offset: 9792)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1228, file: !1229, line: 978, baseType: !7, size: 32, offset: 9856)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1228, file: !1229, line: 980, baseType: !384, size: 64, offset: 9920)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1228, file: !1229, line: 989, baseType: !1898, size: 128, offset: 9984)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1899, line: 35, size: 128, elements: !1900)
!1899 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1900 = !{!1901, !1902, !1903}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1898, file: !1899, line: 36, baseType: !198, size: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1898, file: !1899, line: 37, baseType: !759, size: 32, offset: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1898, file: !1899, line: 38, baseType: !1904, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1899, line: 23, flags: DIFlagFwdDecl)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1228, file: !1229, line: 992, baseType: !433, size: 64, offset: 10112)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1228, file: !1229, line: 993, baseType: !433, size: 64, offset: 10176)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1228, file: !1229, line: 996, baseType: !250, offset: 10240)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1228, file: !1229, line: 999, baseType: !792, offset: 10240)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1228, file: !1229, line: 1001, baseType: !1911, size: 64, offset: 10240)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1229, line: 636, size: 64, elements: !1912)
!1912 = !{!1913}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1911, file: !1229, line: 637, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1228, file: !1229, line: 1005, baseType: !764, size: 128, offset: 10304)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1228, file: !1229, line: 1007, baseType: !1227, size: 64, offset: 10432)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1228, file: !1229, line: 1009, baseType: !1918, size: 64, offset: 10496)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1229, line: 1009, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1228, file: !1229, line: 1043, baseType: !193, size: 64, offset: 10560)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1228, file: !1229, line: 1046, baseType: !1922, size: 64, offset: 10624)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1229, line: 41, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1228, file: !1229, line: 1050, baseType: !1925, size: 64, offset: 10688)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1229, line: 42, flags: DIFlagFwdDecl)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1228, file: !1229, line: 1054, baseType: !1928, size: 64, offset: 10752)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1229, line: 55, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1228, file: !1229, line: 1056, baseType: !1931, size: 64, offset: 10816)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1229, line: 40, flags: DIFlagFwdDecl)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1228, file: !1229, line: 1058, baseType: !1934, size: 64, offset: 10880)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1936, line: 99, size: 704, elements: !1937)
!1936 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1937 = !{!1938, !1939, !1940, !1941, !1942, !1943, !1944, !1963, !1964}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1935, file: !1936, line: 100, baseType: !783, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1935, file: !1936, line: 101, baseType: !759, size: 32, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1935, file: !1936, line: 102, baseType: !759, size: 32, offset: 96)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1935, file: !1936, line: 105, baseType: !250, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1935, file: !1936, line: 107, baseType: !190, size: 16, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1935, file: !1936, line: 109, baseType: !751, size: 128, offset: 192)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1935, file: !1936, line: 110, baseType: !1945, size: 64, offset: 320)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1936, line: 73, size: 448, elements: !1947)
!1947 = !{!1948, !1951, !1952, !1957, !1962}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1946, file: !1936, line: 74, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1936, line: 74, flags: DIFlagFwdDecl)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1946, file: !1936, line: 75, baseType: !1934, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, scope: !1946, file: !1936, line: 83, baseType: !1953, size: 128, offset: 128)
!1953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1946, file: !1936, line: 83, size: 128, elements: !1954)
!1954 = !{!1955, !1956}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1953, file: !1936, line: 84, baseType: !237, size: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1953, file: !1936, line: 85, baseType: !946, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, scope: !1946, file: !1936, line: 87, baseType: !1958, size: 128, offset: 256)
!1958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1946, file: !1936, line: 87, size: 128, elements: !1959)
!1959 = !{!1960, !1961}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1958, file: !1936, line: 88, baseType: !651, size: 128)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1958, file: !1936, line: 89, baseType: !381, size: 128, align: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1946, file: !1936, line: 92, baseType: !7, size: 32, offset: 384)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1935, file: !1936, line: 111, baseType: !647, size: 64, offset: 384)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1935, file: !1936, line: 113, baseType: !1965, size: 256, offset: 448)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1966, line: 102, size: 256, elements: !1967)
!1966 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1967 = !{!1968, !1969, !1970}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1965, file: !1966, line: 103, baseType: !783, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1965, file: !1966, line: 104, baseType: !237, size: 128, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1965, file: !1966, line: 105, baseType: !1971, size: 64, offset: 192)
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1966, line: 21, baseType: !1972)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{null, !1975}
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1228, file: !1229, line: 1061, baseType: !1977, size: 64, offset: 10944)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1229, line: 43, flags: DIFlagFwdDecl)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1228, file: !1229, line: 1064, baseType: !340, size: 64, offset: 11008)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1228, file: !1229, line: 1065, baseType: !1981, size: 64, offset: 11072)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1772, line: 14, baseType: !1983)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1772, line: 12, size: 384, elements: !1984)
!1984 = !{!1985}
!1985 = !DIDerivedType(tag: DW_TAG_member, scope: !1983, file: !1772, line: 13, baseType: !1986, size: 384)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1983, file: !1772, line: 13, size: 384, elements: !1987)
!1987 = !{!1988, !1989, !1990, !1991}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1986, file: !1772, line: 13, baseType: !198, size: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1986, file: !1772, line: 13, baseType: !198, size: 32, offset: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1986, file: !1772, line: 13, baseType: !198, size: 32, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1986, file: !1772, line: 13, baseType: !1992, size: 256, offset: 128)
!1992 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1993, line: 32, size: 256, elements: !1994)
!1993 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1994 = !{!1995, !2000, !2013, !2019, !2028, !2048, !2053}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1992, file: !1993, line: 37, baseType: !1996, size: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 34, size: 64, elements: !1997)
!1997 = !{!1998, !1999}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1996, file: !1993, line: 35, baseType: !1471, size: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1996, file: !1993, line: 36, baseType: !453, size: 32, offset: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1992, file: !1993, line: 45, baseType: !2001, size: 192)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 40, size: 192, elements: !2002)
!2002 = !{!2003, !2005, !2006, !2012}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2001, file: !1993, line: 41, baseType: !2004, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !324, line: 95, baseType: !198)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2001, file: !1993, line: 42, baseType: !198, size: 32, offset: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2001, file: !1993, line: 43, baseType: !2007, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1993, line: 11, baseType: !2008)
!2008 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1993, line: 8, size: 64, elements: !2009)
!2009 = !{!2010, !2011}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2008, file: !1993, line: 9, baseType: !198, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2008, file: !1993, line: 10, baseType: !193, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2001, file: !1993, line: 44, baseType: !198, size: 32, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1992, file: !1993, line: 52, baseType: !2014, size: 128)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 48, size: 128, elements: !2015)
!2015 = !{!2016, !2017, !2018}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2014, file: !1993, line: 49, baseType: !1471, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2014, file: !1993, line: 50, baseType: !453, size: 32, offset: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2014, file: !1993, line: 51, baseType: !2007, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1992, file: !1993, line: 61, baseType: !2020, size: 256)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 55, size: 256, elements: !2021)
!2021 = !{!2022, !2023, !2024, !2025, !2027}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2020, file: !1993, line: 56, baseType: !1471, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2020, file: !1993, line: 57, baseType: !453, size: 32, offset: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2020, file: !1993, line: 58, baseType: !198, size: 32, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2020, file: !1993, line: 59, baseType: !2026, size: 64, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !324, line: 94, baseType: !325)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2020, file: !1993, line: 60, baseType: !2026, size: 64, offset: 192)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1992, file: !1993, line: 95, baseType: !2029, size: 256)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 64, size: 256, elements: !2030)
!2030 = !{!2031, !2032}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2029, file: !1993, line: 65, baseType: !193, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, scope: !2029, file: !1993, line: 77, baseType: !2033, size: 192, offset: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2029, file: !1993, line: 77, size: 192, elements: !2034)
!2034 = !{!2035, !2036, !2043}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2033, file: !1993, line: 82, baseType: !1216, size: 16)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2033, file: !1993, line: 88, baseType: !2037, size: 192)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2033, file: !1993, line: 84, size: 192, elements: !2038)
!2038 = !{!2039, !2041, !2042}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2037, file: !1993, line: 85, baseType: !2040, size: 64)
!2040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 64, elements: !1341)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2037, file: !1993, line: 86, baseType: !193, size: 64, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2037, file: !1993, line: 87, baseType: !193, size: 64, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2033, file: !1993, line: 93, baseType: !2044, size: 96)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2033, file: !1993, line: 90, size: 96, elements: !2045)
!2045 = !{!2046, !2047}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2044, file: !1993, line: 91, baseType: !2040, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2044, file: !1993, line: 92, baseType: !207, size: 32, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1992, file: !1993, line: 101, baseType: !2049, size: 128)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 98, size: 128, elements: !2050)
!2050 = !{!2051, !2052}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2049, file: !1993, line: 99, baseType: !326, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2049, file: !1993, line: 100, baseType: !198, size: 32, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1992, file: !1993, line: 108, baseType: !2054, size: 128)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 104, size: 128, elements: !2055)
!2055 = !{!2056, !2057, !2058}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2054, file: !1993, line: 105, baseType: !193, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2054, file: !1993, line: 106, baseType: !198, size: 32, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2054, file: !1993, line: 107, baseType: !7, size: 32, offset: 96)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1228, file: !1229, line: 1067, baseType: !1844, offset: 11136)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1228, file: !1229, line: 1099, baseType: !2061, size: 64, offset: 11136)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1229, line: 56, flags: DIFlagFwdDecl)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1228, file: !1229, line: 1103, baseType: !237, size: 128, offset: 11200)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1228, file: !1229, line: 1104, baseType: !2065, size: 64, offset: 11328)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1229, line: 46, flags: DIFlagFwdDecl)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1228, file: !1229, line: 1105, baseType: !1184, size: 192, offset: 11392)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1228, file: !1229, line: 1106, baseType: !7, size: 32, offset: 11584)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1228, file: !1229, line: 1109, baseType: !2070, size: 128, offset: 11648)
!2070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2071, size: 128, elements: !218)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1229, line: 51, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1228, file: !1229, line: 1110, baseType: !1184, size: 192, offset: 11776)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1228, file: !1229, line: 1111, baseType: !237, size: 128, offset: 11968)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1228, file: !1229, line: 1173, baseType: !2076, size: 64, offset: 12096)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2078, line: 62, size: 256, align: 256, elements: !2079)
!2078 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2079 = !{!2080, !2081, !2082, !2087}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2077, file: !2078, line: 75, baseType: !207, size: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2077, file: !2078, line: 90, baseType: !207, size: 32, offset: 32)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2077, file: !2078, line: 124, baseType: !2083, size: 64, offset: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2077, file: !2078, line: 109, size: 64, elements: !2084)
!2084 = !{!2085, !2086}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2083, file: !2078, line: 110, baseType: !434, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2083, file: !2078, line: 112, baseType: !434, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2077, file: !2078, line: 144, baseType: !207, size: 32, offset: 128)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1228, file: !1229, line: 1174, baseType: !205, size: 32, offset: 12160)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1228, file: !1229, line: 1179, baseType: !340, size: 64, offset: 12224)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1228, file: !1229, line: 1182, baseType: !2091, size: 128, offset: 12288)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1162, line: 76, size: 128, elements: !2092)
!2092 = !{!2093, !2098, !2099}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2091, file: !1162, line: 85, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2095, line: 7, size: 64, elements: !2096)
!2095 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2096 = !{!2097}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2094, file: !2095, line: 12, baseType: !1378, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2091, file: !1162, line: 88, baseType: !502, size: 8, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2091, file: !1162, line: 95, baseType: !502, size: 8, offset: 72)
!2100 = !DIDerivedType(tag: DW_TAG_member, scope: !1228, file: !1229, line: 1184, baseType: !2101, size: 128, offset: 12416)
!2101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1228, file: !1229, line: 1184, size: 128, elements: !2102)
!2102 = !{!2103, !2104}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2101, file: !1229, line: 1185, baseType: !1241, size: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2101, file: !1229, line: 1186, baseType: !381, size: 128, align: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1228, file: !1229, line: 1190, baseType: !2106, size: 64, offset: 12544)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1229, line: 53, flags: DIFlagFwdDecl)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1228, file: !1229, line: 1192, baseType: !2109, size: 128, offset: 12608)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1162, line: 64, size: 128, elements: !2110)
!2110 = !{!2111, !2112, !2113}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2109, file: !1162, line: 65, baseType: !733, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2109, file: !1162, line: 67, baseType: !207, size: 32, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2109, file: !1162, line: 68, baseType: !207, size: 32, offset: 96)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1228, file: !1229, line: 1206, baseType: !198, size: 32, offset: 12736)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1228, file: !1229, line: 1207, baseType: !198, size: 32, offset: 12768)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1228, file: !1229, line: 1209, baseType: !340, size: 64, offset: 12800)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1228, file: !1229, line: 1219, baseType: !433, size: 64, offset: 12864)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1228, file: !1229, line: 1220, baseType: !433, size: 64, offset: 12928)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1228, file: !1229, line: 1317, baseType: !198, size: 32, offset: 12992)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1228, file: !1229, line: 1319, baseType: !1227, size: 64, offset: 13056)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1228, file: !1229, line: 1322, baseType: !2122, size: 64, offset: 13120)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2124, line: 56, size: 512, elements: !2125)
!2124 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2125 = !{!2126, !2127, !2128, !2129, !2130, !2131, !2132, !2134}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2123, file: !2124, line: 57, baseType: !2122, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2123, file: !2124, line: 58, baseType: !193, size: 64, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2123, file: !2124, line: 59, baseType: !340, size: 64, offset: 128)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2123, file: !2124, line: 60, baseType: !340, size: 64, offset: 192)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2123, file: !2124, line: 61, baseType: !832, size: 64, offset: 256)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2123, file: !2124, line: 62, baseType: !7, size: 32, offset: 320)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2123, file: !2124, line: 63, baseType: !2133, size: 64, offset: 384)
!2133 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !187, line: 153, baseType: !433)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2123, file: !2124, line: 64, baseType: !2135, size: 64, offset: 448)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1228, file: !1229, line: 1326, baseType: !1241, size: 32, offset: 13184)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1228, file: !1229, line: 1342, baseType: !193, size: 64, offset: 13248)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1228, file: !1229, line: 1343, baseType: !434, size: 64, offset: 13312)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1228, file: !1229, line: 1344, baseType: !433, size: 64, offset: 13376)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1228, file: !1229, line: 1345, baseType: !434, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1228, file: !1229, line: 1346, baseType: !434, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1228, file: !1229, line: 1347, baseType: !434, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1228, file: !1229, line: 1348, baseType: !381, size: 128, align: 64, offset: 13504)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1228, file: !1229, line: 1358, baseType: !2146, size: 34816, offset: 13824)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2147, line: 485, size: 34816, elements: !2148)
!2147 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2148 = !{!2149, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2178, !2179, !2180, !2181, !2182, !2183, !2186, !2187, !2188}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2146, file: !2147, line: 487, baseType: !2150, size: 192)
!2150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2151, size: 192, elements: !292)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2152, line: 16, size: 64, elements: !2153)
!2152 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2153 = !{!2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2151, file: !2152, line: 17, baseType: !871, size: 16)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2151, file: !2152, line: 18, baseType: !871, size: 16, offset: 16)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2151, file: !2152, line: 19, baseType: !871, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2151, file: !2152, line: 19, baseType: !871, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2151, file: !2152, line: 19, baseType: !871, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2151, file: !2152, line: 19, baseType: !871, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2151, file: !2152, line: 19, baseType: !871, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2151, file: !2152, line: 20, baseType: !871, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2151, file: !2152, line: 20, baseType: !871, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2151, file: !2152, line: 20, baseType: !871, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2151, file: !2152, line: 20, baseType: !871, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2151, file: !2152, line: 20, baseType: !871, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2151, file: !2152, line: 20, baseType: !871, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2146, file: !2147, line: 491, baseType: !340, size: 64, offset: 192)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2146, file: !2147, line: 495, baseType: !190, size: 16, offset: 256)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2146, file: !2147, line: 496, baseType: !190, size: 16, offset: 272)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2146, file: !2147, line: 497, baseType: !190, size: 16, offset: 288)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2146, file: !2147, line: 498, baseType: !190, size: 16, offset: 304)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2146, file: !2147, line: 502, baseType: !340, size: 64, offset: 320)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2146, file: !2147, line: 503, baseType: !340, size: 64, offset: 384)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2146, file: !2147, line: 514, baseType: !2175, size: 256, offset: 448)
!2175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2176, size: 256, elements: !1166)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2147, line: 483, flags: DIFlagFwdDecl)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2146, file: !2147, line: 516, baseType: !340, size: 64, offset: 704)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2146, file: !2147, line: 518, baseType: !340, size: 64, offset: 768)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2146, file: !2147, line: 520, baseType: !340, size: 64, offset: 832)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2146, file: !2147, line: 521, baseType: !340, size: 64, offset: 896)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2146, file: !2147, line: 522, baseType: !340, size: 64, offset: 960)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2146, file: !2147, line: 528, baseType: !2184, size: 64, offset: 1024)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2147, line: 10, flags: DIFlagFwdDecl)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2146, file: !2147, line: 535, baseType: !340, size: 64, offset: 1088)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2146, file: !2147, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2146, file: !2147, line: 540, baseType: !2189, size: 33280, offset: 1536)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2190, line: 317, size: 33280, elements: !2191)
!2190 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2191 = !{!2192, !2193, !2194}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2189, file: !2190, line: 330, baseType: !7, size: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2189, file: !2190, line: 337, baseType: !340, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2189, file: !2190, line: 348, baseType: !2195, size: 32768, offset: 512)
!2195 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2190, line: 304, size: 32768, elements: !2196)
!2196 = !{!2197, !2212, !2251, !2301, !2314}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2195, file: !2190, line: 305, baseType: !2198, size: 896)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2190, line: 12, size: 896, elements: !2199)
!2199 = !{!2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2211}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2198, file: !2190, line: 13, baseType: !205, size: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2198, file: !2190, line: 14, baseType: !205, size: 32, offset: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2198, file: !2190, line: 15, baseType: !205, size: 32, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2198, file: !2190, line: 16, baseType: !205, size: 32, offset: 96)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2198, file: !2190, line: 17, baseType: !205, size: 32, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2198, file: !2190, line: 18, baseType: !205, size: 32, offset: 160)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2198, file: !2190, line: 19, baseType: !205, size: 32, offset: 192)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2198, file: !2190, line: 22, baseType: !2208, size: 640, offset: 224)
!2208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 640, elements: !2209)
!2209 = !{!2210}
!2210 = !DISubrange(count: 20)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2198, file: !2190, line: 25, baseType: !205, size: 32, offset: 864)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2195, file: !2190, line: 306, baseType: !2213, size: 4096, align: 128)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2190, line: 34, size: 4096, align: 128, elements: !2214)
!2214 = !{!2215, !2216, !2217, !2218, !2219, !2234, !2235, !2236, !2240, !2242, !2246}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2213, file: !2190, line: 35, baseType: !871, size: 16)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2213, file: !2190, line: 36, baseType: !871, size: 16, offset: 16)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2213, file: !2190, line: 37, baseType: !871, size: 16, offset: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2213, file: !2190, line: 38, baseType: !871, size: 16, offset: 48)
!2219 = !DIDerivedType(tag: DW_TAG_member, scope: !2213, file: !2190, line: 39, baseType: !2220, size: 128, offset: 64)
!2220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2213, file: !2190, line: 39, size: 128, elements: !2221)
!2221 = !{!2222, !2227}
!2222 = !DIDerivedType(tag: DW_TAG_member, scope: !2220, file: !2190, line: 40, baseType: !2223, size: 128)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2220, file: !2190, line: 40, size: 128, elements: !2224)
!2224 = !{!2225, !2226}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2223, file: !2190, line: 41, baseType: !433, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2223, file: !2190, line: 42, baseType: !433, size: 64, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, scope: !2220, file: !2190, line: 44, baseType: !2228, size: 128)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2220, file: !2190, line: 44, size: 128, elements: !2229)
!2229 = !{!2230, !2231, !2232, !2233}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2228, file: !2190, line: 45, baseType: !205, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2228, file: !2190, line: 46, baseType: !205, size: 32, offset: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2228, file: !2190, line: 47, baseType: !205, size: 32, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2228, file: !2190, line: 48, baseType: !205, size: 32, offset: 96)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2213, file: !2190, line: 51, baseType: !205, size: 32, offset: 192)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2213, file: !2190, line: 52, baseType: !205, size: 32, offset: 224)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2213, file: !2190, line: 55, baseType: !2237, size: 1024, offset: 256)
!2237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 1024, elements: !2238)
!2238 = !{!2239}
!2239 = !DISubrange(count: 32)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2213, file: !2190, line: 58, baseType: !2241, size: 2048, offset: 1280)
!2241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 2048, elements: !296)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2213, file: !2190, line: 60, baseType: !2243, size: 384, offset: 3328)
!2243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 384, elements: !2244)
!2244 = !{!2245}
!2245 = !DISubrange(count: 12)
!2246 = !DIDerivedType(tag: DW_TAG_member, scope: !2213, file: !2190, line: 62, baseType: !2247, size: 384, offset: 3712)
!2247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2213, file: !2190, line: 62, size: 384, elements: !2248)
!2248 = !{!2249, !2250}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2247, file: !2190, line: 63, baseType: !2243, size: 384)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2247, file: !2190, line: 64, baseType: !2243, size: 384)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2195, file: !2190, line: 307, baseType: !2252, size: 1088)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2190, line: 79, size: 1088, elements: !2253)
!2253 = !{!2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2300}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2252, file: !2190, line: 80, baseType: !205, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2252, file: !2190, line: 81, baseType: !205, size: 32, offset: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2252, file: !2190, line: 82, baseType: !205, size: 32, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2252, file: !2190, line: 83, baseType: !205, size: 32, offset: 96)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2252, file: !2190, line: 84, baseType: !205, size: 32, offset: 128)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2252, file: !2190, line: 85, baseType: !205, size: 32, offset: 160)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2252, file: !2190, line: 86, baseType: !205, size: 32, offset: 192)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2252, file: !2190, line: 88, baseType: !2208, size: 640, offset: 224)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2252, file: !2190, line: 89, baseType: !1363, size: 8, offset: 864)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2252, file: !2190, line: 90, baseType: !1363, size: 8, offset: 872)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2252, file: !2190, line: 91, baseType: !1363, size: 8, offset: 880)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2252, file: !2190, line: 92, baseType: !1363, size: 8, offset: 888)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2252, file: !2190, line: 93, baseType: !1363, size: 8, offset: 896)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2252, file: !2190, line: 94, baseType: !1363, size: 8, offset: 904)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2252, file: !2190, line: 95, baseType: !2269, size: 64, offset: 960)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2271, line: 11, size: 128, elements: !2272)
!2271 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2272 = !{!2273, !2274}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2270, file: !2271, line: 12, baseType: !326, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2270, file: !2271, line: 13, baseType: !2275, size: 64, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2277, line: 56, size: 1344, elements: !2278)
!2277 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2278 = !{!2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2276, file: !2277, line: 61, baseType: !340, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2276, file: !2277, line: 62, baseType: !340, size: 64, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2276, file: !2277, line: 63, baseType: !340, size: 64, offset: 128)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2276, file: !2277, line: 64, baseType: !340, size: 64, offset: 192)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2276, file: !2277, line: 65, baseType: !340, size: 64, offset: 256)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2276, file: !2277, line: 66, baseType: !340, size: 64, offset: 320)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2276, file: !2277, line: 68, baseType: !340, size: 64, offset: 384)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2276, file: !2277, line: 69, baseType: !340, size: 64, offset: 448)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2276, file: !2277, line: 70, baseType: !340, size: 64, offset: 512)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2276, file: !2277, line: 71, baseType: !340, size: 64, offset: 576)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2276, file: !2277, line: 72, baseType: !340, size: 64, offset: 640)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2276, file: !2277, line: 73, baseType: !340, size: 64, offset: 704)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2276, file: !2277, line: 74, baseType: !340, size: 64, offset: 768)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2276, file: !2277, line: 75, baseType: !340, size: 64, offset: 832)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2276, file: !2277, line: 76, baseType: !340, size: 64, offset: 896)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2276, file: !2277, line: 81, baseType: !340, size: 64, offset: 960)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2276, file: !2277, line: 83, baseType: !340, size: 64, offset: 1024)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2276, file: !2277, line: 84, baseType: !340, size: 64, offset: 1088)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2276, file: !2277, line: 85, baseType: !340, size: 64, offset: 1152)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2276, file: !2277, line: 86, baseType: !340, size: 64, offset: 1216)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2276, file: !2277, line: 87, baseType: !340, size: 64, offset: 1280)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2252, file: !2190, line: 96, baseType: !205, size: 32, offset: 1024)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2195, file: !2190, line: 308, baseType: !2302, size: 4608, align: 512)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2190, line: 289, size: 4608, align: 512, elements: !2303)
!2303 = !{!2304, !2305, !2312}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2302, file: !2190, line: 290, baseType: !2213, size: 4096, align: 128)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2302, file: !2190, line: 291, baseType: !2306, size: 512, offset: 4096)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2190, line: 268, size: 512, elements: !2307)
!2307 = !{!2308, !2309, !2310}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2306, file: !2190, line: 269, baseType: !433, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2306, file: !2190, line: 270, baseType: !433, size: 64, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2306, file: !2190, line: 271, baseType: !2311, size: 384, offset: 128)
!2311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 384, elements: !1634)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2302, file: !2190, line: 292, baseType: !2313, offset: 4608)
!2313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1363, elements: !1732)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2195, file: !2190, line: 309, baseType: !2315, size: 32768)
!2315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1363, size: 32768, elements: !2316)
!2316 = !{!2317}
!2317 = !DISubrange(count: 4096)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1224, file: !735, line: 378, baseType: !2319, size: 64, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1220, file: !735, line: 384, baseType: !1513, size: 192, offset: 192)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !989, file: !735, line: 500, baseType: !250, offset: 6656)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !989, file: !735, line: 501, baseType: !2323, size: 64, offset: 6656)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !735, line: 387, flags: DIFlagFwdDecl)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !989, file: !735, line: 516, baseType: !1722, size: 64, offset: 6720)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !989, file: !735, line: 519, baseType: !368, size: 64, offset: 6784)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !989, file: !735, line: 521, baseType: !2328, size: 64, offset: 6848)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !735, line: 521, flags: DIFlagFwdDecl)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !989, file: !735, line: 545, baseType: !759, size: 32, offset: 6912)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !989, file: !735, line: 548, baseType: !502, size: 8, offset: 6944)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !989, file: !735, line: 550, baseType: !2333, offset: 6952)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2334, line: 142, elements: !264)
!2334 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !989, file: !735, line: 554, baseType: !1965, size: 256, offset: 6976)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !989, file: !735, line: 557, baseType: !205, size: 32, offset: 7232)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !986, file: !735, line: 565, baseType: !2338, offset: 7296)
!2338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, elements: !2339)
!2339 = !{!2340}
!2340 = !DISubrange(count: -1)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !982, file: !735, line: 151, baseType: !759, size: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !975, file: !735, line: 156, baseType: !250, offset: 256)
!2343 = !DIDerivedType(tag: DW_TAG_member, scope: !739, file: !735, line: 159, baseType: !2344, size: 128)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !739, file: !735, line: 159, size: 128, elements: !2345)
!2345 = !{!2346, !2410}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2344, file: !735, line: 161, baseType: !2347, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !38, line: 110, size: 1152, elements: !2349)
!2349 = !{!2350, !2360, !2381, !2382, !2383, !2384, !2385, !2397, !2398, !2399}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2348, file: !38, line: 111, baseType: !2351, size: 384)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !38, line: 19, size: 384, elements: !2352)
!2352 = !{!2353, !2355, !2356, !2357, !2358, !2359}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2351, file: !38, line: 20, baseType: !2354, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2351, file: !38, line: 21, baseType: !2354, size: 64, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2351, file: !38, line: 22, baseType: !2354, size: 64, offset: 128)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2351, file: !38, line: 23, baseType: !340, size: 64, offset: 192)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2351, file: !38, line: 24, baseType: !340, size: 64, offset: 256)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2351, file: !38, line: 25, baseType: !340, size: 64, offset: 320)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2348, file: !38, line: 112, baseType: !2361, size: 64, offset: 384)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2363, line: 105, size: 128, elements: !2364)
!2363 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2364 = !{!2365, !2366}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2362, file: !2363, line: 110, baseType: !340, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2362, file: !2363, line: 118, baseType: !2367, size: 64, offset: 64)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2363, line: 95, size: 448, elements: !2369)
!2369 = !{!2370, !2371, !2376, !2377, !2378, !2379, !2380}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2368, file: !2363, line: 96, baseType: !783, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2368, file: !2363, line: 97, baseType: !2372, size: 64, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2363, line: 60, baseType: !2374)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{null, !2361}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2368, file: !2363, line: 98, baseType: !2372, size: 64, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2368, file: !2363, line: 99, baseType: !502, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2368, file: !2363, line: 100, baseType: !502, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2368, file: !2363, line: 101, baseType: !381, size: 128, align: 64, offset: 256)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2368, file: !2363, line: 102, baseType: !2361, size: 64, offset: 384)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2348, file: !38, line: 113, baseType: !2362, size: 128, offset: 448)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2348, file: !38, line: 114, baseType: !1513, size: 192, offset: 576)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2348, file: !38, line: 115, baseType: !37, size: 32, offset: 768)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2348, file: !38, line: 116, baseType: !7, size: 32, offset: 800)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2348, file: !38, line: 117, baseType: !2386, size: 64, offset: 832)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2388)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !38, line: 67, size: 256, elements: !2389)
!2389 = !{!2390, !2391, !2395, !2396}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2388, file: !38, line: 73, baseType: !852, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2388, file: !38, line: 78, baseType: !2392, size: 64, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{null, !2347}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2388, file: !38, line: 83, baseType: !2392, size: 64, offset: 128)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2388, file: !38, line: 89, baseType: !1038, size: 64, offset: 192)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2348, file: !38, line: 118, baseType: !193, size: 64, offset: 896)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2348, file: !38, line: 119, baseType: !198, size: 32, offset: 960)
!2399 = !DIDerivedType(tag: DW_TAG_member, scope: !2348, file: !38, line: 120, baseType: !2400, size: 128, offset: 1024)
!2400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2348, file: !38, line: 120, size: 128, elements: !2401)
!2401 = !{!2402, !2408}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2400, file: !38, line: 121, baseType: !2403, size: 128)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2404, line: 6, size: 128, elements: !2405)
!2404 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2405 = !{!2406, !2407}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2403, file: !2404, line: 7, baseType: !433, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2403, file: !2404, line: 8, baseType: !433, size: 64, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2400, file: !38, line: 122, baseType: !2409)
!2409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2403, elements: !1732)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2344, file: !735, line: 162, baseType: !193, size: 64, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !739, file: !735, line: 176, baseType: !381, size: 128, align: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, scope: !734, file: !735, line: 179, baseType: !2413, size: 32, offset: 384)
!2413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !734, file: !735, line: 179, size: 32, elements: !2414)
!2414 = !{!2415, !2416, !2417, !2418}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2413, file: !735, line: 184, baseType: !759, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2413, file: !735, line: 192, baseType: !7, size: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2413, file: !735, line: 194, baseType: !7, size: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2413, file: !735, line: 195, baseType: !198, size: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !734, file: !735, line: 199, baseType: !759, size: 32, offset: 416)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !669, file: !51, line: 1964, baseType: !2421, size: 64, offset: 1344)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!326, !611, !2424}
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2426, line: 12, size: 256, elements: !2427)
!2426 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2427 = !{!2428, !2429, !2430, !2431, !2432}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2425, file: !2426, line: 13, baseType: !186, size: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2425, file: !2426, line: 16, baseType: !198, size: 32, offset: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2425, file: !2426, line: 23, baseType: !340, size: 64, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2425, file: !2426, line: 30, baseType: !340, size: 64, offset: 128)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2425, file: !2426, line: 33, baseType: !2433, size: 64, offset: 192)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !735, line: 27, flags: DIFlagFwdDecl)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !669, file: !51, line: 1966, baseType: !2421, size: 64, offset: 1408)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !612, file: !51, line: 1424, baseType: !2437, size: 64, offset: 448)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2439)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !45, line: 322, size: 704, elements: !2440)
!2440 = !{!2441, !2487, !2491, !2495, !2496, !2497, !2498, !2499, !2504, !2509, !2513}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2439, file: !45, line: 323, baseType: !2442, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!198, !2445}
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !45, line: 294, size: 1600, elements: !2447)
!2447 = !{!2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2472, !2473, !2474}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2446, file: !45, line: 295, baseType: !651, size: 128)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2446, file: !45, line: 296, baseType: !237, size: 128, offset: 128)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2446, file: !45, line: 297, baseType: !237, size: 128, offset: 256)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2446, file: !45, line: 298, baseType: !237, size: 128, offset: 384)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2446, file: !45, line: 299, baseType: !1184, size: 192, offset: 512)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2446, file: !45, line: 300, baseType: !250, offset: 704)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2446, file: !45, line: 301, baseType: !759, size: 32, offset: 704)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2446, file: !45, line: 302, baseType: !611, size: 64, offset: 768)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2446, file: !45, line: 303, baseType: !2457, size: 64, offset: 832)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !45, line: 68, size: 64, elements: !2458)
!2458 = !{!2459, !2471}
!2459 = !DIDerivedType(tag: DW_TAG_member, scope: !2457, file: !45, line: 69, baseType: !2460, size: 32)
!2460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2457, file: !45, line: 69, size: 32, elements: !2461)
!2461 = !{!2462, !2463, !2464}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2460, file: !45, line: 70, baseType: !447, size: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2460, file: !45, line: 71, baseType: !455, size: 32)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2460, file: !45, line: 72, baseType: !2465, size: 32)
!2465 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2466, line: 24, baseType: !2467)
!2466 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2466, line: 22, size: 32, elements: !2468)
!2468 = !{!2469}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2467, file: !2466, line: 23, baseType: !2470, size: 32)
!2470 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2466, line: 20, baseType: !453)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2457, file: !45, line: 74, baseType: !44, size: 32, offset: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2446, file: !45, line: 304, baseType: !543, size: 64, offset: 896)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2446, file: !45, line: 305, baseType: !340, size: 64, offset: 960)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2446, file: !45, line: 306, baseType: !2475, size: 576, offset: 1024)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !45, line: 205, size: 576, elements: !2476)
!2476 = !{!2477, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2475, file: !45, line: 206, baseType: !2478, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !45, line: 66, baseType: !545)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2475, file: !45, line: 207, baseType: !2478, size: 64, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2475, file: !45, line: 208, baseType: !2478, size: 64, offset: 128)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2475, file: !45, line: 209, baseType: !2478, size: 64, offset: 192)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2475, file: !45, line: 210, baseType: !2478, size: 64, offset: 256)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2475, file: !45, line: 211, baseType: !2478, size: 64, offset: 320)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2475, file: !45, line: 212, baseType: !2478, size: 64, offset: 384)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2475, file: !45, line: 213, baseType: !551, size: 64, offset: 448)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2475, file: !45, line: 214, baseType: !551, size: 64, offset: 512)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2439, file: !45, line: 324, baseType: !2488, size: 64, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!2445, !611, !198}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2439, file: !45, line: 325, baseType: !2492, size: 64, offset: 128)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{null, !2445}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2439, file: !45, line: 326, baseType: !2442, size: 64, offset: 192)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2439, file: !45, line: 327, baseType: !2442, size: 64, offset: 256)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2439, file: !45, line: 328, baseType: !2442, size: 64, offset: 320)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2439, file: !45, line: 329, baseType: !697, size: 64, offset: 384)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2439, file: !45, line: 332, baseType: !2500, size: 64, offset: 448)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!2503, !441}
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2439, file: !45, line: 333, baseType: !2505, size: 64, offset: 512)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!198, !441, !2508}
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2439, file: !45, line: 335, baseType: !2510, size: 64, offset: 576)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!198, !441, !2503}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2439, file: !45, line: 337, baseType: !2514, size: 64, offset: 640)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!198, !611, !2517}
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !612, file: !51, line: 1425, baseType: !2519, size: 64, offset: 512)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2521)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !45, line: 428, size: 704, elements: !2522)
!2522 = !{!2523, !2527, !2528, !2532, !2533, !2534, !2549, !2572, !2576, !2577, !2600}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2521, file: !45, line: 429, baseType: !2524, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!198, !611, !198, !198, !561}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2521, file: !45, line: 430, baseType: !697, size: 64, offset: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2521, file: !45, line: 431, baseType: !2529, size: 64, offset: 128)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!198, !611, !7}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2521, file: !45, line: 432, baseType: !2529, size: 64, offset: 192)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2521, file: !45, line: 433, baseType: !697, size: 64, offset: 256)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2521, file: !45, line: 434, baseType: !2535, size: 64, offset: 320)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!198, !611, !198, !2538}
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !45, line: 415, size: 256, elements: !2540)
!2540 = !{!2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2539, file: !45, line: 416, baseType: !198, size: 32)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2539, file: !45, line: 417, baseType: !7, size: 32, offset: 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2539, file: !45, line: 418, baseType: !7, size: 32, offset: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2539, file: !45, line: 420, baseType: !7, size: 32, offset: 96)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2539, file: !45, line: 421, baseType: !7, size: 32, offset: 128)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2539, file: !45, line: 422, baseType: !7, size: 32, offset: 160)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2539, file: !45, line: 423, baseType: !7, size: 32, offset: 192)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2539, file: !45, line: 424, baseType: !7, size: 32, offset: 224)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2521, file: !45, line: 435, baseType: !2550, size: 64, offset: 384)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!198, !611, !2457, !2553}
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !45, line: 343, size: 960, elements: !2555)
!2555 = !{!2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2554, file: !45, line: 344, baseType: !198, size: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2554, file: !45, line: 345, baseType: !433, size: 64, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2554, file: !45, line: 346, baseType: !433, size: 64, offset: 128)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2554, file: !45, line: 347, baseType: !433, size: 64, offset: 192)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2554, file: !45, line: 348, baseType: !433, size: 64, offset: 256)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2554, file: !45, line: 349, baseType: !433, size: 64, offset: 320)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2554, file: !45, line: 350, baseType: !433, size: 64, offset: 384)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2554, file: !45, line: 351, baseType: !789, size: 64, offset: 448)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2554, file: !45, line: 353, baseType: !789, size: 64, offset: 512)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2554, file: !45, line: 354, baseType: !198, size: 32, offset: 576)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2554, file: !45, line: 355, baseType: !198, size: 32, offset: 608)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2554, file: !45, line: 356, baseType: !433, size: 64, offset: 640)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2554, file: !45, line: 357, baseType: !433, size: 64, offset: 704)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2554, file: !45, line: 358, baseType: !433, size: 64, offset: 768)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2554, file: !45, line: 359, baseType: !789, size: 64, offset: 832)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2554, file: !45, line: 360, baseType: !198, size: 32, offset: 896)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2521, file: !45, line: 436, baseType: !2573, size: 64, offset: 448)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!198, !611, !2517, !2553}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2521, file: !45, line: 438, baseType: !2550, size: 64, offset: 512)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2521, file: !45, line: 439, baseType: !2578, size: 64, offset: 576)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!198, !611, !2581}
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !45, line: 409, size: 1408, elements: !2583)
!2583 = !{!2584, !2585}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2582, file: !45, line: 410, baseType: !7, size: 32)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2582, file: !45, line: 411, baseType: !2586, size: 1344, offset: 64)
!2586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2587, size: 1344, elements: !292)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !45, line: 395, size: 448, elements: !2588)
!2588 = !{!2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2599}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2587, file: !45, line: 396, baseType: !7, size: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2587, file: !45, line: 397, baseType: !7, size: 32, offset: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2587, file: !45, line: 399, baseType: !7, size: 32, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2587, file: !45, line: 400, baseType: !7, size: 32, offset: 96)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2587, file: !45, line: 401, baseType: !7, size: 32, offset: 128)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2587, file: !45, line: 402, baseType: !7, size: 32, offset: 160)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2587, file: !45, line: 403, baseType: !7, size: 32, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2587, file: !45, line: 404, baseType: !435, size: 64, offset: 256)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2587, file: !45, line: 405, baseType: !2598, size: 64, offset: 320)
!2598 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !187, line: 126, baseType: !433)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2587, file: !45, line: 406, baseType: !2598, size: 64, offset: 384)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2521, file: !45, line: 440, baseType: !2529, size: 64, offset: 640)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !612, file: !51, line: 1426, baseType: !2602, size: 64, offset: 576)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2604)
!2604 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !51, line: 49, flags: DIFlagFwdDecl)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !612, file: !51, line: 1427, baseType: !340, size: 64, offset: 640)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !612, file: !51, line: 1428, baseType: !340, size: 64, offset: 704)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !612, file: !51, line: 1429, baseType: !340, size: 64, offset: 768)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !612, file: !51, line: 1430, baseType: !398, size: 64, offset: 832)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !612, file: !51, line: 1431, baseType: !779, size: 256, offset: 896)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !612, file: !51, line: 1432, baseType: !198, size: 32, offset: 1152)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !612, file: !51, line: 1433, baseType: !759, size: 32, offset: 1184)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !612, file: !51, line: 1437, baseType: !2613, size: 64, offset: 1216)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2616)
!2616 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !51, line: 1437, flags: DIFlagFwdDecl)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !612, file: !51, line: 1449, baseType: !2618, size: 64, offset: 1280)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !414, line: 34, size: 64, elements: !2619)
!2619 = !{!2620}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2618, file: !414, line: 35, baseType: !417, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !612, file: !51, line: 1450, baseType: !237, size: 128, offset: 1344)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !612, file: !51, line: 1451, baseType: !2623, size: 64, offset: 1472)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !51, line: 699, flags: DIFlagFwdDecl)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !612, file: !51, line: 1452, baseType: !1931, size: 64, offset: 1536)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !612, file: !51, line: 1453, baseType: !2627, size: 64, offset: 1600)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !51, line: 1453, flags: DIFlagFwdDecl)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !612, file: !51, line: 1454, baseType: !651, size: 128, offset: 1664)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !612, file: !51, line: 1455, baseType: !7, size: 32, offset: 1792)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !612, file: !51, line: 1456, baseType: !2632, size: 2432, offset: 1856)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !45, line: 518, size: 2432, elements: !2633)
!2633 = !{!2634, !2635, !2636, !2638, !2670}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2632, file: !45, line: 519, baseType: !7, size: 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2632, file: !45, line: 520, baseType: !779, size: 256, offset: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2632, file: !45, line: 521, baseType: !2637, size: 192, offset: 320)
!2637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 192, elements: !292)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2632, file: !45, line: 522, baseType: !2639, size: 1728, offset: 512)
!2639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2640, size: 1728, elements: !292)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !45, line: 222, size: 576, elements: !2641)
!2641 = !{!2642, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2640, file: !45, line: 223, baseType: !2643, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !45, line: 443, size: 256, elements: !2645)
!2645 = !{!2646, !2647, !2660, !2661}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2644, file: !45, line: 444, baseType: !198, size: 32)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2644, file: !45, line: 445, baseType: !2648, size: 64, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2650)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !45, line: 310, size: 512, elements: !2651)
!2651 = !{!2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2650, file: !45, line: 311, baseType: !697, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2650, file: !45, line: 312, baseType: !697, size: 64, offset: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2650, file: !45, line: 313, baseType: !697, size: 64, offset: 128)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2650, file: !45, line: 314, baseType: !697, size: 64, offset: 192)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2650, file: !45, line: 315, baseType: !2442, size: 64, offset: 256)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2650, file: !45, line: 316, baseType: !2442, size: 64, offset: 320)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2650, file: !45, line: 317, baseType: !2442, size: 64, offset: 384)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2650, file: !45, line: 318, baseType: !2514, size: 64, offset: 448)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2644, file: !45, line: 446, baseType: !183, size: 64, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2644, file: !45, line: 447, baseType: !2643, size: 64, offset: 192)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2640, file: !45, line: 224, baseType: !198, size: 32, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2640, file: !45, line: 226, baseType: !237, size: 128, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2640, file: !45, line: 227, baseType: !340, size: 64, offset: 256)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2640, file: !45, line: 228, baseType: !7, size: 32, offset: 320)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2640, file: !45, line: 229, baseType: !7, size: 32, offset: 352)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2640, file: !45, line: 230, baseType: !2478, size: 64, offset: 384)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2640, file: !45, line: 231, baseType: !2478, size: 64, offset: 448)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2640, file: !45, line: 232, baseType: !193, size: 64, offset: 512)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2632, file: !45, line: 523, baseType: !2671, size: 192, offset: 2240)
!2671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2648, size: 192, elements: !292)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !612, file: !51, line: 1458, baseType: !2673, size: 2112, offset: 4288)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !51, line: 1410, size: 2112, elements: !2674)
!2674 = !{!2675, !2676, !2677}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2673, file: !51, line: 1411, baseType: !198, size: 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2673, file: !51, line: 1412, baseType: !1492, size: 128, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2673, file: !51, line: 1413, baseType: !2678, size: 1920, offset: 192)
!2678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2679, size: 1920, elements: !292)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2680, line: 12, size: 640, elements: !2681)
!2680 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2681 = !{!2682, !2690, !2692, !2697, !2698}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2679, file: !2680, line: 13, baseType: !2683, size: 320)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2684, line: 17, size: 320, elements: !2685)
!2684 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2685 = !{!2686, !2687, !2688, !2689}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2683, file: !2684, line: 18, baseType: !198, size: 32)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2683, file: !2684, line: 19, baseType: !198, size: 32, offset: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2683, file: !2684, line: 20, baseType: !1492, size: 128, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2683, file: !2684, line: 22, baseType: !381, size: 128, align: 64, offset: 192)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2679, file: !2680, line: 14, baseType: !2691, size: 64, offset: 320)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2679, file: !2680, line: 15, baseType: !2693, size: 64, offset: 384)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2694, line: 16, size: 64, elements: !2695)
!2694 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2695 = !{!2696}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2693, file: !2694, line: 17, baseType: !1227, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2679, file: !2680, line: 16, baseType: !1492, size: 128, offset: 448)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2679, file: !2680, line: 17, baseType: !759, size: 32, offset: 576)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !612, file: !51, line: 1465, baseType: !193, size: 64, offset: 6400)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !612, file: !51, line: 1468, baseType: !205, size: 32, offset: 6464)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !612, file: !51, line: 1470, baseType: !551, size: 64, offset: 6528)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !612, file: !51, line: 1471, baseType: !551, size: 64, offset: 6592)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !612, file: !51, line: 1473, baseType: !207, size: 32, offset: 6656)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !612, file: !51, line: 1474, baseType: !2705, size: 64, offset: 6720)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !51, line: 603, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !612, file: !51, line: 1477, baseType: !2708, size: 256, offset: 6784)
!2708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 256, elements: !2238)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !612, file: !51, line: 1478, baseType: !2710, size: 128, offset: 7040)
!2710 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2711, line: 18, baseType: !2712)
!2711 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2711, line: 16, size: 128, elements: !2713)
!2713 = !{!2714}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2712, file: !2711, line: 17, baseType: !2715, size: 128)
!2715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1364, size: 128, elements: !202)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !612, file: !51, line: 1480, baseType: !7, size: 32, offset: 7168)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !612, file: !51, line: 1481, baseType: !2718, size: 32, offset: 7200)
!2718 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !187, line: 150, baseType: !7)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !612, file: !51, line: 1487, baseType: !1184, size: 192, offset: 7232)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !612, file: !51, line: 1493, baseType: !234, size: 64, offset: 7424)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !612, file: !51, line: 1495, baseType: !2722, size: 64, offset: 7488)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2724)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !396, line: 135, size: 1024, align: 512, elements: !2725)
!2725 = !{!2726, !2730, !2731, !2738, !2744, !2748, !2752, !2756, !2757, !2761, !2765, !2770, !2774}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2724, file: !396, line: 136, baseType: !2727, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!198, !398, !7}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2724, file: !396, line: 137, baseType: !2727, size: 64, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2724, file: !396, line: 138, baseType: !2732, size: 64, offset: 128)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!198, !2735, !2737}
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2724, file: !396, line: 139, baseType: !2739, size: 64, offset: 192)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!198, !2735, !7, !234, !2742}
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2724, file: !396, line: 141, baseType: !2745, size: 64, offset: 256)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!198, !2735}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2724, file: !396, line: 142, baseType: !2749, size: 64, offset: 320)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!198, !398}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2724, file: !396, line: 143, baseType: !2753, size: 64, offset: 384)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{null, !398}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2724, file: !396, line: 144, baseType: !2753, size: 64, offset: 448)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2724, file: !396, line: 145, baseType: !2758, size: 64, offset: 512)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{null, !398, !441}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2724, file: !396, line: 146, baseType: !2762, size: 64, offset: 576)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!291, !398, !291, !198}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2724, file: !396, line: 147, baseType: !2766, size: 64, offset: 640)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!394, !2769}
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2724, file: !396, line: 148, baseType: !2771, size: 64, offset: 704)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!198, !561, !502}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2724, file: !396, line: 149, baseType: !2775, size: 64, offset: 768)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!398, !398, !2778}
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !612, file: !51, line: 1500, baseType: !198, size: 32, offset: 7552)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !612, file: !51, line: 1502, baseType: !2782, size: 448, offset: 7616)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2426, line: 60, size: 448, elements: !2783)
!2783 = !{!2784, !2789, !2790, !2791, !2792, !2793, !2794}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2782, file: !2426, line: 61, baseType: !2785, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!340, !2788, !2424}
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2782, file: !2426, line: 63, baseType: !2785, size: 64, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2782, file: !2426, line: 66, baseType: !326, size: 64, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2782, file: !2426, line: 67, baseType: !198, size: 32, offset: 192)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2782, file: !2426, line: 68, baseType: !7, size: 32, offset: 224)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2782, file: !2426, line: 71, baseType: !237, size: 128, offset: 256)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2782, file: !2426, line: 77, baseType: !2795, size: 64, offset: 384)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !612, file: !51, line: 1505, baseType: !783, size: 64, offset: 8064)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !612, file: !51, line: 1508, baseType: !783, size: 64, offset: 8128)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !612, file: !51, line: 1511, baseType: !198, size: 32, offset: 8192)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !612, file: !51, line: 1514, baseType: !920, size: 32, offset: 8224)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !612, file: !51, line: 1517, baseType: !2801, size: 64, offset: 8256)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1966, line: 18, flags: DIFlagFwdDecl)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !612, file: !51, line: 1518, baseType: !647, size: 64, offset: 8320)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !612, file: !51, line: 1525, baseType: !1722, size: 64, offset: 8384)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !612, file: !51, line: 1532, baseType: !2806, size: 64, offset: 8448)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2807, line: 52, size: 64, elements: !2808)
!2807 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2808 = !{!2809}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2806, file: !2807, line: 53, baseType: !2810, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2807, line: 40, size: 256, elements: !2812)
!2812 = !{!2813, !2814, !2819}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2811, file: !2807, line: 42, baseType: !250)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2811, file: !2807, line: 44, baseType: !2815, size: 192)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2807, line: 28, size: 192, elements: !2816)
!2816 = !{!2817, !2818}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2815, file: !2807, line: 29, baseType: !237, size: 128)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2815, file: !2807, line: 31, baseType: !326, size: 64, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2811, file: !2807, line: 49, baseType: !326, size: 64, offset: 192)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !612, file: !51, line: 1533, baseType: !2806, size: 64, offset: 8512)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !612, file: !51, line: 1534, baseType: !381, size: 128, align: 64, offset: 8576)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !612, file: !51, line: 1535, baseType: !1965, size: 256, offset: 8704)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !612, file: !51, line: 1537, baseType: !1184, size: 192, offset: 8960)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !612, file: !51, line: 1542, baseType: !198, size: 32, offset: 9152)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !612, file: !51, line: 1545, baseType: !250, offset: 9184)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !612, file: !51, line: 1546, baseType: !237, size: 128, offset: 9216)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !612, file: !51, line: 1548, baseType: !250, offset: 9344)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !612, file: !51, line: 1549, baseType: !237, size: 128, offset: 9344)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !442, file: !51, line: 624, baseType: !746, size: 64, offset: 256)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !442, file: !51, line: 631, baseType: !340, size: 64, offset: 320)
!2831 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !51, line: 639, baseType: !2832, size: 32, offset: 384)
!2832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !51, line: 639, size: 32, elements: !2833)
!2833 = !{!2834, !2836}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2832, file: !51, line: 640, baseType: !2835, size: 32)
!2835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2832, file: !51, line: 641, baseType: !7, size: 32)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !442, file: !51, line: 643, baseType: !525, size: 32, offset: 416)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !442, file: !51, line: 644, baseType: !543, size: 64, offset: 448)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !442, file: !51, line: 645, baseType: !547, size: 128, offset: 512)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !442, file: !51, line: 646, baseType: !547, size: 128, offset: 640)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !442, file: !51, line: 647, baseType: !547, size: 128, offset: 768)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !442, file: !51, line: 648, baseType: !250, offset: 896)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !442, file: !51, line: 649, baseType: !190, size: 16, offset: 896)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !442, file: !51, line: 650, baseType: !1363, size: 8, offset: 912)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !442, file: !51, line: 651, baseType: !1363, size: 8, offset: 920)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !442, file: !51, line: 652, baseType: !2598, size: 64, offset: 960)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !442, file: !51, line: 659, baseType: !340, size: 64, offset: 1024)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !442, file: !51, line: 660, baseType: !779, size: 256, offset: 1088)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !442, file: !51, line: 662, baseType: !340, size: 64, offset: 1344)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !442, file: !51, line: 663, baseType: !340, size: 64, offset: 1408)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !442, file: !51, line: 665, baseType: !651, size: 128, offset: 1472)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !442, file: !51, line: 666, baseType: !237, size: 128, offset: 1600)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !442, file: !51, line: 675, baseType: !237, size: 128, offset: 1728)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !442, file: !51, line: 676, baseType: !237, size: 128, offset: 1856)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !442, file: !51, line: 677, baseType: !237, size: 128, offset: 1984)
!2856 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !51, line: 678, baseType: !2857, size: 128, offset: 2112)
!2857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !51, line: 678, size: 128, elements: !2858)
!2858 = !{!2859, !2860}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2857, file: !51, line: 679, baseType: !647, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2857, file: !51, line: 680, baseType: !381, size: 128, align: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !442, file: !51, line: 682, baseType: !785, size: 64, offset: 2240)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !442, file: !51, line: 683, baseType: !785, size: 64, offset: 2304)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !442, file: !51, line: 684, baseType: !759, size: 32, offset: 2368)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !442, file: !51, line: 685, baseType: !759, size: 32, offset: 2400)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !442, file: !51, line: 686, baseType: !759, size: 32, offset: 2432)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !442, file: !51, line: 688, baseType: !759, size: 32, offset: 2464)
!2867 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !51, line: 690, baseType: !2868, size: 64, offset: 2496)
!2868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !51, line: 690, size: 64, elements: !2869)
!2869 = !{!2870, !3092}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2868, file: !51, line: 691, baseType: !2871, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2873)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !51, line: 1822, size: 2048, elements: !2874)
!2874 = !{!2875, !2876, !2880, !2885, !2889, !2890, !2891, !2895, !2908, !2909, !2916, !2920, !2921, !2925, !2926, !2930, !2935, !2936, !2940, !2944, !3052, !3056, !3057, !3061, !3062, !3066, !3070, !3075, !3079, !3083, !3087, !3091}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2873, file: !51, line: 1823, baseType: !183, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2873, file: !51, line: 1824, baseType: !2877, size: 64, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!543, !368, !543, !198}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2873, file: !51, line: 1825, baseType: !2881, size: 64, offset: 128)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!322, !368, !291, !337, !2884}
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2873, file: !51, line: 1826, baseType: !2886, size: 64, offset: 192)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!322, !368, !234, !337, !2884}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2873, file: !51, line: 1827, baseType: !856, size: 64, offset: 256)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2873, file: !51, line: 1828, baseType: !856, size: 64, offset: 320)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2873, file: !51, line: 1829, baseType: !2892, size: 64, offset: 384)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!198, !859, !502}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2873, file: !51, line: 1830, baseType: !2896, size: 64, offset: 448)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!198, !368, !2899}
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !51, line: 1776, size: 128, elements: !2901)
!2901 = !{!2902, !2907}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2900, file: !51, line: 1777, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !51, line: 1773, baseType: !2904)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!198, !2899, !234, !198, !543, !433, !7}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2900, file: !51, line: 1778, baseType: !543, size: 64, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2873, file: !51, line: 1831, baseType: !2896, size: 64, offset: 512)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2873, file: !51, line: 1832, baseType: !2910, size: 64, offset: 576)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!2913, !368, !2914}
!2913 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !192, line: 52, baseType: !7)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !631, line: 27, flags: DIFlagFwdDecl)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2873, file: !51, line: 1833, baseType: !2917, size: 64, offset: 640)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!326, !368, !7, !340}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2873, file: !51, line: 1834, baseType: !2917, size: 64, offset: 704)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2873, file: !51, line: 1835, baseType: !2922, size: 64, offset: 768)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!198, !368, !992}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2873, file: !51, line: 1836, baseType: !340, size: 64, offset: 832)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2873, file: !51, line: 1837, baseType: !2927, size: 64, offset: 896)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!198, !441, !368}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2873, file: !51, line: 1838, baseType: !2931, size: 64, offset: 960)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!198, !368, !2934}
!2934 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !51, line: 1007, baseType: !193)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2873, file: !51, line: 1839, baseType: !2927, size: 64, offset: 1024)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2873, file: !51, line: 1840, baseType: !2937, size: 64, offset: 1088)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!198, !368, !543, !543, !198}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2873, file: !51, line: 1841, baseType: !2941, size: 64, offset: 1152)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!198, !198, !368, !198}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2873, file: !51, line: 1842, baseType: !2945, size: 64, offset: 1216)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!198, !368, !198, !2948}
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !51, line: 1062, size: 1664, elements: !2950)
!2950 = !{!2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2982, !2983, !2984, !2997, !3028}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2949, file: !51, line: 1063, baseType: !2948, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2949, file: !51, line: 1064, baseType: !237, size: 128, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2949, file: !51, line: 1065, baseType: !651, size: 128, offset: 192)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2949, file: !51, line: 1066, baseType: !237, size: 128, offset: 320)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2949, file: !51, line: 1069, baseType: !237, size: 128, offset: 448)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2949, file: !51, line: 1072, baseType: !2934, size: 64, offset: 576)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2949, file: !51, line: 1073, baseType: !7, size: 32, offset: 640)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2949, file: !51, line: 1074, baseType: !439, size: 8, offset: 672)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2949, file: !51, line: 1075, baseType: !7, size: 32, offset: 704)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2949, file: !51, line: 1076, baseType: !198, size: 32, offset: 736)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2949, file: !51, line: 1077, baseType: !1492, size: 128, offset: 768)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2949, file: !51, line: 1078, baseType: !368, size: 64, offset: 896)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2949, file: !51, line: 1079, baseType: !543, size: 64, offset: 960)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2949, file: !51, line: 1080, baseType: !543, size: 64, offset: 1024)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2949, file: !51, line: 1082, baseType: !2966, size: 64, offset: 1088)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !51, line: 1314, size: 320, elements: !2968)
!2968 = !{!2969, !2977, !2978, !2979, !2980, !2981}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2967, file: !51, line: 1315, baseType: !2970)
!2970 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2971, line: 20, baseType: !2972)
!2971 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2971, line: 11, elements: !2973)
!2973 = !{!2974}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2972, file: !2971, line: 12, baseType: !2975)
!2975 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !262, line: 33, baseType: !2976)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !262, line: 31, elements: !264)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2967, file: !51, line: 1316, baseType: !198, size: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2967, file: !51, line: 1317, baseType: !198, size: 32, offset: 32)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2967, file: !51, line: 1318, baseType: !2966, size: 64, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2967, file: !51, line: 1319, baseType: !368, size: 64, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2967, file: !51, line: 1320, baseType: !381, size: 128, align: 64, offset: 192)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2949, file: !51, line: 1084, baseType: !340, size: 64, offset: 1152)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2949, file: !51, line: 1085, baseType: !340, size: 64, offset: 1216)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2949, file: !51, line: 1087, baseType: !2985, size: 64, offset: 1280)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2987)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !51, line: 1011, size: 128, elements: !2988)
!2988 = !{!2989, !2993}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2987, file: !51, line: 1012, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{null, !2948, !2948}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2987, file: !51, line: 1013, baseType: !2994, size: 64, offset: 64)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{null, !2948}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2949, file: !51, line: 1088, baseType: !2998, size: 64, offset: 1344)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3000)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !51, line: 1016, size: 512, elements: !3001)
!3001 = !{!3002, !3006, !3010, !3011, !3015, !3019, !3023, !3027}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3000, file: !51, line: 1017, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!2934, !2934}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3000, file: !51, line: 1018, baseType: !3007, size: 64, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{null, !2934}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3000, file: !51, line: 1019, baseType: !2994, size: 64, offset: 128)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3000, file: !51, line: 1020, baseType: !3012, size: 64, offset: 192)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!198, !2948, !198}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3000, file: !51, line: 1021, baseType: !3016, size: 64, offset: 256)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!502, !2948}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3000, file: !51, line: 1022, baseType: !3020, size: 64, offset: 320)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!198, !2948, !198, !240}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3000, file: !51, line: 1023, baseType: !3024, size: 64, offset: 384)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{null, !2948, !833}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3000, file: !51, line: 1024, baseType: !3016, size: 64, offset: 448)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2949, file: !51, line: 1097, baseType: !3029, size: 256, offset: 1408)
!3029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2949, file: !51, line: 1089, size: 256, elements: !3030)
!3030 = !{!3031, !3040, !3046}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3029, file: !51, line: 1090, baseType: !3032, size: 256)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3033, line: 10, size: 256, elements: !3034)
!3033 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3034 = !{!3035, !3036, !3039}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3032, file: !3033, line: 11, baseType: !205, size: 32)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3032, file: !3033, line: 12, baseType: !3037, size: 64, offset: 64)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3033, line: 5, flags: DIFlagFwdDecl)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3032, file: !3033, line: 13, baseType: !237, size: 128, offset: 128)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3029, file: !51, line: 1091, baseType: !3041, size: 64)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3033, line: 17, size: 64, elements: !3042)
!3042 = !{!3043}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3041, file: !3033, line: 18, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3033, line: 16, flags: DIFlagFwdDecl)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3029, file: !51, line: 1096, baseType: !3047, size: 192)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3029, file: !51, line: 1092, size: 192, elements: !3048)
!3048 = !{!3049, !3050, !3051}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3047, file: !51, line: 1093, baseType: !237, size: 128)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3047, file: !51, line: 1094, baseType: !198, size: 32, offset: 128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3047, file: !51, line: 1095, baseType: !7, size: 32, offset: 160)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2873, file: !51, line: 1843, baseType: !3053, size: 64, offset: 1280)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!322, !368, !733, !198, !337, !2884, !198}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2873, file: !51, line: 1844, baseType: !1112, size: 64, offset: 1344)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2873, file: !51, line: 1845, baseType: !3058, size: 64, offset: 1408)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!198, !198}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2873, file: !51, line: 1846, baseType: !2945, size: 64, offset: 1472)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2873, file: !51, line: 1847, baseType: !3063, size: 64, offset: 1536)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!322, !2106, !368, !2884, !337, !7}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2873, file: !51, line: 1848, baseType: !3067, size: 64, offset: 1600)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!322, !368, !2884, !2106, !337, !7}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2873, file: !51, line: 1849, baseType: !3071, size: 64, offset: 1664)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!198, !368, !326, !3074, !833}
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2873, file: !51, line: 1850, baseType: !3076, size: 64, offset: 1728)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!326, !368, !198, !543, !543}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2873, file: !51, line: 1852, baseType: !3080, size: 64, offset: 1792)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{null, !723, !368}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2873, file: !51, line: 1856, baseType: !3084, size: 64, offset: 1856)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!322, !368, !543, !368, !543, !337, !7}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2873, file: !51, line: 1858, baseType: !3088, size: 64, offset: 1920)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!543, !368, !543, !368, !543, !543, !7}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2873, file: !51, line: 1861, baseType: !2937, size: 64, offset: 1984)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2868, file: !51, line: 692, baseType: !676, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !442, file: !51, line: 694, baseType: !3094, size: 64, offset: 2560)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !51, line: 1100, size: 384, elements: !3096)
!3096 = !{!3097, !3098, !3099, !3100}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3095, file: !51, line: 1101, baseType: !250)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3095, file: !51, line: 1102, baseType: !237, size: 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3095, file: !51, line: 1103, baseType: !237, size: 128, offset: 128)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3095, file: !51, line: 1104, baseType: !237, size: 128, offset: 256)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !442, file: !51, line: 695, baseType: !747, size: 1216, align: 64, offset: 2624)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !442, file: !51, line: 696, baseType: !237, size: 128, offset: 3840)
!3103 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !51, line: 697, baseType: !3104, size: 64, offset: 3968)
!3104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !51, line: 697, size: 64, elements: !3105)
!3105 = !{!3106, !3107, !3108, !3119, !3120}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3104, file: !51, line: 698, baseType: !2106, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3104, file: !51, line: 699, baseType: !2623, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3104, file: !51, line: 700, baseType: !3109, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3111, line: 14, size: 832, elements: !3112)
!3111 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3112 = !{!3113, !3114, !3115, !3116, !3117, !3118}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3110, file: !3111, line: 15, baseType: !230, size: 512)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3110, file: !3111, line: 16, baseType: !183, size: 64, offset: 512)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3110, file: !3111, line: 17, baseType: !2871, size: 64, offset: 576)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3110, file: !3111, line: 18, baseType: !237, size: 128, offset: 640)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3110, file: !3111, line: 19, baseType: !525, size: 32, offset: 768)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3110, file: !3111, line: 20, baseType: !7, size: 32, offset: 800)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3104, file: !51, line: 701, baseType: !291, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3104, file: !51, line: 702, baseType: !7, size: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !442, file: !51, line: 705, baseType: !207, size: 32, offset: 4032)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !442, file: !51, line: 708, baseType: !207, size: 32, offset: 4064)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !442, file: !51, line: 709, baseType: !2705, size: 64, offset: 4096)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !442, file: !51, line: 720, baseType: !193, size: 64, offset: 4160)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !399, file: !396, line: 98, baseType: !3126, size: 256, offset: 448)
!3126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 256, elements: !2238)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !399, file: !396, line: 101, baseType: !3128, size: 32, offset: 704)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3129, line: 25, size: 32, elements: !3130)
!3129 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3130 = !{!3131}
!3131 = !DIDerivedType(tag: DW_TAG_member, scope: !3128, file: !3129, line: 26, baseType: !3132, size: 32)
!3132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3128, file: !3129, line: 26, size: 32, elements: !3133)
!3133 = !{!3134}
!3134 = !DIDerivedType(tag: DW_TAG_member, scope: !3132, file: !3129, line: 30, baseType: !3135, size: 32)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3132, file: !3129, line: 30, size: 32, elements: !3136)
!3136 = !{!3137, !3138}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3135, file: !3129, line: 31, baseType: !250)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3135, file: !3129, line: 32, baseType: !198, size: 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !399, file: !396, line: 102, baseType: !2722, size: 64, offset: 768)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !399, file: !396, line: 103, baseType: !611, size: 64, offset: 832)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !399, file: !396, line: 104, baseType: !340, size: 64, offset: 896)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !399, file: !396, line: 105, baseType: !193, size: 64, offset: 960)
!3143 = !DIDerivedType(tag: DW_TAG_member, scope: !399, file: !396, line: 107, baseType: !3144, size: 128, offset: 1024)
!3144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !399, file: !396, line: 107, size: 128, elements: !3145)
!3145 = !{!3146, !3147}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3144, file: !396, line: 108, baseType: !237, size: 128)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3144, file: !396, line: 109, baseType: !3148, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !399, file: !396, line: 111, baseType: !237, size: 128, offset: 1152)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !399, file: !396, line: 112, baseType: !237, size: 128, offset: 1280)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !399, file: !396, line: 120, baseType: !3152, size: 128, offset: 1408)
!3152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !399, file: !396, line: 116, size: 128, elements: !3153)
!3153 = !{!3154, !3155, !3156}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3152, file: !396, line: 117, baseType: !651, size: 128)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3152, file: !396, line: 118, baseType: !413, size: 128)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3152, file: !396, line: 119, baseType: !381, size: 128, align: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !369, file: !51, line: 922, baseType: !441, size: 64, offset: 256)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !369, file: !51, line: 923, baseType: !2871, size: 64, offset: 320)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !369, file: !51, line: 929, baseType: !250, offset: 384)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !369, file: !51, line: 930, baseType: !50, size: 32, offset: 384)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !369, file: !51, line: 931, baseType: !783, size: 64, offset: 448)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !369, file: !51, line: 932, baseType: !7, size: 32, offset: 512)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !369, file: !51, line: 933, baseType: !2718, size: 32, offset: 544)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !369, file: !51, line: 934, baseType: !1184, size: 192, offset: 576)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !369, file: !51, line: 935, baseType: !543, size: 64, offset: 768)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !369, file: !51, line: 936, baseType: !3167, size: 192, offset: 832)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !51, line: 885, size: 192, elements: !3168)
!3168 = !{!3169, !3170, !3171, !3172, !3173, !3174}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3167, file: !51, line: 886, baseType: !2970)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3167, file: !51, line: 887, baseType: !1482, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3167, file: !51, line: 888, baseType: !59, size: 32, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3167, file: !51, line: 889, baseType: !447, size: 32, offset: 96)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3167, file: !51, line: 889, baseType: !447, size: 32, offset: 128)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3167, file: !51, line: 890, baseType: !198, size: 32, offset: 160)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !369, file: !51, line: 937, baseType: !1558, size: 64, offset: 1024)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !369, file: !51, line: 938, baseType: !3177, size: 256, offset: 1088)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !51, line: 896, size: 256, elements: !3178)
!3178 = !{!3179, !3180, !3181, !3182, !3183, !3184}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3177, file: !51, line: 897, baseType: !340, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3177, file: !51, line: 898, baseType: !7, size: 32, offset: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3177, file: !51, line: 899, baseType: !7, size: 32, offset: 96)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3177, file: !51, line: 902, baseType: !7, size: 32, offset: 128)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3177, file: !51, line: 903, baseType: !7, size: 32, offset: 160)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3177, file: !51, line: 904, baseType: !543, size: 64, offset: 192)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !369, file: !51, line: 940, baseType: !433, size: 64, offset: 1344)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !369, file: !51, line: 945, baseType: !193, size: 64, offset: 1408)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !369, file: !51, line: 949, baseType: !237, size: 128, offset: 1472)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !369, file: !51, line: 950, baseType: !237, size: 128, offset: 1600)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !369, file: !51, line: 952, baseType: !746, size: 64, offset: 1728)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !369, file: !51, line: 953, baseType: !920, size: 32, offset: 1792)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !369, file: !51, line: 954, baseType: !920, size: 32, offset: 1824)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !359, file: !316, line: 174, baseType: !365, size: 64, offset: 320)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !359, file: !316, line: 176, baseType: !3194, size: 64, offset: 384)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!198, !368, !243, !358, !992}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !347, file: !316, line: 90, baseType: !342, size: 64, offset: 192)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !347, file: !316, line: 91, baseType: !3199, size: 64, offset: 256)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !306, file: !231, line: 143, baseType: !3201, size: 64, offset: 256)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!3204, !243}
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3206)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !68, line: 39, size: 384, elements: !3207)
!3207 = !{!3208, !3209, !3213, !3217, !3223, !3227}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3206, file: !68, line: 40, baseType: !67, size: 32)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3206, file: !68, line: 41, baseType: !3210, size: 64, offset: 64)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!502}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3206, file: !68, line: 42, baseType: !3214, size: 64, offset: 128)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!193}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3206, file: !68, line: 43, baseType: !3218, size: 64, offset: 192)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!2135, !3221}
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !68, line: 19, flags: DIFlagFwdDecl)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3206, file: !68, line: 44, baseType: !3224, size: 64, offset: 256)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!2135}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3206, file: !68, line: 45, baseType: !480, size: 64, offset: 320)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !306, file: !231, line: 144, baseType: !3229, size: 64, offset: 320)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!2135, !243}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !306, file: !231, line: 145, baseType: !3233, size: 64, offset: 384)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{null, !243, !3236, !3237}
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !230, file: !231, line: 70, baseType: !3239, size: 64, offset: 384)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !631, line: 123, size: 1024, elements: !3241)
!3241 = !{!3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3370, !3371, !3372, !3373, !3374}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3240, file: !631, line: 124, baseType: !759, size: 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3240, file: !631, line: 125, baseType: !759, size: 32, offset: 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3240, file: !631, line: 135, baseType: !3239, size: 64, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3240, file: !631, line: 136, baseType: !234, size: 64, offset: 128)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3240, file: !631, line: 138, baseType: !772, size: 192, align: 64, offset: 192)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3240, file: !631, line: 140, baseType: !2135, size: 64, offset: 384)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3240, file: !631, line: 141, baseType: !7, size: 32, offset: 448)
!3249 = !DIDerivedType(tag: DW_TAG_member, scope: !3240, file: !631, line: 142, baseType: !3250, size: 256, offset: 512)
!3250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3240, file: !631, line: 142, size: 256, elements: !3251)
!3251 = !{!3252, !3298, !3302}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3250, file: !631, line: 143, baseType: !3253, size: 192)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !631, line: 91, size: 192, elements: !3254)
!3254 = !{!3255, !3256, !3257}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3253, file: !631, line: 92, baseType: !340, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3253, file: !631, line: 94, baseType: !768, size: 64, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3253, file: !631, line: 100, baseType: !3258, size: 64, offset: 128)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !631, line: 180, size: 704, elements: !3260)
!3260 = !{!3261, !3262, !3263, !3270, !3271, !3272, !3296, !3297}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3259, file: !631, line: 182, baseType: !3239, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3259, file: !631, line: 183, baseType: !7, size: 32, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3259, file: !631, line: 186, baseType: !3264, size: 192, offset: 128)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3265, line: 19, size: 192, elements: !3266)
!3265 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3266 = !{!3267, !3268, !3269}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3264, file: !3265, line: 20, baseType: !751, size: 128)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3264, file: !3265, line: 21, baseType: !7, size: 32, offset: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3264, file: !3265, line: 22, baseType: !7, size: 32, offset: 160)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3259, file: !631, line: 187, baseType: !205, size: 32, offset: 320)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3259, file: !631, line: 188, baseType: !205, size: 32, offset: 352)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3259, file: !631, line: 189, baseType: !3273, size: 64, offset: 384)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !631, line: 168, size: 320, elements: !3275)
!3275 = !{!3276, !3280, !3284, !3288, !3292}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3274, file: !631, line: 169, baseType: !3277, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!198, !723, !3258}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3274, file: !631, line: 171, baseType: !3281, size: 64, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!198, !3239, !234, !332}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3274, file: !631, line: 173, baseType: !3285, size: 64, offset: 128)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!198, !3239}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3274, file: !631, line: 174, baseType: !3289, size: 64, offset: 192)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!198, !3239, !3239, !234}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3274, file: !631, line: 176, baseType: !3293, size: 64, offset: 256)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!198, !723, !3239, !3258}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3259, file: !631, line: 192, baseType: !237, size: 128, offset: 448)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3259, file: !631, line: 194, baseType: !1492, size: 128, offset: 576)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3250, file: !631, line: 144, baseType: !3299, size: 64)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !631, line: 103, size: 64, elements: !3300)
!3300 = !{!3301}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3299, file: !631, line: 104, baseType: !3239, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3250, file: !631, line: 145, baseType: !3303, size: 256)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !631, line: 107, size: 256, elements: !3304)
!3304 = !{!3305, !3365, !3368, !3369}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3303, file: !631, line: 108, baseType: !3306, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3308)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !631, line: 217, size: 768, elements: !3309)
!3309 = !{!3310, !3330, !3334, !3338, !3342, !3346, !3350, !3354, !3355, !3356, !3357, !3361}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3308, file: !631, line: 222, baseType: !3311, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!198, !3314}
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !631, line: 197, size: 1088, elements: !3316)
!3316 = !{!3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3315, file: !631, line: 199, baseType: !3239, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3315, file: !631, line: 200, baseType: !368, size: 64, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3315, file: !631, line: 201, baseType: !723, size: 64, offset: 128)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3315, file: !631, line: 202, baseType: !193, size: 64, offset: 192)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3315, file: !631, line: 205, baseType: !1184, size: 192, offset: 256)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3315, file: !631, line: 206, baseType: !1184, size: 192, offset: 448)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3315, file: !631, line: 207, baseType: !198, size: 32, offset: 640)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3315, file: !631, line: 208, baseType: !237, size: 128, offset: 704)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3315, file: !631, line: 209, baseType: !291, size: 64, offset: 832)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3315, file: !631, line: 211, baseType: !337, size: 64, offset: 896)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3315, file: !631, line: 212, baseType: !502, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3315, file: !631, line: 213, baseType: !502, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3315, file: !631, line: 214, baseType: !1020, size: 64, offset: 1024)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3308, file: !631, line: 223, baseType: !3331, size: 64, offset: 64)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{null, !3314}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3308, file: !631, line: 236, baseType: !3335, size: 64, offset: 128)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!198, !723, !193}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3308, file: !631, line: 238, baseType: !3339, size: 64, offset: 192)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!193, !723, !2884}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3308, file: !631, line: 239, baseType: !3343, size: 64, offset: 256)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!193, !723, !193, !2884}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3308, file: !631, line: 240, baseType: !3347, size: 64, offset: 320)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{null, !723, !193}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3308, file: !631, line: 242, baseType: !3351, size: 64, offset: 384)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!322, !3314, !291, !337, !543}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3308, file: !631, line: 252, baseType: !337, size: 64, offset: 448)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3308, file: !631, line: 259, baseType: !502, size: 8, offset: 512)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3308, file: !631, line: 260, baseType: !3351, size: 64, offset: 576)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3308, file: !631, line: 263, baseType: !3358, size: 64, offset: 640)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!2913, !3314, !2914}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3308, file: !631, line: 266, baseType: !3362, size: 64, offset: 704)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!198, !3314, !992}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3303, file: !631, line: 109, baseType: !3366, size: 64, offset: 64)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !631, line: 31, flags: DIFlagFwdDecl)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3303, file: !631, line: 110, baseType: !543, size: 64, offset: 128)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3303, file: !631, line: 111, baseType: !3239, size: 64, offset: 192)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3240, file: !631, line: 148, baseType: !193, size: 64, offset: 768)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3240, file: !631, line: 154, baseType: !433, size: 64, offset: 832)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3240, file: !631, line: 156, baseType: !190, size: 16, offset: 896)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3240, file: !631, line: 157, baseType: !332, size: 16, offset: 912)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3240, file: !631, line: 158, baseType: !3375, size: 64, offset: 960)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !631, line: 32, flags: DIFlagFwdDecl)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !230, file: !231, line: 71, baseType: !3378, size: 32, offset: 448)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3379, line: 19, size: 32, elements: !3380)
!3379 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3380 = !{!3381}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3378, file: !3379, line: 20, baseType: !1241, size: 32)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !230, file: !231, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !230, file: !231, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !230, file: !231, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !230, file: !231, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !230, file: !231, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !227, file: !80, line: 463, baseType: !226, size: 64, offset: 512)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !227, file: !80, line: 465, baseType: !3389, size: 64, offset: 576)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !80, line: 36, flags: DIFlagFwdDecl)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !227, file: !80, line: 467, baseType: !234, size: 64, offset: 640)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !227, file: !80, line: 468, baseType: !3393, size: 64, offset: 704)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3395)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !80, line: 87, size: 384, elements: !3396)
!3396 = !{!3397, !3398, !3399, !3403, !3408, !3412}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3395, file: !80, line: 88, baseType: !234, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3395, file: !80, line: 89, baseType: !344, size: 64, offset: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3395, file: !80, line: 90, baseType: !3400, size: 64, offset: 128)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!198, !226, !286}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3395, file: !80, line: 91, baseType: !3404, size: 64, offset: 192)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!291, !226, !3407, !3236, !3237}
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3395, file: !80, line: 93, baseType: !3409, size: 64, offset: 256)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{null, !226}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3395, file: !80, line: 95, baseType: !3413, size: 64, offset: 320)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3415)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !87, line: 278, size: 1472, elements: !3416)
!3416 = !{!3417, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3415, file: !87, line: 279, baseType: !3418, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!198, !226}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3415, file: !87, line: 280, baseType: !3409, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3415, file: !87, line: 281, baseType: !3418, size: 64, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3415, file: !87, line: 282, baseType: !3418, size: 64, offset: 192)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3415, file: !87, line: 283, baseType: !3418, size: 64, offset: 256)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3415, file: !87, line: 284, baseType: !3418, size: 64, offset: 320)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3415, file: !87, line: 285, baseType: !3418, size: 64, offset: 384)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3415, file: !87, line: 286, baseType: !3418, size: 64, offset: 448)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3415, file: !87, line: 287, baseType: !3418, size: 64, offset: 512)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3415, file: !87, line: 288, baseType: !3418, size: 64, offset: 576)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3415, file: !87, line: 289, baseType: !3418, size: 64, offset: 640)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3415, file: !87, line: 290, baseType: !3418, size: 64, offset: 704)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3415, file: !87, line: 291, baseType: !3418, size: 64, offset: 768)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3415, file: !87, line: 292, baseType: !3418, size: 64, offset: 832)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3415, file: !87, line: 293, baseType: !3418, size: 64, offset: 896)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3415, file: !87, line: 294, baseType: !3418, size: 64, offset: 960)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3415, file: !87, line: 295, baseType: !3418, size: 64, offset: 1024)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3415, file: !87, line: 296, baseType: !3418, size: 64, offset: 1088)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3415, file: !87, line: 297, baseType: !3418, size: 64, offset: 1152)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3415, file: !87, line: 298, baseType: !3418, size: 64, offset: 1216)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3415, file: !87, line: 299, baseType: !3418, size: 64, offset: 1280)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3415, file: !87, line: 300, baseType: !3418, size: 64, offset: 1344)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3415, file: !87, line: 301, baseType: !3418, size: 64, offset: 1408)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !227, file: !80, line: 470, baseType: !3444, size: 64, offset: 768)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3446, line: 82, size: 1408, elements: !3447)
!3446 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3447 = !{!3448, !3449, !3450, !3451, !3452, !3453, !3454, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3529, !3532, !3533}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3445, file: !3446, line: 83, baseType: !234, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3445, file: !3446, line: 84, baseType: !234, size: 64, offset: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3445, file: !3446, line: 85, baseType: !226, size: 64, offset: 128)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3445, file: !3446, line: 86, baseType: !344, size: 64, offset: 192)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3445, file: !3446, line: 87, baseType: !344, size: 64, offset: 256)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3445, file: !3446, line: 88, baseType: !344, size: 64, offset: 320)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3445, file: !3446, line: 90, baseType: !3455, size: 64, offset: 384)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!198, !226, !3458}
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !74, line: 95, size: 1152, elements: !3460)
!3460 = !{!3461, !3462, !3463, !3464, !3465, !3466, !3467, !3480, !3493, !3494, !3495, !3496, !3497, !3505, !3506, !3507, !3508, !3509, !3510}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3459, file: !74, line: 96, baseType: !234, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3459, file: !74, line: 97, baseType: !3444, size: 64, offset: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3459, file: !74, line: 99, baseType: !183, size: 64, offset: 128)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3459, file: !74, line: 100, baseType: !234, size: 64, offset: 192)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3459, file: !74, line: 102, baseType: !502, size: 8, offset: 256)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3459, file: !74, line: 103, baseType: !73, size: 32, offset: 288)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3459, file: !74, line: 105, baseType: !3468, size: 64, offset: 320)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3470)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3471, line: 262, size: 1600, elements: !3472)
!3471 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3472 = !{!3473, !3474, !3475, !3479}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3470, file: !3471, line: 263, baseType: !2708, size: 256)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3470, file: !3471, line: 264, baseType: !2708, size: 256, offset: 256)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3470, file: !3471, line: 265, baseType: !3476, size: 1024, offset: 512)
!3476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 1024, elements: !3477)
!3477 = !{!3478}
!3478 = !DISubrange(count: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3470, file: !3471, line: 266, baseType: !2135, size: 64, offset: 1536)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3459, file: !74, line: 106, baseType: !3481, size: 64, offset: 384)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3483)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3471, line: 210, size: 256, elements: !3484)
!3484 = !{!3485, !3489, !3491, !3492}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3483, file: !3471, line: 211, baseType: !3486, size: 72)
!3486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1364, size: 72, elements: !3487)
!3487 = !{!3488}
!3488 = !DISubrange(count: 9)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3483, file: !3471, line: 212, baseType: !3490, size: 64, offset: 128)
!3490 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3471, line: 14, baseType: !340)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3483, file: !3471, line: 213, baseType: !207, size: 32, offset: 192)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3483, file: !3471, line: 214, baseType: !207, size: 32, offset: 224)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3459, file: !74, line: 108, baseType: !3418, size: 64, offset: 448)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3459, file: !74, line: 109, baseType: !3409, size: 64, offset: 512)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3459, file: !74, line: 110, baseType: !3418, size: 64, offset: 576)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3459, file: !74, line: 111, baseType: !3409, size: 64, offset: 640)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3459, file: !74, line: 112, baseType: !3498, size: 64, offset: 704)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!198, !226, !3501}
!3501 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !87, line: 52, baseType: !3502)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !87, line: 50, size: 32, elements: !3503)
!3503 = !{!3504}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3502, file: !87, line: 51, baseType: !198, size: 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3459, file: !74, line: 113, baseType: !3418, size: 64, offset: 768)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3459, file: !74, line: 114, baseType: !344, size: 64, offset: 832)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3459, file: !74, line: 115, baseType: !344, size: 64, offset: 896)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3459, file: !74, line: 117, baseType: !3413, size: 64, offset: 960)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3459, file: !74, line: 118, baseType: !3409, size: 64, offset: 1024)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3459, file: !74, line: 120, baseType: !3511, size: 64, offset: 1088)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !74, line: 120, flags: DIFlagFwdDecl)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3445, file: !3446, line: 91, baseType: !3400, size: 64, offset: 448)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3445, file: !3446, line: 92, baseType: !3418, size: 64, offset: 512)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3445, file: !3446, line: 93, baseType: !3409, size: 64, offset: 576)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3445, file: !3446, line: 94, baseType: !3418, size: 64, offset: 640)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3445, file: !3446, line: 95, baseType: !3409, size: 64, offset: 704)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3445, file: !3446, line: 97, baseType: !3418, size: 64, offset: 768)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3445, file: !3446, line: 98, baseType: !3418, size: 64, offset: 832)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3445, file: !3446, line: 100, baseType: !3498, size: 64, offset: 896)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3445, file: !3446, line: 101, baseType: !3418, size: 64, offset: 960)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3445, file: !3446, line: 103, baseType: !3418, size: 64, offset: 1024)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3445, file: !3446, line: 105, baseType: !3418, size: 64, offset: 1088)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3445, file: !3446, line: 107, baseType: !3413, size: 64, offset: 1152)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3445, file: !3446, line: 109, baseType: !3526, size: 64, offset: 1216)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3528)
!3528 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3446, line: 109, flags: DIFlagFwdDecl)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3445, file: !3446, line: 111, baseType: !3530, size: 64, offset: 1280)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3446, line: 111, flags: DIFlagFwdDecl)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3445, file: !3446, line: 112, baseType: !657, offset: 1344)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3445, file: !3446, line: 114, baseType: !502, size: 8, offset: 1344)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !227, file: !80, line: 471, baseType: !3458, size: 64, offset: 832)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !227, file: !80, line: 473, baseType: !193, size: 64, offset: 896)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !227, file: !80, line: 475, baseType: !193, size: 64, offset: 960)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !227, file: !80, line: 480, baseType: !1184, size: 192, offset: 1024)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !227, file: !80, line: 484, baseType: !3539, size: 576, offset: 1216)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !80, line: 361, size: 576, elements: !3540)
!3540 = !{!3541, !3542, !3543, !3544, !3545, !3546}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3539, file: !80, line: 362, baseType: !237, size: 128)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3539, file: !80, line: 363, baseType: !237, size: 128, offset: 128)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3539, file: !80, line: 364, baseType: !237, size: 128, offset: 256)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3539, file: !80, line: 365, baseType: !237, size: 128, offset: 384)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3539, file: !80, line: 366, baseType: !502, size: 8, offset: 512)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3539, file: !80, line: 367, baseType: !79, size: 32, offset: 544)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !227, file: !80, line: 485, baseType: !3548, size: 2304, offset: 1792)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !87, line: 565, size: 2304, elements: !3549)
!3549 = !{!3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3645, !3649}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3548, file: !87, line: 566, baseType: !3501, size: 32)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3548, file: !87, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3548, file: !87, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3548, file: !87, line: 569, baseType: !502, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3548, file: !87, line: 570, baseType: !502, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3548, file: !87, line: 571, baseType: !502, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3548, file: !87, line: 572, baseType: !502, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3548, file: !87, line: 573, baseType: !502, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3548, file: !87, line: 574, baseType: !502, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3548, file: !87, line: 575, baseType: !502, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3548, file: !87, line: 576, baseType: !502, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3548, file: !87, line: 577, baseType: !205, size: 32, offset: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3548, file: !87, line: 578, baseType: !250, offset: 96)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3548, file: !87, line: 580, baseType: !237, size: 128, offset: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3548, file: !87, line: 581, baseType: !1513, size: 192, offset: 256)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3548, file: !87, line: 582, baseType: !3566, size: 64, offset: 448)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3568, line: 43, size: 1472, elements: !3569)
!3568 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3569 = !{!3570, !3571, !3572, !3573, !3574, !3577, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3567, file: !3568, line: 44, baseType: !234, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3567, file: !3568, line: 45, baseType: !198, size: 32, offset: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3567, file: !3568, line: 46, baseType: !237, size: 128, offset: 128)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3567, file: !3568, line: 47, baseType: !250, offset: 256)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3567, file: !3568, line: 48, baseType: !3575, size: 64, offset: 256)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !87, line: 533, flags: DIFlagFwdDecl)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3567, file: !3568, line: 49, baseType: !3578, size: 320, offset: 320)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3579, line: 11, size: 320, elements: !3580)
!3579 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3580 = !{!3581, !3582, !3583, !3588}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3578, file: !3579, line: 16, baseType: !651, size: 128)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3578, file: !3579, line: 17, baseType: !340, size: 64, offset: 128)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3578, file: !3579, line: 18, baseType: !3584, size: 64, offset: 192)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{null, !3587}
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3578, file: !3579, line: 19, baseType: !205, size: 32, offset: 256)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3567, file: !3568, line: 50, baseType: !340, size: 64, offset: 640)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3567, file: !3568, line: 51, baseType: !1311, size: 64, offset: 704)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3567, file: !3568, line: 52, baseType: !1311, size: 64, offset: 768)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3567, file: !3568, line: 53, baseType: !1311, size: 64, offset: 832)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3567, file: !3568, line: 54, baseType: !1311, size: 64, offset: 896)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3567, file: !3568, line: 55, baseType: !1311, size: 64, offset: 960)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3567, file: !3568, line: 56, baseType: !340, size: 64, offset: 1024)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3567, file: !3568, line: 57, baseType: !340, size: 64, offset: 1088)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3567, file: !3568, line: 58, baseType: !340, size: 64, offset: 1152)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3567, file: !3568, line: 59, baseType: !340, size: 64, offset: 1216)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3567, file: !3568, line: 60, baseType: !340, size: 64, offset: 1280)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3567, file: !3568, line: 61, baseType: !226, size: 64, offset: 1344)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3567, file: !3568, line: 62, baseType: !502, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3567, file: !3568, line: 63, baseType: !502, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3548, file: !87, line: 583, baseType: !502, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3548, file: !87, line: 584, baseType: !502, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3548, file: !87, line: 585, baseType: !502, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3548, file: !87, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3548, file: !87, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3548, file: !87, line: 592, baseType: !1303, size: 512, offset: 576)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3548, file: !87, line: 593, baseType: !433, size: 64, offset: 1088)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3548, file: !87, line: 594, baseType: !1965, size: 256, offset: 1152)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3548, file: !87, line: 595, baseType: !1492, size: 128, offset: 1408)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3548, file: !87, line: 596, baseType: !3575, size: 64, offset: 1536)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3548, file: !87, line: 597, baseType: !759, size: 32, offset: 1600)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3548, file: !87, line: 598, baseType: !759, size: 32, offset: 1632)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3548, file: !87, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3548, file: !87, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3548, file: !87, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3548, file: !87, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3548, file: !87, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3548, file: !87, line: 604, baseType: !502, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3548, file: !87, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3548, file: !87, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3548, file: !87, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3548, file: !87, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3548, file: !87, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3548, file: !87, line: 610, baseType: !7, size: 32, offset: 1696)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3548, file: !87, line: 611, baseType: !86, size: 32, offset: 1728)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3548, file: !87, line: 612, baseType: !94, size: 32, offset: 1760)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3548, file: !87, line: 613, baseType: !198, size: 32, offset: 1792)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3548, file: !87, line: 614, baseType: !198, size: 32, offset: 1824)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3548, file: !87, line: 615, baseType: !433, size: 64, offset: 1856)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3548, file: !87, line: 616, baseType: !433, size: 64, offset: 1920)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3548, file: !87, line: 617, baseType: !433, size: 64, offset: 1984)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3548, file: !87, line: 618, baseType: !433, size: 64, offset: 2048)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3548, file: !87, line: 620, baseType: !3636, size: 64, offset: 2112)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !87, line: 536, size: 256, elements: !3638)
!3638 = !{!3639, !3640, !3641, !3642}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3637, file: !87, line: 537, baseType: !250)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3637, file: !87, line: 538, baseType: !7, size: 32)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3637, file: !87, line: 540, baseType: !237, size: 128, offset: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3637, file: !87, line: 543, baseType: !3643, size: 64, offset: 192)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !87, line: 534, flags: DIFlagFwdDecl)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3548, file: !87, line: 621, baseType: !3646, size: 64, offset: 2176)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{null, !226, !1455}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3548, file: !87, line: 622, baseType: !3650, size: 64, offset: 2240)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !87, line: 622, flags: DIFlagFwdDecl)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !227, file: !80, line: 486, baseType: !3653, size: 64, offset: 4096)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !87, line: 642, size: 1792, elements: !3655)
!3655 = !{!3656, !3657, !3658, !3662, !3663, !3664}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3654, file: !87, line: 643, baseType: !3415, size: 1472)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3654, file: !87, line: 644, baseType: !3418, size: 64, offset: 1472)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3654, file: !87, line: 645, baseType: !3659, size: 64, offset: 1536)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{null, !226, !502}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3654, file: !87, line: 646, baseType: !3418, size: 64, offset: 1600)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3654, file: !87, line: 647, baseType: !3409, size: 64, offset: 1664)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3654, file: !87, line: 648, baseType: !3409, size: 64, offset: 1728)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !227, file: !80, line: 493, baseType: !3666, size: 64, offset: 4160)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !80, line: 493, flags: DIFlagFwdDecl)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !227, file: !80, line: 499, baseType: !237, size: 128, offset: 4224)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !227, file: !80, line: 502, baseType: !3670, size: 64, offset: 4352)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3672)
!3672 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !80, line: 502, flags: DIFlagFwdDecl)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !227, file: !80, line: 504, baseType: !3674, size: 64, offset: 4416)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !227, file: !80, line: 505, baseType: !433, size: 64, offset: 4480)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !227, file: !80, line: 510, baseType: !433, size: 64, offset: 4544)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !227, file: !80, line: 511, baseType: !3678, size: 64, offset: 4608)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3680)
!3680 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !80, line: 511, flags: DIFlagFwdDecl)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !227, file: !80, line: 513, baseType: !3682, size: 64, offset: 4672)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !80, line: 288, size: 128, elements: !3684)
!3684 = !{!3685, !3686}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3683, file: !80, line: 293, baseType: !7, size: 32)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3683, file: !80, line: 294, baseType: !340, size: 64, offset: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !227, file: !80, line: 515, baseType: !237, size: 128, offset: 4736)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !227, file: !80, line: 526, baseType: !3689, offset: 4864)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3690, line: 5, elements: !264)
!3690 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !227, file: !80, line: 528, baseType: !3692, size: 64, offset: 4864)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3694, line: 14, flags: DIFlagFwdDecl)
!3694 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !227, file: !80, line: 529, baseType: !3696, size: 64, offset: 4928)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3698, line: 17, size: 192, elements: !3699)
!3698 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3699 = !{!3700, !3701, !3784}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3697, file: !3698, line: 18, baseType: !3696, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3697, file: !3698, line: 19, baseType: !3702, size: 64, offset: 64)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3704)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3698, line: 110, size: 1152, elements: !3705)
!3705 = !{!3706, !3710, !3714, !3720, !3726, !3730, !3734, !3739, !3743, !3744, !3748, !3752, !3756, !3767, !3768, !3769, !3770, !3780}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3704, file: !3698, line: 111, baseType: !3707, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!3696, !3696}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3704, file: !3698, line: 112, baseType: !3711, size: 64, offset: 64)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{null, !3696}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3704, file: !3698, line: 113, baseType: !3715, size: 64, offset: 128)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!502, !3718}
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3697)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3704, file: !3698, line: 114, baseType: !3721, size: 64, offset: 192)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!2135, !3718, !3724}
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3704, file: !3698, line: 116, baseType: !3727, size: 64, offset: 256)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!502, !3718, !234}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3704, file: !3698, line: 118, baseType: !3731, size: 64, offset: 320)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!198, !3718, !234, !7, !193, !337}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3704, file: !3698, line: 123, baseType: !3735, size: 64, offset: 384)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!198, !3718, !234, !3738, !337}
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3704, file: !3698, line: 126, baseType: !3740, size: 64, offset: 448)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!234, !3718}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3704, file: !3698, line: 127, baseType: !3740, size: 64, offset: 512)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3704, file: !3698, line: 128, baseType: !3745, size: 64, offset: 576)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!3696, !3718}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3704, file: !3698, line: 130, baseType: !3749, size: 64, offset: 640)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!3696, !3718, !3696}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3704, file: !3698, line: 133, baseType: !3753, size: 64, offset: 704)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!3696, !3718, !234}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3704, file: !3698, line: 135, baseType: !3757, size: 64, offset: 768)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!198, !3718, !234, !234, !7, !7, !3760}
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3698, line: 43, size: 640, elements: !3762)
!3762 = !{!3763, !3764, !3765}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3761, file: !3698, line: 44, baseType: !3696, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3761, file: !3698, line: 45, baseType: !7, size: 32, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3761, file: !3698, line: 46, baseType: !3766, size: 512, offset: 128)
!3766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 512, elements: !1341)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3704, file: !3698, line: 140, baseType: !3749, size: 64, offset: 832)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3704, file: !3698, line: 143, baseType: !3745, size: 64, offset: 896)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3704, file: !3698, line: 145, baseType: !3707, size: 64, offset: 960)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3704, file: !3698, line: 146, baseType: !3771, size: 64, offset: 1024)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!198, !3718, !3774}
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3698, line: 29, size: 128, elements: !3776)
!3776 = !{!3777, !3778, !3779}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3775, file: !3698, line: 30, baseType: !7, size: 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3775, file: !3698, line: 31, baseType: !7, size: 32, offset: 32)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3775, file: !3698, line: 32, baseType: !3718, size: 64, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3704, file: !3698, line: 148, baseType: !3781, size: 64, offset: 1088)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!198, !3718, !226}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3697, file: !3698, line: 20, baseType: !226, size: 64, offset: 128)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !227, file: !80, line: 534, baseType: !525, size: 32, offset: 4992)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !227, file: !80, line: 535, baseType: !205, size: 32, offset: 5024)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !227, file: !80, line: 537, baseType: !250, offset: 5056)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !227, file: !80, line: 538, baseType: !237, size: 128, offset: 5056)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !227, file: !80, line: 540, baseType: !3790, size: 64, offset: 5184)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3792, line: 54, size: 960, elements: !3793)
!3792 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3793 = !{!3794, !3795, !3796, !3797, !3798, !3799, !3800, !3804, !3808, !3809, !3810, !3811, !3815, !3819, !3820}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3791, file: !3792, line: 55, baseType: !234, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3791, file: !3792, line: 56, baseType: !183, size: 64, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3791, file: !3792, line: 58, baseType: !344, size: 64, offset: 128)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3791, file: !3792, line: 59, baseType: !344, size: 64, offset: 192)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3791, file: !3792, line: 60, baseType: !243, size: 64, offset: 256)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3791, file: !3792, line: 62, baseType: !3400, size: 64, offset: 320)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3791, file: !3792, line: 63, baseType: !3801, size: 64, offset: 384)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!291, !226, !3407}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3791, file: !3792, line: 65, baseType: !3805, size: 64, offset: 448)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{null, !3790}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3791, file: !3792, line: 66, baseType: !3409, size: 64, offset: 512)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3791, file: !3792, line: 68, baseType: !3418, size: 64, offset: 576)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3791, file: !3792, line: 70, baseType: !3204, size: 64, offset: 640)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3791, file: !3792, line: 71, baseType: !3812, size: 64, offset: 704)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!2135, !226}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3791, file: !3792, line: 73, baseType: !3816, size: 64, offset: 768)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{null, !226, !3236, !3237}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3791, file: !3792, line: 75, baseType: !3413, size: 64, offset: 832)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3791, file: !3792, line: 77, baseType: !3530, size: 64, offset: 896)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !227, file: !80, line: 541, baseType: !344, size: 64, offset: 5248)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !227, file: !80, line: 543, baseType: !3409, size: 64, offset: 5312)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !227, file: !80, line: 544, baseType: !3824, size: 64, offset: 5376)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !80, line: 45, flags: DIFlagFwdDecl)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !227, file: !80, line: 545, baseType: !3827, size: 64, offset: 5440)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !80, line: 47, flags: DIFlagFwdDecl)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !227, file: !80, line: 547, baseType: !502, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !227, file: !80, line: 548, baseType: !502, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !227, file: !80, line: 549, baseType: !502, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !227, file: !80, line: 550, baseType: !502, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !223, file: !6, line: 426, baseType: !226, size: 64, offset: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !223, file: !6, line: 427, baseType: !198, size: 32, offset: 128)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !223, file: !6, line: 428, baseType: !234, size: 64, offset: 192)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !223, file: !6, line: 429, baseType: !1363, size: 8, offset: 256)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !223, file: !6, line: 433, baseType: !1363, size: 8, offset: 264)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !223, file: !6, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !223, file: !6, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !223, file: !6, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !223, file: !6, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !223, file: !6, line: 442, baseType: !7, size: 32, offset: 288)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !223, file: !6, line: 444, baseType: !198, size: 32, offset: 320)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !223, file: !6, line: 446, baseType: !1184, size: 192, offset: 384)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !223, file: !6, line: 448, baseType: !3846, size: 128, offset: 576)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !6, line: 417, size: 128, elements: !3847)
!3847 = !{!3848}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !3846, file: !6, line: 418, baseType: !3849, size: 128)
!3849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 128, elements: !218)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !223, file: !6, line: 449, baseType: !194, size: 64, offset: 704)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !223, file: !6, line: 450, baseType: !222, size: 64, offset: 768)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !223, file: !6, line: 452, baseType: !198, size: 32, offset: 832)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !223, file: !6, line: 459, baseType: !198, size: 32, offset: 864)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !223, file: !6, line: 460, baseType: !198, size: 32, offset: 896)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !223, file: !6, line: 462, baseType: !7, size: 32, offset: 928)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !195, file: !6, line: 647, baseType: !3857, size: 640, offset: 640)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !6, line: 67, size: 640, elements: !3858)
!3858 = !{!3859, !3870, !3878, !3886, !3887, !3888, !3891, !3893, !3894, !3895}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3857, file: !6, line: 68, baseType: !3860, size: 72)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !138, line: 407, size: 72, elements: !3861)
!3861 = !{!3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3860, file: !138, line: 408, baseType: !1364, size: 8)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3860, file: !138, line: 409, baseType: !1364, size: 8, offset: 8)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !3860, file: !138, line: 411, baseType: !1364, size: 8, offset: 16)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3860, file: !138, line: 412, baseType: !1364, size: 8, offset: 24)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !3860, file: !138, line: 413, baseType: !191, size: 16, offset: 32)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !3860, file: !138, line: 414, baseType: !1364, size: 8, offset: 48)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !3860, file: !138, line: 418, baseType: !1364, size: 8, offset: 56)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !3860, file: !138, line: 419, baseType: !1364, size: 8, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !3857, file: !6, line: 69, baseType: !3871, size: 48, offset: 72)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !138, line: 689, size: 48, elements: !3872)
!3872 = !{!3873, !3874, !3875, !3876, !3877}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3871, file: !138, line: 690, baseType: !1364, size: 8)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3871, file: !138, line: 691, baseType: !1364, size: 8, offset: 8)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !3871, file: !138, line: 693, baseType: !1364, size: 8, offset: 16)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3871, file: !138, line: 694, baseType: !1364, size: 8, offset: 24)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !3871, file: !138, line: 695, baseType: !191, size: 16, offset: 32)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !3857, file: !6, line: 70, baseType: !3879, size: 64, offset: 120)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !138, line: 677, size: 64, elements: !3880)
!3880 = !{!3881, !3882, !3883, !3884}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3879, file: !138, line: 678, baseType: !1364, size: 8)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3879, file: !138, line: 679, baseType: !1364, size: 8, offset: 8)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !3879, file: !138, line: 680, baseType: !191, size: 16, offset: 16)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !3879, file: !138, line: 681, baseType: !3885, size: 32, offset: 32)
!3885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !192, line: 31, baseType: !207)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3857, file: !6, line: 71, baseType: !237, size: 128, offset: 192)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3857, file: !6, line: 72, baseType: !193, size: 64, offset: 320)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !3857, file: !6, line: 73, baseType: !3889, size: 64, offset: 384)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !6, line: 48, flags: DIFlagFwdDecl)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3857, file: !6, line: 75, baseType: !3892, size: 64, offset: 448)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3857, file: !6, line: 76, baseType: !198, size: 32, offset: 512)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3857, file: !6, line: 77, baseType: !198, size: 32, offset: 544)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3857, file: !6, line: 78, baseType: !198, size: 32, offset: 576)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !195, file: !6, line: 649, baseType: !227, size: 5568, offset: 1280)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !195, file: !6, line: 651, baseType: !3898, size: 144, offset: 6848)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !138, line: 289, size: 144, elements: !3899)
!3899 = !{!3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3898, file: !138, line: 290, baseType: !1364, size: 8)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3898, file: !138, line: 291, baseType: !1364, size: 8, offset: 8)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !3898, file: !138, line: 293, baseType: !191, size: 16, offset: 16)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3898, file: !138, line: 294, baseType: !1364, size: 8, offset: 32)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3898, file: !138, line: 295, baseType: !1364, size: 8, offset: 40)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3898, file: !138, line: 296, baseType: !1364, size: 8, offset: 48)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !3898, file: !138, line: 297, baseType: !1364, size: 8, offset: 56)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3898, file: !138, line: 298, baseType: !191, size: 16, offset: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3898, file: !138, line: 299, baseType: !191, size: 16, offset: 80)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !3898, file: !138, line: 300, baseType: !191, size: 16, offset: 96)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !3898, file: !138, line: 301, baseType: !1364, size: 8, offset: 112)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !3898, file: !138, line: 302, baseType: !1364, size: 8, offset: 120)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !3898, file: !138, line: 303, baseType: !1364, size: 8, offset: 128)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !3898, file: !138, line: 304, baseType: !1364, size: 8, offset: 136)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !195, file: !6, line: 652, baseType: !3915, size: 64, offset: 7040)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !6, line: 396, size: 384, elements: !3917)
!3917 = !{!3918, !3926, !3934, !3946, !3959, !3968}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3916, file: !6, line: 397, baseType: !3919, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !138, line: 844, size: 40, elements: !3921)
!3921 = !{!3922, !3923, !3924, !3925}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3920, file: !138, line: 845, baseType: !1364, size: 8)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3920, file: !138, line: 846, baseType: !1364, size: 8, offset: 8)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3920, file: !138, line: 848, baseType: !191, size: 16, offset: 16)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !3920, file: !138, line: 849, baseType: !1364, size: 8, offset: 32)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !3916, file: !6, line: 400, baseType: !3927, size: 64, offset: 64)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !138, line: 895, size: 56, elements: !3929)
!3929 = !{!3930, !3931, !3932, !3933}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3928, file: !138, line: 896, baseType: !1364, size: 8)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3928, file: !138, line: 897, baseType: !1364, size: 8, offset: 8)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3928, file: !138, line: 898, baseType: !1364, size: 8, offset: 16)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3928, file: !138, line: 899, baseType: !3885, size: 32, offset: 24)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !3916, file: !6, line: 401, baseType: !3935, size: 64, offset: 128)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !138, line: 917, size: 80, elements: !3937)
!3937 = !{!3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3936, file: !138, line: 918, baseType: !1364, size: 8)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3936, file: !138, line: 919, baseType: !1364, size: 8, offset: 8)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3936, file: !138, line: 920, baseType: !1364, size: 8, offset: 16)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3936, file: !138, line: 921, baseType: !1364, size: 8, offset: 24)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !3936, file: !138, line: 923, baseType: !191, size: 16, offset: 32)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !3936, file: !138, line: 928, baseType: !1364, size: 8, offset: 48)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !3936, file: !138, line: 929, baseType: !1364, size: 8, offset: 56)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !3936, file: !138, line: 930, baseType: !191, size: 16, offset: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !3916, file: !6, line: 402, baseType: !3947, size: 64, offset: 192)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !138, line: 955, size: 128, elements: !3949)
!3949 = !{!3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3948, file: !138, line: 956, baseType: !1364, size: 8)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3948, file: !138, line: 957, baseType: !1364, size: 8, offset: 8)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3948, file: !138, line: 958, baseType: !1364, size: 8, offset: 16)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3948, file: !138, line: 959, baseType: !1364, size: 8, offset: 24)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3948, file: !138, line: 960, baseType: !3885, size: 32, offset: 32)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !3948, file: !138, line: 963, baseType: !191, size: 16, offset: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !3948, file: !138, line: 967, baseType: !191, size: 16, offset: 80)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !3948, file: !138, line: 968, baseType: !3958, size: 32, offset: 96)
!3958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3885, size: 32, elements: !1382)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !3916, file: !6, line: 403, baseType: !3960, size: 64, offset: 256)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !138, line: 940, size: 160, elements: !3962)
!3962 = !{!3963, !3964, !3965, !3966, !3967}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3961, file: !138, line: 941, baseType: !1364, size: 8)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3961, file: !138, line: 942, baseType: !1364, size: 8, offset: 8)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3961, file: !138, line: 943, baseType: !1364, size: 8, offset: 16)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3961, file: !138, line: 944, baseType: !1364, size: 8, offset: 24)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !3961, file: !138, line: 945, baseType: !2715, size: 128, offset: 32)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !3916, file: !6, line: 404, baseType: !3969, size: 64, offset: 320)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !138, line: 1080, size: 24, elements: !3971)
!3971 = !{!3972, !3973, !3974}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3970, file: !138, line: 1081, baseType: !1364, size: 8)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3970, file: !138, line: 1082, baseType: !1364, size: 8, offset: 8)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3970, file: !138, line: 1083, baseType: !1364, size: 8, offset: 16)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !195, file: !6, line: 653, baseType: !3976, size: 64, offset: 7104)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !6, line: 374, size: 5440, elements: !3978)
!3978 = !{!3979, !3990, !3991, !4004, !4046, !4055, !4056}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3977, file: !6, line: 375, baseType: !3980, size: 72)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !138, line: 349, size: 72, elements: !3981)
!3981 = !{!3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3980, file: !138, line: 350, baseType: !1364, size: 8)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3980, file: !138, line: 351, baseType: !1364, size: 8, offset: 8)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3980, file: !138, line: 353, baseType: !191, size: 16, offset: 16)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !3980, file: !138, line: 354, baseType: !1364, size: 8, offset: 32)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !3980, file: !138, line: 355, baseType: !1364, size: 8, offset: 40)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !3980, file: !138, line: 356, baseType: !1364, size: 8, offset: 48)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3980, file: !138, line: 357, baseType: !1364, size: 8, offset: 56)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !3980, file: !138, line: 358, baseType: !1364, size: 8, offset: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3977, file: !6, line: 377, baseType: !291, size: 64, offset: 128)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3977, file: !6, line: 381, baseType: !3992, size: 1024, offset: 192)
!3992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3993, size: 1024, elements: !202)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !138, line: 783, size: 64, elements: !3995)
!3995 = !{!3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3994, file: !138, line: 784, baseType: !1364, size: 8)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3994, file: !138, line: 785, baseType: !1364, size: 8, offset: 8)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !3994, file: !138, line: 787, baseType: !1364, size: 8, offset: 16)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !3994, file: !138, line: 788, baseType: !1364, size: 8, offset: 24)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !3994, file: !138, line: 789, baseType: !1364, size: 8, offset: 32)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !3994, file: !138, line: 790, baseType: !1364, size: 8, offset: 40)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !3994, file: !138, line: 791, baseType: !1364, size: 8, offset: 48)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !3994, file: !138, line: 792, baseType: !1364, size: 8, offset: 56)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !3977, file: !6, line: 385, baseType: !4005, size: 2048, offset: 1216)
!4005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4006, size: 2048, elements: !2238)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !6, line: 232, size: 6272, elements: !4008)
!4008 = !{!4009, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4007, file: !6, line: 235, baseType: !4010, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !6, line: 82, size: 320, elements: !4012)
!4012 = !{!4013, !4025, !4026, !4027, !4029}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4011, file: !6, line: 83, baseType: !4014, size: 72)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !138, line: 389, size: 72, elements: !4015)
!4015 = !{!4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4014, file: !138, line: 390, baseType: !1364, size: 8)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4014, file: !138, line: 391, baseType: !1364, size: 8, offset: 8)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4014, file: !138, line: 393, baseType: !1364, size: 8, offset: 16)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !4014, file: !138, line: 394, baseType: !1364, size: 8, offset: 24)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !4014, file: !138, line: 395, baseType: !1364, size: 8, offset: 32)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4014, file: !138, line: 396, baseType: !1364, size: 8, offset: 40)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4014, file: !138, line: 397, baseType: !1364, size: 8, offset: 48)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4014, file: !138, line: 398, baseType: !1364, size: 8, offset: 56)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !4014, file: !138, line: 399, baseType: !1364, size: 8, offset: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4011, file: !6, line: 85, baseType: !198, size: 32, offset: 96)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4011, file: !6, line: 86, baseType: !3892, size: 64, offset: 128)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !4011, file: !6, line: 91, baseType: !4028, size: 64, offset: 192)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4011, file: !6, line: 93, baseType: !291, size: 64, offset: 256)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !4007, file: !6, line: 237, baseType: !4010, size: 64, offset: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4007, file: !6, line: 239, baseType: !7, size: 32, offset: 128)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4007, file: !6, line: 243, baseType: !3993, size: 64, offset: 192)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4007, file: !6, line: 245, baseType: !198, size: 32, offset: 256)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4007, file: !6, line: 247, baseType: !5, size: 32, offset: 288)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !4007, file: !6, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !4007, file: !6, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !4007, file: !6, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !4007, file: !6, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !4007, file: !6, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !4007, file: !6, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !4007, file: !6, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !4007, file: !6, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4007, file: !6, line: 257, baseType: !227, size: 5568, offset: 384)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !4007, file: !6, line: 258, baseType: !226, size: 64, offset: 5952)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !4007, file: !6, line: 259, baseType: !1965, size: 256, offset: 6016)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !3977, file: !6, line: 389, baseType: !4047, size: 2048, offset: 3264)
!4047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4048, size: 2048, elements: !2238)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !6, line: 322, size: 64, elements: !4050)
!4050 = !{!4051, !4052, !4053}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4049, file: !6, line: 323, baseType: !7, size: 32)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4049, file: !6, line: 324, baseType: !3378, size: 32, offset: 32)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4049, file: !6, line: 328, baseType: !4054, offset: 64)
!4054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4011, elements: !2339)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3977, file: !6, line: 391, baseType: !3892, size: 64, offset: 5312)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3977, file: !6, line: 392, baseType: !198, size: 32, offset: 5376)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !195, file: !6, line: 655, baseType: !3976, size: 64, offset: 7168)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !195, file: !6, line: 656, baseType: !4059, size: 1024, offset: 7232)
!4059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4028, size: 1024, elements: !202)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !195, file: !6, line: 657, baseType: !4059, size: 1024, offset: 8256)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !195, file: !6, line: 659, baseType: !4062, size: 64, offset: 9280)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !195, file: !6, line: 661, baseType: !190, size: 16, offset: 9344)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !195, file: !6, line: 662, baseType: !1363, size: 8, offset: 9360)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !195, file: !6, line: 663, baseType: !1363, size: 8, offset: 9368)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !195, file: !6, line: 664, baseType: !1363, size: 8, offset: 9376)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !195, file: !6, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !195, file: !6, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !195, file: !6, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !195, file: !6, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !195, file: !6, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !195, file: !6, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !195, file: !6, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !195, file: !6, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !195, file: !6, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !195, file: !6, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !195, file: !6, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !195, file: !6, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !195, file: !6, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !195, file: !6, line: 679, baseType: !198, size: 32, offset: 9408)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !195, file: !6, line: 682, baseType: !291, size: 64, offset: 9472)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !195, file: !6, line: 683, baseType: !291, size: 64, offset: 9536)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !195, file: !6, line: 684, baseType: !291, size: 64, offset: 9600)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !195, file: !6, line: 686, baseType: !237, size: 128, offset: 9664)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !195, file: !6, line: 688, baseType: !198, size: 32, offset: 9792)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !195, file: !6, line: 690, baseType: !205, size: 32, offset: 9824)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !195, file: !6, line: 691, baseType: !759, size: 32, offset: 9856)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !195, file: !6, line: 693, baseType: !340, size: 64, offset: 9920)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !195, file: !6, line: 696, baseType: !340, size: 64, offset: 9984)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !195, file: !6, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !195, file: !6, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !195, file: !6, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !195, file: !6, line: 702, baseType: !4094, size: 64, offset: 10112)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !6, line: 28, flags: DIFlagFwdDecl)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !195, file: !6, line: 703, baseType: !198, size: 32, offset: 10176)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !195, file: !6, line: 704, baseType: !158, size: 32, offset: 10208)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !195, file: !6, line: 705, baseType: !4099, size: 64, offset: 10240)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !6, line: 502, size: 64, elements: !4100)
!4100 = !{!4101, !4102}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !4099, file: !6, line: 506, baseType: !7, size: 32)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4099, file: !6, line: 512, baseType: !198, size: 32, offset: 32)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !195, file: !6, line: 706, baseType: !4104, size: 128, offset: 10304)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !6, line: 522, size: 128, elements: !4105)
!4105 = !{!4106, !4107, !4108, !4109}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !4104, file: !6, line: 529, baseType: !7, size: 32)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !4104, file: !6, line: 535, baseType: !7, size: 32, offset: 32)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !4104, file: !6, line: 545, baseType: !7, size: 32, offset: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4104, file: !6, line: 551, baseType: !198, size: 32, offset: 96)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !195, file: !6, line: 707, baseType: !4104, size: 128, offset: 10432)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !195, file: !6, line: 708, baseType: !7, size: 32, offset: 10560)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !195, file: !6, line: 710, baseType: !871, size: 16, offset: 10592)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !195, file: !6, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4116)
!4116 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !198)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !205)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttusbir", file: !3, line: 26, size: 3264, elements: !4121)
!4121 = !{!4122, !4509, !4510, !4511, !4574, !4629, !4630, !4633, !4634, !4635, !4636, !4637, !4638}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !4120, file: !3, line: 27, baseType: !4123, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_dev", file: !132, line: 162, size: 9536, elements: !4125)
!4125 = !{!4126, !4127, !4128, !4132, !4133, !4134, !4142, !4143, !4144, !4160, !4161, !4162, !4165, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4468, !4472, !4476, !4480, !4481, !4482, !4486, !4490, !4494, !4498, !4499, !4504, !4505}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4124, file: !132, line: 163, baseType: !227, size: 5568)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "managed_alloc", scope: !4124, file: !132, line: 164, baseType: !502, size: 8, offset: 5568)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_groups", scope: !4124, file: !132, line: 165, baseType: !4129, size: 320, offset: 5632)
!4129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 320, elements: !4130)
!4130 = !{!4131}
!4131 = !DISubrange(count: 5)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !4124, file: !132, line: 166, baseType: !234, size: 64, offset: 5952)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "input_phys", scope: !4124, file: !132, line: 167, baseType: !234, size: 64, offset: 6016)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "input_id", scope: !4124, file: !132, line: 168, baseType: !4135, size: 64, offset: 6080)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !4136, line: 59, size: 64, elements: !4137)
!4136 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!4137 = !{!4138, !4139, !4140, !4141}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4135, file: !4136, line: 60, baseType: !188, size: 16)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4135, file: !4136, line: 61, baseType: !188, size: 16, offset: 16)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4135, file: !4136, line: 62, baseType: !188, size: 16, offset: 32)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4135, file: !4136, line: 63, baseType: !188, size: 16, offset: 48)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !4124, file: !132, line: 169, baseType: !234, size: 64, offset: 6144)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "map_name", scope: !4124, file: !132, line: 170, baseType: !234, size: 64, offset: 6208)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "rc_map", scope: !4124, file: !132, line: 171, baseType: !4145, size: 256, offset: 6272)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map", file: !4146, line: 157, size: 256, elements: !4147)
!4146 = !DIFile(filename: "./include/media/rc-map.h", directory: "/home/lizy2001/genbc/linux")
!4147 = !{!4148, !4154, !4155, !4156, !4157, !4158, !4159}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "scan", scope: !4145, file: !4146, line: 158, baseType: !4149, size: 64)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map_table", file: !4146, line: 140, size: 128, elements: !4151)
!4151 = !{!4152, !4153}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !4150, file: !4146, line: 141, baseType: !433, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4150, file: !4146, line: 142, baseType: !205, size: 32, offset: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4145, file: !4146, line: 159, baseType: !7, size: 32, offset: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4145, file: !4146, line: 160, baseType: !7, size: 32, offset: 96)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4145, file: !4146, line: 161, baseType: !7, size: 32, offset: 128)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "rc_proto", scope: !4145, file: !4146, line: 162, baseType: !100, size: 32, offset: 160)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4145, file: !4146, line: 163, baseType: !234, size: 64, offset: 192)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4145, file: !4146, line: 164, baseType: !250, offset: 256)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4124, file: !132, line: 172, baseType: !1184, size: 192, offset: 6528)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4124, file: !132, line: 173, baseType: !7, size: 32, offset: 6720)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4124, file: !132, line: 174, baseType: !4163, size: 64, offset: 6784)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DICompositeType(tag: DW_TAG_structure_type, name: "ir_raw_event_ctrl", file: !132, line: 174, flags: DIFlagFwdDecl)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "input_dev", scope: !4124, file: !132, line: 175, baseType: !4166, size: 64, offset: 6848)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !4168, line: 131, size: 10432, elements: !4169)
!4168 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!4169 = !{!4170, !4171, !4172, !4173, !4174, !4175, !4176, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4203, !4208, !4303, !4306, !4307, !4308, !4310, !4313, !4323, !4324, !4325, !4326, !4327, !4331, !4335, !4339, !4343, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4430, !4431}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4167, file: !4168, line: 132, baseType: !234, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4167, file: !4168, line: 133, baseType: !234, size: 64, offset: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !4167, file: !4168, line: 134, baseType: !234, size: 64, offset: 128)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4167, file: !4168, line: 135, baseType: !4135, size: 64, offset: 192)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4167, file: !4168, line: 137, baseType: !1381, size: 64, offset: 256)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4167, file: !4168, line: 139, baseType: !1381, size: 64, offset: 320)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4167, file: !4168, line: 140, baseType: !4177, size: 768, offset: 384)
!4177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 768, elements: !2244)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4167, file: !4168, line: 141, baseType: !1381, size: 64, offset: 1152)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4167, file: !4168, line: 142, baseType: !1381, size: 64, offset: 1216)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4167, file: !4168, line: 143, baseType: !1381, size: 64, offset: 1280)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4167, file: !4168, line: 144, baseType: !1381, size: 64, offset: 1344)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4167, file: !4168, line: 145, baseType: !1381, size: 64, offset: 1408)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4167, file: !4168, line: 146, baseType: !3849, size: 128, offset: 1472)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4167, file: !4168, line: 147, baseType: !1381, size: 64, offset: 1600)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !4167, file: !4168, line: 149, baseType: !7, size: 32, offset: 1664)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !4167, file: !4168, line: 151, baseType: !7, size: 32, offset: 1696)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !4167, file: !4168, line: 152, baseType: !7, size: 32, offset: 1728)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4167, file: !4168, line: 153, baseType: !193, size: 64, offset: 1792)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !4167, file: !4168, line: 155, baseType: !4190, size: 64, offset: 1856)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!198, !4166, !4193, !2691}
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4195)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !4136, line: 114, size: 320, elements: !4196)
!4196 = !{!4197, !4198, !4199, !4200, !4201}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4195, file: !4136, line: 116, baseType: !1364, size: 8)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4195, file: !4136, line: 117, baseType: !1364, size: 8, offset: 8)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4195, file: !4136, line: 118, baseType: !188, size: 16, offset: 16)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4195, file: !4136, line: 119, baseType: !207, size: 32, offset: 32)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !4195, file: !4136, line: 120, baseType: !4202, size: 256, offset: 64)
!4202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1364, size: 256, elements: !2238)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !4167, file: !4168, line: 158, baseType: !4204, size: 64, offset: 1920)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!198, !4166, !4207}
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !4167, file: !4168, line: 161, baseType: !4209, size: 64, offset: 1984)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !4168, line: 534, size: 896, elements: !4211)
!4211 = !{!4212, !4279, !4283, !4287, !4291, !4292, !4296, !4297, !4298, !4299, !4300, !4301}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !4210, file: !4168, line: 535, baseType: !4213, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!198, !4166, !4216, !4216}
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !4136, line: 450, size: 384, elements: !4218)
!4218 = !{!4219, !4220, !4221, !4222, !4227, !4232}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4217, file: !4136, line: 451, baseType: !188, size: 16)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4217, file: !4136, line: 452, baseType: !1215, size: 16, offset: 16)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !4217, file: !4136, line: 453, baseType: !188, size: 16, offset: 32)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !4217, file: !4136, line: 454, baseType: !4223, size: 32, offset: 48)
!4223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !4136, line: 316, size: 32, elements: !4224)
!4224 = !{!4225, !4226}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !4223, file: !4136, line: 317, baseType: !188, size: 16)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4223, file: !4136, line: 318, baseType: !188, size: 16, offset: 16)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !4217, file: !4136, line: 455, baseType: !4228, size: 32, offset: 80)
!4228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !4136, line: 306, size: 32, elements: !4229)
!4229 = !{!4230, !4231}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4228, file: !4136, line: 307, baseType: !188, size: 16)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4228, file: !4136, line: 308, baseType: !188, size: 16, offset: 16)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !4217, file: !4136, line: 463, baseType: !4233, size: 256, offset: 128)
!4233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4217, file: !4136, line: 457, size: 256, elements: !4234)
!4234 = !{!4235, !4246, !4252, !4264, !4274}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !4233, file: !4136, line: 458, baseType: !4236, size: 80)
!4236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !4136, line: 345, size: 80, elements: !4237)
!4237 = !{!4238, !4239}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4236, file: !4136, line: 346, baseType: !1215, size: 16)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4236, file: !4136, line: 347, baseType: !4240, size: 64, offset: 16)
!4240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !4136, line: 333, size: 64, elements: !4241)
!4241 = !{!4242, !4243, !4244, !4245}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !4240, file: !4136, line: 334, baseType: !188, size: 16)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !4240, file: !4136, line: 335, baseType: !188, size: 16, offset: 16)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !4240, file: !4136, line: 336, baseType: !188, size: 16, offset: 32)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !4240, file: !4136, line: 337, baseType: !188, size: 16, offset: 48)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !4233, file: !4136, line: 459, baseType: !4247, size: 96)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !4136, line: 356, size: 96, elements: !4248)
!4248 = !{!4249, !4250, !4251}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !4247, file: !4136, line: 357, baseType: !1215, size: 16)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !4247, file: !4136, line: 358, baseType: !1215, size: 16, offset: 16)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4247, file: !4136, line: 359, baseType: !4240, size: 64, offset: 32)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !4233, file: !4136, line: 460, baseType: !4253, size: 256)
!4253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !4136, line: 401, size: 256, elements: !4254)
!4254 = !{!4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !4253, file: !4136, line: 402, baseType: !188, size: 16)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4253, file: !4136, line: 403, baseType: !188, size: 16, offset: 16)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !4253, file: !4136, line: 404, baseType: !1215, size: 16, offset: 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4253, file: !4136, line: 405, baseType: !1215, size: 16, offset: 48)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !4253, file: !4136, line: 406, baseType: !188, size: 16, offset: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4253, file: !4136, line: 408, baseType: !4240, size: 64, offset: 80)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !4253, file: !4136, line: 410, baseType: !207, size: 32, offset: 160)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !4253, file: !4136, line: 411, baseType: !4263, size: 64, offset: 192)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4233, file: !4136, line: 461, baseType: !4265, size: 192)
!4265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4266, size: 192, elements: !218)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !4136, line: 372, size: 96, elements: !4267)
!4267 = !{!4268, !4269, !4270, !4271, !4272, !4273}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !4266, file: !4136, line: 373, baseType: !188, size: 16)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !4266, file: !4136, line: 374, baseType: !188, size: 16, offset: 16)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !4266, file: !4136, line: 376, baseType: !1215, size: 16, offset: 32)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !4266, file: !4136, line: 377, baseType: !1215, size: 16, offset: 48)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !4266, file: !4136, line: 379, baseType: !188, size: 16, offset: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !4266, file: !4136, line: 380, baseType: !1215, size: 16, offset: 80)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !4233, file: !4136, line: 462, baseType: !4275, size: 32)
!4275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !4136, line: 422, size: 32, elements: !4276)
!4276 = !{!4277, !4278}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !4275, file: !4136, line: 423, baseType: !188, size: 16)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !4275, file: !4136, line: 424, baseType: !188, size: 16, offset: 16)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !4210, file: !4168, line: 537, baseType: !4280, size: 64, offset: 64)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!198, !4166, !198}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !4210, file: !4168, line: 539, baseType: !4284, size: 64, offset: 128)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!198, !4166, !198, !198}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !4210, file: !4168, line: 540, baseType: !4288, size: 64, offset: 192)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{null, !4166, !871}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !4210, file: !4168, line: 541, baseType: !4288, size: 64, offset: 256)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4210, file: !4168, line: 543, baseType: !4293, size: 64, offset: 320)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{null, !4209}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4210, file: !4168, line: 545, baseType: !193, size: 64, offset: 384)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4210, file: !4168, line: 547, baseType: !3849, size: 128, offset: 448)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4210, file: !4168, line: 549, baseType: !1184, size: 192, offset: 576)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !4210, file: !4168, line: 551, baseType: !198, size: 32, offset: 768)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !4210, file: !4168, line: 552, baseType: !4216, size: 64, offset: 832)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !4210, file: !4168, line: 553, baseType: !4302, offset: 896)
!4302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, elements: !2339)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !4167, file: !4168, line: 163, baseType: !4304, size: 64, offset: 2048)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !4168, line: 24, flags: DIFlagFwdDecl)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !4167, file: !4168, line: 165, baseType: !7, size: 32, offset: 2112)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4167, file: !4168, line: 166, baseType: !3578, size: 320, offset: 2176)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !4167, file: !4168, line: 168, baseType: !4309, size: 64, offset: 2496)
!4309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 64, elements: !218)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !4167, file: !4168, line: 170, baseType: !4311, size: 64, offset: 2560)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !4168, line: 170, flags: DIFlagFwdDecl)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !4167, file: !4168, line: 172, baseType: !4314, size: 64, offset: 2624)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !4136, line: 90, size: 192, elements: !4316)
!4316 = !{!4317, !4318, !4319, !4320, !4321, !4322}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4315, file: !4136, line: 91, baseType: !1456, size: 32)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4315, file: !4136, line: 92, baseType: !1456, size: 32, offset: 32)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4315, file: !4136, line: 93, baseType: !1456, size: 32, offset: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4315, file: !4136, line: 94, baseType: !1456, size: 32, offset: 96)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4315, file: !4136, line: 95, baseType: !1456, size: 32, offset: 128)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4315, file: !4136, line: 96, baseType: !1456, size: 32, offset: 160)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4167, file: !4168, line: 174, baseType: !4177, size: 768, offset: 2688)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !4167, file: !4168, line: 175, baseType: !1381, size: 64, offset: 3456)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !4167, file: !4168, line: 176, baseType: !1381, size: 64, offset: 3520)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !4167, file: !4168, line: 177, baseType: !1381, size: 64, offset: 3584)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4167, file: !4168, line: 179, baseType: !4328, size: 64, offset: 3648)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!198, !4166}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4167, file: !4168, line: 180, baseType: !4332, size: 64, offset: 3712)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{null, !4166}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4167, file: !4168, line: 181, baseType: !4336, size: 64, offset: 3776)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!198, !4166, !368}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4167, file: !4168, line: 182, baseType: !4340, size: 64, offset: 3840)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!198, !4166, !7, !7, !198}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !4167, file: !4168, line: 184, baseType: !4344, size: 64, offset: 3904)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !4168, line: 337, size: 576, elements: !4346)
!4346 = !{!4347, !4348, !4349, !4350, !4351, !4417, !4418}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4345, file: !4168, line: 339, baseType: !193, size: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4345, file: !4168, line: 341, baseType: !198, size: 32, offset: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4345, file: !4168, line: 342, baseType: !234, size: 64, offset: 128)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4345, file: !4168, line: 344, baseType: !4166, size: 64, offset: 192)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4345, file: !4168, line: 345, baseType: !4352, size: 64, offset: 256)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !4168, line: 302, size: 960, elements: !4354)
!4354 = !{!4355, !4356, !4360, !4371, !4375, !4379, !4406, !4410, !4411, !4412, !4413, !4414, !4415, !4416}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4353, file: !4168, line: 304, baseType: !193, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4353, file: !4168, line: 306, baseType: !4357, size: 64, offset: 64)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{null, !4344, !7, !7, !198}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4353, file: !4168, line: 307, baseType: !4361, size: 64, offset: 128)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{null, !4344, !4364, !7}
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4366)
!4366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !4168, line: 32, size: 64, elements: !4367)
!4367 = !{!4368, !4369, !4370}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4366, file: !4168, line: 33, baseType: !188, size: 16)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4366, file: !4168, line: 34, baseType: !188, size: 16, offset: 16)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4366, file: !4168, line: 35, baseType: !1456, size: 32, offset: 32)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4353, file: !4168, line: 309, baseType: !4372, size: 64, offset: 192)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{!502, !4344, !7, !7, !198}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4353, file: !4168, line: 310, baseType: !4376, size: 64, offset: 256)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!502, !4352, !4166}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4353, file: !4168, line: 311, baseType: !4380, size: 64, offset: 320)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!198, !4352, !4166, !4383}
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4385)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3471, line: 342, size: 1600, elements: !4386)
!4386 = !{!4387, !4388, !4389, !4390, !4391, !4392, !4394, !4396, !4397, !4398, !4399, !4400, !4401, !4403, !4404, !4405}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4385, file: !3471, line: 344, baseType: !3490, size: 64)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4385, file: !3471, line: 346, baseType: !188, size: 16, offset: 64)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4385, file: !3471, line: 347, baseType: !188, size: 16, offset: 80)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4385, file: !3471, line: 348, baseType: !188, size: 16, offset: 96)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4385, file: !3471, line: 349, baseType: !188, size: 16, offset: 112)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4385, file: !3471, line: 351, baseType: !4393, size: 64, offset: 128)
!4393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3490, size: 64, elements: !1382)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4385, file: !3471, line: 352, baseType: !4395, size: 768, offset: 192)
!4395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3490, size: 768, elements: !2244)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4385, file: !3471, line: 353, baseType: !4393, size: 64, offset: 960)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4385, file: !3471, line: 354, baseType: !4393, size: 64, offset: 1024)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4385, file: !3471, line: 355, baseType: !4393, size: 64, offset: 1088)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4385, file: !3471, line: 356, baseType: !4393, size: 64, offset: 1152)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4385, file: !3471, line: 357, baseType: !4393, size: 64, offset: 1216)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4385, file: !3471, line: 358, baseType: !4402, size: 128, offset: 1280)
!4402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3490, size: 128, elements: !218)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4385, file: !3471, line: 359, baseType: !4393, size: 64, offset: 1408)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4385, file: !3471, line: 360, baseType: !4393, size: 64, offset: 1472)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4385, file: !3471, line: 362, baseType: !3490, size: 64, offset: 1536)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4353, file: !4168, line: 312, baseType: !4407, size: 64, offset: 384)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{null, !4344}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4353, file: !4168, line: 313, baseType: !4407, size: 64, offset: 448)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4353, file: !4168, line: 315, baseType: !502, size: 8, offset: 512)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4353, file: !4168, line: 316, baseType: !198, size: 32, offset: 544)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4353, file: !4168, line: 317, baseType: !234, size: 64, offset: 576)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4353, file: !4168, line: 319, baseType: !4383, size: 64, offset: 640)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4353, file: !4168, line: 321, baseType: !237, size: 128, offset: 704)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4353, file: !4168, line: 322, baseType: !237, size: 128, offset: 832)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4345, file: !4168, line: 347, baseType: !237, size: 128, offset: 320)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4345, file: !4168, line: 348, baseType: !237, size: 128, offset: 448)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !4167, file: !4168, line: 186, baseType: !250, offset: 3968)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4167, file: !4168, line: 187, baseType: !1184, size: 192, offset: 3968)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4167, file: !4168, line: 189, baseType: !7, size: 32, offset: 4160)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !4167, file: !4168, line: 190, baseType: !502, size: 8, offset: 4192)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4167, file: !4168, line: 192, baseType: !227, size: 5568, offset: 4224)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4167, file: !4168, line: 194, baseType: !237, size: 128, offset: 9792)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4167, file: !4168, line: 195, baseType: !237, size: 128, offset: 9920)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !4167, file: !4168, line: 197, baseType: !7, size: 32, offset: 10048)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !4167, file: !4168, line: 198, baseType: !7, size: 32, offset: 10080)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !4167, file: !4168, line: 199, baseType: !4429, size: 64, offset: 10112)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !4167, file: !4168, line: 201, baseType: !502, size: 8, offset: 10176)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4167, file: !4168, line: 203, baseType: !4432, size: 192, offset: 10240)
!4432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1311, size: 192, elements: !292)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "driver_type", scope: !4124, file: !132, line: 176, baseType: !131, size: 32, offset: 6912)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !4124, file: !132, line: 177, baseType: !502, size: 8, offset: 6944)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "encode_wakeup", scope: !4124, file: !132, line: 178, baseType: !502, size: 8, offset: 6952)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_protocols", scope: !4124, file: !132, line: 179, baseType: !433, size: 64, offset: 6976)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "enabled_protocols", scope: !4124, file: !132, line: 180, baseType: !433, size: 64, offset: 7040)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_wakeup_protocols", scope: !4124, file: !132, line: 181, baseType: !433, size: 64, offset: 7104)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_protocol", scope: !4124, file: !132, line: 182, baseType: !100, size: 32, offset: 7168)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "scancode_filter", scope: !4124, file: !132, line: 183, baseType: !4441, size: 64, offset: 7200)
!4441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_scancode_filter", file: !132, line: 38, size: 64, elements: !4442)
!4442 = !{!4443, !4444}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4441, file: !132, line: 39, baseType: !205, size: 32)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4441, file: !132, line: 40, baseType: !205, size: 32, offset: 32)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "scancode_wakeup_filter", scope: !4124, file: !132, line: 184, baseType: !4441, size: 64, offset: 7264)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "scancode_mask", scope: !4124, file: !132, line: 185, baseType: !205, size: 32, offset: 7328)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4124, file: !132, line: 186, baseType: !205, size: 32, offset: 7360)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4124, file: !132, line: 187, baseType: !193, size: 64, offset: 7424)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "keylock", scope: !4124, file: !132, line: 188, baseType: !250, offset: 7488)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "keypressed", scope: !4124, file: !132, line: 189, baseType: !502, size: 8, offset: 7488)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "keyup_jiffies", scope: !4124, file: !132, line: 190, baseType: !340, size: 64, offset: 7552)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "timer_keyup", scope: !4124, file: !132, line: 191, baseType: !3578, size: 320, offset: 7616)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "timer_repeat", scope: !4124, file: !132, line: 192, baseType: !3578, size: 320, offset: 7936)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "last_keycode", scope: !4124, file: !132, line: 193, baseType: !205, size: 32, offset: 8256)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "last_protocol", scope: !4124, file: !132, line: 194, baseType: !100, size: 32, offset: 8288)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "last_scancode", scope: !4124, file: !132, line: 195, baseType: !433, size: 64, offset: 8320)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "last_toggle", scope: !4124, file: !132, line: 196, baseType: !1363, size: 8, offset: 8384)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4124, file: !132, line: 197, baseType: !205, size: 32, offset: 8416)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "min_timeout", scope: !4124, file: !132, line: 198, baseType: !205, size: 32, offset: 8448)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "max_timeout", scope: !4124, file: !132, line: 199, baseType: !205, size: 32, offset: 8480)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "rx_resolution", scope: !4124, file: !132, line: 200, baseType: !205, size: 32, offset: 8512)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "tx_resolution", scope: !4124, file: !132, line: 201, baseType: !205, size: 32, offset: 8544)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4124, file: !132, line: 211, baseType: !502, size: 8, offset: 8576)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "change_protocol", scope: !4124, file: !132, line: 212, baseType: !4465, size: 64, offset: 8640)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{!198, !4123, !3674}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4124, file: !132, line: 213, baseType: !4469, size: 64, offset: 8704)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!198, !4123}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4124, file: !132, line: 214, baseType: !4473, size: 64, offset: 8768)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{null, !4123}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "s_tx_mask", scope: !4124, file: !132, line: 215, baseType: !4477, size: 64, offset: 8832)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{!198, !4123, !205}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "s_tx_carrier", scope: !4124, file: !132, line: 216, baseType: !4477, size: 64, offset: 8896)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "s_tx_duty_cycle", scope: !4124, file: !132, line: 217, baseType: !4477, size: 64, offset: 8960)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "s_rx_carrier_range", scope: !4124, file: !132, line: 218, baseType: !4483, size: 64, offset: 9024)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!198, !4123, !205, !205}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "tx_ir", scope: !4124, file: !132, line: 219, baseType: !4487, size: 64, offset: 9088)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!198, !4123, !2691, !7}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "s_idle", scope: !4124, file: !132, line: 220, baseType: !4491, size: 64, offset: 9152)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{null, !4123, !502}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "s_learning_mode", scope: !4124, file: !132, line: 221, baseType: !4495, size: 64, offset: 9216)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!198, !4123, !198}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "s_carrier_report", scope: !4124, file: !132, line: 222, baseType: !4495, size: 64, offset: 9280)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "s_filter", scope: !4124, file: !132, line: 223, baseType: !4500, size: 64, offset: 9344)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DISubroutineType(types: !4502)
!4502 = !{!198, !4123, !4503}
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "s_wakeup_filter", scope: !4124, file: !132, line: 225, baseType: !4500, size: 64, offset: 9408)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "s_timeout", scope: !4124, file: !132, line: 227, baseType: !4506, size: 64, offset: 9472)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{!198, !4123, !7}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4120, file: !3, line: 28, baseType: !226, size: 64, offset: 64)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "udev", scope: !4120, file: !3, line: 29, baseType: !194, size: 64, offset: 128)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "urb", scope: !4120, file: !3, line: 31, baseType: !4512, size: 256, offset: 192)
!4512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4513, size: 256, elements: !1166)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !6, line: 1561, size: 1472, elements: !4515)
!4515 = !{!4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4566}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4514, file: !6, line: 1563, baseType: !3378, size: 32)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !4514, file: !6, line: 1564, baseType: !198, size: 32, offset: 32)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4514, file: !6, line: 1565, baseType: !193, size: 64, offset: 64)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4514, file: !6, line: 1566, baseType: !759, size: 32, offset: 128)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !4514, file: !6, line: 1567, baseType: !759, size: 32, offset: 160)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4514, file: !6, line: 1570, baseType: !237, size: 128, offset: 192)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !4514, file: !6, line: 1572, baseType: !237, size: 128, offset: 320)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !4514, file: !6, line: 1573, baseType: !4524, size: 64, offset: 448)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !6, line: 1360, size: 320, elements: !4526)
!4526 = !{!4527, !4528, !4529, !4530, !4531}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4525, file: !6, line: 1361, baseType: !237, size: 128)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4525, file: !6, line: 1362, baseType: !1492, size: 128, offset: 128)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4525, file: !6, line: 1363, baseType: !250, offset: 256)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !4525, file: !6, line: 1364, baseType: !759, size: 32, offset: 256)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !4525, file: !6, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4514, file: !6, line: 1574, baseType: !194, size: 64, offset: 512)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !4514, file: !6, line: 1575, baseType: !4028, size: 64, offset: 576)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4514, file: !6, line: 1576, baseType: !7, size: 32, offset: 640)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4514, file: !6, line: 1577, baseType: !7, size: 32, offset: 672)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4514, file: !6, line: 1578, baseType: !198, size: 32, offset: 704)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !4514, file: !6, line: 1579, baseType: !7, size: 32, offset: 736)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !4514, file: !6, line: 1580, baseType: !193, size: 64, offset: 768)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !4514, file: !6, line: 1581, baseType: !931, size: 64, offset: 832)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !4514, file: !6, line: 1582, baseType: !4541, size: 64, offset: 896)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4543, line: 11, size: 256, elements: !4544)
!4543 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!4544 = !{!4545, !4546, !4547, !4548, !4549}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4542, file: !4543, line: 12, baseType: !340, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4542, file: !4543, line: 13, baseType: !7, size: 32, offset: 64)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4542, file: !4543, line: 14, baseType: !7, size: 32, offset: 96)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4542, file: !4543, line: 15, baseType: !931, size: 64, offset: 128)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4542, file: !4543, line: 17, baseType: !7, size: 32, offset: 192)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !4514, file: !6, line: 1583, baseType: !198, size: 32, offset: 960)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !4514, file: !6, line: 1584, baseType: !198, size: 32, offset: 992)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !4514, file: !6, line: 1585, baseType: !205, size: 32, offset: 1024)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4514, file: !6, line: 1586, baseType: !205, size: 32, offset: 1056)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !4514, file: !6, line: 1587, baseType: !3892, size: 64, offset: 1088)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !4514, file: !6, line: 1588, baseType: !931, size: 64, offset: 1152)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !4514, file: !6, line: 1589, baseType: !198, size: 32, offset: 1216)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !4514, file: !6, line: 1590, baseType: !198, size: 32, offset: 1248)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4514, file: !6, line: 1591, baseType: !198, size: 32, offset: 1280)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !4514, file: !6, line: 1593, baseType: !198, size: 32, offset: 1312)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4514, file: !6, line: 1594, baseType: !193, size: 64, offset: 1344)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4514, file: !6, line: 1595, baseType: !4562, size: 64, offset: 1408)
!4562 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !6, line: 1376, baseType: !4563)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{null, !4513}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !4514, file: !6, line: 1596, baseType: !4567, offset: 1472)
!4567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4568, elements: !2339)
!4568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !6, line: 1351, size: 128, elements: !4569)
!4569 = !{!4570, !4571, !4572, !4573}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4568, file: !6, line: 1352, baseType: !7, size: 32)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4568, file: !6, line: 1353, baseType: !7, size: 32, offset: 32)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4568, file: !6, line: 1354, baseType: !7, size: 32, offset: 64)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4568, file: !6, line: 1355, baseType: !198, size: 32, offset: 96)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !4120, file: !3, line: 33, baseType: !4575, size: 2048, offset: 448)
!4575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_classdev", file: !164, line: 64, size: 2048, elements: !4576)
!4576 = !{!4577, !4578, !4579, !4580, !4581, !4582, !4587, !4591, !4595, !4600, !4609, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4626, !4627, !4628}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4575, file: !164, line: 65, baseType: !234, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !4575, file: !164, line: 66, baseType: !163, size: 32, offset: 64)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "max_brightness", scope: !4575, file: !164, line: 67, baseType: !163, size: 32, offset: 96)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4575, file: !164, line: 68, baseType: !198, size: 32, offset: 128)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "work_flags", scope: !4575, file: !164, line: 84, baseType: !340, size: 64, offset: 192)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set", scope: !4575, file: !164, line: 97, baseType: !4583, size: 64, offset: 256)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{null, !4586, !163}
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set_blocking", scope: !4575, file: !164, line: 103, baseType: !4588, size: 64, offset: 320)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!198, !4586, !163}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_get", scope: !4575, file: !164, line: 106, baseType: !4592, size: 64, offset: 384)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!163, !4586}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "blink_set", scope: !4575, file: !164, line: 116, baseType: !4596, size: 64, offset: 448)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!198, !4586, !4599, !4599}
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_set", scope: !4575, file: !164, line: 120, baseType: !4601, size: 64, offset: 512)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!198, !4586, !4604, !205, !198}
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_pattern", file: !164, line: 579, size: 64, elements: !4606)
!4606 = !{!4607, !4608}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "delta_t", scope: !4605, file: !164, line: 580, baseType: !205, size: 32)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !4605, file: !164, line: 581, baseType: !198, size: 32, offset: 32)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_clear", scope: !4575, file: !164, line: 122, baseType: !4610, size: 64, offset: 576)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!198, !4586}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4575, file: !164, line: 124, baseType: !226, size: 64, offset: 640)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4575, file: !164, line: 125, baseType: !344, size: 64, offset: 704)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4575, file: !164, line: 127, baseType: !237, size: 128, offset: 768)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "default_trigger", scope: !4575, file: !164, line: 128, baseType: !234, size: 64, offset: 896)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_on", scope: !4575, file: !164, line: 130, baseType: !340, size: 64, offset: 960)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_off", scope: !4575, file: !164, line: 130, baseType: !340, size: 64, offset: 1024)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "blink_timer", scope: !4575, file: !164, line: 131, baseType: !3578, size: 320, offset: 1088)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "blink_brightness", scope: !4575, file: !164, line: 132, baseType: !198, size: 32, offset: 1408)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "new_blink_brightness", scope: !4575, file: !164, line: 133, baseType: !198, size: 32, offset: 1440)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "flash_resume", scope: !4575, file: !164, line: 134, baseType: !4623, size: 64, offset: 1472)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{null, !4586}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "set_brightness_work", scope: !4575, file: !164, line: 136, baseType: !1965, size: 256, offset: 1536)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_set_value", scope: !4575, file: !164, line: 137, baseType: !198, size: 32, offset: 1792)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "led_access", scope: !4575, file: !164, line: 159, baseType: !1184, size: 192, offset: 1856)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_urb", scope: !4120, file: !3, line: 34, baseType: !4513, size: 64, offset: 2496)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_buffer", scope: !4120, file: !3, line: 35, baseType: !4631, size: 40, offset: 2560)
!4631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4632, size: 40, elements: !4130)
!4632 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !187, line: 102, baseType: !1363)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_out_endp", scope: !4120, file: !3, line: 36, baseType: !198, size: 32, offset: 2624)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "iso_in_endp", scope: !4120, file: !3, line: 36, baseType: !198, size: 32, offset: 2656)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "led_on", scope: !4120, file: !3, line: 37, baseType: !502, size: 8, offset: 2688)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "is_led_on", scope: !4120, file: !3, line: 37, baseType: !502, size: 8, offset: 2696)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "led_complete", scope: !4120, file: !3, line: 38, baseType: !759, size: 32, offset: 2720)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4120, file: !3, line: 40, baseType: !4639, size: 512, offset: 2752)
!4639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 512, elements: !296)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4641 = !{!0, !4642, !4647, !4652, !4657, !4662, !4665, !4726}
!4642 = !DIGlobalVariableExpression(var: !4643, expr: !DIExpression())
!4643 = distinct !DIGlobalVariable(name: "__exitcall_ttusbir_driver_exit", scope: !2, file: !3, line: 430, type: !4644, isLocal: true, isDefinition: true)
!4644 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4645, line: 117, baseType: !4646)
!4645 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!4647 = !DIGlobalVariableExpression(var: !4648, expr: !DIExpression())
!4648 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description240", scope: !2, file: !3, line: 432, type: !4649, isLocal: true, isDefinition: true, align: 8)
!4649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 384, elements: !4650)
!4650 = !{!4651}
!4651 = !DISubrange(count: 48)
!4652 = !DIGlobalVariableExpression(var: !4653, expr: !DIExpression())
!4653 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author241", scope: !2, file: !3, line: 433, type: !4654, isLocal: true, isDefinition: true, align: 8)
!4654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 336, elements: !4655)
!4655 = !{!4656}
!4656 = !DISubrange(count: 42)
!4657 = !DIGlobalVariableExpression(var: !4658, expr: !DIExpression())
!4658 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file242", scope: !2, file: !3, line: 434, type: !4659, isLocal: true, isDefinition: true, align: 8)
!4659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 304, elements: !4660)
!4660 = !{!4661}
!4661 = !DISubrange(count: 38)
!4662 = !DIGlobalVariableExpression(var: !4663, expr: !DIExpression())
!4663 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license243", scope: !2, file: !3, line: 434, type: !4664, isLocal: true, isDefinition: true, align: 8)
!4664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 160, elements: !2209)
!4665 = !DIGlobalVariableExpression(var: !4666, expr: !DIExpression())
!4666 = distinct !DIGlobalVariable(name: "ttusbir_driver", scope: !2, file: !3, line: 420, type: !4667, isLocal: true, isDefinition: true)
!4667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !6, line: 1184, size: 2112, elements: !4668)
!4668 = !{!4669, !4670, !4691, !4695, !4699, !4703, !4707, !4708, !4709, !4710, !4711, !4712, !4717, !4722, !4723, !4724, !4725}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4667, file: !6, line: 1185, baseType: !234, size: 64)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4667, file: !6, line: 1187, baseType: !4671, size: 64, offset: 64)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{!198, !4006, !4674}
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4676)
!4676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3471, line: 121, size: 256, elements: !4677)
!4677 = !{!4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !4676, file: !3471, line: 123, baseType: !188, size: 16)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !4676, file: !3471, line: 126, baseType: !188, size: 16, offset: 16)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !4676, file: !3471, line: 127, baseType: !188, size: 16, offset: 32)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !4676, file: !3471, line: 128, baseType: !188, size: 16, offset: 48)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !4676, file: !3471, line: 129, baseType: !188, size: 16, offset: 64)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !4676, file: !3471, line: 132, baseType: !1364, size: 8, offset: 80)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !4676, file: !3471, line: 133, baseType: !1364, size: 8, offset: 88)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !4676, file: !3471, line: 134, baseType: !1364, size: 8, offset: 96)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4676, file: !3471, line: 137, baseType: !1364, size: 8, offset: 104)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4676, file: !3471, line: 138, baseType: !1364, size: 8, offset: 112)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4676, file: !3471, line: 139, baseType: !1364, size: 8, offset: 120)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4676, file: !3471, line: 142, baseType: !1364, size: 8, offset: 128)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4676, file: !3471, line: 145, baseType: !3490, size: 64, align: 64, offset: 192)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4667, file: !6, line: 1190, baseType: !4692, size: 64, offset: 128)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{null, !4006}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4667, file: !6, line: 1192, baseType: !4696, size: 64, offset: 192)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!198, !4006, !7, !193}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4667, file: !6, line: 1195, baseType: !4700, size: 64, offset: 256)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!198, !4006, !3501}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4667, file: !6, line: 1196, baseType: !4704, size: 64, offset: 320)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{!198, !4006}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !4667, file: !6, line: 1197, baseType: !4704, size: 64, offset: 384)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !4667, file: !6, line: 1199, baseType: !4704, size: 64, offset: 448)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !4667, file: !6, line: 1200, baseType: !4704, size: 64, offset: 512)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4667, file: !6, line: 1202, baseType: !4674, size: 64, offset: 576)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4667, file: !6, line: 1203, baseType: !344, size: 64, offset: 640)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4667, file: !6, line: 1205, baseType: !4713, size: 128, offset: 704)
!4713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !6, line: 1091, size: 128, elements: !4714)
!4714 = !{!4715, !4716}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4713, file: !6, line: 1092, baseType: !250)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4713, file: !6, line: 1093, baseType: !237, size: 128)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !4667, file: !6, line: 1206, baseType: !4718, size: 1216, offset: 832)
!4718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !6, line: 1113, size: 1216, elements: !4719)
!4719 = !{!4720, !4721}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4718, file: !6, line: 1114, baseType: !3459, size: 1152)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !4718, file: !6, line: 1115, baseType: !198, size: 32, offset: 1152)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !4667, file: !6, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !4667, file: !6, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !4667, file: !6, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !4667, file: !6, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!4726 = !DIGlobalVariableExpression(var: !4727, expr: !DIExpression())
!4727 = distinct !DIGlobalVariable(name: "ttusbir_table", scope: !2, file: !3, line: 415, type: !4728, isLocal: true, isDefinition: true)
!4728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4675, size: 512, elements: !218)
!4729 = !{i32 7, !"Dwarf Version", i32 4}
!4730 = !{i32 2, !"Debug Info Version", i32 3}
!4731 = !{i32 1, !"wchar_size", i32 2}
!4732 = !{i32 1, !"Code Model", i32 2}
!4733 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4734 = distinct !DISubprogram(name: "ttusbir_driver_init", scope: !3, file: !3, line: 430, type: !4735, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{!198}
!4737 = !DILocation(line: 430, column: 1, scope: !4734)
!4738 = distinct !DISubprogram(name: "ttusbir_driver_exit", scope: !3, file: !3, line: 430, type: !1886, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4739 = !DILocation(line: 430, column: 1, scope: !4738)
!4740 = distinct !DISubprogram(name: "ttusbir_probe", scope: !3, file: !3, line: 182, type: !4672, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4741 = !DILocalVariable(name: "v", arg: 1, scope: !4742, file: !4743, line: 39, type: !4746)
!4742 = distinct !DISubprogram(name: "arch_atomic_set", scope: !4743, file: !4743, line: 39, type: !4744, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4743 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!4744 = !DISubroutineType(types: !4745)
!4745 = !{null, !4746, !198}
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!4747 = !DILocation(line: 39, column: 55, scope: !4742, inlinedAt: !4748)
!4748 = distinct !DILocation(line: 46, column: 2, scope: !4749, inlinedAt: !4751)
!4749 = distinct !DISubprogram(name: "atomic_set", scope: !4750, file: !4750, line: 43, type: !4744, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4750 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4751 = distinct !DILocation(line: 294, column: 2, scope: !4740)
!4752 = !DILocalVariable(name: "i", arg: 2, scope: !4742, file: !4743, line: 39, type: !198)
!4753 = !DILocation(line: 39, column: 62, scope: !4742, inlinedAt: !4748)
!4754 = !DILocalVariable(name: "v", arg: 1, scope: !4755, file: !4756, line: 84, type: !4759)
!4755 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4756, file: !4756, line: 84, type: !4757, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4756 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4757 = !DISubroutineType(types: !4758)
!4758 = !{null, !4759, !337}
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4761)
!4761 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4762 = !DILocation(line: 84, column: 74, scope: !4755, inlinedAt: !4763)
!4763 = distinct !DILocation(line: 45, column: 2, scope: !4749, inlinedAt: !4751)
!4764 = !DILocalVariable(name: "size", arg: 2, scope: !4755, file: !4756, line: 84, type: !337)
!4765 = !DILocation(line: 84, column: 84, scope: !4755, inlinedAt: !4763)
!4766 = !DILocalVariable(name: "v", arg: 1, scope: !4749, file: !4750, line: 43, type: !4746)
!4767 = !DILocation(line: 43, column: 22, scope: !4749, inlinedAt: !4751)
!4768 = !DILocalVariable(name: "i", arg: 2, scope: !4749, file: !4750, line: 43, type: !198)
!4769 = !DILocation(line: 43, column: 29, scope: !4749, inlinedAt: !4751)
!4770 = !DILocalVariable(name: "intf", arg: 1, scope: !4740, file: !3, line: 182, type: !4006)
!4771 = !DILocation(line: 182, column: 48, scope: !4740)
!4772 = !DILocalVariable(name: "id", arg: 2, scope: !4740, file: !3, line: 183, type: !4674)
!4773 = !DILocation(line: 183, column: 33, scope: !4740)
!4774 = !DILocalVariable(name: "tt", scope: !4740, file: !3, line: 185, type: !4119)
!4775 = !DILocation(line: 185, column: 18, scope: !4740)
!4776 = !DILocalVariable(name: "idesc", scope: !4740, file: !3, line: 186, type: !4777)
!4777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4778 = !DILocation(line: 186, column: 35, scope: !4740)
!4779 = !DILocalVariable(name: "desc", scope: !4740, file: !3, line: 187, type: !4780)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!4781 = !DILocation(line: 187, column: 34, scope: !4740)
!4782 = !DILocalVariable(name: "rc", scope: !4740, file: !3, line: 188, type: !4123)
!4783 = !DILocation(line: 188, column: 17, scope: !4740)
!4784 = !DILocalVariable(name: "i", scope: !4740, file: !3, line: 189, type: !198)
!4785 = !DILocation(line: 189, column: 6, scope: !4740)
!4786 = !DILocalVariable(name: "j", scope: !4740, file: !3, line: 189, type: !198)
!4787 = !DILocation(line: 189, column: 9, scope: !4740)
!4788 = !DILocalVariable(name: "ret", scope: !4740, file: !3, line: 189, type: !198)
!4789 = !DILocation(line: 189, column: 12, scope: !4740)
!4790 = !DILocalVariable(name: "altsetting", scope: !4740, file: !3, line: 190, type: !198)
!4791 = !DILocation(line: 190, column: 6, scope: !4740)
!4792 = !DILocation(line: 192, column: 7, scope: !4740)
!4793 = !DILocation(line: 192, column: 5, scope: !4740)
!4794 = !DILocation(line: 193, column: 7, scope: !4740)
!4795 = !DILocation(line: 193, column: 5, scope: !4740)
!4796 = !DILocation(line: 194, column: 7, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 194, column: 6)
!4798 = !DILocation(line: 194, column: 10, scope: !4797)
!4799 = !DILocation(line: 194, column: 14, scope: !4797)
!4800 = !DILocation(line: 194, column: 6, scope: !4740)
!4801 = !DILocation(line: 195, column: 7, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 194, column: 18)
!4803 = !DILocation(line: 196, column: 3, scope: !4802)
!4804 = !DILocation(line: 200, column: 9, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 200, column: 2)
!4806 = !DILocation(line: 200, column: 7, scope: !4805)
!4807 = !DILocation(line: 200, column: 14, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 200, column: 2)
!4809 = !DILocation(line: 200, column: 18, scope: !4808)
!4810 = !DILocation(line: 200, column: 24, scope: !4808)
!4811 = !DILocation(line: 200, column: 16, scope: !4808)
!4812 = !DILocation(line: 200, column: 39, scope: !4808)
!4813 = !DILocation(line: 200, column: 42, scope: !4808)
!4814 = !DILocation(line: 200, column: 53, scope: !4808)
!4815 = !DILocation(line: 0, scope: !4808)
!4816 = !DILocation(line: 200, column: 2, scope: !4805)
!4817 = !DILocalVariable(name: "max_packet", scope: !4818, file: !3, line: 201, type: !198)
!4818 = distinct !DILexicalBlock(scope: !4808, file: !3, line: 200, column: 65)
!4819 = !DILocation(line: 201, column: 7, scope: !4818)
!4820 = !DILocalVariable(name: "bulk_out_endp", scope: !4818, file: !3, line: 201, type: !198)
!4821 = !DILocation(line: 201, column: 19, scope: !4818)
!4822 = !DILocalVariable(name: "iso_in_endp", scope: !4818, file: !3, line: 201, type: !198)
!4823 = !DILocation(line: 201, column: 39, scope: !4818)
!4824 = !DILocation(line: 203, column: 12, scope: !4818)
!4825 = !DILocation(line: 203, column: 18, scope: !4818)
!4826 = !DILocation(line: 203, column: 29, scope: !4818)
!4827 = !DILocation(line: 203, column: 32, scope: !4818)
!4828 = !DILocation(line: 203, column: 9, scope: !4818)
!4829 = !DILocation(line: 205, column: 10, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 205, column: 3)
!4831 = !DILocation(line: 205, column: 8, scope: !4830)
!4832 = !DILocation(line: 205, column: 15, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4830, file: !3, line: 205, column: 3)
!4834 = !DILocation(line: 205, column: 19, scope: !4833)
!4835 = !DILocation(line: 205, column: 26, scope: !4833)
!4836 = !DILocation(line: 205, column: 17, scope: !4833)
!4837 = !DILocation(line: 205, column: 3, scope: !4830)
!4838 = !DILocation(line: 206, column: 12, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4833, file: !3, line: 205, column: 46)
!4840 = !DILocation(line: 206, column: 18, scope: !4839)
!4841 = !DILocation(line: 206, column: 29, scope: !4839)
!4842 = !DILocation(line: 206, column: 32, scope: !4839)
!4843 = !DILocation(line: 206, column: 41, scope: !4839)
!4844 = !DILocation(line: 206, column: 44, scope: !4839)
!4845 = !DILocation(line: 206, column: 9, scope: !4839)
!4846 = !DILocation(line: 207, column: 17, scope: !4839)
!4847 = !DILocation(line: 207, column: 15, scope: !4839)
!4848 = !DILocation(line: 208, column: 28, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4839, file: !3, line: 208, column: 8)
!4850 = !DILocation(line: 208, column: 8, scope: !4849)
!4851 = !DILocation(line: 208, column: 34, scope: !4849)
!4852 = !DILocation(line: 209, column: 29, scope: !4849)
!4853 = !DILocation(line: 209, column: 6, scope: !4849)
!4854 = !DILocation(line: 209, column: 35, scope: !4849)
!4855 = !DILocation(line: 210, column: 6, scope: !4849)
!4856 = !DILocation(line: 210, column: 17, scope: !4849)
!4857 = !DILocation(line: 208, column: 8, scope: !4839)
!4858 = !DILocation(line: 211, column: 19, scope: !4849)
!4859 = !DILocation(line: 211, column: 17, scope: !4849)
!4860 = !DILocation(line: 211, column: 5, scope: !4849)
!4861 = !DILocation(line: 212, column: 34, scope: !4862)
!4862 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 212, column: 13)
!4863 = !DILocation(line: 212, column: 13, scope: !4862)
!4864 = !DILocation(line: 212, column: 40, scope: !4862)
!4865 = !DILocation(line: 213, column: 29, scope: !4862)
!4866 = !DILocation(line: 213, column: 6, scope: !4862)
!4867 = !DILocation(line: 213, column: 35, scope: !4862)
!4868 = !DILocation(line: 214, column: 6, scope: !4862)
!4869 = !DILocation(line: 214, column: 17, scope: !4862)
!4870 = !DILocation(line: 212, column: 13, scope: !4849)
!4871 = !DILocation(line: 215, column: 21, scope: !4862)
!4872 = !DILocation(line: 215, column: 19, scope: !4862)
!4873 = !DILocation(line: 215, column: 5, scope: !4862)
!4874 = !DILocation(line: 217, column: 8, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4839, file: !3, line: 217, column: 8)
!4876 = !DILocation(line: 217, column: 22, scope: !4875)
!4877 = !DILocation(line: 217, column: 28, scope: !4875)
!4878 = !DILocation(line: 217, column: 31, scope: !4875)
!4879 = !DILocation(line: 217, column: 43, scope: !4875)
!4880 = !DILocation(line: 217, column: 8, scope: !4839)
!4881 = !DILocation(line: 218, column: 25, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4875, file: !3, line: 217, column: 50)
!4883 = !DILocation(line: 218, column: 5, scope: !4882)
!4884 = !DILocation(line: 218, column: 9, scope: !4882)
!4885 = !DILocation(line: 218, column: 23, scope: !4882)
!4886 = !DILocation(line: 219, column: 23, scope: !4882)
!4887 = !DILocation(line: 219, column: 5, scope: !4882)
!4888 = !DILocation(line: 219, column: 9, scope: !4882)
!4889 = !DILocation(line: 219, column: 21, scope: !4882)
!4890 = !DILocation(line: 220, column: 18, scope: !4882)
!4891 = !DILocation(line: 220, column: 16, scope: !4882)
!4892 = !DILocation(line: 221, column: 5, scope: !4882)
!4893 = !DILocation(line: 223, column: 3, scope: !4839)
!4894 = !DILocation(line: 205, column: 42, scope: !4833)
!4895 = !DILocation(line: 205, column: 3, scope: !4833)
!4896 = distinct !{!4896, !4837, !4897}
!4897 = !DILocation(line: 223, column: 3, scope: !4830)
!4898 = !DILocation(line: 224, column: 2, scope: !4818)
!4899 = !DILocation(line: 200, column: 61, scope: !4808)
!4900 = !DILocation(line: 200, column: 2, scope: !4808)
!4901 = distinct !{!4901, !4816, !4902}
!4902 = !DILocation(line: 224, column: 2, scope: !4805)
!4903 = !DILocation(line: 226, column: 6, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 226, column: 6)
!4905 = !DILocation(line: 226, column: 17, scope: !4904)
!4906 = !DILocation(line: 226, column: 6, scope: !4740)
!4907 = !DILocation(line: 227, column: 3, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4904, file: !3, line: 226, column: 24)
!4909 = !DILocation(line: 228, column: 7, scope: !4908)
!4910 = !DILocation(line: 229, column: 3, scope: !4908)
!4911 = !DILocation(line: 232, column: 13, scope: !4740)
!4912 = !DILocation(line: 232, column: 19, scope: !4740)
!4913 = !DILocation(line: 232, column: 2, scope: !4740)
!4914 = !DILocation(line: 232, column: 6, scope: !4740)
!4915 = !DILocation(line: 232, column: 10, scope: !4740)
!4916 = !DILocation(line: 233, column: 33, scope: !4740)
!4917 = !DILocation(line: 233, column: 13, scope: !4740)
!4918 = !DILocation(line: 233, column: 2, scope: !4740)
!4919 = !DILocation(line: 233, column: 6, scope: !4740)
!4920 = !DILocation(line: 233, column: 11, scope: !4740)
!4921 = !DILocation(line: 234, column: 11, scope: !4740)
!4922 = !DILocation(line: 234, column: 2, scope: !4740)
!4923 = !DILocation(line: 234, column: 6, scope: !4740)
!4924 = !DILocation(line: 234, column: 9, scope: !4740)
!4925 = !DILocation(line: 236, column: 26, scope: !4740)
!4926 = !DILocation(line: 236, column: 30, scope: !4740)
!4927 = !DILocation(line: 236, column: 39, scope: !4740)
!4928 = !DILocation(line: 236, column: 8, scope: !4740)
!4929 = !DILocation(line: 236, column: 6, scope: !4740)
!4930 = !DILocation(line: 237, column: 6, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 237, column: 6)
!4932 = !DILocation(line: 237, column: 6, scope: !4740)
!4933 = !DILocation(line: 238, column: 3, scope: !4931)
!4934 = !DILocation(line: 240, column: 9, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 240, column: 2)
!4936 = !DILocation(line: 240, column: 7, scope: !4935)
!4937 = !DILocation(line: 240, column: 14, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4935, file: !3, line: 240, column: 2)
!4939 = !DILocation(line: 240, column: 16, scope: !4938)
!4940 = !DILocation(line: 240, column: 2, scope: !4935)
!4941 = !DILocalVariable(name: "urb", scope: !4942, file: !3, line: 241, type: !4513)
!4942 = distinct !DILexicalBlock(scope: !4938, file: !3, line: 240, column: 33)
!4943 = !DILocation(line: 241, column: 15, scope: !4942)
!4944 = !DILocation(line: 241, column: 21, scope: !4942)
!4945 = !DILocalVariable(name: "buffer", scope: !4942, file: !3, line: 242, type: !193)
!4946 = !DILocation(line: 242, column: 9, scope: !4942)
!4947 = !DILocation(line: 244, column: 8, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4942, file: !3, line: 244, column: 7)
!4949 = !DILocation(line: 244, column: 7, scope: !4942)
!4950 = !DILocation(line: 245, column: 8, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4948, file: !3, line: 244, column: 13)
!4952 = !DILocation(line: 246, column: 4, scope: !4951)
!4953 = !DILocation(line: 249, column: 14, scope: !4942)
!4954 = !DILocation(line: 249, column: 18, scope: !4942)
!4955 = !DILocation(line: 249, column: 3, scope: !4942)
!4956 = !DILocation(line: 249, column: 8, scope: !4942)
!4957 = !DILocation(line: 249, column: 12, scope: !4942)
!4958 = !DILocation(line: 250, column: 18, scope: !4942)
!4959 = !DILocation(line: 250, column: 3, scope: !4942)
!4960 = !DILocation(line: 250, column: 8, scope: !4942)
!4961 = !DILocation(line: 250, column: 16, scope: !4942)
!4962 = !DILocation(line: 251, column: 15, scope: !4942)
!4963 = !DILocation(line: 251, column: 3, scope: !4942)
!4964 = !DILocation(line: 251, column: 8, scope: !4942)
!4965 = !DILocation(line: 251, column: 13, scope: !4942)
!4966 = !DILocation(line: 252, column: 3, scope: !4942)
!4967 = !DILocation(line: 252, column: 8, scope: !4942)
!4968 = !DILocation(line: 252, column: 17, scope: !4942)
!4969 = !DILocation(line: 253, column: 31, scope: !4942)
!4970 = !DILocation(line: 253, column: 35, scope: !4942)
!4971 = !DILocation(line: 254, column: 8, scope: !4942)
!4972 = !DILocation(line: 254, column: 13, scope: !4942)
!4973 = !DILocation(line: 253, column: 12, scope: !4942)
!4974 = !DILocation(line: 253, column: 10, scope: !4942)
!4975 = !DILocation(line: 255, column: 8, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4942, file: !3, line: 255, column: 7)
!4977 = !DILocation(line: 255, column: 7, scope: !4942)
!4978 = !DILocation(line: 256, column: 17, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4976, file: !3, line: 255, column: 16)
!4980 = !DILocation(line: 256, column: 4, scope: !4979)
!4981 = !DILocation(line: 257, column: 8, scope: !4979)
!4982 = !DILocation(line: 258, column: 4, scope: !4979)
!4983 = !DILocation(line: 260, column: 3, scope: !4942)
!4984 = !DILocation(line: 260, column: 8, scope: !4942)
!4985 = !DILocation(line: 260, column: 23, scope: !4942)
!4986 = !DILocation(line: 261, column: 26, scope: !4942)
!4987 = !DILocation(line: 261, column: 3, scope: !4942)
!4988 = !DILocation(line: 261, column: 8, scope: !4942)
!4989 = !DILocation(line: 261, column: 24, scope: !4942)
!4990 = !DILocation(line: 262, column: 3, scope: !4942)
!4991 = !DILocation(line: 262, column: 8, scope: !4942)
!4992 = !DILocation(line: 262, column: 17, scope: !4942)
!4993 = !DILocation(line: 263, column: 3, scope: !4942)
!4994 = !DILocation(line: 263, column: 8, scope: !4942)
!4995 = !DILocation(line: 263, column: 26, scope: !4942)
!4996 = !DILocation(line: 264, column: 3, scope: !4942)
!4997 = !DILocation(line: 264, column: 8, scope: !4942)
!4998 = !DILocation(line: 264, column: 31, scope: !4942)
!4999 = !DILocation(line: 266, column: 10, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4942, file: !3, line: 266, column: 3)
!5001 = !DILocation(line: 266, column: 8, scope: !5000)
!5002 = !DILocation(line: 266, column: 15, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 266, column: 3)
!5004 = !DILocation(line: 266, column: 17, scope: !5003)
!5005 = !DILocation(line: 266, column: 3, scope: !5000)
!5006 = !DILocation(line: 267, column: 36, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !5003, file: !3, line: 266, column: 27)
!5008 = !DILocation(line: 267, column: 38, scope: !5007)
!5009 = !DILocation(line: 267, column: 4, scope: !5007)
!5010 = !DILocation(line: 267, column: 9, scope: !5007)
!5011 = !DILocation(line: 267, column: 24, scope: !5007)
!5012 = !DILocation(line: 267, column: 27, scope: !5007)
!5013 = !DILocation(line: 267, column: 34, scope: !5007)
!5014 = !DILocation(line: 268, column: 4, scope: !5007)
!5015 = !DILocation(line: 268, column: 9, scope: !5007)
!5016 = !DILocation(line: 268, column: 24, scope: !5007)
!5017 = !DILocation(line: 268, column: 27, scope: !5007)
!5018 = !DILocation(line: 268, column: 34, scope: !5007)
!5019 = !DILocation(line: 269, column: 3, scope: !5007)
!5020 = !DILocation(line: 266, column: 23, scope: !5003)
!5021 = !DILocation(line: 266, column: 3, scope: !5003)
!5022 = distinct !{!5022, !5005, !5023}
!5023 = !DILocation(line: 269, column: 3, scope: !5000)
!5024 = !DILocation(line: 271, column: 16, scope: !4942)
!5025 = !DILocation(line: 271, column: 3, scope: !4942)
!5026 = !DILocation(line: 271, column: 7, scope: !4942)
!5027 = !DILocation(line: 271, column: 11, scope: !4942)
!5028 = !DILocation(line: 271, column: 14, scope: !4942)
!5029 = !DILocation(line: 272, column: 2, scope: !4942)
!5030 = !DILocation(line: 240, column: 29, scope: !4938)
!5031 = !DILocation(line: 240, column: 2, scope: !4938)
!5032 = distinct !{!5032, !4940, !5033}
!5033 = !DILocation(line: 272, column: 2, scope: !4935)
!5034 = !DILocation(line: 274, column: 17, scope: !4740)
!5035 = !DILocation(line: 274, column: 2, scope: !4740)
!5036 = !DILocation(line: 274, column: 6, scope: !4740)
!5037 = !DILocation(line: 274, column: 15, scope: !4740)
!5038 = !DILocation(line: 275, column: 7, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 275, column: 6)
!5040 = !DILocation(line: 275, column: 11, scope: !5039)
!5041 = !DILocation(line: 275, column: 6, scope: !4740)
!5042 = !DILocation(line: 276, column: 7, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5039, file: !3, line: 275, column: 21)
!5044 = !DILocation(line: 277, column: 3, scope: !5043)
!5045 = !DILocation(line: 280, column: 2, scope: !4740)
!5046 = !DILocation(line: 280, column: 6, scope: !4740)
!5047 = !DILocation(line: 280, column: 21, scope: !4740)
!5048 = !DILocation(line: 281, column: 2, scope: !4740)
!5049 = !DILocation(line: 281, column: 6, scope: !4740)
!5050 = !DILocation(line: 281, column: 21, scope: !4740)
!5051 = !DILocation(line: 282, column: 2, scope: !4740)
!5052 = !DILocation(line: 282, column: 6, scope: !4740)
!5053 = !DILocation(line: 282, column: 21, scope: !4740)
!5054 = !DILocation(line: 283, column: 2, scope: !4740)
!5055 = !DILocation(line: 283, column: 6, scope: !4740)
!5056 = !DILocation(line: 283, column: 21, scope: !4740)
!5057 = !DILocation(line: 285, column: 20, scope: !4740)
!5058 = !DILocation(line: 285, column: 24, scope: !4740)
!5059 = !DILocation(line: 285, column: 34, scope: !4740)
!5060 = !DILocation(line: 285, column: 38, scope: !4740)
!5061 = !DILocation(line: 285, column: 44, scope: !4740)
!5062 = !DILocation(line: 286, column: 23, scope: !4740)
!5063 = !DILocation(line: 286, column: 27, scope: !4740)
!5064 = !DILocation(line: 287, column: 30, scope: !4740)
!5065 = !DILocation(line: 285, column: 2, scope: !4740)
!5066 = !DILocation(line: 289, column: 2, scope: !4740)
!5067 = !DILocation(line: 289, column: 6, scope: !4740)
!5068 = !DILocation(line: 289, column: 10, scope: !4740)
!5069 = !DILocation(line: 289, column: 15, scope: !4740)
!5070 = !DILocation(line: 290, column: 2, scope: !4740)
!5071 = !DILocation(line: 290, column: 6, scope: !4740)
!5072 = !DILocation(line: 290, column: 10, scope: !4740)
!5073 = !DILocation(line: 290, column: 26, scope: !4740)
!5074 = !DILocation(line: 291, column: 2, scope: !4740)
!5075 = !DILocation(line: 291, column: 6, scope: !4740)
!5076 = !DILocation(line: 291, column: 10, scope: !4740)
!5077 = !DILocation(line: 291, column: 25, scope: !4740)
!5078 = !DILocation(line: 292, column: 2, scope: !4740)
!5079 = !DILocation(line: 292, column: 6, scope: !4740)
!5080 = !DILocation(line: 292, column: 10, scope: !4740)
!5081 = !DILocation(line: 292, column: 25, scope: !4740)
!5082 = !DILocation(line: 293, column: 18, scope: !4740)
!5083 = !DILocation(line: 293, column: 22, scope: !4740)
!5084 = !DILocation(line: 293, column: 29, scope: !4740)
!5085 = !DILocation(line: 293, column: 2, scope: !4740)
!5086 = !DILocation(line: 293, column: 6, scope: !4740)
!5087 = !DILocation(line: 293, column: 16, scope: !4740)
!5088 = !DILocation(line: 294, column: 14, scope: !4740)
!5089 = !DILocation(line: 294, column: 18, scope: !4740)
!5090 = !DILocation(line: 45, column: 26, scope: !4749, inlinedAt: !4751)
!5091 = !DILocation(line: 86, column: 20, scope: !4755, inlinedAt: !4763)
!5092 = !DILocation(line: 86, column: 23, scope: !4755, inlinedAt: !4763)
!5093 = !DILocation(line: 86, column: 2, scope: !4755, inlinedAt: !4763)
!5094 = !DILocation(line: 87, column: 2, scope: !4755, inlinedAt: !4763)
!5095 = !DILocation(line: 46, column: 18, scope: !4749, inlinedAt: !4751)
!5096 = !DILocation(line: 46, column: 21, scope: !4749, inlinedAt: !4751)
!5097 = !DILocation(line: 41, column: 2, scope: !5098, inlinedAt: !4748)
!5098 = distinct !DILexicalBlock(scope: !4742, file: !4743, line: 41, column: 2)
!5099 = !DILocation(line: 295, column: 31, scope: !4740)
!5100 = !DILocation(line: 295, column: 37, scope: !4740)
!5101 = !DILocation(line: 295, column: 43, scope: !4740)
!5102 = !DILocation(line: 295, column: 47, scope: !4740)
!5103 = !DILocation(line: 295, column: 8, scope: !4740)
!5104 = !DILocation(line: 295, column: 6, scope: !4740)
!5105 = !DILocation(line: 296, column: 6, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 296, column: 6)
!5107 = !DILocation(line: 296, column: 6, scope: !4740)
!5108 = !DILocation(line: 297, column: 3, scope: !5106)
!5109 = !DILocation(line: 299, column: 16, scope: !4740)
!5110 = !DILocation(line: 299, column: 20, scope: !4740)
!5111 = !DILocation(line: 299, column: 26, scope: !4740)
!5112 = !DILocation(line: 299, column: 30, scope: !4740)
!5113 = !DILocation(line: 299, column: 2, scope: !4740)
!5114 = !DILocation(line: 301, column: 2, scope: !4740)
!5115 = !DILocation(line: 301, column: 6, scope: !4740)
!5116 = !DILocation(line: 301, column: 18, scope: !4740)
!5117 = !DILocation(line: 302, column: 19, scope: !4740)
!5118 = !DILocation(line: 302, column: 23, scope: !4740)
!5119 = !DILocation(line: 302, column: 2, scope: !4740)
!5120 = !DILocation(line: 302, column: 6, scope: !4740)
!5121 = !DILocation(line: 302, column: 17, scope: !4740)
!5122 = !DILocation(line: 303, column: 18, scope: !4740)
!5123 = !DILocation(line: 303, column: 22, scope: !4740)
!5124 = !DILocation(line: 303, column: 29, scope: !4740)
!5125 = !DILocation(line: 303, column: 33, scope: !4740)
!5126 = !DILocation(line: 303, column: 2, scope: !4740)
!5127 = !DILocation(line: 304, column: 20, scope: !4740)
!5128 = !DILocation(line: 304, column: 26, scope: !4740)
!5129 = !DILocation(line: 304, column: 2, scope: !4740)
!5130 = !DILocation(line: 304, column: 6, scope: !4740)
!5131 = !DILocation(line: 304, column: 10, scope: !4740)
!5132 = !DILocation(line: 304, column: 17, scope: !4740)
!5133 = !DILocation(line: 305, column: 2, scope: !4740)
!5134 = !DILocation(line: 305, column: 6, scope: !4740)
!5135 = !DILocation(line: 305, column: 24, scope: !4740)
!5136 = !DILocation(line: 306, column: 13, scope: !4740)
!5137 = !DILocation(line: 306, column: 2, scope: !4740)
!5138 = !DILocation(line: 306, column: 6, scope: !4740)
!5139 = !DILocation(line: 306, column: 11, scope: !4740)
!5140 = !DILocation(line: 307, column: 2, scope: !4740)
!5141 = !DILocation(line: 307, column: 6, scope: !4740)
!5142 = !DILocation(line: 307, column: 18, scope: !4740)
!5143 = !DILocation(line: 308, column: 2, scope: !4740)
!5144 = !DILocation(line: 308, column: 6, scope: !4740)
!5145 = !DILocation(line: 308, column: 15, scope: !4740)
!5146 = !DILocation(line: 309, column: 2, scope: !4740)
!5147 = !DILocation(line: 309, column: 6, scope: !4740)
!5148 = !DILocation(line: 309, column: 18, scope: !4740)
!5149 = !DILocation(line: 310, column: 2, scope: !4740)
!5150 = !DILocation(line: 310, column: 6, scope: !4740)
!5151 = !DILocation(line: 310, column: 14, scope: !4740)
!5152 = !DILocation(line: 311, column: 2, scope: !4740)
!5153 = !DILocation(line: 311, column: 6, scope: !4740)
!5154 = !DILocation(line: 311, column: 18, scope: !4740)
!5155 = !DILocation(line: 317, column: 2, scope: !4740)
!5156 = !DILocation(line: 317, column: 6, scope: !4740)
!5157 = !DILocation(line: 317, column: 20, scope: !4740)
!5158 = !DILocation(line: 319, column: 27, scope: !4740)
!5159 = !DILocation(line: 319, column: 8, scope: !4740)
!5160 = !DILocation(line: 319, column: 6, scope: !4740)
!5161 = !DILocation(line: 320, column: 6, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 320, column: 6)
!5163 = !DILocation(line: 320, column: 6, scope: !4740)
!5164 = !DILocation(line: 321, column: 3, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5162, file: !3, line: 320, column: 11)
!5166 = !DILocation(line: 322, column: 3, scope: !5165)
!5167 = !DILocation(line: 325, column: 19, scope: !4740)
!5168 = !DILocation(line: 325, column: 25, scope: !4740)
!5169 = !DILocation(line: 325, column: 2, scope: !4740)
!5170 = !DILocation(line: 327, column: 9, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 327, column: 2)
!5172 = !DILocation(line: 327, column: 7, scope: !5171)
!5173 = !DILocation(line: 327, column: 14, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5171, file: !3, line: 327, column: 2)
!5175 = !DILocation(line: 327, column: 16, scope: !5174)
!5176 = !DILocation(line: 327, column: 2, scope: !5171)
!5177 = !DILocation(line: 328, column: 24, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5174, file: !3, line: 327, column: 33)
!5179 = !DILocation(line: 328, column: 28, scope: !5178)
!5180 = !DILocation(line: 328, column: 32, scope: !5178)
!5181 = !DILocation(line: 328, column: 9, scope: !5178)
!5182 = !DILocation(line: 328, column: 7, scope: !5178)
!5183 = !DILocation(line: 329, column: 7, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5178, file: !3, line: 329, column: 7)
!5185 = !DILocation(line: 329, column: 7, scope: !5178)
!5186 = !DILocation(line: 330, column: 4, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 329, column: 12)
!5188 = !DILocation(line: 331, column: 4, scope: !5187)
!5189 = !DILocation(line: 333, column: 2, scope: !5178)
!5190 = !DILocation(line: 327, column: 29, scope: !5174)
!5191 = !DILocation(line: 327, column: 2, scope: !5174)
!5192 = distinct !{!5192, !5176, !5193}
!5193 = !DILocation(line: 333, column: 2, scope: !5171)
!5194 = !DILocation(line: 335, column: 2, scope: !4740)
!5195 = !DILabel(scope: !4740, name: "out3", file: !3, line: 336)
!5196 = !DILocation(line: 336, column: 1, scope: !4740)
!5197 = !DILocation(line: 337, column: 23, scope: !4740)
!5198 = !DILocation(line: 337, column: 2, scope: !4740)
!5199 = !DILocation(line: 338, column: 5, scope: !4740)
!5200 = !DILocation(line: 338, column: 2, scope: !4740)
!5201 = !DILabel(scope: !4740, name: "out2", file: !3, line: 339)
!5202 = !DILocation(line: 339, column: 1, scope: !4740)
!5203 = !DILocation(line: 340, column: 27, scope: !4740)
!5204 = !DILocation(line: 340, column: 31, scope: !4740)
!5205 = !DILocation(line: 340, column: 2, scope: !4740)
!5206 = !DILabel(scope: !4740, name: "out", file: !3, line: 341)
!5207 = !DILocation(line: 341, column: 1, scope: !4740)
!5208 = !DILocation(line: 342, column: 6, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 342, column: 6)
!5210 = !DILocation(line: 342, column: 6, scope: !4740)
!5211 = !DILocation(line: 343, column: 10, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 343, column: 3)
!5213 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 342, column: 10)
!5214 = !DILocation(line: 343, column: 8, scope: !5212)
!5215 = !DILocation(line: 343, column: 15, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5212, file: !3, line: 343, column: 3)
!5217 = !DILocation(line: 343, column: 17, scope: !5216)
!5218 = !DILocation(line: 343, column: 28, scope: !5216)
!5219 = !DILocation(line: 343, column: 31, scope: !5216)
!5220 = !DILocation(line: 343, column: 35, scope: !5216)
!5221 = !DILocation(line: 343, column: 39, scope: !5216)
!5222 = !DILocation(line: 0, scope: !5216)
!5223 = !DILocation(line: 343, column: 3, scope: !5212)
!5224 = !DILocalVariable(name: "urb", scope: !5225, file: !3, line: 344, type: !4513)
!5225 = distinct !DILexicalBlock(scope: !5216, file: !3, line: 343, column: 48)
!5226 = !DILocation(line: 344, column: 16, scope: !5225)
!5227 = !DILocation(line: 344, column: 22, scope: !5225)
!5228 = !DILocation(line: 344, column: 26, scope: !5225)
!5229 = !DILocation(line: 344, column: 30, scope: !5225)
!5230 = !DILocation(line: 346, column: 17, scope: !5225)
!5231 = !DILocation(line: 346, column: 4, scope: !5225)
!5232 = !DILocation(line: 347, column: 22, scope: !5225)
!5233 = !DILocation(line: 347, column: 26, scope: !5225)
!5234 = !DILocation(line: 347, column: 37, scope: !5225)
!5235 = !DILocation(line: 347, column: 42, scope: !5225)
!5236 = !DILocation(line: 348, column: 8, scope: !5225)
!5237 = !DILocation(line: 348, column: 13, scope: !5225)
!5238 = !DILocation(line: 347, column: 4, scope: !5225)
!5239 = !DILocation(line: 349, column: 17, scope: !5225)
!5240 = !DILocation(line: 349, column: 4, scope: !5225)
!5241 = !DILocation(line: 350, column: 3, scope: !5225)
!5242 = !DILocation(line: 343, column: 44, scope: !5216)
!5243 = !DILocation(line: 343, column: 3, scope: !5216)
!5244 = distinct !{!5244, !5223, !5245}
!5245 = !DILocation(line: 350, column: 3, scope: !5212)
!5246 = !DILocation(line: 351, column: 16, scope: !5213)
!5247 = !DILocation(line: 351, column: 20, scope: !5213)
!5248 = !DILocation(line: 351, column: 3, scope: !5213)
!5249 = !DILocation(line: 352, column: 16, scope: !5213)
!5250 = !DILocation(line: 352, column: 20, scope: !5213)
!5251 = !DILocation(line: 352, column: 3, scope: !5213)
!5252 = !DILocation(line: 353, column: 9, scope: !5213)
!5253 = !DILocation(line: 353, column: 3, scope: !5213)
!5254 = !DILocation(line: 354, column: 2, scope: !5213)
!5255 = !DILocation(line: 355, column: 17, scope: !4740)
!5256 = !DILocation(line: 355, column: 2, scope: !4740)
!5257 = !DILocation(line: 357, column: 9, scope: !4740)
!5258 = !DILocation(line: 357, column: 2, scope: !4740)
!5259 = !DILocation(line: 358, column: 1, scope: !4740)
!5260 = distinct !DISubprogram(name: "ttusbir_disconnect", scope: !3, file: !3, line: 360, type: !4693, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5261 = !DILocalVariable(name: "intf", arg: 1, scope: !5260, file: !3, line: 360, type: !4006)
!5262 = !DILocation(line: 360, column: 54, scope: !5260)
!5263 = !DILocalVariable(name: "tt", scope: !5260, file: !3, line: 362, type: !4119)
!5264 = !DILocation(line: 362, column: 18, scope: !5260)
!5265 = !DILocation(line: 362, column: 40, scope: !5260)
!5266 = !DILocation(line: 362, column: 23, scope: !5260)
!5267 = !DILocalVariable(name: "udev", scope: !5260, file: !3, line: 363, type: !194)
!5268 = !DILocation(line: 363, column: 21, scope: !5260)
!5269 = !DILocation(line: 363, column: 28, scope: !5260)
!5270 = !DILocation(line: 363, column: 32, scope: !5260)
!5271 = !DILocalVariable(name: "i", scope: !5260, file: !3, line: 364, type: !198)
!5272 = !DILocation(line: 364, column: 6, scope: !5260)
!5273 = !DILocation(line: 366, column: 2, scope: !5260)
!5274 = !DILocation(line: 366, column: 6, scope: !5260)
!5275 = !DILocation(line: 366, column: 11, scope: !5260)
!5276 = !DILocation(line: 368, column: 23, scope: !5260)
!5277 = !DILocation(line: 368, column: 27, scope: !5260)
!5278 = !DILocation(line: 368, column: 2, scope: !5260)
!5279 = !DILocation(line: 369, column: 27, scope: !5260)
!5280 = !DILocation(line: 369, column: 31, scope: !5260)
!5281 = !DILocation(line: 369, column: 2, scope: !5260)
!5282 = !DILocation(line: 370, column: 9, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5260, file: !3, line: 370, column: 2)
!5284 = !DILocation(line: 370, column: 7, scope: !5283)
!5285 = !DILocation(line: 370, column: 14, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5283, file: !3, line: 370, column: 2)
!5287 = !DILocation(line: 370, column: 16, scope: !5286)
!5288 = !DILocation(line: 370, column: 2, scope: !5283)
!5289 = !DILocation(line: 371, column: 16, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5286, file: !3, line: 370, column: 33)
!5291 = !DILocation(line: 371, column: 20, scope: !5290)
!5292 = !DILocation(line: 371, column: 24, scope: !5290)
!5293 = !DILocation(line: 371, column: 3, scope: !5290)
!5294 = !DILocation(line: 372, column: 21, scope: !5290)
!5295 = !DILocation(line: 372, column: 32, scope: !5290)
!5296 = !DILocation(line: 372, column: 36, scope: !5290)
!5297 = !DILocation(line: 372, column: 40, scope: !5290)
!5298 = !DILocation(line: 372, column: 44, scope: !5290)
!5299 = !DILocation(line: 373, column: 7, scope: !5290)
!5300 = !DILocation(line: 373, column: 11, scope: !5290)
!5301 = !DILocation(line: 373, column: 15, scope: !5290)
!5302 = !DILocation(line: 373, column: 19, scope: !5290)
!5303 = !DILocation(line: 372, column: 3, scope: !5290)
!5304 = !DILocation(line: 374, column: 16, scope: !5290)
!5305 = !DILocation(line: 374, column: 20, scope: !5290)
!5306 = !DILocation(line: 374, column: 24, scope: !5290)
!5307 = !DILocation(line: 374, column: 3, scope: !5290)
!5308 = !DILocation(line: 375, column: 2, scope: !5290)
!5309 = !DILocation(line: 370, column: 29, scope: !5286)
!5310 = !DILocation(line: 370, column: 2, scope: !5286)
!5311 = distinct !{!5311, !5288, !5312}
!5312 = !DILocation(line: 375, column: 2, scope: !5283)
!5313 = !DILocation(line: 376, column: 15, scope: !5260)
!5314 = !DILocation(line: 376, column: 19, scope: !5260)
!5315 = !DILocation(line: 376, column: 2, scope: !5260)
!5316 = !DILocation(line: 377, column: 15, scope: !5260)
!5317 = !DILocation(line: 377, column: 19, scope: !5260)
!5318 = !DILocation(line: 377, column: 2, scope: !5260)
!5319 = !DILocation(line: 378, column: 19, scope: !5260)
!5320 = !DILocation(line: 378, column: 2, scope: !5260)
!5321 = !DILocation(line: 379, column: 8, scope: !5260)
!5322 = !DILocation(line: 379, column: 2, scope: !5260)
!5323 = !DILocation(line: 380, column: 1, scope: !5260)
!5324 = distinct !DISubprogram(name: "ttusbir_suspend", scope: !3, file: !3, line: 382, type: !4701, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5325 = !DILocalVariable(name: "intf", arg: 1, scope: !5324, file: !3, line: 382, type: !4006)
!5326 = !DILocation(line: 382, column: 50, scope: !5324)
!5327 = !DILocalVariable(name: "message", arg: 2, scope: !5324, file: !3, line: 382, type: !3501)
!5328 = !DILocation(line: 382, column: 69, scope: !5324)
!5329 = !DILocalVariable(name: "tt", scope: !5324, file: !3, line: 384, type: !4119)
!5330 = !DILocation(line: 384, column: 18, scope: !5324)
!5331 = !DILocation(line: 384, column: 40, scope: !5324)
!5332 = !DILocation(line: 384, column: 23, scope: !5324)
!5333 = !DILocalVariable(name: "i", scope: !5324, file: !3, line: 385, type: !198)
!5334 = !DILocation(line: 385, column: 6, scope: !5324)
!5335 = !DILocation(line: 387, column: 9, scope: !5336)
!5336 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 387, column: 2)
!5337 = !DILocation(line: 387, column: 7, scope: !5336)
!5338 = !DILocation(line: 387, column: 14, scope: !5339)
!5339 = distinct !DILexicalBlock(scope: !5336, file: !3, line: 387, column: 2)
!5340 = !DILocation(line: 387, column: 16, scope: !5339)
!5341 = !DILocation(line: 387, column: 2, scope: !5336)
!5342 = !DILocation(line: 388, column: 16, scope: !5339)
!5343 = !DILocation(line: 388, column: 20, scope: !5339)
!5344 = !DILocation(line: 388, column: 24, scope: !5339)
!5345 = !DILocation(line: 388, column: 3, scope: !5339)
!5346 = !DILocation(line: 387, column: 29, scope: !5339)
!5347 = !DILocation(line: 387, column: 2, scope: !5339)
!5348 = distinct !{!5348, !5341, !5349}
!5349 = !DILocation(line: 388, column: 26, scope: !5336)
!5350 = !DILocation(line: 390, column: 24, scope: !5324)
!5351 = !DILocation(line: 390, column: 28, scope: !5324)
!5352 = !DILocation(line: 390, column: 2, scope: !5324)
!5353 = !DILocation(line: 391, column: 15, scope: !5324)
!5354 = !DILocation(line: 391, column: 19, scope: !5324)
!5355 = !DILocation(line: 391, column: 2, scope: !5324)
!5356 = !DILocation(line: 393, column: 2, scope: !5324)
!5357 = distinct !DISubprogram(name: "ttusbir_resume", scope: !3, file: !3, line: 396, type: !4705, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5358 = !DILocalVariable(name: "intf", arg: 1, scope: !5357, file: !3, line: 396, type: !4006)
!5359 = !DILocation(line: 396, column: 49, scope: !5357)
!5360 = !DILocalVariable(name: "tt", scope: !5357, file: !3, line: 398, type: !4119)
!5361 = !DILocation(line: 398, column: 18, scope: !5357)
!5362 = !DILocation(line: 398, column: 40, scope: !5357)
!5363 = !DILocation(line: 398, column: 23, scope: !5357)
!5364 = !DILocalVariable(name: "i", scope: !5357, file: !3, line: 399, type: !198)
!5365 = !DILocation(line: 399, column: 6, scope: !5357)
!5366 = !DILocalVariable(name: "rc", scope: !5357, file: !3, line: 399, type: !198)
!5367 = !DILocation(line: 399, column: 9, scope: !5357)
!5368 = !DILocation(line: 401, column: 2, scope: !5357)
!5369 = !DILocation(line: 401, column: 6, scope: !5357)
!5370 = !DILocation(line: 401, column: 16, scope: !5357)
!5371 = !DILocation(line: 402, column: 23, scope: !5357)
!5372 = !DILocation(line: 402, column: 27, scope: !5357)
!5373 = !DILocation(line: 402, column: 2, scope: !5357)
!5374 = !DILocation(line: 404, column: 9, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 404, column: 2)
!5376 = !DILocation(line: 404, column: 7, scope: !5375)
!5377 = !DILocation(line: 404, column: 14, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 404, column: 2)
!5379 = !DILocation(line: 404, column: 16, scope: !5378)
!5380 = !DILocation(line: 404, column: 2, scope: !5375)
!5381 = !DILocation(line: 405, column: 23, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 404, column: 33)
!5383 = !DILocation(line: 405, column: 27, scope: !5382)
!5384 = !DILocation(line: 405, column: 31, scope: !5382)
!5385 = !DILocation(line: 405, column: 8, scope: !5382)
!5386 = !DILocation(line: 405, column: 6, scope: !5382)
!5387 = !DILocation(line: 406, column: 7, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5382, file: !3, line: 406, column: 7)
!5389 = !DILocation(line: 406, column: 7, scope: !5382)
!5390 = !DILocation(line: 407, column: 4, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5388, file: !3, line: 406, column: 11)
!5392 = !DILocation(line: 408, column: 4, scope: !5391)
!5393 = !DILocation(line: 410, column: 2, scope: !5382)
!5394 = !DILocation(line: 404, column: 29, scope: !5378)
!5395 = !DILocation(line: 404, column: 2, scope: !5378)
!5396 = distinct !{!5396, !5380, !5397}
!5397 = !DILocation(line: 410, column: 2, scope: !5375)
!5398 = !DILocation(line: 412, column: 9, scope: !5357)
!5399 = !DILocation(line: 412, column: 2, scope: !5357)
!5400 = distinct !DISubprogram(name: "kzalloc", scope: !176, file: !176, line: 662, type: !5401, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5401 = !DISubroutineType(types: !5402)
!5402 = !{!193, !337, !186}
!5403 = !DILocalVariable(name: "s", arg: 1, scope: !5404, file: !176, line: 445, type: !946)
!5404 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !176, file: !176, line: 445, type: !5405, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5405 = !DISubroutineType(types: !5406)
!5406 = !{!193, !946, !186, !337}
!5407 = !DILocation(line: 445, column: 72, scope: !5404, inlinedAt: !5408)
!5408 = distinct !DILocation(line: 552, column: 10, scope: !5409, inlinedAt: !5412)
!5409 = distinct !DILexicalBlock(scope: !5410, file: !176, line: 540, column: 34)
!5410 = distinct !DILexicalBlock(scope: !5411, file: !176, line: 540, column: 6)
!5411 = distinct !DISubprogram(name: "kmalloc", scope: !176, file: !176, line: 538, type: !5401, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5412 = distinct !DILocation(line: 664, column: 9, scope: !5400)
!5413 = !DILocalVariable(name: "flags", arg: 2, scope: !5404, file: !176, line: 446, type: !186)
!5414 = !DILocation(line: 446, column: 9, scope: !5404, inlinedAt: !5408)
!5415 = !DILocalVariable(name: "size", arg: 3, scope: !5404, file: !176, line: 446, type: !337)
!5416 = !DILocation(line: 446, column: 23, scope: !5404, inlinedAt: !5408)
!5417 = !DILocalVariable(name: "ret", scope: !5404, file: !176, line: 448, type: !193)
!5418 = !DILocation(line: 448, column: 8, scope: !5404, inlinedAt: !5408)
!5419 = !DILocalVariable(name: "flags", arg: 1, scope: !5420, file: !176, line: 318, type: !186)
!5420 = distinct !DISubprogram(name: "kmalloc_type", scope: !176, file: !176, line: 318, type: !5421, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5421 = !DISubroutineType(types: !5422)
!5422 = !{!175, !186}
!5423 = !DILocation(line: 318, column: 67, scope: !5420, inlinedAt: !5424)
!5424 = distinct !DILocation(line: 553, column: 20, scope: !5409, inlinedAt: !5412)
!5425 = !DILocalVariable(name: "size", arg: 1, scope: !5426, file: !176, line: 346, type: !337)
!5426 = distinct !DISubprogram(name: "kmalloc_index", scope: !176, file: !176, line: 346, type: !5427, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5427 = !DISubroutineType(types: !5428)
!5428 = !{!7, !337}
!5429 = !DILocation(line: 346, column: 58, scope: !5426, inlinedAt: !5430)
!5430 = distinct !DILocation(line: 547, column: 11, scope: !5409, inlinedAt: !5412)
!5431 = !DILocalVariable(name: "size", arg: 1, scope: !5432, file: !176, line: 472, type: !337)
!5432 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !176, file: !176, line: 472, type: !5433, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5433 = !DISubroutineType(types: !5434)
!5434 = !{!193, !337, !186, !7}
!5435 = !DILocation(line: 472, column: 28, scope: !5432, inlinedAt: !5436)
!5436 = distinct !DILocation(line: 481, column: 9, scope: !5437, inlinedAt: !5438)
!5437 = distinct !DISubprogram(name: "kmalloc_large", scope: !176, file: !176, line: 478, type: !5401, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5438 = distinct !DILocation(line: 545, column: 11, scope: !5439, inlinedAt: !5412)
!5439 = distinct !DILexicalBlock(scope: !5409, file: !176, line: 544, column: 7)
!5440 = !DILocalVariable(name: "flags", arg: 2, scope: !5432, file: !176, line: 472, type: !186)
!5441 = !DILocation(line: 472, column: 40, scope: !5432, inlinedAt: !5436)
!5442 = !DILocalVariable(name: "order", arg: 3, scope: !5432, file: !176, line: 472, type: !7)
!5443 = !DILocation(line: 472, column: 60, scope: !5432, inlinedAt: !5436)
!5444 = !DILocalVariable(name: "size", arg: 1, scope: !5437, file: !176, line: 478, type: !337)
!5445 = !DILocation(line: 478, column: 51, scope: !5437, inlinedAt: !5438)
!5446 = !DILocalVariable(name: "flags", arg: 2, scope: !5437, file: !176, line: 478, type: !186)
!5447 = !DILocation(line: 478, column: 63, scope: !5437, inlinedAt: !5438)
!5448 = !DILocalVariable(name: "order", scope: !5437, file: !176, line: 480, type: !7)
!5449 = !DILocation(line: 480, column: 15, scope: !5437, inlinedAt: !5438)
!5450 = !DILocalVariable(name: "size", arg: 1, scope: !5411, file: !176, line: 538, type: !337)
!5451 = !DILocation(line: 538, column: 45, scope: !5411, inlinedAt: !5412)
!5452 = !DILocalVariable(name: "flags", arg: 2, scope: !5411, file: !176, line: 538, type: !186)
!5453 = !DILocation(line: 538, column: 57, scope: !5411, inlinedAt: !5412)
!5454 = !DILocalVariable(name: "index", scope: !5409, file: !176, line: 542, type: !7)
!5455 = !DILocation(line: 542, column: 16, scope: !5409, inlinedAt: !5412)
!5456 = !DILocalVariable(name: "size", arg: 1, scope: !5400, file: !176, line: 662, type: !337)
!5457 = !DILocation(line: 662, column: 36, scope: !5400)
!5458 = !DILocalVariable(name: "flags", arg: 2, scope: !5400, file: !176, line: 662, type: !186)
!5459 = !DILocation(line: 662, column: 48, scope: !5400)
!5460 = !DILocation(line: 664, column: 17, scope: !5400)
!5461 = !DILocation(line: 664, column: 23, scope: !5400)
!5462 = !DILocation(line: 664, column: 29, scope: !5400)
!5463 = !DILocation(line: 540, column: 27, scope: !5410, inlinedAt: !5412)
!5464 = !DILocation(line: 540, column: 6, scope: !5410, inlinedAt: !5412)
!5465 = !DILocation(line: 540, column: 6, scope: !5411, inlinedAt: !5412)
!5466 = !DILocation(line: 544, column: 7, scope: !5439, inlinedAt: !5412)
!5467 = !DILocation(line: 544, column: 12, scope: !5439, inlinedAt: !5412)
!5468 = !DILocation(line: 544, column: 7, scope: !5409, inlinedAt: !5412)
!5469 = !DILocation(line: 545, column: 25, scope: !5439, inlinedAt: !5412)
!5470 = !DILocation(line: 545, column: 31, scope: !5439, inlinedAt: !5412)
!5471 = !DILocation(line: 480, column: 33, scope: !5437, inlinedAt: !5438)
!5472 = !DILocation(line: 480, column: 23, scope: !5437, inlinedAt: !5438)
!5473 = !DILocation(line: 481, column: 29, scope: !5437, inlinedAt: !5438)
!5474 = !DILocation(line: 481, column: 35, scope: !5437, inlinedAt: !5438)
!5475 = !DILocation(line: 481, column: 42, scope: !5437, inlinedAt: !5438)
!5476 = !DILocation(line: 474, column: 23, scope: !5432, inlinedAt: !5436)
!5477 = !DILocation(line: 474, column: 29, scope: !5432, inlinedAt: !5436)
!5478 = !DILocation(line: 474, column: 36, scope: !5432, inlinedAt: !5436)
!5479 = !DILocation(line: 474, column: 9, scope: !5432, inlinedAt: !5436)
!5480 = !DILocation(line: 545, column: 4, scope: !5439, inlinedAt: !5412)
!5481 = !DILocation(line: 547, column: 25, scope: !5409, inlinedAt: !5412)
!5482 = !DILocation(line: 348, column: 7, scope: !5483, inlinedAt: !5430)
!5483 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 348, column: 6)
!5484 = !DILocation(line: 348, column: 6, scope: !5426, inlinedAt: !5430)
!5485 = !DILocation(line: 349, column: 3, scope: !5483, inlinedAt: !5430)
!5486 = !DILocation(line: 351, column: 6, scope: !5487, inlinedAt: !5430)
!5487 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 351, column: 6)
!5488 = !DILocation(line: 351, column: 11, scope: !5487, inlinedAt: !5430)
!5489 = !DILocation(line: 351, column: 6, scope: !5426, inlinedAt: !5430)
!5490 = !DILocation(line: 352, column: 3, scope: !5487, inlinedAt: !5430)
!5491 = !DILocation(line: 354, column: 32, scope: !5492, inlinedAt: !5430)
!5492 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 354, column: 6)
!5493 = !DILocation(line: 354, column: 37, scope: !5492, inlinedAt: !5430)
!5494 = !DILocation(line: 354, column: 42, scope: !5492, inlinedAt: !5430)
!5495 = !DILocation(line: 354, column: 45, scope: !5492, inlinedAt: !5430)
!5496 = !DILocation(line: 354, column: 50, scope: !5492, inlinedAt: !5430)
!5497 = !DILocation(line: 354, column: 6, scope: !5426, inlinedAt: !5430)
!5498 = !DILocation(line: 355, column: 3, scope: !5492, inlinedAt: !5430)
!5499 = !DILocation(line: 356, column: 32, scope: !5500, inlinedAt: !5430)
!5500 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 356, column: 6)
!5501 = !DILocation(line: 356, column: 37, scope: !5500, inlinedAt: !5430)
!5502 = !DILocation(line: 356, column: 43, scope: !5500, inlinedAt: !5430)
!5503 = !DILocation(line: 356, column: 46, scope: !5500, inlinedAt: !5430)
!5504 = !DILocation(line: 356, column: 51, scope: !5500, inlinedAt: !5430)
!5505 = !DILocation(line: 356, column: 6, scope: !5426, inlinedAt: !5430)
!5506 = !DILocation(line: 357, column: 3, scope: !5500, inlinedAt: !5430)
!5507 = !DILocation(line: 358, column: 6, scope: !5508, inlinedAt: !5430)
!5508 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 358, column: 6)
!5509 = !DILocation(line: 358, column: 11, scope: !5508, inlinedAt: !5430)
!5510 = !DILocation(line: 358, column: 6, scope: !5426, inlinedAt: !5430)
!5511 = !DILocation(line: 358, column: 26, scope: !5508, inlinedAt: !5430)
!5512 = !DILocation(line: 359, column: 6, scope: !5513, inlinedAt: !5430)
!5513 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 359, column: 6)
!5514 = !DILocation(line: 359, column: 11, scope: !5513, inlinedAt: !5430)
!5515 = !DILocation(line: 359, column: 6, scope: !5426, inlinedAt: !5430)
!5516 = !DILocation(line: 359, column: 26, scope: !5513, inlinedAt: !5430)
!5517 = !DILocation(line: 360, column: 6, scope: !5518, inlinedAt: !5430)
!5518 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 360, column: 6)
!5519 = !DILocation(line: 360, column: 11, scope: !5518, inlinedAt: !5430)
!5520 = !DILocation(line: 360, column: 6, scope: !5426, inlinedAt: !5430)
!5521 = !DILocation(line: 360, column: 26, scope: !5518, inlinedAt: !5430)
!5522 = !DILocation(line: 361, column: 6, scope: !5523, inlinedAt: !5430)
!5523 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 361, column: 6)
!5524 = !DILocation(line: 361, column: 11, scope: !5523, inlinedAt: !5430)
!5525 = !DILocation(line: 361, column: 6, scope: !5426, inlinedAt: !5430)
!5526 = !DILocation(line: 361, column: 26, scope: !5523, inlinedAt: !5430)
!5527 = !DILocation(line: 362, column: 6, scope: !5528, inlinedAt: !5430)
!5528 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 362, column: 6)
!5529 = !DILocation(line: 362, column: 11, scope: !5528, inlinedAt: !5430)
!5530 = !DILocation(line: 362, column: 6, scope: !5426, inlinedAt: !5430)
!5531 = !DILocation(line: 362, column: 26, scope: !5528, inlinedAt: !5430)
!5532 = !DILocation(line: 363, column: 6, scope: !5533, inlinedAt: !5430)
!5533 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 363, column: 6)
!5534 = !DILocation(line: 363, column: 11, scope: !5533, inlinedAt: !5430)
!5535 = !DILocation(line: 363, column: 6, scope: !5426, inlinedAt: !5430)
!5536 = !DILocation(line: 363, column: 26, scope: !5533, inlinedAt: !5430)
!5537 = !DILocation(line: 364, column: 6, scope: !5538, inlinedAt: !5430)
!5538 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 364, column: 6)
!5539 = !DILocation(line: 364, column: 11, scope: !5538, inlinedAt: !5430)
!5540 = !DILocation(line: 364, column: 6, scope: !5426, inlinedAt: !5430)
!5541 = !DILocation(line: 364, column: 26, scope: !5538, inlinedAt: !5430)
!5542 = !DILocation(line: 365, column: 6, scope: !5543, inlinedAt: !5430)
!5543 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 365, column: 6)
!5544 = !DILocation(line: 365, column: 11, scope: !5543, inlinedAt: !5430)
!5545 = !DILocation(line: 365, column: 6, scope: !5426, inlinedAt: !5430)
!5546 = !DILocation(line: 365, column: 26, scope: !5543, inlinedAt: !5430)
!5547 = !DILocation(line: 366, column: 6, scope: !5548, inlinedAt: !5430)
!5548 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 366, column: 6)
!5549 = !DILocation(line: 366, column: 11, scope: !5548, inlinedAt: !5430)
!5550 = !DILocation(line: 366, column: 6, scope: !5426, inlinedAt: !5430)
!5551 = !DILocation(line: 366, column: 26, scope: !5548, inlinedAt: !5430)
!5552 = !DILocation(line: 367, column: 6, scope: !5553, inlinedAt: !5430)
!5553 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 367, column: 6)
!5554 = !DILocation(line: 367, column: 11, scope: !5553, inlinedAt: !5430)
!5555 = !DILocation(line: 367, column: 6, scope: !5426, inlinedAt: !5430)
!5556 = !DILocation(line: 367, column: 26, scope: !5553, inlinedAt: !5430)
!5557 = !DILocation(line: 368, column: 6, scope: !5558, inlinedAt: !5430)
!5558 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 368, column: 6)
!5559 = !DILocation(line: 368, column: 11, scope: !5558, inlinedAt: !5430)
!5560 = !DILocation(line: 368, column: 6, scope: !5426, inlinedAt: !5430)
!5561 = !DILocation(line: 368, column: 26, scope: !5558, inlinedAt: !5430)
!5562 = !DILocation(line: 369, column: 6, scope: !5563, inlinedAt: !5430)
!5563 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 369, column: 6)
!5564 = !DILocation(line: 369, column: 11, scope: !5563, inlinedAt: !5430)
!5565 = !DILocation(line: 369, column: 6, scope: !5426, inlinedAt: !5430)
!5566 = !DILocation(line: 369, column: 26, scope: !5563, inlinedAt: !5430)
!5567 = !DILocation(line: 370, column: 6, scope: !5568, inlinedAt: !5430)
!5568 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 370, column: 6)
!5569 = !DILocation(line: 370, column: 11, scope: !5568, inlinedAt: !5430)
!5570 = !DILocation(line: 370, column: 6, scope: !5426, inlinedAt: !5430)
!5571 = !DILocation(line: 370, column: 26, scope: !5568, inlinedAt: !5430)
!5572 = !DILocation(line: 371, column: 6, scope: !5573, inlinedAt: !5430)
!5573 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 371, column: 6)
!5574 = !DILocation(line: 371, column: 11, scope: !5573, inlinedAt: !5430)
!5575 = !DILocation(line: 371, column: 6, scope: !5426, inlinedAt: !5430)
!5576 = !DILocation(line: 371, column: 26, scope: !5573, inlinedAt: !5430)
!5577 = !DILocation(line: 372, column: 6, scope: !5578, inlinedAt: !5430)
!5578 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 372, column: 6)
!5579 = !DILocation(line: 372, column: 11, scope: !5578, inlinedAt: !5430)
!5580 = !DILocation(line: 372, column: 6, scope: !5426, inlinedAt: !5430)
!5581 = !DILocation(line: 372, column: 26, scope: !5578, inlinedAt: !5430)
!5582 = !DILocation(line: 373, column: 6, scope: !5583, inlinedAt: !5430)
!5583 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 373, column: 6)
!5584 = !DILocation(line: 373, column: 11, scope: !5583, inlinedAt: !5430)
!5585 = !DILocation(line: 373, column: 6, scope: !5426, inlinedAt: !5430)
!5586 = !DILocation(line: 373, column: 26, scope: !5583, inlinedAt: !5430)
!5587 = !DILocation(line: 374, column: 6, scope: !5588, inlinedAt: !5430)
!5588 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 374, column: 6)
!5589 = !DILocation(line: 374, column: 11, scope: !5588, inlinedAt: !5430)
!5590 = !DILocation(line: 374, column: 6, scope: !5426, inlinedAt: !5430)
!5591 = !DILocation(line: 374, column: 26, scope: !5588, inlinedAt: !5430)
!5592 = !DILocation(line: 375, column: 6, scope: !5593, inlinedAt: !5430)
!5593 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 375, column: 6)
!5594 = !DILocation(line: 375, column: 11, scope: !5593, inlinedAt: !5430)
!5595 = !DILocation(line: 375, column: 6, scope: !5426, inlinedAt: !5430)
!5596 = !DILocation(line: 375, column: 27, scope: !5593, inlinedAt: !5430)
!5597 = !DILocation(line: 376, column: 6, scope: !5598, inlinedAt: !5430)
!5598 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 376, column: 6)
!5599 = !DILocation(line: 376, column: 11, scope: !5598, inlinedAt: !5430)
!5600 = !DILocation(line: 376, column: 6, scope: !5426, inlinedAt: !5430)
!5601 = !DILocation(line: 376, column: 32, scope: !5598, inlinedAt: !5430)
!5602 = !DILocation(line: 377, column: 6, scope: !5603, inlinedAt: !5430)
!5603 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 377, column: 6)
!5604 = !DILocation(line: 377, column: 11, scope: !5603, inlinedAt: !5430)
!5605 = !DILocation(line: 377, column: 6, scope: !5426, inlinedAt: !5430)
!5606 = !DILocation(line: 377, column: 32, scope: !5603, inlinedAt: !5430)
!5607 = !DILocation(line: 378, column: 6, scope: !5608, inlinedAt: !5430)
!5608 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 378, column: 6)
!5609 = !DILocation(line: 378, column: 11, scope: !5608, inlinedAt: !5430)
!5610 = !DILocation(line: 378, column: 6, scope: !5426, inlinedAt: !5430)
!5611 = !DILocation(line: 378, column: 32, scope: !5608, inlinedAt: !5430)
!5612 = !DILocation(line: 379, column: 6, scope: !5613, inlinedAt: !5430)
!5613 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 379, column: 6)
!5614 = !DILocation(line: 379, column: 11, scope: !5613, inlinedAt: !5430)
!5615 = !DILocation(line: 379, column: 6, scope: !5426, inlinedAt: !5430)
!5616 = !DILocation(line: 379, column: 33, scope: !5613, inlinedAt: !5430)
!5617 = !DILocation(line: 380, column: 6, scope: !5618, inlinedAt: !5430)
!5618 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 380, column: 6)
!5619 = !DILocation(line: 380, column: 11, scope: !5618, inlinedAt: !5430)
!5620 = !DILocation(line: 380, column: 6, scope: !5426, inlinedAt: !5430)
!5621 = !DILocation(line: 380, column: 33, scope: !5618, inlinedAt: !5430)
!5622 = !DILocation(line: 381, column: 6, scope: !5623, inlinedAt: !5430)
!5623 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 381, column: 6)
!5624 = !DILocation(line: 381, column: 11, scope: !5623, inlinedAt: !5430)
!5625 = !DILocation(line: 381, column: 6, scope: !5426, inlinedAt: !5430)
!5626 = !DILocation(line: 381, column: 33, scope: !5623, inlinedAt: !5430)
!5627 = !DILocation(line: 382, column: 2, scope: !5628, inlinedAt: !5430)
!5628 = distinct !DILexicalBlock(scope: !5629, file: !176, line: 382, column: 2)
!5629 = distinct !DILexicalBlock(scope: !5426, file: !176, line: 382, column: 2)
!5630 = !{i32 -2142552919, i32 -2142552890, i32 -2142552844, i32 -2142552786, i32 -2142552732, i32 -2142552678, i32 -2142552623, i32 -2142552592}
!5631 = !DILocation(line: 382, column: 2, scope: !5632, inlinedAt: !5430)
!5632 = distinct !DILexicalBlock(scope: !5633, file: !176, line: 382, column: 2)
!5633 = distinct !DILexicalBlock(scope: !5629, file: !176, line: 382, column: 2)
!5634 = !{i32 -2142552149, i32 -2142552142, i32 -2142552088, i32 -2142552057, i32 -2142552027}
!5635 = !DILocation(line: 382, column: 2, scope: !5633, inlinedAt: !5430)
!5636 = !DILocation(line: 386, column: 1, scope: !5426, inlinedAt: !5430)
!5637 = !DILocation(line: 547, column: 9, scope: !5409, inlinedAt: !5412)
!5638 = !DILocation(line: 549, column: 8, scope: !5639, inlinedAt: !5412)
!5639 = distinct !DILexicalBlock(scope: !5409, file: !176, line: 549, column: 7)
!5640 = !DILocation(line: 549, column: 7, scope: !5409, inlinedAt: !5412)
!5641 = !DILocation(line: 550, column: 4, scope: !5639, inlinedAt: !5412)
!5642 = !DILocation(line: 553, column: 33, scope: !5409, inlinedAt: !5412)
!5643 = !DILocation(line: 325, column: 6, scope: !5644, inlinedAt: !5424)
!5644 = distinct !DILexicalBlock(scope: !5420, file: !176, line: 325, column: 6)
!5645 = !DILocation(line: 325, column: 6, scope: !5420, inlinedAt: !5424)
!5646 = !DILocation(line: 326, column: 3, scope: !5644, inlinedAt: !5424)
!5647 = !DILocation(line: 332, column: 9, scope: !5420, inlinedAt: !5424)
!5648 = !DILocation(line: 332, column: 15, scope: !5420, inlinedAt: !5424)
!5649 = !DILocation(line: 332, column: 2, scope: !5420, inlinedAt: !5424)
!5650 = !DILocation(line: 336, column: 1, scope: !5420, inlinedAt: !5424)
!5651 = !DILocation(line: 553, column: 5, scope: !5409, inlinedAt: !5412)
!5652 = !DILocation(line: 553, column: 41, scope: !5409, inlinedAt: !5412)
!5653 = !DILocation(line: 554, column: 5, scope: !5409, inlinedAt: !5412)
!5654 = !DILocation(line: 554, column: 12, scope: !5409, inlinedAt: !5412)
!5655 = !DILocation(line: 448, column: 31, scope: !5404, inlinedAt: !5408)
!5656 = !DILocation(line: 448, column: 34, scope: !5404, inlinedAt: !5408)
!5657 = !DILocation(line: 448, column: 14, scope: !5404, inlinedAt: !5408)
!5658 = !DILocation(line: 450, column: 22, scope: !5404, inlinedAt: !5408)
!5659 = !DILocation(line: 450, column: 25, scope: !5404, inlinedAt: !5408)
!5660 = !DILocation(line: 450, column: 30, scope: !5404, inlinedAt: !5408)
!5661 = !DILocation(line: 450, column: 36, scope: !5404, inlinedAt: !5408)
!5662 = !DILocation(line: 450, column: 8, scope: !5404, inlinedAt: !5408)
!5663 = !DILocation(line: 450, column: 6, scope: !5404, inlinedAt: !5408)
!5664 = !DILocation(line: 451, column: 9, scope: !5404, inlinedAt: !5408)
!5665 = !DILocation(line: 552, column: 3, scope: !5409, inlinedAt: !5412)
!5666 = !DILocation(line: 557, column: 19, scope: !5411, inlinedAt: !5412)
!5667 = !DILocation(line: 557, column: 25, scope: !5411, inlinedAt: !5412)
!5668 = !DILocation(line: 557, column: 9, scope: !5411, inlinedAt: !5412)
!5669 = !DILocation(line: 557, column: 2, scope: !5411, inlinedAt: !5412)
!5670 = !DILocation(line: 558, column: 1, scope: !5411, inlinedAt: !5412)
!5671 = !DILocation(line: 664, column: 2, scope: !5400)
!5672 = distinct !DISubprogram(name: "usb_endpoint_dir_in", scope: !138, file: !138, line: 492, type: !5673, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5673 = !DISubroutineType(types: !5674)
!5674 = !{!198, !5675}
!5675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5676, size: 64)
!5676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3860)
!5677 = !DILocalVariable(name: "epd", arg: 1, scope: !5672, file: !138, line: 492, type: !5675)
!5678 = !DILocation(line: 492, column: 77, scope: !5672)
!5679 = !DILocation(line: 494, column: 11, scope: !5672)
!5680 = !DILocation(line: 494, column: 16, scope: !5672)
!5681 = !DILocation(line: 494, column: 33, scope: !5672)
!5682 = !DILocation(line: 494, column: 58, scope: !5672)
!5683 = !DILocation(line: 494, column: 2, scope: !5672)
!5684 = distinct !DISubprogram(name: "usb_endpoint_xfer_isoc", scope: !138, file: !138, line: 556, type: !5673, scopeLine: 558, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5685 = !DILocalVariable(name: "epd", arg: 1, scope: !5684, file: !138, line: 557, type: !5675)
!5686 = !DILocation(line: 557, column: 43, scope: !5684)
!5687 = !DILocation(line: 559, column: 11, scope: !5684)
!5688 = !DILocation(line: 559, column: 16, scope: !5684)
!5689 = !DILocation(line: 559, column: 29, scope: !5684)
!5690 = !DILocation(line: 559, column: 59, scope: !5684)
!5691 = !DILocation(line: 559, column: 2, scope: !5684)
!5692 = distinct !DISubprogram(name: "usb_endpoint_dir_out", scope: !138, file: !138, line: 503, type: !5673, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5693 = !DILocalVariable(name: "epd", arg: 1, scope: !5692, file: !138, line: 504, type: !5675)
!5694 = !DILocation(line: 504, column: 43, scope: !5692)
!5695 = !DILocation(line: 506, column: 11, scope: !5692)
!5696 = !DILocation(line: 506, column: 16, scope: !5692)
!5697 = !DILocation(line: 506, column: 33, scope: !5692)
!5698 = !DILocation(line: 506, column: 58, scope: !5692)
!5699 = !DILocation(line: 506, column: 2, scope: !5692)
!5700 = distinct !DISubprogram(name: "usb_endpoint_xfer_bulk", scope: !138, file: !138, line: 515, type: !5673, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5701 = !DILocalVariable(name: "epd", arg: 1, scope: !5700, file: !138, line: 516, type: !5675)
!5702 = !DILocation(line: 516, column: 43, scope: !5700)
!5703 = !DILocation(line: 518, column: 11, scope: !5700)
!5704 = !DILocation(line: 518, column: 16, scope: !5700)
!5705 = !DILocation(line: 518, column: 29, scope: !5700)
!5706 = !DILocation(line: 518, column: 59, scope: !5700)
!5707 = !DILocation(line: 518, column: 2, scope: !5700)
!5708 = distinct !DISubprogram(name: "interface_to_usbdev", scope: !6, file: !6, line: 715, type: !5709, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5709 = !DISubroutineType(types: !5710)
!5710 = !{!194, !4006}
!5711 = !DILocalVariable(name: "intf", arg: 1, scope: !5708, file: !6, line: 715, type: !4006)
!5712 = !DILocation(line: 715, column: 76, scope: !5708)
!5713 = !DILocalVariable(name: "__mptr", scope: !5714, file: !6, line: 717, type: !193)
!5714 = distinct !DILexicalBlock(scope: !5708, file: !6, line: 717, column: 9)
!5715 = !DILocation(line: 717, column: 9, scope: !5714)
!5716 = !DILocation(line: 717, column: 9, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5714, file: !6, line: 717, column: 9)
!5718 = !DILocation(line: 717, column: 2, scope: !5708)
!5719 = distinct !DISubprogram(name: "__create_pipe", scope: !6, file: !6, line: 1945, type: !5720, scopeLine: 1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5720 = !DISubroutineType(types: !5721)
!5721 = !{!7, !194, !7}
!5722 = !DILocalVariable(name: "dev", arg: 1, scope: !5719, file: !6, line: 1945, type: !194)
!5723 = !DILocation(line: 1945, column: 61, scope: !5719)
!5724 = !DILocalVariable(name: "endpoint", arg: 2, scope: !5719, file: !6, line: 1946, type: !7)
!5725 = !DILocation(line: 1946, column: 16, scope: !5719)
!5726 = !DILocation(line: 1948, column: 10, scope: !5719)
!5727 = !DILocation(line: 1948, column: 15, scope: !5719)
!5728 = !DILocation(line: 1948, column: 22, scope: !5719)
!5729 = !DILocation(line: 1948, column: 31, scope: !5719)
!5730 = !DILocation(line: 1948, column: 40, scope: !5719)
!5731 = !DILocation(line: 1948, column: 28, scope: !5719)
!5732 = !DILocation(line: 1948, column: 2, scope: !5719)
!5733 = distinct !DISubprogram(name: "ttusbir_urb_complete", scope: !3, file: !3, line: 157, type: !4564, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5734 = !DILocalVariable(name: "urb", arg: 1, scope: !5733, file: !3, line: 157, type: !4513)
!5735 = !DILocation(line: 157, column: 46, scope: !5733)
!5736 = !DILocalVariable(name: "tt", scope: !5733, file: !3, line: 159, type: !4119)
!5737 = !DILocation(line: 159, column: 18, scope: !5733)
!5738 = !DILocation(line: 159, column: 23, scope: !5733)
!5739 = !DILocation(line: 159, column: 28, scope: !5733)
!5740 = !DILocalVariable(name: "rc", scope: !5733, file: !3, line: 160, type: !198)
!5741 = !DILocation(line: 160, column: 6, scope: !5733)
!5742 = !DILocation(line: 162, column: 10, scope: !5733)
!5743 = !DILocation(line: 162, column: 15, scope: !5733)
!5744 = !DILocation(line: 162, column: 2, scope: !5733)
!5745 = !DILocation(line: 164, column: 27, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5733, file: !3, line: 162, column: 23)
!5747 = !DILocation(line: 164, column: 31, scope: !5746)
!5748 = !DILocation(line: 164, column: 36, scope: !5746)
!5749 = !DILocation(line: 164, column: 3, scope: !5746)
!5750 = !DILocation(line: 165, column: 3, scope: !5746)
!5751 = !DILocation(line: 169, column: 18, scope: !5746)
!5752 = !DILocation(line: 169, column: 3, scope: !5746)
!5753 = !DILocation(line: 170, column: 3, scope: !5746)
!5754 = !DILocation(line: 174, column: 3, scope: !5746)
!5755 = !DILocation(line: 177, column: 22, scope: !5733)
!5756 = !DILocation(line: 177, column: 7, scope: !5733)
!5757 = !DILocation(line: 177, column: 5, scope: !5733)
!5758 = !DILocation(line: 178, column: 6, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5733, file: !3, line: 178, column: 6)
!5760 = !DILocation(line: 178, column: 9, scope: !5759)
!5761 = !DILocation(line: 178, column: 12, scope: !5759)
!5762 = !DILocation(line: 178, column: 15, scope: !5759)
!5763 = !DILocation(line: 178, column: 6, scope: !5733)
!5764 = !DILocation(line: 179, column: 3, scope: !5759)
!5765 = !DILocation(line: 180, column: 1, scope: !5733)
!5766 = distinct !DISubprogram(name: "usb_fill_bulk_urb", scope: !6, file: !6, line: 1647, type: !5767, scopeLine: 1654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5767 = !DISubroutineType(types: !5768)
!5768 = !{null, !4513, !194, !7, !193, !198, !4562, !193}
!5769 = !DILocalVariable(name: "urb", arg: 1, scope: !5766, file: !6, line: 1647, type: !4513)
!5770 = !DILocation(line: 1647, column: 50, scope: !5766)
!5771 = !DILocalVariable(name: "dev", arg: 2, scope: !5766, file: !6, line: 1648, type: !194)
!5772 = !DILocation(line: 1648, column: 29, scope: !5766)
!5773 = !DILocalVariable(name: "pipe", arg: 3, scope: !5766, file: !6, line: 1649, type: !7)
!5774 = !DILocation(line: 1649, column: 23, scope: !5766)
!5775 = !DILocalVariable(name: "transfer_buffer", arg: 4, scope: !5766, file: !6, line: 1650, type: !193)
!5776 = !DILocation(line: 1650, column: 16, scope: !5766)
!5777 = !DILocalVariable(name: "buffer_length", arg: 5, scope: !5766, file: !6, line: 1651, type: !198)
!5778 = !DILocation(line: 1651, column: 14, scope: !5766)
!5779 = !DILocalVariable(name: "complete_fn", arg: 6, scope: !5766, file: !6, line: 1652, type: !4562)
!5780 = !DILocation(line: 1652, column: 25, scope: !5766)
!5781 = !DILocalVariable(name: "context", arg: 7, scope: !5766, file: !6, line: 1653, type: !193)
!5782 = !DILocation(line: 1653, column: 16, scope: !5766)
!5783 = !DILocation(line: 1655, column: 13, scope: !5766)
!5784 = !DILocation(line: 1655, column: 2, scope: !5766)
!5785 = !DILocation(line: 1655, column: 7, scope: !5766)
!5786 = !DILocation(line: 1655, column: 11, scope: !5766)
!5787 = !DILocation(line: 1656, column: 14, scope: !5766)
!5788 = !DILocation(line: 1656, column: 2, scope: !5766)
!5789 = !DILocation(line: 1656, column: 7, scope: !5766)
!5790 = !DILocation(line: 1656, column: 12, scope: !5766)
!5791 = !DILocation(line: 1657, column: 25, scope: !5766)
!5792 = !DILocation(line: 1657, column: 2, scope: !5766)
!5793 = !DILocation(line: 1657, column: 7, scope: !5766)
!5794 = !DILocation(line: 1657, column: 23, scope: !5766)
!5795 = !DILocation(line: 1658, column: 32, scope: !5766)
!5796 = !DILocation(line: 1658, column: 2, scope: !5766)
!5797 = !DILocation(line: 1658, column: 7, scope: !5766)
!5798 = !DILocation(line: 1658, column: 30, scope: !5766)
!5799 = !DILocation(line: 1659, column: 18, scope: !5766)
!5800 = !DILocation(line: 1659, column: 2, scope: !5766)
!5801 = !DILocation(line: 1659, column: 7, scope: !5766)
!5802 = !DILocation(line: 1659, column: 16, scope: !5766)
!5803 = !DILocation(line: 1660, column: 17, scope: !5766)
!5804 = !DILocation(line: 1660, column: 2, scope: !5766)
!5805 = !DILocation(line: 1660, column: 7, scope: !5766)
!5806 = !DILocation(line: 1660, column: 15, scope: !5766)
!5807 = !DILocation(line: 1661, column: 1, scope: !5766)
!5808 = distinct !DISubprogram(name: "ttusbir_bulk_complete", scope: !3, file: !3, line: 81, type: !4564, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5809 = !DILocalVariable(name: "v", arg: 1, scope: !5810, file: !4743, line: 106, type: !4746)
!5810 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !4743, file: !4743, line: 106, type: !5811, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5811 = !DISubroutineType(types: !5812)
!5812 = !{null, !4746}
!5813 = !DILocation(line: 106, column: 55, scope: !5810, inlinedAt: !5814)
!5814 = distinct !DILocation(line: 331, column: 2, scope: !5815, inlinedAt: !5816)
!5815 = distinct !DISubprogram(name: "atomic_dec", scope: !4750, file: !4750, line: 328, type: !5811, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5816 = distinct !DILocation(line: 85, column: 2, scope: !5808)
!5817 = !DILocalVariable(name: "v", arg: 1, scope: !5818, file: !4756, line: 99, type: !4759)
!5818 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4756, file: !4756, line: 99, type: !4757, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5819 = !DILocation(line: 99, column: 79, scope: !5818, inlinedAt: !5820)
!5820 = distinct !DILocation(line: 330, column: 2, scope: !5815, inlinedAt: !5816)
!5821 = !DILocalVariable(name: "size", arg: 2, scope: !5818, file: !4756, line: 99, type: !337)
!5822 = !DILocation(line: 99, column: 89, scope: !5818, inlinedAt: !5820)
!5823 = !DILocalVariable(name: "v", arg: 1, scope: !5815, file: !4750, line: 328, type: !4746)
!5824 = !DILocation(line: 328, column: 22, scope: !5815, inlinedAt: !5816)
!5825 = !DILocalVariable(name: "urb", arg: 1, scope: !5808, file: !3, line: 81, type: !4513)
!5826 = !DILocation(line: 81, column: 47, scope: !5808)
!5827 = !DILocalVariable(name: "tt", scope: !5808, file: !3, line: 83, type: !4119)
!5828 = !DILocation(line: 83, column: 18, scope: !5808)
!5829 = !DILocation(line: 83, column: 23, scope: !5808)
!5830 = !DILocation(line: 83, column: 28, scope: !5808)
!5831 = !DILocation(line: 85, column: 14, scope: !5808)
!5832 = !DILocation(line: 85, column: 18, scope: !5808)
!5833 = !DILocation(line: 330, column: 31, scope: !5815, inlinedAt: !5816)
!5834 = !DILocation(line: 101, column: 20, scope: !5818, inlinedAt: !5820)
!5835 = !DILocation(line: 101, column: 23, scope: !5818, inlinedAt: !5820)
!5836 = !DILocation(line: 101, column: 2, scope: !5818, inlinedAt: !5820)
!5837 = !DILocation(line: 102, column: 2, scope: !5818, inlinedAt: !5820)
!5838 = !DILocation(line: 331, column: 18, scope: !5815, inlinedAt: !5816)
!5839 = !DILocation(line: 109, column: 16, scope: !5810, inlinedAt: !5814)
!5840 = !DILocation(line: 109, column: 19, scope: !5810, inlinedAt: !5814)
!5841 = !DILocation(line: 108, column: 2, scope: !5810, inlinedAt: !5814)
!5842 = !{i32 -2146621414}
!5843 = !DILocation(line: 87, column: 10, scope: !5808)
!5844 = !DILocation(line: 87, column: 15, scope: !5808)
!5845 = !DILocation(line: 87, column: 2, scope: !5808)
!5846 = !DILocation(line: 89, column: 3, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5808, file: !3, line: 87, column: 23)
!5848 = !DILocation(line: 93, column: 18, scope: !5847)
!5849 = !DILocation(line: 93, column: 3, scope: !5847)
!5850 = !DILocation(line: 94, column: 3, scope: !5847)
!5851 = !DILocation(line: 98, column: 3, scope: !5847)
!5852 = !DILocation(line: 101, column: 18, scope: !5808)
!5853 = !DILocation(line: 101, column: 2, scope: !5808)
!5854 = !DILocation(line: 102, column: 1, scope: !5808)
!5855 = distinct !DISubprogram(name: "ttusbir_brightness_set", scope: !3, file: !3, line: 68, type: !4584, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5856 = !DILocalVariable(name: "led_dev", arg: 1, scope: !5855, file: !3, line: 68, type: !4586)
!5857 = !DILocation(line: 68, column: 57, scope: !5855)
!5858 = !DILocalVariable(name: "brightness", arg: 2, scope: !5855, file: !3, line: 69, type: !163)
!5859 = !DILocation(line: 69, column: 22, scope: !5855)
!5860 = !DILocalVariable(name: "tt", scope: !5855, file: !3, line: 71, type: !4119)
!5861 = !DILocation(line: 71, column: 18, scope: !5855)
!5862 = !DILocalVariable(name: "__mptr", scope: !5863, file: !3, line: 71, type: !193)
!5863 = distinct !DILexicalBlock(scope: !5855, file: !3, line: 71, column: 23)
!5864 = !DILocation(line: 71, column: 23, scope: !5863)
!5865 = !DILocation(line: 71, column: 23, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !5863, file: !3, line: 71, column: 23)
!5867 = !DILocation(line: 73, column: 15, scope: !5855)
!5868 = !DILocation(line: 73, column: 26, scope: !5855)
!5869 = !DILocation(line: 73, column: 2, scope: !5855)
!5870 = !DILocation(line: 73, column: 6, scope: !5855)
!5871 = !DILocation(line: 73, column: 13, scope: !5855)
!5872 = !DILocation(line: 75, column: 18, scope: !5855)
!5873 = !DILocation(line: 75, column: 2, scope: !5855)
!5874 = !DILocation(line: 76, column: 1, scope: !5855)
!5875 = distinct !DISubprogram(name: "ttusbir_brightness_get", scope: !3, file: !3, line: 43, type: !4593, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5876 = !DILocalVariable(name: "led_dev", arg: 1, scope: !5875, file: !3, line: 43, type: !4586)
!5877 = !DILocation(line: 43, column: 72, scope: !5875)
!5878 = !DILocalVariable(name: "tt", scope: !5875, file: !3, line: 45, type: !4119)
!5879 = !DILocation(line: 45, column: 18, scope: !5875)
!5880 = !DILocalVariable(name: "__mptr", scope: !5881, file: !3, line: 45, type: !193)
!5881 = distinct !DILexicalBlock(scope: !5875, file: !3, line: 45, column: 23)
!5882 = !DILocation(line: 45, column: 23, scope: !5881)
!5883 = !DILocation(line: 45, column: 23, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5881, file: !3, line: 45, column: 23)
!5885 = !DILocation(line: 47, column: 9, scope: !5875)
!5886 = !DILocation(line: 47, column: 13, scope: !5875)
!5887 = !DILocation(line: 47, column: 2, scope: !5875)
!5888 = distinct !DISubprogram(name: "led_classdev_register", scope: !164, file: !164, line: 187, type: !5889, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5889 = !DISubroutineType(types: !5890)
!5890 = !{!198, !226, !4586}
!5891 = !DILocalVariable(name: "parent", arg: 1, scope: !5888, file: !164, line: 187, type: !226)
!5892 = !DILocation(line: 187, column: 56, scope: !5888)
!5893 = !DILocalVariable(name: "led_cdev", arg: 2, scope: !5888, file: !164, line: 188, type: !4586)
!5894 = !DILocation(line: 188, column: 27, scope: !5888)
!5895 = !DILocation(line: 190, column: 35, scope: !5888)
!5896 = !DILocation(line: 190, column: 43, scope: !5888)
!5897 = !DILocation(line: 190, column: 9, scope: !5888)
!5898 = !DILocation(line: 190, column: 2, scope: !5888)
!5899 = distinct !DISubprogram(name: "usb_make_path", scope: !6, file: !6, line: 912, type: !5900, scopeLine: 913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5900 = !DISubroutineType(types: !5901)
!5901 = !{!198, !194, !291, !337}
!5902 = !DILocalVariable(name: "dev", arg: 1, scope: !5899, file: !6, line: 912, type: !194)
!5903 = !DILocation(line: 912, column: 52, scope: !5899)
!5904 = !DILocalVariable(name: "buf", arg: 2, scope: !5899, file: !6, line: 912, type: !291)
!5905 = !DILocation(line: 912, column: 63, scope: !5899)
!5906 = !DILocalVariable(name: "size", arg: 3, scope: !5899, file: !6, line: 912, type: !337)
!5907 = !DILocation(line: 912, column: 75, scope: !5899)
!5908 = !DILocalVariable(name: "actual", scope: !5899, file: !6, line: 914, type: !198)
!5909 = !DILocation(line: 914, column: 6, scope: !5899)
!5910 = !DILocation(line: 915, column: 20, scope: !5899)
!5911 = !DILocation(line: 915, column: 25, scope: !5899)
!5912 = !DILocation(line: 915, column: 44, scope: !5899)
!5913 = !DILocation(line: 915, column: 49, scope: !5899)
!5914 = !DILocation(line: 915, column: 54, scope: !5899)
!5915 = !DILocation(line: 916, column: 6, scope: !5899)
!5916 = !DILocation(line: 916, column: 11, scope: !5899)
!5917 = !DILocation(line: 915, column: 11, scope: !5899)
!5918 = !DILocation(line: 915, column: 9, scope: !5899)
!5919 = !DILocation(line: 917, column: 10, scope: !5899)
!5920 = !DILocation(line: 917, column: 25, scope: !5899)
!5921 = !DILocation(line: 917, column: 20, scope: !5899)
!5922 = !DILocation(line: 917, column: 17, scope: !5899)
!5923 = !DILocation(line: 917, column: 9, scope: !5899)
!5924 = !DILocation(line: 917, column: 38, scope: !5899)
!5925 = !DILocation(line: 917, column: 2, scope: !5899)
!5926 = distinct !DISubprogram(name: "usb_to_input_id", scope: !5927, file: !5927, line: 18, type: !5928, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5927 = !DIFile(filename: "./include/linux/usb/input.h", directory: "/home/lizy2001/genbc/linux")
!5928 = !DISubroutineType(types: !5929)
!5929 = !{null, !5930, !5932}
!5930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5931, size: 64)
!5931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!5932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!5933 = !DILocalVariable(name: "dev", arg: 1, scope: !5926, file: !5927, line: 18, type: !5930)
!5934 = !DILocation(line: 18, column: 42, scope: !5926)
!5935 = !DILocalVariable(name: "id", arg: 2, scope: !5926, file: !5927, line: 18, type: !5932)
!5936 = !DILocation(line: 18, column: 64, scope: !5926)
!5937 = !DILocation(line: 20, column: 2, scope: !5926)
!5938 = !DILocation(line: 20, column: 6, scope: !5926)
!5939 = !DILocation(line: 20, column: 14, scope: !5926)
!5940 = !DILocation(line: 21, column: 15, scope: !5926)
!5941 = !DILocation(line: 21, column: 2, scope: !5926)
!5942 = !DILocation(line: 21, column: 6, scope: !5926)
!5943 = !DILocation(line: 21, column: 13, scope: !5926)
!5944 = !DILocation(line: 22, column: 16, scope: !5926)
!5945 = !DILocation(line: 22, column: 2, scope: !5926)
!5946 = !DILocation(line: 22, column: 6, scope: !5926)
!5947 = !DILocation(line: 22, column: 14, scope: !5926)
!5948 = !DILocation(line: 23, column: 16, scope: !5926)
!5949 = !DILocation(line: 23, column: 2, scope: !5926)
!5950 = !DILocation(line: 23, column: 6, scope: !5926)
!5951 = !DILocation(line: 23, column: 14, scope: !5926)
!5952 = !DILocation(line: 24, column: 1, scope: !5926)
!5953 = distinct !DISubprogram(name: "usb_set_intfdata", scope: !6, file: !6, line: 268, type: !5954, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5954 = !DISubroutineType(types: !5955)
!5955 = !{null, !4006, !193}
!5956 = !DILocalVariable(name: "intf", arg: 1, scope: !5953, file: !6, line: 268, type: !4006)
!5957 = !DILocation(line: 268, column: 59, scope: !5953)
!5958 = !DILocalVariable(name: "data", arg: 2, scope: !5953, file: !6, line: 268, type: !193)
!5959 = !DILocation(line: 268, column: 71, scope: !5953)
!5960 = !DILocation(line: 270, column: 19, scope: !5953)
!5961 = !DILocation(line: 270, column: 25, scope: !5953)
!5962 = !DILocation(line: 270, column: 30, scope: !5953)
!5963 = !DILocation(line: 270, column: 2, scope: !5953)
!5964 = !DILocation(line: 271, column: 1, scope: !5953)
!5965 = distinct !DISubprogram(name: "get_order", scope: !5966, file: !5966, line: 29, type: !5967, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5966 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5967 = !DISubroutineType(types: !5968)
!5968 = !{!198, !340}
!5969 = !DILocalVariable(name: "x", arg: 1, scope: !5970, file: !5971, line: 366, type: !434)
!5970 = distinct !DISubprogram(name: "fls64", scope: !5971, file: !5971, line: 366, type: !5972, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5971 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5972 = !DISubroutineType(types: !5973)
!5973 = !{!198, !434}
!5974 = !DILocation(line: 366, column: 40, scope: !5970, inlinedAt: !5975)
!5975 = distinct !DILocation(line: 46, column: 9, scope: !5965)
!5976 = !DILocalVariable(name: "bitpos", scope: !5970, file: !5971, line: 368, type: !198)
!5977 = !DILocation(line: 368, column: 6, scope: !5970, inlinedAt: !5975)
!5978 = !DILocalVariable(name: "size", arg: 1, scope: !5965, file: !5966, line: 29, type: !340)
!5979 = !DILocation(line: 29, column: 63, scope: !5965)
!5980 = !DILocation(line: 31, column: 27, scope: !5981)
!5981 = distinct !DILexicalBlock(scope: !5965, file: !5966, line: 31, column: 6)
!5982 = !DILocation(line: 31, column: 6, scope: !5981)
!5983 = !DILocation(line: 31, column: 6, scope: !5965)
!5984 = !DILocation(line: 32, column: 8, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5986, file: !5966, line: 32, column: 7)
!5986 = distinct !DILexicalBlock(scope: !5981, file: !5966, line: 31, column: 34)
!5987 = !DILocation(line: 32, column: 7, scope: !5986)
!5988 = !DILocation(line: 33, column: 4, scope: !5985)
!5989 = !DILocation(line: 35, column: 7, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5986, file: !5966, line: 35, column: 7)
!5991 = !DILocation(line: 35, column: 12, scope: !5990)
!5992 = !DILocation(line: 35, column: 7, scope: !5986)
!5993 = !DILocation(line: 36, column: 4, scope: !5990)
!5994 = !DILocation(line: 38, column: 10, scope: !5986)
!5995 = !DILocation(line: 38, column: 28, scope: !5986)
!5996 = !DILocation(line: 38, column: 41, scope: !5986)
!5997 = !DILocation(line: 38, column: 3, scope: !5986)
!5998 = !DILocation(line: 41, column: 6, scope: !5965)
!5999 = !DILocation(line: 42, column: 7, scope: !5965)
!6000 = !DILocation(line: 46, column: 15, scope: !5965)
!6001 = !DILocation(line: 374, column: 2, scope: !5970, inlinedAt: !5975)
!6002 = !DILocation(line: 376, column: 14, scope: !5970, inlinedAt: !5975)
!6003 = !{i32 306473}
!6004 = !DILocation(line: 377, column: 9, scope: !5970, inlinedAt: !5975)
!6005 = !DILocation(line: 377, column: 16, scope: !5970, inlinedAt: !5975)
!6006 = !DILocation(line: 46, column: 2, scope: !5965)
!6007 = !DILocation(line: 48, column: 1, scope: !5965)
!6008 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6009, file: !6009, line: 30, type: !6010, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!6009 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6010 = !DISubroutineType(types: !6011)
!6011 = !{!198, !433}
!6012 = !DILocation(line: 366, column: 40, scope: !5970, inlinedAt: !6013)
!6013 = distinct !DILocation(line: 32, column: 9, scope: !6008)
!6014 = !DILocation(line: 368, column: 6, scope: !5970, inlinedAt: !6013)
!6015 = !DILocalVariable(name: "n", arg: 1, scope: !6008, file: !6009, line: 30, type: !433)
!6016 = !DILocation(line: 30, column: 21, scope: !6008)
!6017 = !DILocation(line: 32, column: 15, scope: !6008)
!6018 = !DILocation(line: 374, column: 2, scope: !5970, inlinedAt: !6013)
!6019 = !DILocation(line: 376, column: 14, scope: !5970, inlinedAt: !6013)
!6020 = !DILocation(line: 377, column: 9, scope: !5970, inlinedAt: !6013)
!6021 = !DILocation(line: 377, column: 16, scope: !5970, inlinedAt: !6013)
!6022 = !DILocation(line: 32, column: 18, scope: !6008)
!6023 = !DILocation(line: 32, column: 2, scope: !6008)
!6024 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6025, file: !6025, line: 137, type: !6026, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!6025 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6026 = !DISubroutineType(types: !6027)
!6027 = !{!193, !946, !2135, !337, !186}
!6028 = !DILocalVariable(name: "s", arg: 1, scope: !6024, file: !6025, line: 137, type: !946)
!6029 = !DILocation(line: 137, column: 54, scope: !6024)
!6030 = !DILocalVariable(name: "object", arg: 2, scope: !6024, file: !6025, line: 137, type: !2135)
!6031 = !DILocation(line: 137, column: 69, scope: !6024)
!6032 = !DILocalVariable(name: "size", arg: 3, scope: !6024, file: !6025, line: 138, type: !337)
!6033 = !DILocation(line: 138, column: 12, scope: !6024)
!6034 = !DILocalVariable(name: "flags", arg: 4, scope: !6024, file: !6025, line: 138, type: !186)
!6035 = !DILocation(line: 138, column: 24, scope: !6024)
!6036 = !DILocation(line: 140, column: 17, scope: !6024)
!6037 = !DILocation(line: 140, column: 2, scope: !6024)
!6038 = distinct !DISubprogram(name: "ttusbir_process_ir_data", scope: !3, file: !3, line: 109, type: !6039, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!6039 = !DISubroutineType(types: !6040)
!6040 = !{null, !4119, !6041}
!6041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!6042 = !DILocalVariable(name: "x", arg: 1, scope: !6043, file: !5971, line: 283, type: !198)
!6043 = distinct !DISubprogram(name: "ffs", scope: !5971, file: !5971, line: 283, type: !3059, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!6044 = !DILocation(line: 283, column: 36, scope: !6043, inlinedAt: !6045)
!6045 = distinct !DILocation(line: 136, column: 9, scope: !6046)
!6046 = distinct !DILexicalBlock(scope: !6047, file: !3, line: 135, column: 11)
!6047 = distinct !DILexicalBlock(scope: !6048, file: !3, line: 132, column: 8)
!6048 = distinct !DILexicalBlock(scope: !6049, file: !3, line: 117, column: 14)
!6049 = distinct !DILexicalBlock(scope: !6050, file: !3, line: 115, column: 28)
!6050 = distinct !DILexicalBlock(scope: !6051, file: !3, line: 115, column: 2)
!6051 = distinct !DILexicalBlock(scope: !6038, file: !3, line: 115, column: 2)
!6052 = !DILocalVariable(name: "r", scope: !6043, file: !5971, line: 285, type: !198)
!6053 = !DILocation(line: 285, column: 6, scope: !6043, inlinedAt: !6045)
!6054 = !DILocalVariable(name: "word", arg: 1, scope: !6055, file: !5971, line: 247, type: !340)
!6055 = distinct !DISubprogram(name: "ffz", scope: !5971, file: !5971, line: 247, type: !6056, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!6056 = !DISubroutineType(types: !6057)
!6057 = !{!340, !340}
!6058 = !DILocation(line: 247, column: 56, scope: !6055, inlinedAt: !6059)
!6059 = distinct !DILocation(line: 133, column: 9, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !6047, file: !3, line: 132, column: 15)
!6061 = !DILocalVariable(name: "tt", arg: 1, scope: !6038, file: !3, line: 109, type: !4119)
!6062 = !DILocation(line: 109, column: 53, scope: !6038)
!6063 = !DILocalVariable(name: "buf", arg: 2, scope: !6038, file: !3, line: 109, type: !6041)
!6064 = !DILocation(line: 109, column: 66, scope: !6038)
!6065 = !DILocalVariable(name: "rawir", scope: !6038, file: !3, line: 111, type: !6066)
!6066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ir_raw_event", file: !132, line: 299, size: 64, elements: !6067)
!6067 = !{!6068, !6073, !6074, !6075, !6076, !6077}
!6068 = !DIDerivedType(tag: DW_TAG_member, scope: !6066, file: !132, line: 300, baseType: !6069, size: 32)
!6069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6066, file: !132, line: 300, size: 32, elements: !6070)
!6070 = !{!6071, !6072}
!6071 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !6069, file: !132, line: 301, baseType: !205, size: 32)
!6072 = !DIDerivedType(tag: DW_TAG_member, name: "carrier", scope: !6069, file: !132, line: 302, baseType: !205, size: 32)
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "duty_cycle", scope: !6066, file: !132, line: 304, baseType: !1363, size: 8, offset: 32)
!6074 = !DIDerivedType(tag: DW_TAG_member, name: "pulse", scope: !6066, file: !132, line: 306, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 40)
!6075 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !6066, file: !132, line: 307, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 40)
!6076 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !6066, file: !132, line: 308, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 40)
!6077 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_report", scope: !6066, file: !132, line: 309, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 40)
!6078 = !DILocation(line: 111, column: 22, scope: !6038)
!6079 = !DILocalVariable(name: "i", scope: !6038, file: !3, line: 112, type: !7)
!6080 = !DILocation(line: 112, column: 11, scope: !6038)
!6081 = !DILocalVariable(name: "v", scope: !6038, file: !3, line: 112, type: !7)
!6082 = !DILocation(line: 112, column: 14, scope: !6038)
!6083 = !DILocalVariable(name: "b", scope: !6038, file: !3, line: 112, type: !7)
!6084 = !DILocation(line: 112, column: 17, scope: !6038)
!6085 = !DILocalVariable(name: "event", scope: !6038, file: !3, line: 113, type: !502)
!6086 = !DILocation(line: 113, column: 7, scope: !6038)
!6087 = !DILocation(line: 115, column: 9, scope: !6051)
!6088 = !DILocation(line: 115, column: 7, scope: !6051)
!6089 = !DILocation(line: 115, column: 14, scope: !6050)
!6090 = !DILocation(line: 115, column: 16, scope: !6050)
!6091 = !DILocation(line: 115, column: 2, scope: !6051)
!6092 = !DILocation(line: 116, column: 7, scope: !6049)
!6093 = !DILocation(line: 116, column: 11, scope: !6049)
!6094 = !DILocation(line: 116, column: 14, scope: !6049)
!6095 = !DILocation(line: 116, column: 5, scope: !6049)
!6096 = !DILocation(line: 117, column: 11, scope: !6049)
!6097 = !DILocation(line: 117, column: 3, scope: !6049)
!6098 = !DILocation(line: 119, column: 10, scope: !6048)
!6099 = !DILocation(line: 119, column: 16, scope: !6048)
!6100 = !DILocation(line: 120, column: 10, scope: !6048)
!6101 = !DILocation(line: 120, column: 19, scope: !6048)
!6102 = !DILocation(line: 121, column: 39, scope: !6103)
!6103 = distinct !DILexicalBlock(scope: !6048, file: !3, line: 121, column: 8)
!6104 = !DILocation(line: 121, column: 43, scope: !6103)
!6105 = !DILocation(line: 121, column: 8, scope: !6103)
!6106 = !DILocation(line: 121, column: 8, scope: !6048)
!6107 = !DILocation(line: 122, column: 11, scope: !6103)
!6108 = !DILocation(line: 122, column: 5, scope: !6103)
!6109 = !DILocation(line: 123, column: 4, scope: !6048)
!6110 = !DILocation(line: 125, column: 10, scope: !6048)
!6111 = !DILocation(line: 125, column: 16, scope: !6048)
!6112 = !DILocation(line: 126, column: 10, scope: !6048)
!6113 = !DILocation(line: 126, column: 19, scope: !6048)
!6114 = !DILocation(line: 127, column: 39, scope: !6115)
!6115 = distinct !DILexicalBlock(scope: !6048, file: !3, line: 127, column: 8)
!6116 = !DILocation(line: 127, column: 43, scope: !6115)
!6117 = !DILocation(line: 127, column: 8, scope: !6115)
!6118 = !DILocation(line: 127, column: 8, scope: !6048)
!6119 = !DILocation(line: 128, column: 11, scope: !6115)
!6120 = !DILocation(line: 128, column: 5, scope: !6115)
!6121 = !DILocation(line: 129, column: 4, scope: !6048)
!6122 = !DILocation(line: 132, column: 8, scope: !6047)
!6123 = !DILocation(line: 132, column: 10, scope: !6047)
!6124 = !DILocation(line: 132, column: 8, scope: !6048)
!6125 = !DILocation(line: 133, column: 13, scope: !6060)
!6126 = !DILocation(line: 133, column: 15, scope: !6060)
!6127 = !DILocation(line: 251, column: 11, scope: !6055, inlinedAt: !6059)
!6128 = !DILocation(line: 251, column: 10, scope: !6055, inlinedAt: !6059)
!6129 = !DILocation(line: 249, column: 2, scope: !6055, inlinedAt: !6059)
!6130 = !{i32 303223}
!6131 = !DILocation(line: 252, column: 9, scope: !6055, inlinedAt: !6059)
!6132 = !DILocation(line: 133, column: 9, scope: !6060)
!6133 = !DILocation(line: 133, column: 7, scope: !6060)
!6134 = !DILocation(line: 134, column: 11, scope: !6060)
!6135 = !DILocation(line: 134, column: 17, scope: !6060)
!6136 = !DILocation(line: 135, column: 4, scope: !6060)
!6137 = !DILocation(line: 136, column: 13, scope: !6046)
!6138 = !DILocation(line: 299, column: 14, scope: !6043, inlinedAt: !6045)
!6139 = !DILocation(line: 297, column: 2, scope: !6043, inlinedAt: !6045)
!6140 = !{i32 304406}
!6141 = !DILocation(line: 310, column: 9, scope: !6043, inlinedAt: !6045)
!6142 = !DILocation(line: 310, column: 11, scope: !6043, inlinedAt: !6045)
!6143 = !DILocation(line: 136, column: 16, scope: !6046)
!6144 = !DILocation(line: 136, column: 7, scope: !6046)
!6145 = !DILocation(line: 137, column: 11, scope: !6046)
!6146 = !DILocation(line: 137, column: 17, scope: !6046)
!6147 = !DILocation(line: 140, column: 39, scope: !6048)
!6148 = !DILocation(line: 140, column: 37, scope: !6048)
!6149 = !DILocation(line: 140, column: 32, scope: !6048)
!6150 = !DILocation(line: 140, column: 10, scope: !6048)
!6151 = !DILocation(line: 140, column: 19, scope: !6048)
!6152 = !DILocation(line: 141, column: 39, scope: !6153)
!6153 = distinct !DILexicalBlock(scope: !6048, file: !3, line: 141, column: 8)
!6154 = !DILocation(line: 141, column: 43, scope: !6153)
!6155 = !DILocation(line: 141, column: 8, scope: !6153)
!6156 = !DILocation(line: 141, column: 8, scope: !6048)
!6157 = !DILocation(line: 142, column: 11, scope: !6153)
!6158 = !DILocation(line: 142, column: 5, scope: !6153)
!6159 = !DILocation(line: 144, column: 25, scope: !6048)
!6160 = !DILocation(line: 144, column: 18, scope: !6048)
!6161 = !DILocation(line: 144, column: 10, scope: !6048)
!6162 = !DILocation(line: 144, column: 16, scope: !6048)
!6163 = !DILocation(line: 145, column: 34, scope: !6048)
!6164 = !DILocation(line: 145, column: 32, scope: !6048)
!6165 = !DILocation(line: 145, column: 10, scope: !6048)
!6166 = !DILocation(line: 145, column: 19, scope: !6048)
!6167 = !DILocation(line: 146, column: 39, scope: !6168)
!6168 = distinct !DILexicalBlock(scope: !6048, file: !3, line: 146, column: 8)
!6169 = !DILocation(line: 146, column: 43, scope: !6168)
!6170 = !DILocation(line: 146, column: 8, scope: !6168)
!6171 = !DILocation(line: 146, column: 8, scope: !6048)
!6172 = !DILocation(line: 147, column: 11, scope: !6168)
!6173 = !DILocation(line: 147, column: 5, scope: !6168)
!6174 = !DILocation(line: 148, column: 4, scope: !6048)
!6175 = !DILocation(line: 150, column: 2, scope: !6049)
!6176 = !DILocation(line: 115, column: 24, scope: !6050)
!6177 = !DILocation(line: 115, column: 2, scope: !6050)
!6178 = distinct !{!6178, !6091, !6179}
!6179 = !DILocation(line: 150, column: 2, scope: !6051)
!6180 = !DILocation(line: 153, column: 6, scope: !6181)
!6181 = distinct !DILexicalBlock(scope: !6038, file: !3, line: 153, column: 6)
!6182 = !DILocation(line: 153, column: 6, scope: !6038)
!6183 = !DILocation(line: 154, column: 23, scope: !6181)
!6184 = !DILocation(line: 154, column: 27, scope: !6181)
!6185 = !DILocation(line: 154, column: 3, scope: !6181)
!6186 = !DILocation(line: 155, column: 1, scope: !6038)
!6187 = distinct !DISubprogram(name: "ttusbir_set_led", scope: !3, file: !3, line: 50, type: !6188, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!6188 = !DISubroutineType(types: !6189)
!6189 = !{null, !4119}
!6190 = !DILocation(line: 106, column: 55, scope: !5810, inlinedAt: !6191)
!6191 = distinct !DILocation(line: 331, column: 2, scope: !5815, inlinedAt: !6192)
!6192 = distinct !DILocation(line: 63, column: 4, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6194, file: !3, line: 60, column: 12)
!6194 = distinct !DILexicalBlock(scope: !6195, file: !3, line: 60, column: 7)
!6195 = distinct !DILexicalBlock(scope: !6196, file: !3, line: 57, column: 49)
!6196 = distinct !DILexicalBlock(scope: !6187, file: !3, line: 56, column: 6)
!6197 = !DILocation(line: 99, column: 79, scope: !5818, inlinedAt: !6198)
!6198 = distinct !DILocation(line: 330, column: 2, scope: !5815, inlinedAt: !6192)
!6199 = !DILocation(line: 99, column: 89, scope: !5818, inlinedAt: !6198)
!6200 = !DILocation(line: 328, column: 22, scope: !5815, inlinedAt: !6192)
!6201 = !DILocalVariable(name: "v", arg: 1, scope: !6202, file: !4743, line: 200, type: !4746)
!6202 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !4743, file: !4743, line: 200, type: !6203, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!6203 = !DISubroutineType(types: !6204)
!6204 = !{!502, !4746, !717, !198}
!6205 = !DILocation(line: 200, column: 63, scope: !6202, inlinedAt: !6206)
!6206 = distinct !DILocation(line: 1093, column: 12, scope: !6207, inlinedAt: !6211)
!6207 = distinct !DISubprogram(name: "arch_atomic_fetch_add_unless", scope: !6208, file: !6208, line: 1086, type: !6209, scopeLine: 1087, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!6208 = !DIFile(filename: "./include/linux/atomic-arch-fallback.h", directory: "/home/lizy2001/genbc/linux")
!6209 = !DISubroutineType(types: !6210)
!6210 = !{!198, !4746, !198, !198}
!6211 = distinct !DILocation(line: 1113, column: 9, scope: !6212, inlinedAt: !6215)
!6212 = distinct !DISubprogram(name: "arch_atomic_add_unless", scope: !6208, file: !6208, line: 1111, type: !6213, scopeLine: 1112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!6213 = !DISubroutineType(types: !6214)
!6214 = !{!502, !4746, !198, !198}
!6215 = distinct !DILocation(line: 789, column: 9, scope: !6216, inlinedAt: !6217)
!6216 = distinct !DISubprogram(name: "atomic_add_unless", scope: !4750, file: !4750, line: 786, type: !6213, scopeLine: 787, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!6217 = distinct !DILocation(line: 57, column: 5, scope: !6196)
!6218 = !DILocalVariable(name: "old", arg: 2, scope: !6202, file: !4743, line: 200, type: !717)
!6219 = !DILocation(line: 200, column: 71, scope: !6202, inlinedAt: !6206)
!6220 = !DILocalVariable(name: "new", arg: 3, scope: !6202, file: !4743, line: 200, type: !198)
!6221 = !DILocation(line: 200, column: 80, scope: !6202, inlinedAt: !6206)
!6222 = !DILocalVariable(name: "success", scope: !6223, file: !4743, line: 202, type: !502)
!6223 = distinct !DILexicalBlock(scope: !6202, file: !4743, line: 202, column: 9)
!6224 = !DILocation(line: 202, column: 9, scope: !6223, inlinedAt: !6206)
!6225 = !DILocalVariable(name: "_old", scope: !6223, file: !4743, line: 202, type: !717)
!6226 = !DILocalVariable(name: "__old", scope: !6223, file: !4743, line: 202, type: !198)
!6227 = !DILocalVariable(name: "__new", scope: !6223, file: !4743, line: 202, type: !198)
!6228 = !DILocalVariable(name: "__ptr", scope: !6223, file: !4743, line: 202, type: !4117)
!6229 = !DILocalVariable(name: "v", arg: 1, scope: !6230, file: !4743, line: 23, type: !6233)
!6230 = distinct !DISubprogram(name: "arch_atomic_read", scope: !4743, file: !4743, line: 23, type: !6231, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!6231 = !DISubroutineType(types: !6232)
!6232 = !{!198, !6233}
!6233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6234, size: 64)
!6234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !759)
!6235 = !DILocation(line: 23, column: 61, scope: !6230, inlinedAt: !6236)
!6236 = distinct !DILocation(line: 1088, column: 10, scope: !6207, inlinedAt: !6211)
!6237 = !DILocalVariable(name: "v", arg: 1, scope: !6207, file: !6208, line: 1086, type: !4746)
!6238 = !DILocation(line: 1086, column: 40, scope: !6207, inlinedAt: !6211)
!6239 = !DILocalVariable(name: "a", arg: 2, scope: !6207, file: !6208, line: 1086, type: !198)
!6240 = !DILocation(line: 1086, column: 47, scope: !6207, inlinedAt: !6211)
!6241 = !DILocalVariable(name: "u", arg: 3, scope: !6207, file: !6208, line: 1086, type: !198)
!6242 = !DILocation(line: 1086, column: 54, scope: !6207, inlinedAt: !6211)
!6243 = !DILocalVariable(name: "c", scope: !6207, file: !6208, line: 1088, type: !198)
!6244 = !DILocation(line: 1088, column: 6, scope: !6207, inlinedAt: !6211)
!6245 = !DILocalVariable(name: "v", arg: 1, scope: !6212, file: !6208, line: 1111, type: !4746)
!6246 = !DILocation(line: 1111, column: 34, scope: !6212, inlinedAt: !6215)
!6247 = !DILocalVariable(name: "a", arg: 2, scope: !6212, file: !6208, line: 1111, type: !198)
!6248 = !DILocation(line: 1111, column: 41, scope: !6212, inlinedAt: !6215)
!6249 = !DILocalVariable(name: "u", arg: 3, scope: !6212, file: !6208, line: 1111, type: !198)
!6250 = !DILocation(line: 1111, column: 48, scope: !6212, inlinedAt: !6215)
!6251 = !DILocation(line: 99, column: 79, scope: !5818, inlinedAt: !6252)
!6252 = distinct !DILocation(line: 788, column: 2, scope: !6216, inlinedAt: !6217)
!6253 = !DILocation(line: 99, column: 89, scope: !5818, inlinedAt: !6252)
!6254 = !DILocalVariable(name: "v", arg: 1, scope: !6216, file: !4750, line: 786, type: !4746)
!6255 = !DILocation(line: 786, column: 29, scope: !6216, inlinedAt: !6217)
!6256 = !DILocalVariable(name: "a", arg: 2, scope: !6216, file: !4750, line: 786, type: !198)
!6257 = !DILocation(line: 786, column: 36, scope: !6216, inlinedAt: !6217)
!6258 = !DILocalVariable(name: "u", arg: 3, scope: !6216, file: !4750, line: 786, type: !198)
!6259 = !DILocation(line: 786, column: 43, scope: !6216, inlinedAt: !6217)
!6260 = !DILocalVariable(name: "tt", arg: 1, scope: !6187, file: !3, line: 50, type: !4119)
!6261 = !DILocation(line: 50, column: 45, scope: !6187)
!6262 = !DILocalVariable(name: "ret", scope: !6187, file: !3, line: 52, type: !198)
!6263 = !DILocation(line: 52, column: 6, scope: !6187)
!6264 = !DILocation(line: 54, column: 2, scope: !6187)
!6265 = !{i32 -2141728914}
!6266 = !DILocation(line: 56, column: 6, scope: !6196)
!6267 = !DILocation(line: 56, column: 10, scope: !6196)
!6268 = !DILocation(line: 56, column: 20, scope: !6196)
!6269 = !DILocation(line: 56, column: 24, scope: !6196)
!6270 = !DILocation(line: 56, column: 17, scope: !6196)
!6271 = !DILocation(line: 56, column: 34, scope: !6196)
!6272 = !DILocation(line: 56, column: 37, scope: !6196)
!6273 = !DILocation(line: 56, column: 41, scope: !6196)
!6274 = !DILocation(line: 56, column: 46, scope: !6196)
!6275 = !DILocation(line: 57, column: 24, scope: !6196)
!6276 = !DILocation(line: 57, column: 28, scope: !6196)
!6277 = !DILocation(line: 788, column: 31, scope: !6216, inlinedAt: !6217)
!6278 = !DILocation(line: 101, column: 20, scope: !5818, inlinedAt: !6252)
!6279 = !DILocation(line: 101, column: 23, scope: !5818, inlinedAt: !6252)
!6280 = !DILocation(line: 101, column: 2, scope: !5818, inlinedAt: !6252)
!6281 = !DILocation(line: 102, column: 2, scope: !5818, inlinedAt: !6252)
!6282 = !DILocation(line: 789, column: 32, scope: !6216, inlinedAt: !6217)
!6283 = !DILocation(line: 789, column: 35, scope: !6216, inlinedAt: !6217)
!6284 = !DILocation(line: 789, column: 38, scope: !6216, inlinedAt: !6217)
!6285 = !DILocation(line: 1113, column: 38, scope: !6212, inlinedAt: !6215)
!6286 = !DILocation(line: 1113, column: 41, scope: !6212, inlinedAt: !6215)
!6287 = !DILocation(line: 1113, column: 44, scope: !6212, inlinedAt: !6215)
!6288 = !DILocation(line: 1088, column: 27, scope: !6207, inlinedAt: !6211)
!6289 = !DILocation(line: 29, column: 9, scope: !6230, inlinedAt: !6236)
!6290 = !DILocation(line: 1090, column: 2, scope: !6207, inlinedAt: !6211)
!6291 = !DILocation(line: 1091, column: 7, scope: !6292, inlinedAt: !6211)
!6292 = distinct !DILexicalBlock(scope: !6293, file: !6208, line: 1091, column: 7)
!6293 = distinct !DILexicalBlock(scope: !6207, file: !6208, line: 1090, column: 5)
!6294 = !DILocation(line: 1091, column: 7, scope: !6293, inlinedAt: !6211)
!6295 = !DILocation(line: 1092, column: 4, scope: !6292, inlinedAt: !6211)
!6296 = !DILocation(line: 1093, column: 36, scope: !6207, inlinedAt: !6211)
!6297 = !DILocation(line: 1093, column: 43, scope: !6207, inlinedAt: !6211)
!6298 = !DILocation(line: 1093, column: 47, scope: !6207, inlinedAt: !6211)
!6299 = !DILocation(line: 1093, column: 45, scope: !6207, inlinedAt: !6211)
!6300 = !{i32 -2146610027, i32 -2146609872}
!6301 = !DILocation(line: 202, column: 9, scope: !6302, inlinedAt: !6206)
!6302 = distinct !DILexicalBlock(scope: !6223, file: !4743, line: 202, column: 9)
!6303 = !DILocation(line: 202, column: 9, scope: !6202, inlinedAt: !6206)
!6304 = !DILocation(line: 1093, column: 11, scope: !6207, inlinedAt: !6211)
!6305 = !DILocation(line: 1093, column: 2, scope: !6293, inlinedAt: !6211)
!6306 = distinct !{!6306, !6290, !6307}
!6307 = !DILocation(line: 1093, column: 49, scope: !6207, inlinedAt: !6211)
!6308 = !DILocation(line: 1095, column: 9, scope: !6207, inlinedAt: !6211)
!6309 = !DILocation(line: 1113, column: 50, scope: !6212, inlinedAt: !6215)
!6310 = !DILocation(line: 1113, column: 47, scope: !6212, inlinedAt: !6215)
!6311 = !DILocation(line: 56, column: 6, scope: !6187)
!6312 = !DILocation(line: 58, column: 40, scope: !6195)
!6313 = !DILocation(line: 58, column: 44, scope: !6195)
!6314 = !DILocation(line: 58, column: 24, scope: !6195)
!6315 = !DILocation(line: 58, column: 28, scope: !6195)
!6316 = !DILocation(line: 58, column: 38, scope: !6195)
!6317 = !DILocation(line: 58, column: 3, scope: !6195)
!6318 = !DILocation(line: 58, column: 7, scope: !6195)
!6319 = !DILocation(line: 58, column: 22, scope: !6195)
!6320 = !DILocation(line: 59, column: 24, scope: !6195)
!6321 = !DILocation(line: 59, column: 28, scope: !6195)
!6322 = !DILocation(line: 59, column: 9, scope: !6195)
!6323 = !DILocation(line: 59, column: 7, scope: !6195)
!6324 = !DILocation(line: 60, column: 7, scope: !6194)
!6325 = !DILocation(line: 60, column: 7, scope: !6195)
!6326 = !DILocation(line: 61, column: 4, scope: !6193)
!6327 = !DILocation(line: 63, column: 16, scope: !6193)
!6328 = !DILocation(line: 63, column: 20, scope: !6193)
!6329 = !DILocation(line: 330, column: 31, scope: !5815, inlinedAt: !6192)
!6330 = !DILocation(line: 101, column: 20, scope: !5818, inlinedAt: !6198)
!6331 = !DILocation(line: 101, column: 23, scope: !5818, inlinedAt: !6198)
!6332 = !DILocation(line: 101, column: 2, scope: !5818, inlinedAt: !6198)
!6333 = !DILocation(line: 102, column: 2, scope: !5818, inlinedAt: !6198)
!6334 = !DILocation(line: 331, column: 18, scope: !5815, inlinedAt: !6192)
!6335 = !DILocation(line: 109, column: 16, scope: !5810, inlinedAt: !6191)
!6336 = !DILocation(line: 109, column: 19, scope: !5810, inlinedAt: !6191)
!6337 = !DILocation(line: 108, column: 2, scope: !5810, inlinedAt: !6191)
!6338 = !DILocation(line: 64, column: 3, scope: !6193)
!6339 = !DILocation(line: 65, column: 2, scope: !6195)
!6340 = !DILocation(line: 66, column: 1, scope: !6187)
!6341 = distinct !DISubprogram(name: "kasan_check_write", scope: !6342, file: !6342, line: 38, type: !6343, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!6342 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6343 = !DISubroutineType(types: !6344)
!6344 = !{!502, !4759, !7}
!6345 = !DILocalVariable(name: "p", arg: 1, scope: !6341, file: !6342, line: 38, type: !4759)
!6346 = !DILocation(line: 38, column: 59, scope: !6341)
!6347 = !DILocalVariable(name: "size", arg: 2, scope: !6341, file: !6342, line: 38, type: !7)
!6348 = !DILocation(line: 38, column: 75, scope: !6341)
!6349 = !DILocation(line: 40, column: 2, scope: !6341)
!6350 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6351, file: !6351, line: 178, type: !6352, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!6351 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6352 = !DISubroutineType(types: !6353)
!6353 = !{null, !4759, !337, !198}
!6354 = !DILocalVariable(name: "ptr", arg: 1, scope: !6350, file: !6351, line: 178, type: !4759)
!6355 = !DILocation(line: 178, column: 60, scope: !6350)
!6356 = !DILocalVariable(name: "size", arg: 2, scope: !6350, file: !6351, line: 178, type: !337)
!6357 = !DILocation(line: 178, column: 72, scope: !6350)
!6358 = !DILocalVariable(name: "type", arg: 3, scope: !6350, file: !6351, line: 179, type: !198)
!6359 = !DILocation(line: 179, column: 15, scope: !6350)
!6360 = !DILocation(line: 179, column: 23, scope: !6350)
!6361 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !80, file: !80, line: 660, type: !6362, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!6362 = !DISubroutineType(types: !6363)
!6363 = !{null, !226, !193}
!6364 = !DILocalVariable(name: "dev", arg: 1, scope: !6361, file: !80, line: 660, type: !226)
!6365 = !DILocation(line: 660, column: 51, scope: !6361)
!6366 = !DILocalVariable(name: "data", arg: 2, scope: !6361, file: !80, line: 660, type: !193)
!6367 = !DILocation(line: 660, column: 62, scope: !6361)
!6368 = !DILocation(line: 662, column: 21, scope: !6361)
!6369 = !DILocation(line: 662, column: 2, scope: !6361)
!6370 = !DILocation(line: 662, column: 7, scope: !6361)
!6371 = !DILocation(line: 662, column: 19, scope: !6361)
!6372 = !DILocation(line: 663, column: 1, scope: !6361)
!6373 = distinct !DISubprogram(name: "usb_get_intfdata", scope: !6, file: !6, line: 263, type: !6374, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!6374 = !DISubroutineType(types: !6375)
!6375 = !{!193, !4006}
!6376 = !DILocalVariable(name: "intf", arg: 1, scope: !6373, file: !6, line: 263, type: !4006)
!6377 = !DILocation(line: 263, column: 60, scope: !6373)
!6378 = !DILocation(line: 265, column: 26, scope: !6373)
!6379 = !DILocation(line: 265, column: 32, scope: !6373)
!6380 = !DILocation(line: 265, column: 9, scope: !6373)
!6381 = !DILocation(line: 265, column: 2, scope: !6373)
!6382 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !80, file: !80, line: 655, type: !6383, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!6383 = !DISubroutineType(types: !6384)
!6384 = !{!193, !3724}
!6385 = !DILocalVariable(name: "dev", arg: 1, scope: !6382, file: !80, line: 655, type: !3724)
!6386 = !DILocation(line: 655, column: 58, scope: !6382)
!6387 = !DILocation(line: 657, column: 9, scope: !6382)
!6388 = !DILocation(line: 657, column: 14, scope: !6382)
!6389 = !DILocation(line: 657, column: 2, scope: !6382)
