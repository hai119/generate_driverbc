; ModuleID = '../bcout/drivers/mmc/host/ushc.llvm.bc'
source_filename = "drivers/mmc/host/ushc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_ushc_driver_init6:\09\09\09"
module asm ".long\09ushc_driver_init - .\09\09\09"
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
%struct.mmc_host_ops = type { void (%struct.mmc_host*, %struct.mmc_request*, i32)*, void (%struct.mmc_host*, %struct.mmc_request*)*, void (%struct.mmc_host*, %struct.mmc_request*)*, i32 (%struct.mmc_host*, %struct.mmc_request*)*, void (%struct.mmc_host*, %struct.mmc_ios*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, void (%struct.mmc_host*, i32)*, void (%struct.mmc_host*)*, void (%struct.mmc_host*, %struct.mmc_card*)*, i32 (%struct.mmc_host*, %struct.mmc_ios*)*, i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*, i32)*, i32 (%struct.mmc_host*, %struct.mmc_ios*)*, i32 (%struct.mmc_host*)*, void (%struct.mmc_host*)*, void (%struct.mmc_host*)*, void (%struct.mmc_host*, %struct.mmc_ios*)*, i32 (%struct.mmc_card*, i32, i32, i32, i32*)*, void (%struct.mmc_host*)*, void (%struct.mmc_host*)*, i32 (%struct.mmc_card*, i32, i32)* }
%struct.mmc_host = type { %struct.device*, %struct.device, i32, %struct.mmc_host_ops*, %struct.mmc_pwrseq*, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.wakeup_source*, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, %struct.mmc_card*, %struct.wait_queue_head, %struct.mmc_ctx*, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, %struct.mmc_bus_ops*, i32, i32, %struct.task_struct*, %struct.delayed_work, i8, %struct.atomic_t, i32, %struct.led_trigger*, %struct.mmc_supply, %struct.dentry*, %struct.mmc_request*, i32, i32, i32, i32, %struct.mmc_cqe_ops*, i8*, i32, i8, i8, i8, [41 x i8], [0 x i64] }
%struct.mmc_pwrseq = type opaque
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_card = type { %struct.mmc_host*, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x %struct.sdio_func*], %struct.sdio_func*, i8, i8, i32, i8**, %struct.sdio_func_tuple*, i32, i32, i32, %struct.dentry*, [7 x %struct.mmc_part], i32, i32, %struct.workqueue_struct* }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.sdio_func = type opaque
%struct.sdio_func_tuple = type opaque
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.mmc_ctx = type { %struct.task_struct* }
%struct.mmc_slot = type { i32, i8, i8* }
%struct.mmc_bus_ops = type opaque
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.led_trigger = type opaque
%struct.mmc_supply = type { %struct.regulator*, %struct.regulator* }
%struct.regulator = type opaque
%struct.mmc_cqe_ops = type { i32 (%struct.mmc_host*, %struct.mmc_card*)*, void (%struct.mmc_host*)*, i32 (%struct.mmc_host*, %struct.mmc_request*)*, void (%struct.mmc_host*, %struct.mmc_request*)*, void (%struct.mmc_host*)*, i32 (%struct.mmc_host*)*, i1 (%struct.mmc_host*, %struct.mmc_request*, i8*)*, void (%struct.mmc_host*)*, void (%struct.mmc_host*)* }
%struct.mmc_request = type { %struct.mmc_command*, %struct.mmc_command*, %struct.mmc_data*, %struct.mmc_command*, %struct.completion, %struct.completion, void (%struct.mmc_request*)*, void (%struct.mmc_request*)*, %struct.mmc_host*, i8, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.mmc_command*, %struct.mmc_request*, i32, i32, %struct.scatterlist*, i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, %struct.mmc_data*, %struct.mmc_request* }
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
%struct.ushc_data = type { %struct.usb_device*, %struct.mmc_host*, %struct.urb*, %struct.ushc_int_data*, %struct.urb*, %struct.ushc_cbw*, %struct.urb*, %struct.urb*, %struct.ushc_csw*, %struct.spinlock, %struct.mmc_request*, i32, i16, i64, i8, i32 }
%struct.ushc_int_data = type { i8, [3 x i8] }
%struct.ushc_cbw = type { i8, i8, i16, i32 }
%struct.urb = type { %struct.kref, i32, i8*, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.usb_anchor*, %struct.usb_device*, %struct.usb_host_endpoint*, i32, i32, i32, i32, i8*, i64, %struct.scatterlist*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i8*, void (%struct.urb*)*, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.ushc_csw = type <{ i8, i8, i32 }>

@__UNIQUE_ID___addressable_ushc_driver_init240 = internal global i8* bitcast (i32 ()* @ushc_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@ushc_driver = internal global %struct.usb_driver { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @ushc_probe, void (%struct.usb_interface*)* @ushc_disconnect, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, %struct.usb_device_id* getelementptr inbounds ([2 x %struct.usb_device_id], [2 x %struct.usb_device_id]* @ushc_id_table, i32 0, i32 0), %struct.attribute_group** null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, align 8, !dbg !4108
@__exitcall_ushc_driver_exit = internal global void ()* @ushc_driver_exit, section ".exitcall.exit", align 8, !dbg !4085
@__UNIQUE_ID_description241 = internal constant [47 x i8] c"ushc.description=USB SD Host Controller driver\00", section ".modinfo", align 1, !dbg !4090
@__UNIQUE_ID_author242 = internal constant [48 x i8] c"ushc.author=David Vrabel <david.vrabel@csr.com>\00", section ".modinfo", align 1, !dbg !4095
@__UNIQUE_ID_file243 = internal constant [32 x i8] c"ushc.file=drivers/mmc/host/ushc\00", section ".modinfo", align 1, !dbg !4100
@__UNIQUE_ID_license244 = internal constant [17 x i8] c"ushc.license=GPL\00", section ".modinfo", align 1, !dbg !4103
@.str = private unnamed_addr constant [5 x i8] c"ushc\00", align 1
@ushc_id_table = internal global [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2578, i16 23824, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !4659
@ushc_ops = internal constant %struct.mmc_host_ops { void (%struct.mmc_host*, %struct.mmc_request*, i32)* null, void (%struct.mmc_host*, %struct.mmc_request*)* null, void (%struct.mmc_host*, %struct.mmc_request*)* @ushc_request, i32 (%struct.mmc_host*, %struct.mmc_request*)* null, void (%struct.mmc_host*, %struct.mmc_ios*)* @ushc_set_ios, i32 (%struct.mmc_host*)* null, i32 (%struct.mmc_host*)* @ushc_get_cd, void (%struct.mmc_host*, i32)* @ushc_enable_sdio_irq, void (%struct.mmc_host*)* null, void (%struct.mmc_host*, %struct.mmc_card*)* null, i32 (%struct.mmc_host*, %struct.mmc_ios*)* null, i32 (%struct.mmc_host*)* null, i32 (%struct.mmc_host*, i32)* null, i32 (%struct.mmc_host*, %struct.mmc_ios*)* null, i32 (%struct.mmc_host*)* null, void (%struct.mmc_host*)* null, void (%struct.mmc_host*)* null, void (%struct.mmc_host*, %struct.mmc_ios*)* null, i32 (%struct.mmc_card*, i32, i32, i32, i32*)* null, void (%struct.mmc_host*)* null, void (%struct.mmc_host*)* null, i32 (%struct.mmc_card*, i32, i32)* null }, align 8, !dbg !4169
@.str.1 = private unnamed_addr constant [40 x i8] c"controller version %d is not supported\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_ushc_driver_init240 to i8*), i8* bitcast (void ()* @ushc_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_ushc_driver_exit to i8*), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__UNIQUE_ID_description241, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__UNIQUE_ID_author242, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__UNIQUE_ID_file243, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__UNIQUE_ID_license244, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @ushc_driver_init() #0 section ".init.text" !dbg !4668 {
entry:
  %call = call i32 @usb_register_driver(%struct.usb_driver* @ushc_driver, %struct.module* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #11, !dbg !4671
  ret i32 %call, !dbg !4671
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @ushc_driver_exit() #0 section ".exit.text" !dbg !4672 {
entry:
  call void @usb_deregister(%struct.usb_driver* @ushc_driver) #11, !dbg !4673
  ret void, !dbg !4673
}

; Function Attrs: noredzone
declare dso_local void @usb_deregister(%struct.usb_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_register_driver(%struct.usb_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ushc_probe(%struct.usb_interface* %intf, %struct.usb_device_id* %id) #2 !dbg !4674 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4675, metadata !DIExpression()), !dbg !4681
  %retval = alloca i32, align 4
  %intf.addr = alloca %struct.usb_interface*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  %usb_dev = alloca %struct.usb_device*, align 8
  %mmc = alloca %struct.mmc_host*, align 8
  %ushc = alloca %struct.ushc_data*, align 8
  %ret = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4684, metadata !DIExpression()), !dbg !4685
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !4686, metadata !DIExpression()), !dbg !4687
  call void @llvm.dbg.declare(metadata %struct.usb_device** %usb_dev, metadata !4688, metadata !DIExpression()), !dbg !4689
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4690
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %0) #11, !dbg !4691
  store %struct.usb_device* %call, %struct.usb_device** %usb_dev, align 8, !dbg !4689
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %mmc, metadata !4692, metadata !DIExpression()), !dbg !4693
  call void @llvm.dbg.declare(metadata %struct.ushc_data** %ushc, metadata !4694, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4786, metadata !DIExpression()), !dbg !4787
  %1 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4788
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %1, i32 0, i32 1, !dbg !4790
  %2 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting, align 8, !dbg !4790
  %desc = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %2, i32 0, i32 0, !dbg !4791
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc, i32 0, i32 4, !dbg !4792
  %3 = load i8, i8* %bNumEndpoints, align 4, !dbg !4792
  %conv = zext i8 %3 to i32, !dbg !4788
  %cmp = icmp slt i32 %conv, 1, !dbg !4793
  br i1 %cmp, label %if.then, label %if.end, !dbg !4794

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4795
  br label %return, !dbg !4795

if.end:                                           ; preds = %entry
  %4 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4796
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %4, i32 0, i32 7, !dbg !4797
  %call2 = call %struct.mmc_host* @mmc_alloc_host(i32 104, %struct.device* %dev) #11, !dbg !4798
  store %struct.mmc_host* %call2, %struct.mmc_host** %mmc, align 8, !dbg !4799
  %5 = load %struct.mmc_host*, %struct.mmc_host** %mmc, align 8, !dbg !4800
  %cmp3 = icmp eq %struct.mmc_host* %5, null, !dbg !4802
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !4803

if.then5:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4804
  br label %return, !dbg !4804

if.end6:                                          ; preds = %if.end
  %6 = load %struct.mmc_host*, %struct.mmc_host** %mmc, align 8, !dbg !4805
  %call7 = call i8* @mmc_priv(%struct.mmc_host* %6) #11, !dbg !4806
  %7 = bitcast i8* %call7 to %struct.ushc_data*, !dbg !4806
  store %struct.ushc_data* %7, %struct.ushc_data** %ushc, align 8, !dbg !4807
  %8 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4808
  %9 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4809
  %10 = bitcast %struct.ushc_data* %9 to i8*, !dbg !4809
  call void @usb_set_intfdata(%struct.usb_interface* %8, i8* %10) #11, !dbg !4810
  %11 = load %struct.usb_device*, %struct.usb_device** %usb_dev, align 8, !dbg !4811
  %12 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4812
  %usb_dev8 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %12, i32 0, i32 0, !dbg !4813
  store %struct.usb_device* %11, %struct.usb_device** %usb_dev8, align 8, !dbg !4814
  %13 = load %struct.mmc_host*, %struct.mmc_host** %mmc, align 8, !dbg !4815
  %14 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4816
  %mmc9 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %14, i32 0, i32 1, !dbg !4817
  store %struct.mmc_host* %13, %struct.mmc_host** %mmc9, align 8, !dbg !4818
  br label %do.body, !dbg !4819

do.body:                                          ; preds = %if.end6
  %15 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4820
  %lock = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %15, i32 0, i32 9, !dbg !4820
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %16 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4821
  %17 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %16, i32 0, i32 0, !dbg !4822
  %rlock.i = bitcast %union.anon.3* %17 to %struct.raw_spinlock*, !dbg !4822
  %18 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4820
  %lock11 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %18, i32 0, i32 9, !dbg !4820
  %19 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !4820
  %rlock = bitcast %union.anon.3* %19 to %struct.raw_spinlock*, !dbg !4820
  %20 = bitcast %struct.spinlock* %lock11 to i8*, !dbg !4820
  %21 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !4820
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 1 %21, i64 0, i1 false), !dbg !4820
  br label %do.end, !dbg !4820

do.end:                                           ; preds = %do.body
  %22 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4823
  %call12 = call i32 @ushc_hw_reset(%struct.ushc_data* %22) #11, !dbg !4824
  store i32 %call12, i32* %ret, align 4, !dbg !4825
  %23 = load i32, i32* %ret, align 4, !dbg !4826
  %cmp13 = icmp slt i32 %23, 0, !dbg !4828
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !4829

if.then15:                                        ; preds = %do.end
  br label %err, !dbg !4830

if.end16:                                         ; preds = %do.end
  %24 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4831
  %call17 = call i32 @ushc_hw_get_caps(%struct.ushc_data* %24) #11, !dbg !4832
  store i32 %call17, i32* %ret, align 4, !dbg !4833
  %25 = load i32, i32* %ret, align 4, !dbg !4834
  %cmp18 = icmp slt i32 %25, 0, !dbg !4836
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !4837

if.then20:                                        ; preds = %if.end16
  br label %err, !dbg !4838

if.end21:                                         ; preds = %if.end16
  %26 = load %struct.mmc_host*, %struct.mmc_host** %mmc, align 8, !dbg !4839
  %ops = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %26, i32 0, i32 3, !dbg !4840
  store %struct.mmc_host_ops* @ushc_ops, %struct.mmc_host_ops** %ops, align 8, !dbg !4841
  %27 = load %struct.mmc_host*, %struct.mmc_host** %mmc, align 8, !dbg !4842
  %f_min = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %27, i32 0, i32 5, !dbg !4843
  store i32 400000, i32* %f_min, align 8, !dbg !4844
  %28 = load %struct.mmc_host*, %struct.mmc_host** %mmc, align 8, !dbg !4845
  %f_max = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %28, i32 0, i32 6, !dbg !4846
  store i32 50000000, i32* %f_max, align 4, !dbg !4847
  %29 = load %struct.mmc_host*, %struct.mmc_host** %mmc, align 8, !dbg !4848
  %ocr_avail = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %29, i32 0, i32 8, !dbg !4849
  store i32 3145728, i32* %ocr_avail, align 4, !dbg !4850
  %30 = load %struct.mmc_host*, %struct.mmc_host** %mmc, align 8, !dbg !4851
  %caps = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %30, i32 0, i32 17, !dbg !4852
  store i32 9, i32* %caps, align 4, !dbg !4853
  %31 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4854
  %caps22 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %31, i32 0, i32 11, !dbg !4855
  %32 = load i32, i32* %caps22, align 8, !dbg !4855
  %and = and i32 %32, 65536, !dbg !4856
  %tobool = icmp ne i32 %and, 0, !dbg !4857
  %33 = zext i1 %tobool to i64, !dbg !4857
  %cond = select i1 %tobool, i32 4, i32 0, !dbg !4857
  %34 = load %struct.mmc_host*, %struct.mmc_host** %mmc, align 8, !dbg !4858
  %caps23 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %34, i32 0, i32 17, !dbg !4859
  %35 = load i32, i32* %caps23, align 4, !dbg !4860
  %or = or i32 %35, %cond, !dbg !4860
  store i32 %or, i32* %caps23, align 4, !dbg !4860
  %36 = load %struct.mmc_host*, %struct.mmc_host** %mmc, align 8, !dbg !4861
  %max_seg_size = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %36, i32 0, i32 21, !dbg !4862
  store i32 261632, i32* %max_seg_size, align 4, !dbg !4863
  %37 = load %struct.mmc_host*, %struct.mmc_host** %mmc, align 8, !dbg !4864
  %max_segs = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %37, i32 0, i32 22, !dbg !4865
  store i16 1, i16* %max_segs, align 8, !dbg !4866
  %38 = load %struct.mmc_host*, %struct.mmc_host** %mmc, align 8, !dbg !4867
  %max_req_size = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %38, i32 0, i32 24, !dbg !4868
  store i32 261632, i32* %max_req_size, align 4, !dbg !4869
  %39 = load %struct.mmc_host*, %struct.mmc_host** %mmc, align 8, !dbg !4870
  %max_blk_size = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %39, i32 0, i32 25, !dbg !4871
  store i32 512, i32* %max_blk_size, align 64, !dbg !4872
  %40 = load %struct.mmc_host*, %struct.mmc_host** %mmc, align 8, !dbg !4873
  %max_blk_count = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %40, i32 0, i32 26, !dbg !4874
  store i32 511, i32* %max_blk_count, align 4, !dbg !4875
  %call24 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #11, !dbg !4876
  %41 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4877
  %int_urb = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %41, i32 0, i32 2, !dbg !4878
  store %struct.urb* %call24, %struct.urb** %int_urb, align 8, !dbg !4879
  %42 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4880
  %int_urb25 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %42, i32 0, i32 2, !dbg !4882
  %43 = load %struct.urb*, %struct.urb** %int_urb25, align 8, !dbg !4882
  %cmp26 = icmp eq %struct.urb* %43, null, !dbg !4883
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !4884

if.then28:                                        ; preds = %if.end21
  store i32 -12, i32* %ret, align 4, !dbg !4885
  br label %err, !dbg !4887

if.end29:                                         ; preds = %if.end21
  %call30 = call i8* @kzalloc(i64 4, i32 3264) #11, !dbg !4888
  %44 = bitcast i8* %call30 to %struct.ushc_int_data*, !dbg !4888
  %45 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4889
  %int_data = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %45, i32 0, i32 3, !dbg !4890
  store %struct.ushc_int_data* %44, %struct.ushc_int_data** %int_data, align 8, !dbg !4891
  %46 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4892
  %int_data31 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %46, i32 0, i32 3, !dbg !4894
  %47 = load %struct.ushc_int_data*, %struct.ushc_int_data** %int_data31, align 8, !dbg !4894
  %cmp32 = icmp eq %struct.ushc_int_data* %47, null, !dbg !4895
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !4896

if.then34:                                        ; preds = %if.end29
  store i32 -12, i32* %ret, align 4, !dbg !4897
  br label %err, !dbg !4899

if.end35:                                         ; preds = %if.end29
  %48 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4900
  %int_urb36 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %48, i32 0, i32 2, !dbg !4901
  %49 = load %struct.urb*, %struct.urb** %int_urb36, align 8, !dbg !4901
  %50 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4902
  %usb_dev37 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %50, i32 0, i32 0, !dbg !4903
  %51 = load %struct.usb_device*, %struct.usb_device** %usb_dev37, align 8, !dbg !4903
  %52 = load %struct.usb_device*, %struct.usb_device** %usb_dev, align 8, !dbg !4904
  %53 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4904
  %cur_altsetting38 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %53, i32 0, i32 1, !dbg !4904
  %54 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting38, align 8, !dbg !4904
  %endpoint = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %54, i32 0, i32 3, !dbg !4904
  %55 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint, align 8, !dbg !4904
  %arrayidx = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %55, i64 0, !dbg !4904
  %desc39 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx, i32 0, i32 0, !dbg !4904
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %desc39, i32 0, i32 2, !dbg !4904
  %56 = load i8, i8* %bEndpointAddress, align 2, !dbg !4904
  %conv40 = zext i8 %56 to i32, !dbg !4904
  %call41 = call i32 @__create_pipe(%struct.usb_device* %52, i32 %conv40) #11, !dbg !4904
  %or42 = or i32 1073741824, %call41, !dbg !4904
  %or43 = or i32 %or42, 128, !dbg !4904
  %57 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4905
  %int_data44 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %57, i32 0, i32 3, !dbg !4906
  %58 = load %struct.ushc_int_data*, %struct.ushc_int_data** %int_data44, align 8, !dbg !4906
  %59 = bitcast %struct.ushc_int_data* %58 to i8*, !dbg !4905
  %60 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4907
  %61 = bitcast %struct.ushc_data* %60 to i8*, !dbg !4907
  %62 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4908
  %cur_altsetting45 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %62, i32 0, i32 1, !dbg !4909
  %63 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting45, align 8, !dbg !4909
  %endpoint46 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %63, i32 0, i32 3, !dbg !4910
  %64 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint46, align 8, !dbg !4910
  %arrayidx47 = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %64, i64 0, !dbg !4908
  %desc48 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx47, i32 0, i32 0, !dbg !4911
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %desc48, i32 0, i32 5, !dbg !4912
  %65 = load i8, i8* %bInterval, align 2, !dbg !4912
  %conv49 = zext i8 %65 to i32, !dbg !4908
  call void @usb_fill_int_urb(%struct.urb* %49, %struct.usb_device* %51, i32 %or43, i8* %59, i32 4, void (%struct.urb*)* @int_callback, i8* %61, i32 %conv49) #11, !dbg !4913
  %call50 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #11, !dbg !4914
  %66 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4915
  %cbw_urb = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %66, i32 0, i32 4, !dbg !4916
  store %struct.urb* %call50, %struct.urb** %cbw_urb, align 8, !dbg !4917
  %67 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4918
  %cbw_urb51 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %67, i32 0, i32 4, !dbg !4920
  %68 = load %struct.urb*, %struct.urb** %cbw_urb51, align 8, !dbg !4920
  %cmp52 = icmp eq %struct.urb* %68, null, !dbg !4921
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !4922

if.then54:                                        ; preds = %if.end35
  store i32 -12, i32* %ret, align 4, !dbg !4923
  br label %err, !dbg !4925

if.end55:                                         ; preds = %if.end35
  %call56 = call i8* @kzalloc(i64 8, i32 3264) #11, !dbg !4926
  %69 = bitcast i8* %call56 to %struct.ushc_cbw*, !dbg !4926
  %70 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4927
  %cbw = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %70, i32 0, i32 5, !dbg !4928
  store %struct.ushc_cbw* %69, %struct.ushc_cbw** %cbw, align 8, !dbg !4929
  %71 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4930
  %cbw57 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %71, i32 0, i32 5, !dbg !4932
  %72 = load %struct.ushc_cbw*, %struct.ushc_cbw** %cbw57, align 8, !dbg !4932
  %cmp58 = icmp eq %struct.ushc_cbw* %72, null, !dbg !4933
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !4934

if.then60:                                        ; preds = %if.end55
  store i32 -12, i32* %ret, align 4, !dbg !4935
  br label %err, !dbg !4937

if.end61:                                         ; preds = %if.end55
  %73 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4938
  %cbw62 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %73, i32 0, i32 5, !dbg !4939
  %74 = load %struct.ushc_cbw*, %struct.ushc_cbw** %cbw62, align 8, !dbg !4939
  %signature = getelementptr inbounds %struct.ushc_cbw, %struct.ushc_cbw* %74, i32 0, i32 0, !dbg !4940
  store i8 67, i8* %signature, align 1, !dbg !4941
  %75 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4942
  %cbw_urb63 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %75, i32 0, i32 4, !dbg !4943
  %76 = load %struct.urb*, %struct.urb** %cbw_urb63, align 8, !dbg !4943
  %77 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4944
  %usb_dev64 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %77, i32 0, i32 0, !dbg !4945
  %78 = load %struct.usb_device*, %struct.usb_device** %usb_dev64, align 8, !dbg !4945
  %79 = load %struct.usb_device*, %struct.usb_device** %usb_dev, align 8, !dbg !4946
  %call65 = call i32 @__create_pipe(%struct.usb_device* %79, i32 2) #11, !dbg !4946
  %or66 = or i32 -1073741824, %call65, !dbg !4946
  %80 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4947
  %cbw67 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %80, i32 0, i32 5, !dbg !4948
  %81 = load %struct.ushc_cbw*, %struct.ushc_cbw** %cbw67, align 8, !dbg !4948
  %82 = bitcast %struct.ushc_cbw* %81 to i8*, !dbg !4947
  %83 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4949
  %84 = bitcast %struct.ushc_data* %83 to i8*, !dbg !4949
  call void @usb_fill_bulk_urb(%struct.urb* %76, %struct.usb_device* %78, i32 %or66, i8* %82, i32 8, void (%struct.urb*)* @cbw_callback, i8* %84) #11, !dbg !4950
  %call68 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #11, !dbg !4951
  %85 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4952
  %data_urb = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %85, i32 0, i32 6, !dbg !4953
  store %struct.urb* %call68, %struct.urb** %data_urb, align 8, !dbg !4954
  %86 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4955
  %data_urb69 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %86, i32 0, i32 6, !dbg !4957
  %87 = load %struct.urb*, %struct.urb** %data_urb69, align 8, !dbg !4957
  %cmp70 = icmp eq %struct.urb* %87, null, !dbg !4958
  br i1 %cmp70, label %if.then72, label %if.end73, !dbg !4959

if.then72:                                        ; preds = %if.end61
  store i32 -12, i32* %ret, align 4, !dbg !4960
  br label %err, !dbg !4962

if.end73:                                         ; preds = %if.end61
  %call74 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #11, !dbg !4963
  %88 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4964
  %csw_urb = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %88, i32 0, i32 7, !dbg !4965
  store %struct.urb* %call74, %struct.urb** %csw_urb, align 8, !dbg !4966
  %89 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4967
  %csw_urb75 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %89, i32 0, i32 7, !dbg !4969
  %90 = load %struct.urb*, %struct.urb** %csw_urb75, align 8, !dbg !4969
  %cmp76 = icmp eq %struct.urb* %90, null, !dbg !4970
  br i1 %cmp76, label %if.then78, label %if.end79, !dbg !4971

if.then78:                                        ; preds = %if.end73
  store i32 -12, i32* %ret, align 4, !dbg !4972
  br label %err, !dbg !4974

if.end79:                                         ; preds = %if.end73
  %call80 = call i8* @kzalloc(i64 6, i32 3264) #11, !dbg !4975
  %91 = bitcast i8* %call80 to %struct.ushc_csw*, !dbg !4975
  %92 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4976
  %csw = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %92, i32 0, i32 8, !dbg !4977
  store %struct.ushc_csw* %91, %struct.ushc_csw** %csw, align 8, !dbg !4978
  %93 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4979
  %csw81 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %93, i32 0, i32 8, !dbg !4981
  %94 = load %struct.ushc_csw*, %struct.ushc_csw** %csw81, align 8, !dbg !4981
  %cmp82 = icmp eq %struct.ushc_csw* %94, null, !dbg !4982
  br i1 %cmp82, label %if.then84, label %if.end85, !dbg !4983

if.then84:                                        ; preds = %if.end79
  store i32 -12, i32* %ret, align 4, !dbg !4984
  br label %err, !dbg !4986

if.end85:                                         ; preds = %if.end79
  %95 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4987
  %csw_urb86 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %95, i32 0, i32 7, !dbg !4988
  %96 = load %struct.urb*, %struct.urb** %csw_urb86, align 8, !dbg !4988
  %97 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4989
  %usb_dev87 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %97, i32 0, i32 0, !dbg !4990
  %98 = load %struct.usb_device*, %struct.usb_device** %usb_dev87, align 8, !dbg !4990
  %99 = load %struct.usb_device*, %struct.usb_device** %usb_dev, align 8, !dbg !4991
  %call88 = call i32 @__create_pipe(%struct.usb_device* %99, i32 6) #11, !dbg !4991
  %or89 = or i32 -1073741824, %call88, !dbg !4991
  %or90 = or i32 %or89, 128, !dbg !4991
  %100 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4992
  %csw91 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %100, i32 0, i32 8, !dbg !4993
  %101 = load %struct.ushc_csw*, %struct.ushc_csw** %csw91, align 8, !dbg !4993
  %102 = bitcast %struct.ushc_csw* %101 to i8*, !dbg !4992
  %103 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4994
  %104 = bitcast %struct.ushc_data* %103 to i8*, !dbg !4994
  call void @usb_fill_bulk_urb(%struct.urb* %96, %struct.usb_device* %98, i32 %or90, i8* %102, i32 6, void (%struct.urb*)* @csw_callback, i8* %104) #11, !dbg !4995
  %105 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !4996
  %mmc92 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %105, i32 0, i32 1, !dbg !4997
  %106 = load %struct.mmc_host*, %struct.mmc_host** %mmc92, align 8, !dbg !4997
  %call93 = call i32 @mmc_add_host(%struct.mmc_host* %106) #11, !dbg !4998
  store i32 %call93, i32* %ret, align 4, !dbg !4999
  %107 = load i32, i32* %ret, align 4, !dbg !5000
  %tobool94 = icmp ne i32 %107, 0, !dbg !5000
  br i1 %tobool94, label %if.then95, label %if.end96, !dbg !5002

if.then95:                                        ; preds = %if.end85
  br label %err, !dbg !5003

if.end96:                                         ; preds = %if.end85
  %108 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5004
  %int_urb97 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %108, i32 0, i32 2, !dbg !5005
  %109 = load %struct.urb*, %struct.urb** %int_urb97, align 8, !dbg !5005
  %call98 = call i32 @usb_submit_urb(%struct.urb* %109, i32 3264) #11, !dbg !5006
  store i32 %call98, i32* %ret, align 4, !dbg !5007
  %110 = load i32, i32* %ret, align 4, !dbg !5008
  %cmp99 = icmp slt i32 %110, 0, !dbg !5010
  br i1 %cmp99, label %if.then101, label %if.end103, !dbg !5011

if.then101:                                       ; preds = %if.end96
  %111 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5012
  %mmc102 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %111, i32 0, i32 1, !dbg !5014
  %112 = load %struct.mmc_host*, %struct.mmc_host** %mmc102, align 8, !dbg !5014
  call void @mmc_remove_host(%struct.mmc_host* %112) #11, !dbg !5015
  br label %err, !dbg !5016

if.end103:                                        ; preds = %if.end96
  store i32 0, i32* %retval, align 4, !dbg !5017
  br label %return, !dbg !5017

err:                                              ; preds = %if.then101, %if.then95, %if.then84, %if.then78, %if.then72, %if.then60, %if.then54, %if.then34, %if.then28, %if.then20, %if.then15
  call void @llvm.dbg.label(metadata !5018), !dbg !5019
  %113 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5020
  call void @ushc_clean_up(%struct.ushc_data* %113) #11, !dbg !5021
  %114 = load i32, i32* %ret, align 4, !dbg !5022
  store i32 %114, i32* %retval, align 4, !dbg !5023
  br label %return, !dbg !5023

return:                                           ; preds = %err, %if.end103, %if.then5, %if.then
  %115 = load i32, i32* %retval, align 4, !dbg !5024
  ret i32 %115, !dbg !5024
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ushc_disconnect(%struct.usb_interface* %intf) #2 !dbg !5025 {
entry:
  %lock.addr.i2 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i2, metadata !5026, metadata !DIExpression()), !dbg !5030
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5032, metadata !DIExpression()), !dbg !5034
  %intf.addr = alloca %struct.usb_interface*, align 8
  %ushc = alloca %struct.ushc_data*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5036, metadata !DIExpression()), !dbg !5037
  call void @llvm.dbg.declare(metadata %struct.ushc_data** %ushc, metadata !5038, metadata !DIExpression()), !dbg !5039
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5040
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #11, !dbg !5041
  %1 = bitcast i8* %call to %struct.ushc_data*, !dbg !5041
  store %struct.ushc_data* %1, %struct.ushc_data** %ushc, align 8, !dbg !5039
  %2 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5042
  %lock = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %2, i32 0, i32 9, !dbg !5043
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #12, !dbg !5044
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5047, !srcloc !5049
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5050
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !5050
  %rlock.i = bitcast %union.anon.3* %4 to %struct.raw_spinlock*, !dbg !5050
  %5 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5052
  %flags = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %5, i32 0, i32 13, !dbg !5053
  call void @set_bit(i64 0, i64* %flags) #11, !dbg !5054
  %6 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5055
  %lock1 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %6, i32 0, i32 9, !dbg !5056
  store %struct.spinlock* %lock1, %struct.spinlock** %lock.addr.i2, align 8
  call void @arch_local_irq_enable() #12, !dbg !5057
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5060, !srcloc !5062
  %7 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i2, align 8, !dbg !5063
  %8 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %7, i32 0, i32 0, !dbg !5063
  %rlock.i3 = bitcast %union.anon.3* %8 to %struct.raw_spinlock*, !dbg !5063
  %9 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5065
  %int_urb = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %9, i32 0, i32 2, !dbg !5066
  %10 = load %struct.urb*, %struct.urb** %int_urb, align 8, !dbg !5066
  call void @usb_kill_urb(%struct.urb* %10) #11, !dbg !5067
  %11 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5068
  %cbw_urb = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %11, i32 0, i32 4, !dbg !5069
  %12 = load %struct.urb*, %struct.urb** %cbw_urb, align 8, !dbg !5069
  call void @usb_kill_urb(%struct.urb* %12) #11, !dbg !5070
  %13 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5071
  %data_urb = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %13, i32 0, i32 6, !dbg !5072
  %14 = load %struct.urb*, %struct.urb** %data_urb, align 8, !dbg !5072
  call void @usb_kill_urb(%struct.urb* %14) #11, !dbg !5073
  %15 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5074
  %csw_urb = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %15, i32 0, i32 7, !dbg !5075
  %16 = load %struct.urb*, %struct.urb** %csw_urb, align 8, !dbg !5075
  call void @usb_kill_urb(%struct.urb* %16) #11, !dbg !5076
  %17 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5077
  %mmc = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %17, i32 0, i32 1, !dbg !5078
  %18 = load %struct.mmc_host*, %struct.mmc_host** %mmc, align 8, !dbg !5078
  call void @mmc_remove_host(%struct.mmc_host* %18) #11, !dbg !5079
  %19 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5080
  call void @ushc_clean_up(%struct.ushc_data* %19) #11, !dbg !5081
  ret void, !dbg !5082
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %intf) #2 !dbg !5083 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5086, metadata !DIExpression()), !dbg !5087
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5088, metadata !DIExpression()), !dbg !5090
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5090
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5090
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !5090
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5090
  %2 = bitcast %struct.device* %1 to i8*, !dbg !5090
  store i8* %2, i8** %__mptr, align 8, !dbg !5090
  br label %do.body, !dbg !5090

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5091

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5090
  %add.ptr = getelementptr i8, i8* %3, i64 -160, !dbg !5090
  %4 = bitcast i8* %add.ptr to %struct.usb_device*, !dbg !5090
  store %struct.usb_device* %4, %struct.usb_device** %tmp, align 8, !dbg !5091
  %5 = load %struct.usb_device*, %struct.usb_device** %tmp, align 8, !dbg !5090
  ret %struct.usb_device* %5, !dbg !5093
}

; Function Attrs: noredzone
declare dso_local %struct.mmc_host* @mmc_alloc_host(i32, %struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @mmc_priv(%struct.mmc_host* %host) #2 !dbg !5094 {
entry:
  %host.addr = alloca %struct.mmc_host*, align 8
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !5097, metadata !DIExpression()), !dbg !5098
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !5099
  %private = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %0, i32 0, i32 69, !dbg !5100
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %private, i64 0, i64 0, !dbg !5099
  %1 = bitcast i64* %arraydecay to i8*, !dbg !5101
  ret i8* %1, !dbg !5102
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_set_intfdata(%struct.usb_interface* %intf, i8* %data) #2 !dbg !5103 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5106, metadata !DIExpression()), !dbg !5107
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5108, metadata !DIExpression()), !dbg !5109
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5110
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5111
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5112
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #11, !dbg !5113
  ret void, !dbg !5114
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ushc_hw_reset(%struct.ushc_data* %ushc) #2 !dbg !5115 {
entry:
  %ushc.addr = alloca %struct.ushc_data*, align 8
  store %struct.ushc_data* %ushc, %struct.ushc_data** %ushc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ushc_data** %ushc.addr, metadata !5118, metadata !DIExpression()), !dbg !5119
  %0 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !5120
  %usb_dev = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %0, i32 0, i32 0, !dbg !5121
  %1 = load %struct.usb_device*, %struct.usb_device** %usb_dev, align 8, !dbg !5121
  %2 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !5122
  %usb_dev1 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %2, i32 0, i32 0, !dbg !5122
  %3 = load %struct.usb_device*, %struct.usb_device** %usb_dev1, align 8, !dbg !5122
  %call = call i32 @__create_pipe(%struct.usb_device* %3, i32 0) #11, !dbg !5122
  %or = or i32 -2147483648, %call, !dbg !5122
  %call2 = call i32 @usb_control_msg(%struct.usb_device* %1, i32 %or, i8 zeroext 6, i8 zeroext 64, i16 zeroext 0, i16 zeroext 0, i8* null, i16 zeroext 0, i32 100) #11, !dbg !5123
  ret i32 %call2, !dbg !5124
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ushc_hw_get_caps(%struct.ushc_data* %ushc) #2 !dbg !5125 {
entry:
  %retval = alloca i32, align 4
  %ushc.addr = alloca %struct.ushc_data*, align 8
  %ret = alloca i32, align 4
  %version = alloca i32, align 4
  store %struct.ushc_data* %ushc, %struct.ushc_data** %ushc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ushc_data** %ushc.addr, metadata !5126, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5128, metadata !DIExpression()), !dbg !5129
  call void @llvm.dbg.declare(metadata i32* %version, metadata !5130, metadata !DIExpression()), !dbg !5131
  %0 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !5132
  %usb_dev = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %0, i32 0, i32 0, !dbg !5133
  %1 = load %struct.usb_device*, %struct.usb_device** %usb_dev, align 8, !dbg !5133
  %2 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !5134
  %usb_dev1 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %2, i32 0, i32 0, !dbg !5134
  %3 = load %struct.usb_device*, %struct.usb_device** %usb_dev1, align 8, !dbg !5134
  %call = call i32 @__create_pipe(%struct.usb_device* %3, i32 0) #11, !dbg !5134
  %or = or i32 -2147483648, %call, !dbg !5134
  %or2 = or i32 %or, 128, !dbg !5134
  %4 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !5135
  %caps = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %4, i32 0, i32 11, !dbg !5136
  %5 = bitcast i32* %caps to i8*, !dbg !5137
  %call3 = call i32 @usb_control_msg(%struct.usb_device* %1, i32 %or2, i8 zeroext 0, i8 zeroext -64, i16 zeroext 0, i16 zeroext 0, i8* %5, i16 zeroext 4, i32 100) #11, !dbg !5138
  store i32 %call3, i32* %ret, align 4, !dbg !5139
  %6 = load i32, i32* %ret, align 4, !dbg !5140
  %cmp = icmp slt i32 %6, 0, !dbg !5142
  br i1 %cmp, label %if.then, label %if.end, !dbg !5143

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %ret, align 4, !dbg !5144
  store i32 %7, i32* %retval, align 4, !dbg !5145
  br label %return, !dbg !5145

if.end:                                           ; preds = %entry
  %8 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !5146
  %caps4 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %8, i32 0, i32 11, !dbg !5146
  %9 = load i32, i32* %caps4, align 8, !dbg !5146
  %10 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !5147
  %caps5 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %10, i32 0, i32 11, !dbg !5148
  store i32 %9, i32* %caps5, align 8, !dbg !5149
  %11 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !5150
  %caps6 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %11, i32 0, i32 11, !dbg !5151
  %12 = load i32, i32* %caps6, align 8, !dbg !5151
  %and = and i32 %12, 255, !dbg !5152
  store i32 %and, i32* %version, align 4, !dbg !5153
  %13 = load i32, i32* %version, align 4, !dbg !5154
  %cmp7 = icmp ne i32 %13, 2, !dbg !5156
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !5157

if.then8:                                         ; preds = %if.end
  %14 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !5158
  %usb_dev9 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %14, i32 0, i32 0, !dbg !5158
  %15 = load %struct.usb_device*, %struct.usb_device** %usb_dev9, align 8, !dbg !5158
  %dev = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 14, !dbg !5158
  %16 = load i32, i32* %version, align 4, !dbg !5158
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %16) #13, !dbg !5158
  store i32 -22, i32* %retval, align 4, !dbg !5160
  br label %return, !dbg !5160

if.end10:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5161
  br label %return, !dbg !5161

return:                                           ; preds = %if.end10, %if.then8, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !5162
  ret i32 %17, !dbg !5162
}

; Function Attrs: noredzone
declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !5163 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5166, metadata !DIExpression()), !dbg !5170
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5176, metadata !DIExpression()), !dbg !5177
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5178, metadata !DIExpression()), !dbg !5179
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5180, metadata !DIExpression()), !dbg !5181
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5182, metadata !DIExpression()), !dbg !5186
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5188, metadata !DIExpression()), !dbg !5192
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5194, metadata !DIExpression()), !dbg !5198
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5203, metadata !DIExpression()), !dbg !5204
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5205, metadata !DIExpression()), !dbg !5206
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5207, metadata !DIExpression()), !dbg !5208
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5209, metadata !DIExpression()), !dbg !5210
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5211, metadata !DIExpression()), !dbg !5212
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5213, metadata !DIExpression()), !dbg !5214
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5215, metadata !DIExpression()), !dbg !5216
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5217, metadata !DIExpression()), !dbg !5218
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5219, metadata !DIExpression()), !dbg !5220
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5221, metadata !DIExpression()), !dbg !5222
  %0 = load i64, i64* %size.addr, align 8, !dbg !5223
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5224
  %or = or i32 %1, 256, !dbg !5225
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5226
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !5227
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5228

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5229
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5230
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5231

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5232
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5233
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5234
  %call.i.i = call i32 @get_order(i64 %7) #14, !dbg !5235
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5212
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5236
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5237
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5238
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5239
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5240
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5241
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !5242
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5242
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5242
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5242
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !5242
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5243
  br label %kmalloc.exit, !dbg !5243

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5244
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5245
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5245
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5247

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5248
  br label %kmalloc_index.exit.i, !dbg !5248

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5249
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5251
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5252

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5253
  br label %kmalloc_index.exit.i, !dbg !5253

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5254
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5256
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5257

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5258
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5259
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5260

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5261
  br label %kmalloc_index.exit.i, !dbg !5261

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5262
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5264
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5265

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5266
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5267
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5268

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5269
  br label %kmalloc_index.exit.i, !dbg !5269

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5270
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5272
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5273

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5274
  br label %kmalloc_index.exit.i, !dbg !5274

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5275
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5277
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5278

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5279
  br label %kmalloc_index.exit.i, !dbg !5279

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5280
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5282
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5283

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5284
  br label %kmalloc_index.exit.i, !dbg !5284

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5285
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5287
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5288

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5289
  br label %kmalloc_index.exit.i, !dbg !5289

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5290
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5292
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5293

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5294
  br label %kmalloc_index.exit.i, !dbg !5294

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5295
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5297
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5298

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5299
  br label %kmalloc_index.exit.i, !dbg !5299

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5300
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5302
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5303

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5304
  br label %kmalloc_index.exit.i, !dbg !5304

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5305
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5307
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5308

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5309
  br label %kmalloc_index.exit.i, !dbg !5309

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5310
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5312
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5313

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5314
  br label %kmalloc_index.exit.i, !dbg !5314

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5315
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5317
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5318

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5319
  br label %kmalloc_index.exit.i, !dbg !5319

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5320
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5322
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5323

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5324
  br label %kmalloc_index.exit.i, !dbg !5324

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5325
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5327
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5328

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5329
  br label %kmalloc_index.exit.i, !dbg !5329

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5330
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5332
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5333

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5334
  br label %kmalloc_index.exit.i, !dbg !5334

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5335
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5337
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5338

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5339
  br label %kmalloc_index.exit.i, !dbg !5339

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5340
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5342
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5343

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5344
  br label %kmalloc_index.exit.i, !dbg !5344

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5345
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5347
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5348

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5349
  br label %kmalloc_index.exit.i, !dbg !5349

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5350
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5352
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5353

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5354
  br label %kmalloc_index.exit.i, !dbg !5354

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5355
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5357
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5358

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5359
  br label %kmalloc_index.exit.i, !dbg !5359

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5360
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5362
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5363

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5364
  br label %kmalloc_index.exit.i, !dbg !5364

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5365
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5367
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5368

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5369
  br label %kmalloc_index.exit.i, !dbg !5369

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5370
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5372
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5373

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5374
  br label %kmalloc_index.exit.i, !dbg !5374

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5375
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5377
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5378

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5379
  br label %kmalloc_index.exit.i, !dbg !5379

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5380
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5382
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5383

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5384
  br label %kmalloc_index.exit.i, !dbg !5384

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5385
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5387
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5388

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5389
  br label %kmalloc_index.exit.i, !dbg !5389

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !5390, !srcloc !5393
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 210) #7, !dbg !5394, !srcloc !5397
  unreachable, !dbg !5398

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5399
  store i32 %45, i32* %index.i, align 4, !dbg !5400
  %46 = load i32, i32* %index.i, align 4, !dbg !5401
  %tobool.i = icmp ne i32 %46, 0, !dbg !5401
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5403

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5404
  br label %kmalloc.exit, !dbg !5404

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5405
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5406
  %and.i.i = and i32 %48, 17, !dbg !5406
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5406
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5406
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5406
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5406
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5408

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5409
  br label %kmalloc_type.exit.i, !dbg !5409

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5410
  %and2.i.i = and i32 %49, 1, !dbg !5411
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5410
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5410
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5410
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5412
  br label %kmalloc_type.exit.i, !dbg !5412

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5413
  %idxprom.i = zext i32 %51 to i64, !dbg !5414
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5414
  %52 = load i32, i32* %index.i, align 4, !dbg !5415
  %idxprom6.i = zext i32 %52 to i64, !dbg !5414
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5414
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5414
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5416
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5417
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5418
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5419
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !5420
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5420
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5420
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5420
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !5420
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5181
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5421
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5422
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5423
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5424
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !5425
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5426
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5427
  store i8* %62, i8** %retval.i, align 8, !dbg !5428
  br label %kmalloc.exit, !dbg !5428

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5429
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5430
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !5431
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5431
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5431
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5431
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !5431
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5432
  br label %kmalloc.exit, !dbg !5432

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5433
  ret i8* %65, !dbg !5434
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_fill_int_urb(%struct.urb* %urb, %struct.usb_device* %dev, i32 %pipe, i8* %transfer_buffer, i32 %buffer_length, void (%struct.urb*)* %complete_fn, i8* %context, i32 %interval) #2 !dbg !5435 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %dev.addr = alloca %struct.usb_device*, align 8
  %pipe.addr = alloca i32, align 4
  %transfer_buffer.addr = alloca i8*, align 8
  %buffer_length.addr = alloca i32, align 4
  %complete_fn.addr = alloca void (%struct.urb*)*, align 8
  %context.addr = alloca i8*, align 8
  %interval.addr = alloca i32, align 4
  %__UNIQUE_ID___x205 = alloca i32, align 4
  %__UNIQUE_ID___x203 = alloca i32, align 4
  %__UNIQUE_ID___y204 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___y206 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5438, metadata !DIExpression()), !dbg !5439
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5440, metadata !DIExpression()), !dbg !5441
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !5442, metadata !DIExpression()), !dbg !5443
  store i8* %transfer_buffer, i8** %transfer_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %transfer_buffer.addr, metadata !5444, metadata !DIExpression()), !dbg !5445
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_length.addr, metadata !5446, metadata !DIExpression()), !dbg !5447
  store void (%struct.urb*)* %complete_fn, void (%struct.urb*)** %complete_fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.urb*)** %complete_fn.addr, metadata !5448, metadata !DIExpression()), !dbg !5449
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !5450, metadata !DIExpression()), !dbg !5451
  store i32 %interval, i32* %interval.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %interval.addr, metadata !5452, metadata !DIExpression()), !dbg !5453
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5454
  %1 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5455
  %dev1 = getelementptr inbounds %struct.urb, %struct.urb* %1, i32 0, i32 8, !dbg !5456
  store %struct.usb_device* %0, %struct.usb_device** %dev1, align 8, !dbg !5457
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !5458
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5459
  %pipe2 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 10, !dbg !5460
  store i32 %2, i32* %pipe2, align 8, !dbg !5461
  %4 = load i8*, i8** %transfer_buffer.addr, align 8, !dbg !5462
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5463
  %transfer_buffer3 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 14, !dbg !5464
  store i8* %4, i8** %transfer_buffer3, align 8, !dbg !5465
  %6 = load i32, i32* %buffer_length.addr, align 4, !dbg !5466
  %7 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5467
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 19, !dbg !5468
  store i32 %6, i32* %transfer_buffer_length, align 8, !dbg !5469
  %8 = load void (%struct.urb*)*, void (%struct.urb*)** %complete_fn.addr, align 8, !dbg !5470
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5471
  %complete = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 28, !dbg !5472
  store void (%struct.urb*)* %8, void (%struct.urb*)** %complete, align 8, !dbg !5473
  %10 = load i8*, i8** %context.addr, align 8, !dbg !5474
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5475
  %context4 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 27, !dbg !5476
  store i8* %10, i8** %context4, align 8, !dbg !5477
  %12 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5478
  %speed = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 4, !dbg !5480
  %13 = load i32, i32* %speed, align 4, !dbg !5480
  %cmp = icmp eq i32 %13, 3, !dbg !5481
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5482

lor.lhs.false:                                    ; preds = %entry
  %14 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5483
  %speed5 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 4, !dbg !5484
  %15 = load i32, i32* %speed5, align 4, !dbg !5484
  %cmp6 = icmp uge i32 %15, 5, !dbg !5485
  br i1 %cmp6, label %if.then, label %if.else, !dbg !5486

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x205, metadata !5487, metadata !DIExpression()), !dbg !5490
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x203, metadata !5491, metadata !DIExpression()), !dbg !5493
  %16 = load i32, i32* %interval.addr, align 4, !dbg !5493
  store i32 %16, i32* %__UNIQUE_ID___x203, align 4, !dbg !5493
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y204, metadata !5494, metadata !DIExpression()), !dbg !5493
  store i32 1, i32* %__UNIQUE_ID___y204, align 4, !dbg !5493
  %17 = load i32, i32* %__UNIQUE_ID___x203, align 4, !dbg !5493
  %18 = load i32, i32* %__UNIQUE_ID___y204, align 4, !dbg !5493
  %cmp7 = icmp sgt i32 %17, %18, !dbg !5493
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !5493

cond.true:                                        ; preds = %if.then
  %19 = load i32, i32* %__UNIQUE_ID___x203, align 4, !dbg !5493
  br label %cond.end, !dbg !5493

cond.false:                                       ; preds = %if.then
  %20 = load i32, i32* %__UNIQUE_ID___y204, align 4, !dbg !5493
  br label %cond.end, !dbg !5493

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ], !dbg !5493
  store i32 %cond, i32* %tmp, align 4, !dbg !5493
  %21 = load i32, i32* %tmp, align 4, !dbg !5493
  store i32 %21, i32* %__UNIQUE_ID___x205, align 4, !dbg !5490
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y206, metadata !5495, metadata !DIExpression()), !dbg !5490
  store i32 16, i32* %__UNIQUE_ID___y206, align 4, !dbg !5490
  %22 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !5490
  %23 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !5490
  %cmp9 = icmp slt i32 %22, %23, !dbg !5490
  br i1 %cmp9, label %cond.true10, label %cond.false11, !dbg !5490

cond.true10:                                      ; preds = %cond.end
  %24 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !5490
  br label %cond.end12, !dbg !5490

cond.false11:                                     ; preds = %cond.end
  %25 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !5490
  br label %cond.end12, !dbg !5490

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ %24, %cond.true10 ], [ %25, %cond.false11 ], !dbg !5490
  store i32 %cond13, i32* %tmp8, align 4, !dbg !5490
  %26 = load i32, i32* %tmp8, align 4, !dbg !5490
  store i32 %26, i32* %interval.addr, align 4, !dbg !5496
  %27 = load i32, i32* %interval.addr, align 4, !dbg !5497
  %sub = sub i32 %27, 1, !dbg !5498
  %shl = shl i32 1, %sub, !dbg !5499
  %28 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5500
  %interval14 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 25, !dbg !5501
  store i32 %shl, i32* %interval14, align 8, !dbg !5502
  br label %if.end, !dbg !5503

if.else:                                          ; preds = %lor.lhs.false
  %29 = load i32, i32* %interval.addr, align 4, !dbg !5504
  %30 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5506
  %interval15 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 25, !dbg !5507
  store i32 %29, i32* %interval15, align 8, !dbg !5508
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end12
  %31 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5509
  %start_frame = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 23, !dbg !5510
  store i32 -1, i32* %start_frame, align 8, !dbg !5511
  ret void, !dbg !5512
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__create_pipe(%struct.usb_device* %dev, i32 %endpoint) #2 !dbg !5513 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5516, metadata !DIExpression()), !dbg !5517
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !5518, metadata !DIExpression()), !dbg !5519
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5520
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 0, !dbg !5521
  %1 = load i32, i32* %devnum, align 8, !dbg !5521
  %shl = shl i32 %1, 8, !dbg !5522
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !5523
  %shl1 = shl i32 %2, 15, !dbg !5524
  %or = or i32 %shl, %shl1, !dbg !5525
  ret i32 %or, !dbg !5526
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @int_callback(%struct.urb* %urb) #2 !dbg !5527 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !5528, metadata !DIExpression()), !dbg !5533
  %urb.addr = alloca %struct.urb*, align 8
  %ushc = alloca %struct.ushc_data*, align 8
  %status = alloca i8, align 1
  %last_status = alloca i8, align 1
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5536, metadata !DIExpression()), !dbg !5537
  call void @llvm.dbg.declare(metadata %struct.ushc_data** %ushc, metadata !5538, metadata !DIExpression()), !dbg !5539
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5540
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !5541
  %1 = load i8*, i8** %context, align 8, !dbg !5541
  %2 = bitcast i8* %1 to %struct.ushc_data*, !dbg !5540
  store %struct.ushc_data* %2, %struct.ushc_data** %ushc, align 8, !dbg !5539
  call void @llvm.dbg.declare(metadata i8* %status, metadata !5542, metadata !DIExpression()), !dbg !5543
  call void @llvm.dbg.declare(metadata i8* %last_status, metadata !5544, metadata !DIExpression()), !dbg !5545
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5546
  %status1 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 12, !dbg !5548
  %4 = load i32, i32* %status1, align 8, !dbg !5548
  %cmp = icmp slt i32 %4, 0, !dbg !5549
  br i1 %cmp, label %if.then, label %if.end, !dbg !5550

if.then:                                          ; preds = %entry
  br label %return, !dbg !5551

if.end:                                           ; preds = %entry
  %5 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5552
  %int_data = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %5, i32 0, i32 3, !dbg !5553
  %6 = load %struct.ushc_int_data*, %struct.ushc_int_data** %int_data, align 8, !dbg !5553
  %status2 = getelementptr inbounds %struct.ushc_int_data, %struct.ushc_int_data* %6, i32 0, i32 0, !dbg !5554
  %7 = load i8, i8* %status2, align 1, !dbg !5554
  store i8 %7, i8* %status, align 1, !dbg !5555
  %8 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5556
  %last_status3 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %8, i32 0, i32 14, !dbg !5557
  %9 = load i8, i8* %last_status3, align 8, !dbg !5557
  store i8 %9, i8* %last_status, align 1, !dbg !5558
  %10 = load i8, i8* %status, align 1, !dbg !5559
  %11 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5560
  %last_status4 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %11, i32 0, i32 14, !dbg !5561
  store i8 %10, i8* %last_status4, align 8, !dbg !5562
  %12 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5563
  %flags = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %12, i32 0, i32 13, !dbg !5565
  %call = call zeroext i1 @test_and_clear_bit(i64 2, i64* %flags) #11, !dbg !5566
  br i1 %call, label %if.end9, label %land.lhs.true, !dbg !5567

land.lhs.true:                                    ; preds = %if.end
  %13 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5568
  %flags5 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %13, i32 0, i32 13, !dbg !5569
  %call6 = call zeroext i1 @test_bit(i64 1, i64* %flags5) #11, !dbg !5570
  br i1 %call6, label %land.lhs.true7, label %if.end9, !dbg !5571

land.lhs.true7:                                   ; preds = %land.lhs.true
  %14 = load i8, i8* %status, align 1, !dbg !5572
  %conv = zext i8 %14 to i32, !dbg !5572
  %and = and i32 %conv, 2, !dbg !5573
  %tobool = icmp ne i32 %and, 0, !dbg !5573
  br i1 %tobool, label %if.then8, label %if.end9, !dbg !5574

if.then8:                                         ; preds = %land.lhs.true7
  %15 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5575
  %mmc = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %15, i32 0, i32 1, !dbg !5577
  %16 = load %struct.mmc_host*, %struct.mmc_host** %mmc, align 8, !dbg !5577
  call void @mmc_signal_sdio_irq(%struct.mmc_host* %16) #11, !dbg !5578
  br label %if.end9, !dbg !5579

if.end9:                                          ; preds = %if.then8, %land.lhs.true7, %land.lhs.true, %if.end
  %17 = load i8, i8* %status, align 1, !dbg !5580
  %conv10 = zext i8 %17 to i32, !dbg !5580
  %18 = load i8, i8* %last_status, align 1, !dbg !5581
  %conv11 = zext i8 %18 to i32, !dbg !5581
  %xor = xor i32 %conv10, %conv11, !dbg !5582
  %and12 = and i32 %xor, 1, !dbg !5583
  %tobool13 = icmp ne i32 %and12, 0, !dbg !5583
  br i1 %tobool13, label %if.then14, label %if.end17, !dbg !5584

if.then14:                                        ; preds = %if.end9
  %19 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5585
  %mmc15 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %19, i32 0, i32 1, !dbg !5586
  %20 = load %struct.mmc_host*, %struct.mmc_host** %mmc15, align 8, !dbg !5586
  store i32 100, i32* %m.addr.i, align 4
  %21 = load i32, i32* %m.addr.i, align 4, !dbg !5587
  %22 = call i1 @llvm.is.constant.i32(i32 %21) #7, !dbg !5589
  br i1 %22, label %if.then.i, label %if.else.i, !dbg !5590

if.then.i:                                        ; preds = %if.then14
  %23 = load i32, i32* %m.addr.i, align 4, !dbg !5591
  %cmp.i = icmp slt i32 %23, 0, !dbg !5594
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5595

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !5596
  br label %msecs_to_jiffies.exit, !dbg !5596

if.end.i:                                         ; preds = %if.then.i
  %24 = load i32, i32* %m.addr.i, align 4, !dbg !5597
  %call.i = call i64 @_msecs_to_jiffies(i32 %24) #12, !dbg !5598
  store i64 %call.i, i64* %retval.i, align 8, !dbg !5599
  br label %msecs_to_jiffies.exit, !dbg !5599

if.else.i:                                        ; preds = %if.then14
  %25 = load i32, i32* %m.addr.i, align 4, !dbg !5600
  %call2.i = call i64 @__msecs_to_jiffies(i32 %25) #12, !dbg !5602
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !5603
  br label %msecs_to_jiffies.exit, !dbg !5603

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %26 = load i64, i64* %retval.i, align 8, !dbg !5604
  call void @mmc_detect_change(%struct.mmc_host* %20, i64 %26) #11, !dbg !5605
  br label %if.end17, !dbg !5605

if.end17:                                         ; preds = %msecs_to_jiffies.exit, %if.end9
  %27 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5606
  %flags18 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %27, i32 0, i32 13, !dbg !5608
  %call19 = call zeroext i1 @test_bit(i64 1, i64* %flags18) #11, !dbg !5609
  br i1 %call19, label %if.end22, label %if.then20, !dbg !5610

if.then20:                                        ; preds = %if.end17
  %28 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5611
  %flags21 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %28, i32 0, i32 13, !dbg !5612
  call void @set_bit(i64 2, i64* %flags21) #11, !dbg !5613
  br label %if.end22, !dbg !5613

if.end22:                                         ; preds = %if.then20, %if.end17
  %29 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5614
  %int_urb = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %29, i32 0, i32 2, !dbg !5615
  %30 = load %struct.urb*, %struct.urb** %int_urb, align 8, !dbg !5615
  %call23 = call i32 @usb_submit_urb(%struct.urb* %30, i32 2592) #11, !dbg !5616
  br label %return, !dbg !5617

return:                                           ; preds = %if.end22, %if.then
  ret void, !dbg !5617
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_fill_bulk_urb(%struct.urb* %urb, %struct.usb_device* %dev, i32 %pipe, i8* %transfer_buffer, i32 %buffer_length, void (%struct.urb*)* %complete_fn, i8* %context) #2 !dbg !5618 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %dev.addr = alloca %struct.usb_device*, align 8
  %pipe.addr = alloca i32, align 4
  %transfer_buffer.addr = alloca i8*, align 8
  %buffer_length.addr = alloca i32, align 4
  %complete_fn.addr = alloca void (%struct.urb*)*, align 8
  %context.addr = alloca i8*, align 8
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5621, metadata !DIExpression()), !dbg !5622
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5623, metadata !DIExpression()), !dbg !5624
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !5625, metadata !DIExpression()), !dbg !5626
  store i8* %transfer_buffer, i8** %transfer_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %transfer_buffer.addr, metadata !5627, metadata !DIExpression()), !dbg !5628
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_length.addr, metadata !5629, metadata !DIExpression()), !dbg !5630
  store void (%struct.urb*)* %complete_fn, void (%struct.urb*)** %complete_fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.urb*)** %complete_fn.addr, metadata !5631, metadata !DIExpression()), !dbg !5632
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !5633, metadata !DIExpression()), !dbg !5634
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5635
  %1 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5636
  %dev1 = getelementptr inbounds %struct.urb, %struct.urb* %1, i32 0, i32 8, !dbg !5637
  store %struct.usb_device* %0, %struct.usb_device** %dev1, align 8, !dbg !5638
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !5639
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5640
  %pipe2 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 10, !dbg !5641
  store i32 %2, i32* %pipe2, align 8, !dbg !5642
  %4 = load i8*, i8** %transfer_buffer.addr, align 8, !dbg !5643
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5644
  %transfer_buffer3 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 14, !dbg !5645
  store i8* %4, i8** %transfer_buffer3, align 8, !dbg !5646
  %6 = load i32, i32* %buffer_length.addr, align 4, !dbg !5647
  %7 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5648
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 19, !dbg !5649
  store i32 %6, i32* %transfer_buffer_length, align 8, !dbg !5650
  %8 = load void (%struct.urb*)*, void (%struct.urb*)** %complete_fn.addr, align 8, !dbg !5651
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5652
  %complete = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 28, !dbg !5653
  store void (%struct.urb*)* %8, void (%struct.urb*)** %complete, align 8, !dbg !5654
  %10 = load i8*, i8** %context.addr, align 8, !dbg !5655
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5656
  %context4 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 27, !dbg !5657
  store i8* %10, i8** %context4, align 8, !dbg !5658
  ret void, !dbg !5659
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cbw_callback(%struct.urb* %urb) #2 !dbg !5660 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %ushc = alloca %struct.ushc_data*, align 8
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5661, metadata !DIExpression()), !dbg !5662
  call void @llvm.dbg.declare(metadata %struct.ushc_data** %ushc, metadata !5663, metadata !DIExpression()), !dbg !5664
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5665
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !5666
  %1 = load i8*, i8** %context, align 8, !dbg !5666
  %2 = bitcast i8* %1 to %struct.ushc_data*, !dbg !5665
  store %struct.ushc_data* %2, %struct.ushc_data** %ushc, align 8, !dbg !5664
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5667
  %status = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 12, !dbg !5669
  %4 = load i32, i32* %status, align 8, !dbg !5669
  %cmp = icmp ne i32 %4, 0, !dbg !5670
  br i1 %cmp, label %if.then, label %if.end, !dbg !5671

if.then:                                          ; preds = %entry
  %5 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5672
  %data_urb = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %5, i32 0, i32 6, !dbg !5674
  %6 = load %struct.urb*, %struct.urb** %data_urb, align 8, !dbg !5674
  %call = call i32 @usb_unlink_urb(%struct.urb* %6) #11, !dbg !5675
  %7 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5676
  %csw_urb = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %7, i32 0, i32 7, !dbg !5677
  %8 = load %struct.urb*, %struct.urb** %csw_urb, align 8, !dbg !5677
  %call1 = call i32 @usb_unlink_urb(%struct.urb* %8) #11, !dbg !5678
  br label %if.end, !dbg !5679

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5680
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @csw_callback(%struct.urb* %urb) #2 !dbg !5681 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %ushc = alloca %struct.ushc_data*, align 8
  %req = alloca %struct.mmc_request*, align 8
  %status = alloca i32, align 4
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5682, metadata !DIExpression()), !dbg !5683
  call void @llvm.dbg.declare(metadata %struct.ushc_data** %ushc, metadata !5684, metadata !DIExpression()), !dbg !5685
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5686
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !5687
  %1 = load i8*, i8** %context, align 8, !dbg !5687
  %2 = bitcast i8* %1 to %struct.ushc_data*, !dbg !5686
  store %struct.ushc_data* %2, %struct.ushc_data** %ushc, align 8, !dbg !5685
  call void @llvm.dbg.declare(metadata %struct.mmc_request** %req, metadata !5688, metadata !DIExpression()), !dbg !5689
  %3 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5690
  %current_req = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %3, i32 0, i32 10, !dbg !5691
  %4 = load %struct.mmc_request*, %struct.mmc_request** %current_req, align 8, !dbg !5691
  store %struct.mmc_request* %4, %struct.mmc_request** %req, align 8, !dbg !5689
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5692, metadata !DIExpression()), !dbg !5693
  %5 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5694
  %csw = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %5, i32 0, i32 8, !dbg !5695
  %6 = load %struct.ushc_csw*, %struct.ushc_csw** %csw, align 8, !dbg !5695
  %status1 = getelementptr inbounds %struct.ushc_csw, %struct.ushc_csw* %6, i32 0, i32 1, !dbg !5696
  %7 = load i8, i8* %status1, align 1, !dbg !5696
  %conv = zext i8 %7 to i32, !dbg !5694
  store i32 %conv, i32* %status, align 4, !dbg !5697
  %8 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5698
  %status2 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 12, !dbg !5700
  %9 = load i32, i32* %status2, align 8, !dbg !5700
  %cmp = icmp ne i32 %9, 0, !dbg !5701
  br i1 %cmp, label %if.then, label %if.else, !dbg !5702

if.then:                                          ; preds = %entry
  %10 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5703
  %status4 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 12, !dbg !5705
  %11 = load i32, i32* %status4, align 8, !dbg !5705
  %12 = load %struct.mmc_request*, %struct.mmc_request** %req, align 8, !dbg !5706
  %cmd = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %12, i32 0, i32 1, !dbg !5707
  %13 = load %struct.mmc_command*, %struct.mmc_command** %cmd, align 8, !dbg !5707
  %error = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 5, !dbg !5708
  store i32 %11, i32* %error, align 8, !dbg !5709
  br label %if.end15, !dbg !5710

if.else:                                          ; preds = %entry
  %14 = load i32, i32* %status, align 4, !dbg !5711
  %and = and i32 %14, 1, !dbg !5713
  %tobool = icmp ne i32 %and, 0, !dbg !5713
  br i1 %tobool, label %if.then5, label %if.end14, !dbg !5714

if.then5:                                         ; preds = %if.else
  %15 = load i32, i32* %status, align 4, !dbg !5715
  %and6 = and i32 %15, 4, !dbg !5718
  %tobool7 = icmp ne i32 %and6, 0, !dbg !5718
  br i1 %tobool7, label %if.then8, label %if.else11, !dbg !5719

if.then8:                                         ; preds = %if.then5
  %16 = load %struct.mmc_request*, %struct.mmc_request** %req, align 8, !dbg !5720
  %cmd9 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %16, i32 0, i32 1, !dbg !5721
  %17 = load %struct.mmc_command*, %struct.mmc_command** %cmd9, align 8, !dbg !5721
  %error10 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %17, i32 0, i32 5, !dbg !5722
  store i32 -5, i32* %error10, align 8, !dbg !5723
  br label %if.end, !dbg !5720

if.else11:                                        ; preds = %if.then5
  %18 = load %struct.mmc_request*, %struct.mmc_request** %req, align 8, !dbg !5724
  %cmd12 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %18, i32 0, i32 1, !dbg !5725
  %19 = load %struct.mmc_command*, %struct.mmc_command** %cmd12, align 8, !dbg !5725
  %error13 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %19, i32 0, i32 5, !dbg !5726
  store i32 -110, i32* %error13, align 8, !dbg !5727
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then8
  br label %if.end14, !dbg !5728

if.end14:                                         ; preds = %if.end, %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then
  %20 = load %struct.mmc_request*, %struct.mmc_request** %req, align 8, !dbg !5729
  %data = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %20, i32 0, i32 2, !dbg !5731
  %21 = load %struct.mmc_data*, %struct.mmc_data** %data, align 8, !dbg !5731
  %tobool16 = icmp ne %struct.mmc_data* %21, null, !dbg !5729
  br i1 %tobool16, label %if.then17, label %if.end37, !dbg !5732

if.then17:                                        ; preds = %if.end15
  %22 = load i32, i32* %status, align 4, !dbg !5733
  %and18 = and i32 %22, 2, !dbg !5736
  %tobool19 = icmp ne i32 %and18, 0, !dbg !5736
  br i1 %tobool19, label %if.then20, label %if.else31, !dbg !5737

if.then20:                                        ; preds = %if.then17
  %23 = load i32, i32* %status, align 4, !dbg !5738
  %and21 = and i32 %23, 4, !dbg !5741
  %tobool22 = icmp ne i32 %and21, 0, !dbg !5741
  br i1 %tobool22, label %if.then23, label %if.else26, !dbg !5742

if.then23:                                        ; preds = %if.then20
  %24 = load %struct.mmc_request*, %struct.mmc_request** %req, align 8, !dbg !5743
  %data24 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %24, i32 0, i32 2, !dbg !5744
  %25 = load %struct.mmc_data*, %struct.mmc_data** %data24, align 8, !dbg !5744
  %error25 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %25, i32 0, i32 5, !dbg !5745
  store i32 -5, i32* %error25, align 4, !dbg !5746
  br label %if.end29, !dbg !5743

if.else26:                                        ; preds = %if.then20
  %26 = load %struct.mmc_request*, %struct.mmc_request** %req, align 8, !dbg !5747
  %data27 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %26, i32 0, i32 2, !dbg !5748
  %27 = load %struct.mmc_data*, %struct.mmc_data** %data27, align 8, !dbg !5748
  %error28 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %27, i32 0, i32 5, !dbg !5749
  store i32 -110, i32* %error28, align 4, !dbg !5750
  br label %if.end29

if.end29:                                         ; preds = %if.else26, %if.then23
  %28 = load %struct.mmc_request*, %struct.mmc_request** %req, align 8, !dbg !5751
  %data30 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %28, i32 0, i32 2, !dbg !5752
  %29 = load %struct.mmc_data*, %struct.mmc_data** %data30, align 8, !dbg !5752
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %29, i32 0, i32 7, !dbg !5753
  store i32 0, i32* %bytes_xfered, align 4, !dbg !5754
  br label %if.end36, !dbg !5755

if.else31:                                        ; preds = %if.then17
  %30 = load %struct.mmc_request*, %struct.mmc_request** %req, align 8, !dbg !5756
  %data32 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %30, i32 0, i32 2, !dbg !5758
  %31 = load %struct.mmc_data*, %struct.mmc_data** %data32, align 8, !dbg !5758
  %blksz = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %31, i32 0, i32 2, !dbg !5759
  %32 = load i32, i32* %blksz, align 8, !dbg !5759
  %33 = load %struct.mmc_request*, %struct.mmc_request** %req, align 8, !dbg !5760
  %data33 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %33, i32 0, i32 2, !dbg !5761
  %34 = load %struct.mmc_data*, %struct.mmc_data** %data33, align 8, !dbg !5761
  %blocks = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %34, i32 0, i32 3, !dbg !5762
  %35 = load i32, i32* %blocks, align 4, !dbg !5762
  %mul = mul i32 %32, %35, !dbg !5763
  %36 = load %struct.mmc_request*, %struct.mmc_request** %req, align 8, !dbg !5764
  %data34 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %36, i32 0, i32 2, !dbg !5765
  %37 = load %struct.mmc_data*, %struct.mmc_data** %data34, align 8, !dbg !5765
  %bytes_xfered35 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %37, i32 0, i32 7, !dbg !5766
  store i32 %mul, i32* %bytes_xfered35, align 4, !dbg !5767
  br label %if.end36

if.end36:                                         ; preds = %if.else31, %if.end29
  br label %if.end37, !dbg !5768

if.end37:                                         ; preds = %if.end36, %if.end15
  %38 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5769
  %csw38 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %38, i32 0, i32 8, !dbg !5769
  %39 = load %struct.ushc_csw*, %struct.ushc_csw** %csw38, align 8, !dbg !5769
  %response = getelementptr inbounds %struct.ushc_csw, %struct.ushc_csw* %39, i32 0, i32 2, !dbg !5769
  %40 = load i32, i32* %response, align 1, !dbg !5769
  %41 = load %struct.mmc_request*, %struct.mmc_request** %req, align 8, !dbg !5770
  %cmd39 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %41, i32 0, i32 1, !dbg !5771
  %42 = load %struct.mmc_command*, %struct.mmc_command** %cmd39, align 8, !dbg !5771
  %resp = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %42, i32 0, i32 2, !dbg !5772
  %arrayidx = getelementptr [4 x i32], [4 x i32]* %resp, i64 0, i64 0, !dbg !5770
  store i32 %40, i32* %arrayidx, align 8, !dbg !5773
  %43 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5774
  %mmc = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %43, i32 0, i32 1, !dbg !5775
  %44 = load %struct.mmc_host*, %struct.mmc_host** %mmc, align 8, !dbg !5775
  %45 = load %struct.mmc_request*, %struct.mmc_request** %req, align 8, !dbg !5776
  call void @mmc_request_done(%struct.mmc_host* %44, %struct.mmc_request* %45) #11, !dbg !5777
  ret void, !dbg !5778
}

; Function Attrs: noredzone
declare dso_local i32 @mmc_add_host(%struct.mmc_host*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

; Function Attrs: noredzone
declare dso_local void @mmc_remove_host(%struct.mmc_host*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ushc_clean_up(%struct.ushc_data* %ushc) #2 !dbg !5779 {
entry:
  %ushc.addr = alloca %struct.ushc_data*, align 8
  store %struct.ushc_data* %ushc, %struct.ushc_data** %ushc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ushc_data** %ushc.addr, metadata !5782, metadata !DIExpression()), !dbg !5783
  %0 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !5784
  %int_urb = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %0, i32 0, i32 2, !dbg !5785
  %1 = load %struct.urb*, %struct.urb** %int_urb, align 8, !dbg !5785
  call void @usb_free_urb(%struct.urb* %1) #11, !dbg !5786
  %2 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !5787
  %csw_urb = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %2, i32 0, i32 7, !dbg !5788
  %3 = load %struct.urb*, %struct.urb** %csw_urb, align 8, !dbg !5788
  call void @usb_free_urb(%struct.urb* %3) #11, !dbg !5789
  %4 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !5790
  %data_urb = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %4, i32 0, i32 6, !dbg !5791
  %5 = load %struct.urb*, %struct.urb** %data_urb, align 8, !dbg !5791
  call void @usb_free_urb(%struct.urb* %5) #11, !dbg !5792
  %6 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !5793
  %cbw_urb = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %6, i32 0, i32 4, !dbg !5794
  %7 = load %struct.urb*, %struct.urb** %cbw_urb, align 8, !dbg !5794
  call void @usb_free_urb(%struct.urb* %7) #11, !dbg !5795
  %8 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !5796
  %int_data = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %8, i32 0, i32 3, !dbg !5797
  %9 = load %struct.ushc_int_data*, %struct.ushc_int_data** %int_data, align 8, !dbg !5797
  %10 = bitcast %struct.ushc_int_data* %9 to i8*, !dbg !5796
  call void @kfree(i8* %10) #11, !dbg !5798
  %11 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !5799
  %cbw = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %11, i32 0, i32 5, !dbg !5800
  %12 = load %struct.ushc_cbw*, %struct.ushc_cbw** %cbw, align 8, !dbg !5800
  %13 = bitcast %struct.ushc_cbw* %12 to i8*, !dbg !5799
  call void @kfree(i8* %13) #11, !dbg !5801
  %14 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !5802
  %csw = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %14, i32 0, i32 8, !dbg !5803
  %15 = load %struct.ushc_csw*, %struct.ushc_csw** %csw, align 8, !dbg !5803
  %16 = bitcast %struct.ushc_csw* %15 to i8*, !dbg !5802
  call void @kfree(i8* %16) #11, !dbg !5804
  %17 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !5805
  %mmc = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %17, i32 0, i32 1, !dbg !5806
  %18 = load %struct.mmc_host*, %struct.mmc_host** %mmc, align 8, !dbg !5806
  call void @mmc_free_host(%struct.mmc_host* %18) #11, !dbg !5807
  ret void, !dbg !5808
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !5809 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5812, metadata !DIExpression()), !dbg !5813
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5814, metadata !DIExpression()), !dbg !5815
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5816
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5817
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5818
  store i8* %0, i8** %driver_data, align 8, !dbg !5819
  ret void, !dbg !5820
}

; Function Attrs: noredzone
declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i8 zeroext, i8 zeroext, i16 zeroext, i16 zeroext, i8*, i16 zeroext, i32) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ushc_request(%struct.mmc_host* %mmc, %struct.mmc_request* %req) #2 !dbg !5821 {
entry:
  %lock.addr.i90 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i90, metadata !5822, metadata !DIExpression()), !dbg !5826
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5828, metadata !DIExpression()), !dbg !5829
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4675, metadata !DIExpression()), !dbg !5830
  %mmc.addr = alloca %struct.mmc_host*, align 8
  %req.addr = alloca %struct.mmc_request*, align 8
  %ushc = alloca %struct.ushc_data*, align 8
  %ret = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %data53 = alloca %struct.mmc_data*, align 8
  %pipe = alloca i32, align 4
  store %struct.mmc_host* %mmc, %struct.mmc_host** %mmc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %mmc.addr, metadata !5837, metadata !DIExpression()), !dbg !5838
  store %struct.mmc_request* %req, %struct.mmc_request** %req.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_request** %req.addr, metadata !5839, metadata !DIExpression()), !dbg !5840
  call void @llvm.dbg.declare(metadata %struct.ushc_data** %ushc, metadata !5841, metadata !DIExpression()), !dbg !5842
  %0 = load %struct.mmc_host*, %struct.mmc_host** %mmc.addr, align 8, !dbg !5843
  %call = call i8* @mmc_priv(%struct.mmc_host* %0) #11, !dbg !5844
  %1 = bitcast i8* %call to %struct.ushc_data*, !dbg !5844
  store %struct.ushc_data* %1, %struct.ushc_data** %ushc, align 8, !dbg !5842
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5845, metadata !DIExpression()), !dbg !5846
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5847, metadata !DIExpression()), !dbg !5848
  br label %do.body, !dbg !5849

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5850

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5851, metadata !DIExpression()), !dbg !5853
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5854, metadata !DIExpression()), !dbg !5853
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5853
  %conv = zext i1 %cmp to i32, !dbg !5853
  store i32 1, i32* %tmp, align 4, !dbg !5853
  %2 = load i32, i32* %tmp, align 4, !dbg !5853
  br label %do.body2, !dbg !5855

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5856

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5857

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5859, metadata !DIExpression()), !dbg !5862
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5863, metadata !DIExpression()), !dbg !5862
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5862
  %conv8 = zext i1 %cmp7 to i32, !dbg !5862
  store i32 1, i32* %tmp9, align 4, !dbg !5862
  %3 = load i32, i32* %tmp9, align 4, !dbg !5862
  %call10 = call i64 @arch_local_irq_save() #11, !dbg !5864
  store i64 %call10, i64* %flags, align 8, !dbg !5864
  br label %do.end, !dbg !5864

do.end:                                           ; preds = %do.body4
  br label %do.end11, !dbg !5857

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !5856

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5865, !srcloc !5866
  br label %do.body13, !dbg !5865

do.body13:                                        ; preds = %do.body12
  %4 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5867
  %lock = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %4, i32 0, i32 9, !dbg !5867
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %5 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5868
  %6 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %5, i32 0, i32 0, !dbg !5869
  %rlock.i = bitcast %union.anon.3* %6 to %struct.raw_spinlock*, !dbg !5869
  br label %do.end15, !dbg !5867

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !5865

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5856

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5855

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !5850

do.end19:                                         ; preds = %do.end18
  %7 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5870
  %flags20 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %7, i32 0, i32 13, !dbg !5872
  %call21 = call zeroext i1 @test_bit(i64 0, i64* %flags20) #11, !dbg !5873
  br i1 %call21, label %if.then, label %if.end, !dbg !5874

if.then:                                          ; preds = %do.end19
  store i32 -19, i32* %ret, align 4, !dbg !5875
  br label %out, !dbg !5877

if.end:                                           ; preds = %do.end19
  %8 = load %struct.mmc_request*, %struct.mmc_request** %req.addr, align 8, !dbg !5878
  %cmd = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %8, i32 0, i32 1, !dbg !5880
  %9 = load %struct.mmc_command*, %struct.mmc_command** %cmd, align 8, !dbg !5880
  %flags22 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %9, i32 0, i32 3, !dbg !5881
  %10 = load i32, i32* %flags22, align 8, !dbg !5881
  %and = and i32 %10, 2, !dbg !5882
  %tobool = icmp ne i32 %and, 0, !dbg !5882
  br i1 %tobool, label %if.then23, label %if.end24, !dbg !5883

if.then23:                                        ; preds = %if.end
  store i32 -22, i32* %ret, align 4, !dbg !5884
  br label %out, !dbg !5886

if.end24:                                         ; preds = %if.end
  %11 = load %struct.mmc_request*, %struct.mmc_request** %req.addr, align 8, !dbg !5887
  %data = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %11, i32 0, i32 2, !dbg !5889
  %12 = load %struct.mmc_data*, %struct.mmc_data** %data, align 8, !dbg !5889
  %tobool25 = icmp ne %struct.mmc_data* %12, null, !dbg !5887
  br i1 %tobool25, label %land.lhs.true, label %if.end29, !dbg !5890

land.lhs.true:                                    ; preds = %if.end24
  %13 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5891
  %clock_freq = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %13, i32 0, i32 15, !dbg !5892
  %14 = load i32, i32* %clock_freq, align 4, !dbg !5892
  %cmp26 = icmp slt i32 %14, 6000000, !dbg !5893
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !5894

if.then28:                                        ; preds = %land.lhs.true
  store i32 -22, i32* %ret, align 4, !dbg !5895
  br label %out, !dbg !5897

if.end29:                                         ; preds = %land.lhs.true, %if.end24
  %15 = load %struct.mmc_request*, %struct.mmc_request** %req.addr, align 8, !dbg !5898
  %16 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5899
  %current_req = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %16, i32 0, i32 10, !dbg !5900
  store %struct.mmc_request* %15, %struct.mmc_request** %current_req, align 8, !dbg !5901
  %17 = load %struct.mmc_request*, %struct.mmc_request** %req.addr, align 8, !dbg !5902
  %cmd30 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %17, i32 0, i32 1, !dbg !5902
  %18 = load %struct.mmc_command*, %struct.mmc_command** %cmd30, align 8, !dbg !5902
  %opcode = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %18, i32 0, i32 0, !dbg !5902
  %19 = load i32, i32* %opcode, align 8, !dbg !5902
  %conv31 = trunc i32 %19 to i16, !dbg !5902
  %conv32 = trunc i16 %conv31 to i8, !dbg !5902
  %20 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5903
  %cbw = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %20, i32 0, i32 5, !dbg !5904
  %21 = load %struct.ushc_cbw*, %struct.ushc_cbw** %cbw, align 8, !dbg !5904
  %cmd_idx = getelementptr inbounds %struct.ushc_cbw, %struct.ushc_cbw* %21, i32 0, i32 1, !dbg !5905
  store i8 %conv32, i8* %cmd_idx, align 1, !dbg !5906
  %22 = load %struct.mmc_request*, %struct.mmc_request** %req.addr, align 8, !dbg !5907
  %data33 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %22, i32 0, i32 2, !dbg !5909
  %23 = load %struct.mmc_data*, %struct.mmc_data** %data33, align 8, !dbg !5909
  %tobool34 = icmp ne %struct.mmc_data* %23, null, !dbg !5907
  br i1 %tobool34, label %if.then35, label %if.else, !dbg !5910

if.then35:                                        ; preds = %if.end29
  %24 = load %struct.mmc_request*, %struct.mmc_request** %req.addr, align 8, !dbg !5911
  %data36 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %24, i32 0, i32 2, !dbg !5911
  %25 = load %struct.mmc_data*, %struct.mmc_data** %data36, align 8, !dbg !5911
  %blksz = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %25, i32 0, i32 2, !dbg !5911
  %26 = load i32, i32* %blksz, align 8, !dbg !5911
  %conv37 = trunc i32 %26 to i16, !dbg !5911
  %27 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5912
  %cbw38 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %27, i32 0, i32 5, !dbg !5913
  %28 = load %struct.ushc_cbw*, %struct.ushc_cbw** %cbw38, align 8, !dbg !5913
  %block_size = getelementptr inbounds %struct.ushc_cbw, %struct.ushc_cbw* %28, i32 0, i32 2, !dbg !5914
  store i16 %conv37, i16* %block_size, align 1, !dbg !5915
  br label %if.end41, !dbg !5912

if.else:                                          ; preds = %if.end29
  %29 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5916
  %cbw39 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %29, i32 0, i32 5, !dbg !5917
  %30 = load %struct.ushc_cbw*, %struct.ushc_cbw** %cbw39, align 8, !dbg !5917
  %block_size40 = getelementptr inbounds %struct.ushc_cbw, %struct.ushc_cbw* %30, i32 0, i32 2, !dbg !5918
  store i16 0, i16* %block_size40, align 1, !dbg !5919
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then35
  %31 = load %struct.mmc_request*, %struct.mmc_request** %req.addr, align 8, !dbg !5920
  %cmd42 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %31, i32 0, i32 1, !dbg !5920
  %32 = load %struct.mmc_command*, %struct.mmc_command** %cmd42, align 8, !dbg !5920
  %arg = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %32, i32 0, i32 1, !dbg !5920
  %33 = load i32, i32* %arg, align 4, !dbg !5920
  %34 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5921
  %cbw43 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %34, i32 0, i32 5, !dbg !5922
  %35 = load %struct.ushc_cbw*, %struct.ushc_cbw** %cbw43, align 8, !dbg !5922
  %arg44 = getelementptr inbounds %struct.ushc_cbw, %struct.ushc_cbw* %35, i32 0, i32 3, !dbg !5923
  store i32 %33, i32* %arg44, align 1, !dbg !5924
  %36 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5925
  %cbw_urb = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %36, i32 0, i32 4, !dbg !5926
  %37 = load %struct.urb*, %struct.urb** %cbw_urb, align 8, !dbg !5926
  %call45 = call i32 @usb_submit_urb(%struct.urb* %37, i32 2592) #11, !dbg !5927
  store i32 %call45, i32* %ret, align 4, !dbg !5928
  %38 = load i32, i32* %ret, align 4, !dbg !5929
  %cmp46 = icmp slt i32 %38, 0, !dbg !5931
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !5932

if.then48:                                        ; preds = %if.end41
  br label %out, !dbg !5933

if.end49:                                         ; preds = %if.end41
  %39 = load %struct.mmc_request*, %struct.mmc_request** %req.addr, align 8, !dbg !5934
  %data50 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %39, i32 0, i32 2, !dbg !5936
  %40 = load %struct.mmc_data*, %struct.mmc_data** %data50, align 8, !dbg !5936
  %tobool51 = icmp ne %struct.mmc_data* %40, null, !dbg !5934
  br i1 %tobool51, label %if.then52, label %if.end78, !dbg !5937

if.then52:                                        ; preds = %if.end49
  call void @llvm.dbg.declare(metadata %struct.mmc_data** %data53, metadata !5938, metadata !DIExpression()), !dbg !5940
  %41 = load %struct.mmc_request*, %struct.mmc_request** %req.addr, align 8, !dbg !5941
  %data54 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %41, i32 0, i32 2, !dbg !5942
  %42 = load %struct.mmc_data*, %struct.mmc_data** %data54, align 8, !dbg !5942
  store %struct.mmc_data* %42, %struct.mmc_data** %data53, align 8, !dbg !5940
  call void @llvm.dbg.declare(metadata i32* %pipe, metadata !5943, metadata !DIExpression()), !dbg !5944
  %43 = load %struct.mmc_data*, %struct.mmc_data** %data53, align 8, !dbg !5945
  %flags55 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %43, i32 0, i32 6, !dbg !5947
  %44 = load i32, i32* %flags55, align 8, !dbg !5947
  %conv56 = zext i32 %44 to i64, !dbg !5945
  %and57 = and i64 %conv56, 512, !dbg !5948
  %tobool58 = icmp ne i64 %and57, 0, !dbg !5948
  br i1 %tobool58, label %if.then59, label %if.else62, !dbg !5949

if.then59:                                        ; preds = %if.then52
  %45 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5950
  %usb_dev = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %45, i32 0, i32 0, !dbg !5950
  %46 = load %struct.usb_device*, %struct.usb_device** %usb_dev, align 8, !dbg !5950
  %call60 = call i32 @__create_pipe(%struct.usb_device* %46, i32 6) #11, !dbg !5950
  %or = or i32 -1073741824, %call60, !dbg !5950
  %or61 = or i32 %or, 128, !dbg !5950
  store i32 %or61, i32* %pipe, align 4, !dbg !5951
  br label %if.end66, !dbg !5952

if.else62:                                        ; preds = %if.then52
  %47 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5953
  %usb_dev63 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %47, i32 0, i32 0, !dbg !5953
  %48 = load %struct.usb_device*, %struct.usb_device** %usb_dev63, align 8, !dbg !5953
  %call64 = call i32 @__create_pipe(%struct.usb_device* %48, i32 2) #11, !dbg !5953
  %or65 = or i32 -1073741824, %call64, !dbg !5953
  store i32 %or65, i32* %pipe, align 4, !dbg !5954
  br label %if.end66

if.end66:                                         ; preds = %if.else62, %if.then59
  %49 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5955
  %data_urb = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %49, i32 0, i32 6, !dbg !5956
  %50 = load %struct.urb*, %struct.urb** %data_urb, align 8, !dbg !5956
  %51 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5957
  %usb_dev67 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %51, i32 0, i32 0, !dbg !5958
  %52 = load %struct.usb_device*, %struct.usb_device** %usb_dev67, align 8, !dbg !5958
  %53 = load i32, i32* %pipe, align 4, !dbg !5959
  %54 = load %struct.mmc_data*, %struct.mmc_data** %data53, align 8, !dbg !5960
  %sg = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %54, i32 0, i32 12, !dbg !5961
  %55 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8, !dbg !5961
  %length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %55, i32 0, i32 2, !dbg !5962
  %56 = load i32, i32* %length, align 4, !dbg !5962
  %57 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5963
  %58 = bitcast %struct.ushc_data* %57 to i8*, !dbg !5963
  call void @usb_fill_bulk_urb(%struct.urb* %50, %struct.usb_device* %52, i32 %53, i8* null, i32 %56, void (%struct.urb*)* @data_callback, i8* %58) #11, !dbg !5964
  %59 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5965
  %data_urb68 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %59, i32 0, i32 6, !dbg !5966
  %60 = load %struct.urb*, %struct.urb** %data_urb68, align 8, !dbg !5966
  %num_sgs = getelementptr inbounds %struct.urb, %struct.urb* %60, i32 0, i32 18, !dbg !5967
  store i32 1, i32* %num_sgs, align 4, !dbg !5968
  %61 = load %struct.mmc_data*, %struct.mmc_data** %data53, align 8, !dbg !5969
  %sg69 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %61, i32 0, i32 12, !dbg !5970
  %62 = load %struct.scatterlist*, %struct.scatterlist** %sg69, align 8, !dbg !5970
  %63 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5971
  %data_urb70 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %63, i32 0, i32 6, !dbg !5972
  %64 = load %struct.urb*, %struct.urb** %data_urb70, align 8, !dbg !5972
  %sg71 = getelementptr inbounds %struct.urb, %struct.urb* %64, i32 0, i32 16, !dbg !5973
  store %struct.scatterlist* %62, %struct.scatterlist** %sg71, align 8, !dbg !5974
  %65 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5975
  %data_urb72 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %65, i32 0, i32 6, !dbg !5976
  %66 = load %struct.urb*, %struct.urb** %data_urb72, align 8, !dbg !5976
  %call73 = call i32 @usb_submit_urb(%struct.urb* %66, i32 2592) #11, !dbg !5977
  store i32 %call73, i32* %ret, align 4, !dbg !5978
  %67 = load i32, i32* %ret, align 4, !dbg !5979
  %cmp74 = icmp slt i32 %67, 0, !dbg !5981
  br i1 %cmp74, label %if.then76, label %if.end77, !dbg !5982

if.then76:                                        ; preds = %if.end66
  br label %out, !dbg !5983

if.end77:                                         ; preds = %if.end66
  br label %if.end78, !dbg !5984

if.end78:                                         ; preds = %if.end77, %if.end49
  %68 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5985
  %csw_urb = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %68, i32 0, i32 7, !dbg !5986
  %69 = load %struct.urb*, %struct.urb** %csw_urb, align 8, !dbg !5986
  %call79 = call i32 @usb_submit_urb(%struct.urb* %69, i32 2592) #11, !dbg !5987
  store i32 %call79, i32* %ret, align 4, !dbg !5988
  br label %out, !dbg !5989

out:                                              ; preds = %if.end78, %if.then76, %if.then48, %if.then28, %if.then23, %if.then
  call void @llvm.dbg.label(metadata !5990), !dbg !5991
  %70 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !5992
  %lock80 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %70, i32 0, i32 9, !dbg !5993
  %71 = load i64, i64* %flags, align 8, !dbg !5994
  store %struct.spinlock* %lock80, %struct.spinlock** %lock.addr.i90, align 8
  store i64 %71, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !234, metadata !5995, metadata !DIExpression()) #7, !dbg !5998
  call void @llvm.dbg.declare(metadata !234, metadata !5999, metadata !DIExpression()) #7, !dbg !5998
  store i32 1, i32* %tmp.i, align 4, !dbg !5998
  %72 = load i32, i32* %tmp.i, align 4, !dbg !5998
  call void @llvm.dbg.declare(metadata !234, metadata !6000, metadata !DIExpression()) #7, !dbg !6005
  call void @llvm.dbg.declare(metadata !234, metadata !6006, metadata !DIExpression()) #7, !dbg !6005
  store i32 1, i32* %tmp8.i, align 4, !dbg !6005
  %73 = load i32, i32* %tmp8.i, align 4, !dbg !6005
  %74 = load i64, i64* %flags.addr.i, align 8, !dbg !6007
  call void @arch_local_irq_restore(i64 %74) #12, !dbg !6007
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6008, !srcloc !6010
  %75 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i90, align 8, !dbg !6011
  %76 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %75, i32 0, i32 0, !dbg !6011
  %rlock.i91 = bitcast %union.anon.3* %76 to %struct.raw_spinlock*, !dbg !6011
  %77 = load i32, i32* %ret, align 4, !dbg !6013
  %cmp81 = icmp slt i32 %77, 0, !dbg !6015
  br i1 %cmp81, label %if.then83, label %if.end89, !dbg !6016

if.then83:                                        ; preds = %out
  %78 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !6017
  %cbw_urb84 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %78, i32 0, i32 4, !dbg !6019
  %79 = load %struct.urb*, %struct.urb** %cbw_urb84, align 8, !dbg !6019
  %call85 = call i32 @usb_unlink_urb(%struct.urb* %79) #11, !dbg !6020
  %80 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !6021
  %data_urb86 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %80, i32 0, i32 6, !dbg !6022
  %81 = load %struct.urb*, %struct.urb** %data_urb86, align 8, !dbg !6022
  %call87 = call i32 @usb_unlink_urb(%struct.urb* %81) #11, !dbg !6023
  %82 = load i32, i32* %ret, align 4, !dbg !6024
  %83 = load %struct.mmc_request*, %struct.mmc_request** %req.addr, align 8, !dbg !6025
  %cmd88 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %83, i32 0, i32 1, !dbg !6026
  %84 = load %struct.mmc_command*, %struct.mmc_command** %cmd88, align 8, !dbg !6026
  %error = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %84, i32 0, i32 5, !dbg !6027
  store i32 %82, i32* %error, align 8, !dbg !6028
  %85 = load %struct.mmc_host*, %struct.mmc_host** %mmc.addr, align 8, !dbg !6029
  %86 = load %struct.mmc_request*, %struct.mmc_request** %req.addr, align 8, !dbg !6030
  call void @mmc_request_done(%struct.mmc_host* %85, %struct.mmc_request* %86) #11, !dbg !6031
  br label %if.end89, !dbg !6032

if.end89:                                         ; preds = %if.then83, %out
  ret void, !dbg !6033
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ushc_set_ios(%struct.mmc_host* %mmc, %struct.mmc_ios* %ios) #2 !dbg !6034 {
entry:
  %mmc.addr = alloca %struct.mmc_host*, align 8
  %ios.addr = alloca %struct.mmc_ios*, align 8
  %ushc = alloca %struct.ushc_data*, align 8
  store %struct.mmc_host* %mmc, %struct.mmc_host** %mmc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %mmc.addr, metadata !6035, metadata !DIExpression()), !dbg !6036
  store %struct.mmc_ios* %ios, %struct.mmc_ios** %ios.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_ios** %ios.addr, metadata !6037, metadata !DIExpression()), !dbg !6038
  call void @llvm.dbg.declare(metadata %struct.ushc_data** %ushc, metadata !6039, metadata !DIExpression()), !dbg !6040
  %0 = load %struct.mmc_host*, %struct.mmc_host** %mmc.addr, align 8, !dbg !6041
  %call = call i8* @mmc_priv(%struct.mmc_host* %0) #11, !dbg !6042
  %1 = bitcast i8* %call to %struct.ushc_data*, !dbg !6042
  store %struct.ushc_data* %1, %struct.ushc_data** %ushc, align 8, !dbg !6040
  %2 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !6043
  %3 = load %struct.mmc_ios*, %struct.mmc_ios** %ios.addr, align 8, !dbg !6044
  %power_mode = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %3, i32 0, i32 5, !dbg !6045
  %4 = load i8, i8* %power_mode, align 2, !dbg !6045
  %call1 = call i32 @ushc_set_power(%struct.ushc_data* %2, i8 zeroext %4) #11, !dbg !6046
  %5 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !6047
  %6 = load %struct.mmc_ios*, %struct.mmc_ios** %ios.addr, align 8, !dbg !6048
  %bus_width = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %6, i32 0, i32 6, !dbg !6049
  %7 = load i8, i8* %bus_width, align 1, !dbg !6049
  %conv = zext i8 %7 to i32, !dbg !6048
  %shl = shl i32 1, %conv, !dbg !6050
  %call2 = call i32 @ushc_set_bus_width(%struct.ushc_data* %5, i32 %shl) #11, !dbg !6051
  %8 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !6052
  %9 = load %struct.mmc_ios*, %struct.mmc_ios** %ios.addr, align 8, !dbg !6053
  %clock = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %9, i32 0, i32 0, !dbg !6054
  %10 = load i32, i32* %clock, align 4, !dbg !6054
  %11 = load %struct.mmc_ios*, %struct.mmc_ios** %ios.addr, align 8, !dbg !6055
  %timing = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %11, i32 0, i32 7, !dbg !6056
  %12 = load i8, i8* %timing, align 4, !dbg !6056
  %conv3 = zext i8 %12 to i32, !dbg !6055
  %cmp = icmp eq i32 %conv3, 2, !dbg !6057
  %call5 = call i32 @ushc_set_bus_freq(%struct.ushc_data* %8, i32 %10, i1 zeroext %cmp) #11, !dbg !6058
  ret void, !dbg !6059
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ushc_get_cd(%struct.mmc_host* %mmc) #2 !dbg !6060 {
entry:
  %mmc.addr = alloca %struct.mmc_host*, align 8
  %ushc = alloca %struct.ushc_data*, align 8
  store %struct.mmc_host* %mmc, %struct.mmc_host** %mmc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %mmc.addr, metadata !6061, metadata !DIExpression()), !dbg !6062
  call void @llvm.dbg.declare(metadata %struct.ushc_data** %ushc, metadata !6063, metadata !DIExpression()), !dbg !6064
  %0 = load %struct.mmc_host*, %struct.mmc_host** %mmc.addr, align 8, !dbg !6065
  %call = call i8* @mmc_priv(%struct.mmc_host* %0) #11, !dbg !6066
  %1 = bitcast i8* %call to %struct.ushc_data*, !dbg !6066
  store %struct.ushc_data* %1, %struct.ushc_data** %ushc, align 8, !dbg !6064
  %2 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !6067
  %last_status = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %2, i32 0, i32 14, !dbg !6068
  %3 = load i8, i8* %last_status, align 8, !dbg !6068
  %conv = zext i8 %3 to i32, !dbg !6067
  %and = and i32 %conv, 1, !dbg !6069
  %tobool = icmp ne i32 %and, 0, !dbg !6070
  %lnot = xor i1 %tobool, true, !dbg !6070
  %lnot1 = xor i1 %lnot, true, !dbg !6071
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6071
  ret i32 %lnot.ext, !dbg !6072
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ushc_enable_sdio_irq(%struct.mmc_host* %mmc, i32 %enable) #2 !dbg !6073 {
entry:
  %mmc.addr = alloca %struct.mmc_host*, align 8
  %enable.addr = alloca i32, align 4
  %ushc = alloca %struct.ushc_data*, align 8
  store %struct.mmc_host* %mmc, %struct.mmc_host** %mmc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %mmc.addr, metadata !6074, metadata !DIExpression()), !dbg !6075
  store i32 %enable, i32* %enable.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enable.addr, metadata !6076, metadata !DIExpression()), !dbg !6077
  call void @llvm.dbg.declare(metadata %struct.ushc_data** %ushc, metadata !6078, metadata !DIExpression()), !dbg !6079
  %0 = load %struct.mmc_host*, %struct.mmc_host** %mmc.addr, align 8, !dbg !6080
  %call = call i8* @mmc_priv(%struct.mmc_host* %0) #11, !dbg !6081
  %1 = bitcast i8* %call to %struct.ushc_data*, !dbg !6081
  store %struct.ushc_data* %1, %struct.ushc_data** %ushc, align 8, !dbg !6079
  %2 = load i32, i32* %enable.addr, align 4, !dbg !6082
  %tobool = icmp ne i32 %2, 0, !dbg !6082
  br i1 %tobool, label %if.then, label %if.else, !dbg !6084

if.then:                                          ; preds = %entry
  %3 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !6085
  %flags = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %3, i32 0, i32 13, !dbg !6086
  call void @set_bit(i64 1, i64* %flags) #11, !dbg !6087
  br label %if.end, !dbg !6087

if.else:                                          ; preds = %entry
  %4 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !6088
  %flags1 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %4, i32 0, i32 13, !dbg !6089
  call void @clear_bit(i64 1, i64* %flags1) #11, !dbg !6090
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6091
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #2 !dbg !6092 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !6096, metadata !DIExpression()), !dbg !6097
  %call = call i64 @arch_local_save_flags() #11, !dbg !6098
  store i64 %call, i64* %f, align 8, !dbg !6099
  call void @arch_local_irq_disable() #11, !dbg !6100
  %0 = load i64, i64* %f, align 8, !dbg !6101
  ret i64 %0, !dbg !6102
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #2 !dbg !6103 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !6110, metadata !DIExpression()), !dbg !6113
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !6115, metadata !DIExpression()), !dbg !6116
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !6117, metadata !DIExpression()), !dbg !6118
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !6119, metadata !DIExpression()), !dbg !6121
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !6123, metadata !DIExpression()), !dbg !6124
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !6125, metadata !DIExpression()), !dbg !6133
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !6135, metadata !DIExpression()), !dbg !6136
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !6137, metadata !DIExpression()), !dbg !6138
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6139, metadata !DIExpression()), !dbg !6140
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !6141
  %1 = load i64, i64* %nr.addr, align 8, !dbg !6142
  %div = sdiv i64 %1, 64, !dbg !6142
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !6143
  %2 = bitcast i64* %add.ptr to i8*, !dbg !6141
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !6144
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6145
  %conv.i = trunc i64 %4 to i32, !dbg !6145
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #12, !dbg !6146
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !6147
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !6147
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #12, !dbg !6147
  %7 = load i64, i64* %nr.addr, align 8, !dbg !6148
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !6148
  br i1 %8, label %cond.true, label %cond.false, !dbg !6148

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !6148
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !6148
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !6149
  %and.i = and i64 %11, 63, !dbg !6150
  %shl.i = shl i64 1, %and.i, !dbg !6151
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !6152
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !6153
  %shr.i = ashr i64 %13, 6, !dbg !6154
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !6152
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !6152
  %and1.i = and i64 %shl.i, %14, !dbg !6155
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !6156
  %conv = zext i1 %cmp.i to i32, !dbg !6148
  br label %cond.end, !dbg !6148

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !6148
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !6148
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !6157
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !6158
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #7, !dbg !6159, !srcloc !6160
  store i8 %19, i8* %oldbit.i, align 1, !dbg !6159
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !6161
  %tobool.i = trunc i8 %20 to i1, !dbg !6161
  %conv2 = zext i1 %tobool.i to i32, !dbg !6148
  br label %cond.end, !dbg !6148

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6148
  %tobool = icmp ne i32 %cond, 0, !dbg !6148
  ret i1 %tobool, !dbg !6162
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @data_callback(%struct.urb* %urb) #2 !dbg !6163 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %ushc = alloca %struct.ushc_data*, align 8
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !6164, metadata !DIExpression()), !dbg !6165
  call void @llvm.dbg.declare(metadata %struct.ushc_data** %ushc, metadata !6166, metadata !DIExpression()), !dbg !6167
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6168
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !6169
  %1 = load i8*, i8** %context, align 8, !dbg !6169
  %2 = bitcast i8* %1 to %struct.ushc_data*, !dbg !6168
  store %struct.ushc_data* %2, %struct.ushc_data** %ushc, align 8, !dbg !6167
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6170
  %status = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 12, !dbg !6172
  %4 = load i32, i32* %status, align 8, !dbg !6172
  %cmp = icmp ne i32 %4, 0, !dbg !6173
  br i1 %cmp, label %if.then, label %if.end, !dbg !6174

if.then:                                          ; preds = %entry
  %5 = load %struct.ushc_data*, %struct.ushc_data** %ushc, align 8, !dbg !6175
  %csw_urb = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %5, i32 0, i32 7, !dbg !6176
  %6 = load %struct.urb*, %struct.urb** %csw_urb, align 8, !dbg !6176
  %call = call i32 @usb_unlink_urb(%struct.urb* %6) #11, !dbg !6177
  br label %if.end, !dbg !6177

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6178
}

; Function Attrs: noredzone
declare dso_local i32 @usb_unlink_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local void @mmc_request_done(%struct.mmc_host*, %struct.mmc_request*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #2 !dbg !6179 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !6180, metadata !DIExpression()), !dbg !6182
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6183, metadata !DIExpression()), !dbg !6182
  %0 = load i64, i64* %__edi, align 8, !dbg !6182
  store i64 %0, i64* %__edi, align 8, !dbg !6182
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6184, metadata !DIExpression()), !dbg !6182
  %1 = load i64, i64* %__esi, align 8, !dbg !6182
  store i64 %1, i64* %__esi, align 8, !dbg !6182
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6185, metadata !DIExpression()), !dbg !6182
  %2 = load i64, i64* %__edx, align 8, !dbg !6182
  store i64 %2, i64* %__edx, align 8, !dbg !6182
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6186, metadata !DIExpression()), !dbg !6182
  %3 = load i64, i64* %__ecx, align 8, !dbg !6182
  store i64 %3, i64* %__ecx, align 8, !dbg !6182
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6187, metadata !DIExpression()), !dbg !6182
  %4 = load i64, i64* %__eax, align 8, !dbg !6182
  store i64 %4, i64* %__eax, align 8, !dbg !6182
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !6182
  %6 = call i64 @llvm.read_register.i64(metadata !4662), !dbg !6188
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !6188, !srcloc !6191
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6188
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6188
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6188
  call void @llvm.write_register.i64(metadata !4662, i64 %asmresult1), !dbg !6188
  %8 = load i64, i64* %__eax, align 8, !dbg !6188
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !6192, metadata !DIExpression()), !dbg !6194
  store i64 -1, i64* %__mask, align 8, !dbg !6194
  %9 = load i64, i64* %__mask, align 8, !dbg !6194
  store i64 %9, i64* %tmp, align 8, !dbg !6194
  %10 = load i64, i64* %tmp, align 8, !dbg !6194
  %and = and i64 %8, %10, !dbg !6188
  store i64 %and, i64* %__ret, align 8, !dbg !6188
  %11 = load i64, i64* %__ret, align 8, !dbg !6182
  store i64 %11, i64* %tmp2, align 8, !dbg !6195
  %12 = load i64, i64* %tmp2, align 8, !dbg !6182
  ret i64 %12, !dbg !6196
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #2 !dbg !6197 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6198, metadata !DIExpression()), !dbg !6200
  %0 = load i64, i64* %__edi, align 8, !dbg !6200
  store i64 %0, i64* %__edi, align 8, !dbg !6200
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6201, metadata !DIExpression()), !dbg !6200
  %1 = load i64, i64* %__esi, align 8, !dbg !6200
  store i64 %1, i64* %__esi, align 8, !dbg !6200
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6202, metadata !DIExpression()), !dbg !6200
  %2 = load i64, i64* %__edx, align 8, !dbg !6200
  store i64 %2, i64* %__edx, align 8, !dbg !6200
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6203, metadata !DIExpression()), !dbg !6200
  %3 = load i64, i64* %__ecx, align 8, !dbg !6200
  store i64 %3, i64* %__ecx, align 8, !dbg !6200
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6204, metadata !DIExpression()), !dbg !6200
  %4 = load i64, i64* %__eax, align 8, !dbg !6200
  store i64 %4, i64* %__eax, align 8, !dbg !6200
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !6200
  %6 = call i64 @llvm.read_register.i64(metadata !4662), !dbg !6200
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #7, !dbg !6200, !srcloc !6205
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6200
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6200
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6200
  call void @llvm.write_register.i64(metadata !4662, i64 %asmresult1), !dbg !6200
  ret void, !dbg !6206
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #2 !dbg !6207 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6211, metadata !DIExpression()), !dbg !6212
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6213, metadata !DIExpression()), !dbg !6214
  ret i1 true, !dbg !6215
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !6216 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6220, metadata !DIExpression()), !dbg !6221
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6222, metadata !DIExpression()), !dbg !6223
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6224, metadata !DIExpression()), !dbg !6225
  ret void, !dbg !6226
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #2 !dbg !6227 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !6230, metadata !DIExpression()), !dbg !6231
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6232, metadata !DIExpression()), !dbg !6234
  %0 = load i64, i64* %__edi, align 8, !dbg !6234
  store i64 %0, i64* %__edi, align 8, !dbg !6234
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6235, metadata !DIExpression()), !dbg !6234
  %1 = load i64, i64* %__esi, align 8, !dbg !6234
  store i64 %1, i64* %__esi, align 8, !dbg !6234
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6236, metadata !DIExpression()), !dbg !6234
  %2 = load i64, i64* %__edx, align 8, !dbg !6234
  store i64 %2, i64* %__edx, align 8, !dbg !6234
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6237, metadata !DIExpression()), !dbg !6234
  %3 = load i64, i64* %__ecx, align 8, !dbg !6234
  store i64 %3, i64* %__ecx, align 8, !dbg !6234
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6238, metadata !DIExpression()), !dbg !6234
  %4 = load i64, i64* %__eax, align 8, !dbg !6234
  store i64 %4, i64* %__eax, align 8, !dbg !6234
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !6234
  %6 = call i64 @llvm.read_register.i64(metadata !4662), !dbg !6234
  %7 = load i64, i64* %f.addr, align 8, !dbg !6234
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #7, !dbg !6234, !srcloc !6239
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !6234
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !6234
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6234
  call void @llvm.write_register.i64(metadata !4662, i64 %asmresult1), !dbg !6234
  ret void, !dbg !6240
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ushc_set_power(%struct.ushc_data* %ushc, i8 zeroext %power_mode) #2 !dbg !6241 {
entry:
  %retval = alloca i32, align 4
  %ushc.addr = alloca %struct.ushc_data*, align 8
  %power_mode.addr = alloca i8, align 1
  %voltage = alloca i16, align 2
  store %struct.ushc_data* %ushc, %struct.ushc_data** %ushc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ushc_data** %ushc.addr, metadata !6244, metadata !DIExpression()), !dbg !6245
  store i8 %power_mode, i8* %power_mode.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %power_mode.addr, metadata !6246, metadata !DIExpression()), !dbg !6247
  call void @llvm.dbg.declare(metadata i16* %voltage, metadata !6248, metadata !DIExpression()), !dbg !6249
  %0 = load i8, i8* %power_mode.addr, align 1, !dbg !6250
  %conv = zext i8 %0 to i32, !dbg !6250
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb1
  ], !dbg !6251

sw.bb:                                            ; preds = %entry
  store i16 0, i16* %voltage, align 2, !dbg !6252
  br label %sw.epilog, !dbg !6254

sw.bb1:                                           ; preds = %entry, %entry
  store i16 1, i16* %voltage, align 2, !dbg !6255
  br label %sw.epilog, !dbg !6256

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6257
  br label %return, !dbg !6257

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %1 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !6258
  %usb_dev = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %1, i32 0, i32 0, !dbg !6259
  %2 = load %struct.usb_device*, %struct.usb_device** %usb_dev, align 8, !dbg !6259
  %3 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !6260
  %usb_dev2 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %3, i32 0, i32 0, !dbg !6260
  %4 = load %struct.usb_device*, %struct.usb_device** %usb_dev2, align 8, !dbg !6260
  %call = call i32 @__create_pipe(%struct.usb_device* %4, i32 0) #11, !dbg !6260
  %or = or i32 -2147483648, %call, !dbg !6260
  %5 = load i16, i16* %voltage, align 2, !dbg !6261
  %call3 = call i32 @usb_control_msg(%struct.usb_device* %2, i32 %or, i8 zeroext 2, i8 zeroext 64, i16 zeroext %5, i16 zeroext 0, i8* null, i16 zeroext 0, i32 100) #11, !dbg !6262
  store i32 %call3, i32* %retval, align 4, !dbg !6263
  br label %return, !dbg !6263

return:                                           ; preds = %sw.epilog, %sw.default
  %6 = load i32, i32* %retval, align 4, !dbg !6264
  ret i32 %6, !dbg !6264
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ushc_set_bus_width(%struct.ushc_data* %ushc, i32 %bus_width) #2 !dbg !6265 {
entry:
  %ushc.addr = alloca %struct.ushc_data*, align 8
  %bus_width.addr = alloca i32, align 4
  store %struct.ushc_data* %ushc, %struct.ushc_data** %ushc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ushc_data** %ushc.addr, metadata !6268, metadata !DIExpression()), !dbg !6269
  store i32 %bus_width, i32* %bus_width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bus_width.addr, metadata !6270, metadata !DIExpression()), !dbg !6271
  %0 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !6272
  %1 = load i32, i32* %bus_width.addr, align 4, !dbg !6273
  %cmp = icmp eq i32 %1, 4, !dbg !6274
  %2 = zext i1 %cmp to i64, !dbg !6273
  %cond = select i1 %cmp, i32 2, i32 0, !dbg !6273
  %conv = trunc i32 %cond to i16, !dbg !6273
  %call = call i32 @ushc_hw_set_host_ctrl(%struct.ushc_data* %0, i16 zeroext 2, i16 zeroext %conv) #11, !dbg !6275
  ret i32 %call, !dbg !6276
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ushc_set_bus_freq(%struct.ushc_data* %ushc, i32 %clk, i1 zeroext %enable_hs) #2 !dbg !6277 {
entry:
  %retval = alloca i32, align 4
  %ushc.addr = alloca %struct.ushc_data*, align 8
  %clk.addr = alloca i32, align 4
  %enable_hs.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  store %struct.ushc_data* %ushc, %struct.ushc_data** %ushc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ushc_data** %ushc.addr, metadata !6280, metadata !DIExpression()), !dbg !6281
  store i32 %clk, i32* %clk.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %clk.addr, metadata !6282, metadata !DIExpression()), !dbg !6283
  %frombool = zext i1 %enable_hs to i8
  store i8 %frombool, i8* %enable_hs.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable_hs.addr, metadata !6284, metadata !DIExpression()), !dbg !6285
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6286, metadata !DIExpression()), !dbg !6287
  %0 = load i32, i32* %clk.addr, align 4, !dbg !6288
  %cmp = icmp eq i32 %0, 0, !dbg !6290
  br i1 %cmp, label %if.then, label %if.end, !dbg !6291

if.then:                                          ; preds = %entry
  store i32 400000, i32* %clk.addr, align 4, !dbg !6292
  br label %if.end, !dbg !6293

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !6294
  %2 = load i8, i8* %enable_hs.addr, align 1, !dbg !6295
  %tobool = trunc i8 %2 to i1, !dbg !6295
  %3 = zext i1 %tobool to i64, !dbg !6295
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !6295
  %conv = trunc i32 %cond to i16, !dbg !6295
  %call = call i32 @ushc_hw_set_host_ctrl(%struct.ushc_data* %1, i16 zeroext 1, i16 zeroext %conv) #11, !dbg !6296
  store i32 %call, i32* %ret, align 4, !dbg !6297
  %4 = load i32, i32* %ret, align 4, !dbg !6298
  %cmp1 = icmp slt i32 %4, 0, !dbg !6300
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !6301

if.then3:                                         ; preds = %if.end
  %5 = load i32, i32* %ret, align 4, !dbg !6302
  store i32 %5, i32* %retval, align 4, !dbg !6303
  br label %return, !dbg !6303

if.end4:                                          ; preds = %if.end
  %6 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !6304
  %usb_dev = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %6, i32 0, i32 0, !dbg !6305
  %7 = load %struct.usb_device*, %struct.usb_device** %usb_dev, align 8, !dbg !6305
  %8 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !6306
  %usb_dev5 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %8, i32 0, i32 0, !dbg !6306
  %9 = load %struct.usb_device*, %struct.usb_device** %usb_dev5, align 8, !dbg !6306
  %call6 = call i32 @__create_pipe(%struct.usb_device* %9, i32 0) #11, !dbg !6306
  %or = or i32 -2147483648, %call6, !dbg !6306
  %10 = load i32, i32* %clk.addr, align 4, !dbg !6307
  %and = and i32 %10, 65535, !dbg !6308
  %conv7 = trunc i32 %and to i16, !dbg !6307
  %11 = load i32, i32* %clk.addr, align 4, !dbg !6309
  %shr = ashr i32 %11, 16, !dbg !6310
  %and8 = and i32 %shr, 65535, !dbg !6311
  %conv9 = trunc i32 %and8 to i16, !dbg !6312
  %call10 = call i32 @usb_control_msg(%struct.usb_device* %7, i32 %or, i8 zeroext 3, i8 zeroext 64, i16 zeroext %conv7, i16 zeroext %conv9, i8* null, i16 zeroext 0, i32 100) #11, !dbg !6313
  store i32 %call10, i32* %ret, align 4, !dbg !6314
  %12 = load i32, i32* %ret, align 4, !dbg !6315
  %cmp11 = icmp slt i32 %12, 0, !dbg !6317
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !6318

if.then13:                                        ; preds = %if.end4
  %13 = load i32, i32* %ret, align 4, !dbg !6319
  store i32 %13, i32* %retval, align 4, !dbg !6320
  br label %return, !dbg !6320

if.end14:                                         ; preds = %if.end4
  %14 = load i32, i32* %clk.addr, align 4, !dbg !6321
  %15 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !6322
  %clock_freq = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %15, i32 0, i32 15, !dbg !6323
  store i32 %14, i32* %clock_freq, align 4, !dbg !6324
  store i32 0, i32* %retval, align 4, !dbg !6325
  br label %return, !dbg !6325

return:                                           ; preds = %if.end14, %if.then13, %if.then3
  %16 = load i32, i32* %retval, align 4, !dbg !6326
  ret i32 %16, !dbg !6326
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ushc_hw_set_host_ctrl(%struct.ushc_data* %ushc, i16 zeroext %mask, i16 zeroext %val) #2 !dbg !6327 {
entry:
  %retval = alloca i32, align 4
  %ushc.addr = alloca %struct.ushc_data*, align 8
  %mask.addr = alloca i16, align 2
  %val.addr = alloca i16, align 2
  %host_ctrl = alloca i16, align 2
  %ret = alloca i32, align 4
  store %struct.ushc_data* %ushc, %struct.ushc_data** %ushc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ushc_data** %ushc.addr, metadata !6330, metadata !DIExpression()), !dbg !6331
  store i16 %mask, i16* %mask.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %mask.addr, metadata !6332, metadata !DIExpression()), !dbg !6333
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !6334, metadata !DIExpression()), !dbg !6335
  call void @llvm.dbg.declare(metadata i16* %host_ctrl, metadata !6336, metadata !DIExpression()), !dbg !6337
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6338, metadata !DIExpression()), !dbg !6339
  %0 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !6340
  %host_ctrl1 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %0, i32 0, i32 12, !dbg !6341
  %1 = load i16, i16* %host_ctrl1, align 4, !dbg !6341
  %conv = zext i16 %1 to i32, !dbg !6340
  %2 = load i16, i16* %mask.addr, align 2, !dbg !6342
  %conv2 = zext i16 %2 to i32, !dbg !6342
  %neg = xor i32 %conv2, -1, !dbg !6343
  %and = and i32 %conv, %neg, !dbg !6344
  %3 = load i16, i16* %val.addr, align 2, !dbg !6345
  %conv3 = zext i16 %3 to i32, !dbg !6345
  %or = or i32 %and, %conv3, !dbg !6346
  %conv4 = trunc i32 %or to i16, !dbg !6347
  store i16 %conv4, i16* %host_ctrl, align 2, !dbg !6348
  %4 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !6349
  %usb_dev = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %4, i32 0, i32 0, !dbg !6350
  %5 = load %struct.usb_device*, %struct.usb_device** %usb_dev, align 8, !dbg !6350
  %6 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !6351
  %usb_dev5 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %6, i32 0, i32 0, !dbg !6351
  %7 = load %struct.usb_device*, %struct.usb_device** %usb_dev5, align 8, !dbg !6351
  %call = call i32 @__create_pipe(%struct.usb_device* %7, i32 0) #11, !dbg !6351
  %or6 = or i32 -2147483648, %call, !dbg !6351
  %8 = load i16, i16* %host_ctrl, align 2, !dbg !6352
  %call7 = call i32 @usb_control_msg(%struct.usb_device* %5, i32 %or6, i8 zeroext 1, i8 zeroext 64, i16 zeroext %8, i16 zeroext 0, i8* null, i16 zeroext 0, i32 100) #11, !dbg !6353
  store i32 %call7, i32* %ret, align 4, !dbg !6354
  %9 = load i32, i32* %ret, align 4, !dbg !6355
  %cmp = icmp slt i32 %9, 0, !dbg !6357
  br i1 %cmp, label %if.then, label %if.end, !dbg !6358

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %ret, align 4, !dbg !6359
  store i32 %10, i32* %retval, align 4, !dbg !6360
  br label %return, !dbg !6360

if.end:                                           ; preds = %entry
  %11 = load i16, i16* %host_ctrl, align 2, !dbg !6361
  %12 = load %struct.ushc_data*, %struct.ushc_data** %ushc.addr, align 8, !dbg !6362
  %host_ctrl9 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %12, i32 0, i32 12, !dbg !6363
  store i16 %11, i16* %host_ctrl9, align 4, !dbg !6364
  store i32 0, i32* %retval, align 4, !dbg !6365
  br label %return, !dbg !6365

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !6366
  ret i32 %13, !dbg !6366
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #2 !dbg !6367 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !6372, metadata !DIExpression()), !dbg !6374
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !6376, metadata !DIExpression()), !dbg !6377
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !6378, metadata !DIExpression()), !dbg !6380
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !6382, metadata !DIExpression()), !dbg !6383
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !6384, metadata !DIExpression()), !dbg !6385
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6386, metadata !DIExpression()), !dbg !6387
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !6388
  %1 = load i64, i64* %nr.addr, align 8, !dbg !6389
  %div = sdiv i64 %1, 64, !dbg !6389
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !6390
  %2 = bitcast i64* %add.ptr to i8*, !dbg !6388
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !6391
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6392
  %conv.i = trunc i64 %4 to i32, !dbg !6392
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !6393
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !6394
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !6394
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #12, !dbg !6394
  %7 = load i64, i64* %nr.addr, align 8, !dbg !6395
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !6396
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !6397
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #7, !dbg !6399
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !6400

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !6401
  %12 = bitcast i64* %11 to i8*, !dbg !6401
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !6401
  %shr.i = ashr i64 %13, 3, !dbg !6401
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !6401
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !6403
  %and.i = and i64 %14, 7, !dbg !6403
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !6403
  %shl.i = shl i32 1, %sh_prom.i, !dbg !6403
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #7, !dbg !6404, !srcloc !6405
  br label %arch_set_bit.exit, !dbg !6406

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !6407
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !6409
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #7, !dbg !6410, !srcloc !6411
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !6412
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #2 !dbg !6413 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !6414, metadata !DIExpression()), !dbg !6416
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !6418, metadata !DIExpression()), !dbg !6419
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !6378, metadata !DIExpression()), !dbg !6420
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !6382, metadata !DIExpression()), !dbg !6422
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !6423, metadata !DIExpression()), !dbg !6424
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6425, metadata !DIExpression()), !dbg !6426
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !6427
  %1 = load i64, i64* %nr.addr, align 8, !dbg !6428
  %div = sdiv i64 %1, 64, !dbg !6428
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !6429
  %2 = bitcast i64* %add.ptr to i8*, !dbg !6427
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !6430
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6431
  %conv.i = trunc i64 %4 to i32, !dbg !6431
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !6432
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !6433
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !6433
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #12, !dbg !6433
  %7 = load i64, i64* %nr.addr, align 8, !dbg !6434
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !6435
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !6436
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #7, !dbg !6438
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !6439

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !6440
  %12 = bitcast i64* %11 to i8*, !dbg !6440
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !6440
  %shr.i = ashr i64 %13, 3, !dbg !6440
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !6440
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !6442
  %and.i = and i64 %14, 7, !dbg !6442
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !6442
  %shl.i = shl i32 1, %sh_prom.i, !dbg !6442
  %neg.i = xor i32 %shl.i, -1, !dbg !6443
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #7, !dbg !6444, !srcloc !6445
  br label %arch_clear_bit.exit, !dbg !6446

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !6447
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !6449
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #7, !dbg !6450, !srcloc !6451
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !6452
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !6453 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6454, metadata !DIExpression()), !dbg !6455
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6456, metadata !DIExpression()), !dbg !6457
  ret i1 true, !dbg !6458
}

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #9

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #10 !dbg !6459 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6463, metadata !DIExpression()), !dbg !6467
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6469, metadata !DIExpression()), !dbg !6470
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6471, metadata !DIExpression()), !dbg !6472
  %0 = load i64, i64* %size.addr, align 8, !dbg !6473
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6475
  br i1 %1, label %if.then, label %if.end447, !dbg !6476

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6477
  %tobool = icmp ne i64 %2, 0, !dbg !6477
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6480

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6481
  br label %return, !dbg !6481

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6482
  %cmp = icmp ult i64 %3, 4096, !dbg !6484
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6485

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6486
  br label %return, !dbg !6486

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub = sub i64 %4, 1, !dbg !6487
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6487
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6487

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub4 = sub i64 %6, 1, !dbg !6487
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6487
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6487

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub6 = sub i64 %8, 1, !dbg !6487
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6487
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6487

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6487

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub9 = sub i64 %9, 1, !dbg !6487
  %and = and i64 %sub9, -9223372036854775808, !dbg !6487
  %tobool10 = icmp ne i64 %and, 0, !dbg !6487
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6487

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6487

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub13 = sub i64 %10, 1, !dbg !6487
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6487
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6487
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6487

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6487

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub18 = sub i64 %11, 1, !dbg !6487
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6487
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6487
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6487

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6487

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub23 = sub i64 %12, 1, !dbg !6487
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6487
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6487
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6487

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6487

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub28 = sub i64 %13, 1, !dbg !6487
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6487
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6487
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6487

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6487

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub33 = sub i64 %14, 1, !dbg !6487
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6487
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6487
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6487

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6487

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub38 = sub i64 %15, 1, !dbg !6487
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6487
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6487
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6487

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6487

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub43 = sub i64 %16, 1, !dbg !6487
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6487
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6487
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6487

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6487

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub48 = sub i64 %17, 1, !dbg !6487
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6487
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6487
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6487

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6487

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub53 = sub i64 %18, 1, !dbg !6487
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6487
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6487
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6487

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6487

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub58 = sub i64 %19, 1, !dbg !6487
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6487
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6487
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6487

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6487

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub63 = sub i64 %20, 1, !dbg !6487
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6487
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6487
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6487

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6487

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub68 = sub i64 %21, 1, !dbg !6487
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6487
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6487
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6487

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6487

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub73 = sub i64 %22, 1, !dbg !6487
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6487
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6487
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6487

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6487

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub78 = sub i64 %23, 1, !dbg !6487
  %and79 = and i64 %sub78, 562949953421312, !dbg !6487
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6487
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6487

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6487

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub83 = sub i64 %24, 1, !dbg !6487
  %and84 = and i64 %sub83, 281474976710656, !dbg !6487
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6487
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6487

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6487

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub88 = sub i64 %25, 1, !dbg !6487
  %and89 = and i64 %sub88, 140737488355328, !dbg !6487
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6487
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6487

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6487

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub93 = sub i64 %26, 1, !dbg !6487
  %and94 = and i64 %sub93, 70368744177664, !dbg !6487
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6487
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6487

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6487

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub98 = sub i64 %27, 1, !dbg !6487
  %and99 = and i64 %sub98, 35184372088832, !dbg !6487
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6487
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6487

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6487

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub103 = sub i64 %28, 1, !dbg !6487
  %and104 = and i64 %sub103, 17592186044416, !dbg !6487
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6487
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6487

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6487

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub108 = sub i64 %29, 1, !dbg !6487
  %and109 = and i64 %sub108, 8796093022208, !dbg !6487
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6487
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6487

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6487

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub113 = sub i64 %30, 1, !dbg !6487
  %and114 = and i64 %sub113, 4398046511104, !dbg !6487
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6487
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6487

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6487

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub118 = sub i64 %31, 1, !dbg !6487
  %and119 = and i64 %sub118, 2199023255552, !dbg !6487
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6487
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6487

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6487

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub123 = sub i64 %32, 1, !dbg !6487
  %and124 = and i64 %sub123, 1099511627776, !dbg !6487
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6487
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6487

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6487

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub128 = sub i64 %33, 1, !dbg !6487
  %and129 = and i64 %sub128, 549755813888, !dbg !6487
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6487
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6487

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6487

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub133 = sub i64 %34, 1, !dbg !6487
  %and134 = and i64 %sub133, 274877906944, !dbg !6487
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6487
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6487

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6487

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub138 = sub i64 %35, 1, !dbg !6487
  %and139 = and i64 %sub138, 137438953472, !dbg !6487
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6487
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6487

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6487

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub143 = sub i64 %36, 1, !dbg !6487
  %and144 = and i64 %sub143, 68719476736, !dbg !6487
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6487
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6487

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6487

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub148 = sub i64 %37, 1, !dbg !6487
  %and149 = and i64 %sub148, 34359738368, !dbg !6487
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6487
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6487

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6487

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub153 = sub i64 %38, 1, !dbg !6487
  %and154 = and i64 %sub153, 17179869184, !dbg !6487
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6487
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6487

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6487

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub158 = sub i64 %39, 1, !dbg !6487
  %and159 = and i64 %sub158, 8589934592, !dbg !6487
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6487
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6487

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6487

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub163 = sub i64 %40, 1, !dbg !6487
  %and164 = and i64 %sub163, 4294967296, !dbg !6487
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6487
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6487

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6487

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub168 = sub i64 %41, 1, !dbg !6487
  %and169 = and i64 %sub168, 2147483648, !dbg !6487
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6487
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6487

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6487

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub173 = sub i64 %42, 1, !dbg !6487
  %and174 = and i64 %sub173, 1073741824, !dbg !6487
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6487
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6487

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6487

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub178 = sub i64 %43, 1, !dbg !6487
  %and179 = and i64 %sub178, 536870912, !dbg !6487
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6487
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6487

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6487

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub183 = sub i64 %44, 1, !dbg !6487
  %and184 = and i64 %sub183, 268435456, !dbg !6487
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6487
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6487

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6487

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub188 = sub i64 %45, 1, !dbg !6487
  %and189 = and i64 %sub188, 134217728, !dbg !6487
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6487
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6487

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6487

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub193 = sub i64 %46, 1, !dbg !6487
  %and194 = and i64 %sub193, 67108864, !dbg !6487
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6487
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6487

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6487

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub198 = sub i64 %47, 1, !dbg !6487
  %and199 = and i64 %sub198, 33554432, !dbg !6487
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6487
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6487

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6487

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub203 = sub i64 %48, 1, !dbg !6487
  %and204 = and i64 %sub203, 16777216, !dbg !6487
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6487
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6487

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6487

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub208 = sub i64 %49, 1, !dbg !6487
  %and209 = and i64 %sub208, 8388608, !dbg !6487
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6487
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6487

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6487

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub213 = sub i64 %50, 1, !dbg !6487
  %and214 = and i64 %sub213, 4194304, !dbg !6487
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6487
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6487

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6487

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub218 = sub i64 %51, 1, !dbg !6487
  %and219 = and i64 %sub218, 2097152, !dbg !6487
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6487
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6487

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6487

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub223 = sub i64 %52, 1, !dbg !6487
  %and224 = and i64 %sub223, 1048576, !dbg !6487
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6487
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6487

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6487

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub228 = sub i64 %53, 1, !dbg !6487
  %and229 = and i64 %sub228, 524288, !dbg !6487
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6487
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6487

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6487

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub233 = sub i64 %54, 1, !dbg !6487
  %and234 = and i64 %sub233, 262144, !dbg !6487
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6487
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6487

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6487

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub238 = sub i64 %55, 1, !dbg !6487
  %and239 = and i64 %sub238, 131072, !dbg !6487
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6487
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6487

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6487

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub243 = sub i64 %56, 1, !dbg !6487
  %and244 = and i64 %sub243, 65536, !dbg !6487
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6487
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6487

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6487

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub248 = sub i64 %57, 1, !dbg !6487
  %and249 = and i64 %sub248, 32768, !dbg !6487
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6487
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6487

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6487

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub253 = sub i64 %58, 1, !dbg !6487
  %and254 = and i64 %sub253, 16384, !dbg !6487
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6487
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6487

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6487

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub258 = sub i64 %59, 1, !dbg !6487
  %and259 = and i64 %sub258, 8192, !dbg !6487
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6487
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6487

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6487

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub263 = sub i64 %60, 1, !dbg !6487
  %and264 = and i64 %sub263, 4096, !dbg !6487
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6487
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6487

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6487

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub268 = sub i64 %61, 1, !dbg !6487
  %and269 = and i64 %sub268, 2048, !dbg !6487
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6487
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6487

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6487

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub273 = sub i64 %62, 1, !dbg !6487
  %and274 = and i64 %sub273, 1024, !dbg !6487
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6487
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6487

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6487

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub278 = sub i64 %63, 1, !dbg !6487
  %and279 = and i64 %sub278, 512, !dbg !6487
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6487
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6487

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6487

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub283 = sub i64 %64, 1, !dbg !6487
  %and284 = and i64 %sub283, 256, !dbg !6487
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6487
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6487

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6487

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub288 = sub i64 %65, 1, !dbg !6487
  %and289 = and i64 %sub288, 128, !dbg !6487
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6487
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6487

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6487

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub293 = sub i64 %66, 1, !dbg !6487
  %and294 = and i64 %sub293, 64, !dbg !6487
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6487
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6487

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6487

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub298 = sub i64 %67, 1, !dbg !6487
  %and299 = and i64 %sub298, 32, !dbg !6487
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6487
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6487

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6487

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub303 = sub i64 %68, 1, !dbg !6487
  %and304 = and i64 %sub303, 16, !dbg !6487
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6487
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6487

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6487

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub308 = sub i64 %69, 1, !dbg !6487
  %and309 = and i64 %sub308, 8, !dbg !6487
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6487
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6487

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6487

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub313 = sub i64 %70, 1, !dbg !6487
  %and314 = and i64 %sub313, 4, !dbg !6487
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6487
  %71 = zext i1 %tobool315 to i64, !dbg !6487
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6487
  br label %cond.end, !dbg !6487

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6487
  br label %cond.end317, !dbg !6487

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6487
  br label %cond.end319, !dbg !6487

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6487
  br label %cond.end321, !dbg !6487

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6487
  br label %cond.end323, !dbg !6487

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6487
  br label %cond.end325, !dbg !6487

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6487
  br label %cond.end327, !dbg !6487

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6487
  br label %cond.end329, !dbg !6487

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6487
  br label %cond.end331, !dbg !6487

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6487
  br label %cond.end333, !dbg !6487

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6487
  br label %cond.end335, !dbg !6487

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6487
  br label %cond.end337, !dbg !6487

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6487
  br label %cond.end339, !dbg !6487

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6487
  br label %cond.end341, !dbg !6487

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6487
  br label %cond.end343, !dbg !6487

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6487
  br label %cond.end345, !dbg !6487

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6487
  br label %cond.end347, !dbg !6487

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6487
  br label %cond.end349, !dbg !6487

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6487
  br label %cond.end351, !dbg !6487

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6487
  br label %cond.end353, !dbg !6487

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6487
  br label %cond.end355, !dbg !6487

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6487
  br label %cond.end357, !dbg !6487

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6487
  br label %cond.end359, !dbg !6487

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6487
  br label %cond.end361, !dbg !6487

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6487
  br label %cond.end363, !dbg !6487

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6487
  br label %cond.end365, !dbg !6487

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6487
  br label %cond.end367, !dbg !6487

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6487
  br label %cond.end369, !dbg !6487

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6487
  br label %cond.end371, !dbg !6487

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6487
  br label %cond.end373, !dbg !6487

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6487
  br label %cond.end375, !dbg !6487

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6487
  br label %cond.end377, !dbg !6487

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6487
  br label %cond.end379, !dbg !6487

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6487
  br label %cond.end381, !dbg !6487

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6487
  br label %cond.end383, !dbg !6487

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6487
  br label %cond.end385, !dbg !6487

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6487
  br label %cond.end387, !dbg !6487

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6487
  br label %cond.end389, !dbg !6487

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6487
  br label %cond.end391, !dbg !6487

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6487
  br label %cond.end393, !dbg !6487

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6487
  br label %cond.end395, !dbg !6487

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6487
  br label %cond.end397, !dbg !6487

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6487
  br label %cond.end399, !dbg !6487

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6487
  br label %cond.end401, !dbg !6487

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6487
  br label %cond.end403, !dbg !6487

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6487
  br label %cond.end405, !dbg !6487

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6487
  br label %cond.end407, !dbg !6487

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6487
  br label %cond.end409, !dbg !6487

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6487
  br label %cond.end411, !dbg !6487

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6487
  br label %cond.end413, !dbg !6487

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6487
  br label %cond.end415, !dbg !6487

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6487
  br label %cond.end417, !dbg !6487

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6487
  br label %cond.end419, !dbg !6487

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6487
  br label %cond.end421, !dbg !6487

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6487
  br label %cond.end423, !dbg !6487

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6487
  br label %cond.end425, !dbg !6487

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6487
  br label %cond.end427, !dbg !6487

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6487
  br label %cond.end429, !dbg !6487

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6487
  br label %cond.end431, !dbg !6487

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6487
  br label %cond.end433, !dbg !6487

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6487
  br label %cond.end435, !dbg !6487

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6487
  br label %cond.end437, !dbg !6487

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6487
  br label %cond.end440, !dbg !6487

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6487

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6487
  br label %cond.end444, !dbg !6487

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6487
  %sub443 = sub i64 %72, 1, !dbg !6487
  %call = call i32 @__ilog2_u64(i64 %sub443) #14, !dbg !6487
  br label %cond.end444, !dbg !6487

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6487
  %sub446 = sub i32 %cond445, 12, !dbg !6488
  %add = add i32 %sub446, 1, !dbg !6489
  store i32 %add, i32* %retval, align 4, !dbg !6490
  br label %return, !dbg !6490

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6491
  %dec = add i64 %73, -1, !dbg !6491
  store i64 %dec, i64* %size.addr, align 8, !dbg !6491
  %74 = load i64, i64* %size.addr, align 8, !dbg !6492
  %shr = lshr i64 %74, 12, !dbg !6492
  store i64 %shr, i64* %size.addr, align 8, !dbg !6492
  %75 = load i64, i64* %size.addr, align 8, !dbg !6493
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6470
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6494
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6495
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !6494, !srcloc !6496
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6494
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6497
  %add.i = add i32 %79, 1, !dbg !6498
  store i32 %add.i, i32* %retval, align 4, !dbg !6499
  br label %return, !dbg !6499

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6500
  ret i32 %80, !dbg !6500
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #10 !dbg !6501 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6463, metadata !DIExpression()), !dbg !6505
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6469, metadata !DIExpression()), !dbg !6507
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6508, metadata !DIExpression()), !dbg !6509
  %0 = load i64, i64* %n.addr, align 8, !dbg !6510
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6507
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6511
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6512
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !6511, !srcloc !6496
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6511
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6513
  %add.i = add i32 %4, 1, !dbg !6514
  %sub = sub i32 %add.i, 1, !dbg !6515
  ret i32 %sub, !dbg !6516
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !6517 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6521, metadata !DIExpression()), !dbg !6522
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6523, metadata !DIExpression()), !dbg !6524
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6525, metadata !DIExpression()), !dbg !6526
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6527, metadata !DIExpression()), !dbg !6528
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6529
  ret i8* %0, !dbg !6530
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_clear_bit(i64 %nr, i64* %addr) #2 !dbg !6531 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !6534, metadata !DIExpression()), !dbg !6536
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !6538, metadata !DIExpression()), !dbg !6539
  %c.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i, metadata !6540, metadata !DIExpression()), !dbg !6542
  %tmp.i = alloca i8, align 1
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !6543, metadata !DIExpression()), !dbg !6545
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !6547, metadata !DIExpression()), !dbg !6548
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !6549, metadata !DIExpression()), !dbg !6550
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6551, metadata !DIExpression()), !dbg !6552
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !6553
  %1 = load i64, i64* %nr.addr, align 8, !dbg !6554
  %div = sdiv i64 %1, 64, !dbg !6554
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !6555
  %2 = bitcast i64* %add.ptr to i8*, !dbg !6553
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !6556
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6557
  %conv.i = trunc i64 %4 to i32, !dbg !6557
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !6558
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !6559
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !6559
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #12, !dbg !6559
  %7 = load i64, i64* %nr.addr, align 8, !dbg !6560
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !6561
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !6542
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !6542
  %11 = call i8 asm sideeffect " btrq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) #7, !dbg !6542, !srcloc !6562
  store i8 %11, i8* %c.i, align 1, !dbg !6542
  %12 = load i8, i8* %c.i, align 1, !dbg !6542
  %tobool.i = trunc i8 %12 to i1, !dbg !6542
  %frombool.i = zext i1 %tobool.i to i8, !dbg !6542
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !6542
  %13 = load i8, i8* %tmp.i, align 1, !dbg !6542
  %tobool1.i = trunc i8 %13 to i1, !dbg !6542
  ret i1 %tobool1.i, !dbg !6563
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mmc_signal_sdio_irq(%struct.mmc_host* %host) #2 !dbg !6564 {
entry:
  %host.addr = alloca %struct.mmc_host*, align 8
  store %struct.mmc_host* %host, %struct.mmc_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mmc_host** %host.addr, metadata !6565, metadata !DIExpression()), !dbg !6566
  %0 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !6567
  %ops = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %0, i32 0, i32 3, !dbg !6568
  %1 = load %struct.mmc_host_ops*, %struct.mmc_host_ops** %ops, align 8, !dbg !6568
  %enable_sdio_irq = getelementptr inbounds %struct.mmc_host_ops, %struct.mmc_host_ops* %1, i32 0, i32 7, !dbg !6569
  %2 = load void (%struct.mmc_host*, i32)*, void (%struct.mmc_host*, i32)** %enable_sdio_irq, align 8, !dbg !6569
  %3 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !6570
  call void %2(%struct.mmc_host* %3, i32 0) #11, !dbg !6567
  %4 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !6571
  %sdio_irq_pending = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %4, i32 0, i32 51, !dbg !6572
  store i8 1, i8* %sdio_irq_pending, align 8, !dbg !6573
  %5 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !6574
  %sdio_irq_thread = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %5, i32 0, i32 49, !dbg !6576
  %6 = load %struct.task_struct*, %struct.task_struct** %sdio_irq_thread, align 8, !dbg !6576
  %tobool = icmp ne %struct.task_struct* %6, null, !dbg !6574
  br i1 %tobool, label %if.then, label %if.end, !dbg !6577

if.then:                                          ; preds = %entry
  %7 = load %struct.mmc_host*, %struct.mmc_host** %host.addr, align 8, !dbg !6578
  %sdio_irq_thread1 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %7, i32 0, i32 49, !dbg !6579
  %8 = load %struct.task_struct*, %struct.task_struct** %sdio_irq_thread1, align 8, !dbg !6579
  %call = call i32 @wake_up_process(%struct.task_struct* %8) #11, !dbg !6580
  br label %if.end, !dbg !6580

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6581
}

; Function Attrs: noredzone
declare dso_local void @mmc_detect_change(%struct.mmc_host*, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #2 !dbg !6582 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !6583, metadata !DIExpression()), !dbg !6584
  %0 = load i32, i32* %m.addr, align 4, !dbg !6585
  %conv = zext i32 %0 to i64, !dbg !6585
  %add = add i64 %conv, 4, !dbg !6586
  %sub = sub i64 %add, 1, !dbg !6587
  %div = sdiv i64 %sub, 4, !dbg !6588
  ret i64 %div, !dbg !6589
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #1

; Function Attrs: noredzone
declare dso_local void @usb_free_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noredzone
declare dso_local void @mmc_free_host(%struct.mmc_host*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_get_intfdata(%struct.usb_interface* %intf) #2 !dbg !6590 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !6593, metadata !DIExpression()), !dbg !6594
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !6595
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !6596
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #11, !dbg !6597
  ret i8* %call, !dbg !6598
}

; Function Attrs: noredzone
declare dso_local void @usb_kill_urb(%struct.urb*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !6599 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6602, metadata !DIExpression()), !dbg !6603
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6604
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !6605
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6605
  ret i8* %1, !dbg !6606
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #2 !dbg !6607 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6608, metadata !DIExpression()), !dbg !6610
  %0 = load i64, i64* %__edi, align 8, !dbg !6610
  store i64 %0, i64* %__edi, align 8, !dbg !6610
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6611, metadata !DIExpression()), !dbg !6610
  %1 = load i64, i64* %__esi, align 8, !dbg !6610
  store i64 %1, i64* %__esi, align 8, !dbg !6610
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6612, metadata !DIExpression()), !dbg !6610
  %2 = load i64, i64* %__edx, align 8, !dbg !6610
  store i64 %2, i64* %__edx, align 8, !dbg !6610
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6613, metadata !DIExpression()), !dbg !6610
  %3 = load i64, i64* %__ecx, align 8, !dbg !6610
  store i64 %3, i64* %__ecx, align 8, !dbg !6610
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6614, metadata !DIExpression()), !dbg !6610
  %4 = load i64, i64* %__eax, align 8, !dbg !6610
  store i64 %4, i64* %__eax, align 8, !dbg !6610
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !6610
  %6 = call i64 @llvm.read_register.i64(metadata !4662), !dbg !6610
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #7, !dbg !6610, !srcloc !6615
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6610
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6610
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6610
  call void @llvm.write_register.i64(metadata !4662, i64 %asmresult1), !dbg !6610
  ret void, !dbg !6616
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { nounwind willreturn }
attributes #10 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noredzone }
attributes #12 = { noredzone nounwind }
attributes #13 = { cold noredzone }
attributes #14 = { noredzone nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4662}
!llvm.module.flags = !{!4663, !4664, !4665, !4666}
!llvm.ident = !{!4667}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ushc_driver_init240", scope: !2, file: !3, line: 564, type: !160, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !156, globals: !4084, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/mmc/host/ushc.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !20, !26, !31, !37, !44, !50, !59, !67, !73, !79, !86, !94, !100, !112, !121, !126, !135, !144, !149}
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
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ushc_request", file: !3, line: 22, baseType: !7, size: 32, elements: !127)
!127 = !{!128, !129, !130, !131, !132, !133, !134}
!128 = !DIEnumerator(name: "USHC_GET_CAPS", value: 0, isUnsigned: true)
!129 = !DIEnumerator(name: "USHC_HOST_CTRL", value: 1, isUnsigned: true)
!130 = !DIEnumerator(name: "USHC_PWR_CTRL", value: 2, isUnsigned: true)
!131 = !DIEnumerator(name: "USHC_CLK_FREQ", value: 3, isUnsigned: true)
!132 = !DIEnumerator(name: "USHC_EXEC_CMD", value: 4, isUnsigned: true)
!133 = !DIEnumerator(name: "USHC_READ_RESP", value: 5, isUnsigned: true)
!134 = !DIEnumerator(name: "USHC_RESET", value: 6, isUnsigned: true)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ushc_request_type", file: !3, line: 32, baseType: !7, size: 32, elements: !136)
!136 = !{!137, !138, !139, !140, !141, !142, !143}
!137 = !DIEnumerator(name: "USHC_GET_CAPS_TYPE", value: 192, isUnsigned: true)
!138 = !DIEnumerator(name: "USHC_HOST_CTRL_TYPE", value: 64, isUnsigned: true)
!139 = !DIEnumerator(name: "USHC_PWR_CTRL_TYPE", value: 64, isUnsigned: true)
!140 = !DIEnumerator(name: "USHC_CLK_FREQ_TYPE", value: 64, isUnsigned: true)
!141 = !DIEnumerator(name: "USHC_EXEC_CMD_TYPE", value: 64, isUnsigned: true)
!142 = !DIEnumerator(name: "USHC_READ_RESP_TYPE", value: 192, isUnsigned: true)
!143 = !DIEnumerator(name: "USHC_RESET_TYPE", value: 64, isUnsigned: true)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !145, line: 10, baseType: !7, size: 32, elements: !146)
!145 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!146 = !{!147, !148}
!147 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!148 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !150, line: 305, baseType: !7, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!151 = !{!152, !153, !154, !155}
!152 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!153 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!154 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!155 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!156 = !{!157, !160, !161, !163, !176, !3851, !3832, !843, !311, !4080, !4081, !4083, !167, !296}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !159, line: 76, flags: DIFlagFwdDecl)
!159 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !162, line: 148, baseType: !7)
!162 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !6, line: 631, size: 10624, elements: !165)
!165 = !{!166, !168, !173, !178, !179, !180, !181, !182, !185, !186, !190, !191, !3821, !3862, !3863, !3880, !3941, !4023, !4024, !4026, !4027, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4062, !4063, !4064, !4069, !4076, !4077, !4078, !4079}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !164, file: !6, line: 632, baseType: !167, size: 32)
!167 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !164, file: !6, line: 633, baseType: !169, size: 128, offset: 32)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 128, elements: !171)
!170 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!171 = !{!172}
!172 = !DISubrange(count: 16)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !164, file: !6, line: 634, baseType: !174, size: 32, offset: 160)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !175, line: 21, baseType: !176)
!175 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !177, line: 27, baseType: !7)
!177 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!178 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !164, file: !6, line: 635, baseType: !100, size: 32, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !164, file: !6, line: 636, baseType: !112, size: 32, offset: 224)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !164, file: !6, line: 637, baseType: !7, size: 32, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !164, file: !6, line: 638, baseType: !7, size: 32, offset: 288)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !164, file: !6, line: 640, baseType: !183, size: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !6, line: 474, flags: DIFlagFwdDecl)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !164, file: !6, line: 641, baseType: !167, size: 32, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !164, file: !6, line: 643, baseType: !187, size: 64, offset: 416)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 2)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !164, file: !6, line: 645, baseType: !163, size: 64, offset: 512)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !164, file: !6, line: 646, baseType: !192, size: 64, offset: 576)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !6, line: 424, size: 960, elements: !194)
!194 = !{!195, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3815, !3816, !3817, !3818, !3819, !3820}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !193, file: !6, line: 425, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !80, line: 461, size: 5568, elements: !198)
!198 = !{!199, !3352, !3353, !3356, !3357, !3408, !3499, !3500, !3501, !3502, !3503, !3512, !3617, !3630, !3633, !3634, !3638, !3640, !3641, !3642, !3646, !3652, !3653, !3656, !3660, !3750, !3751, !3752, !3753, !3754, !3786, !3787, !3788, !3791, !3794, !3795, !3796, !3797}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !197, file: !80, line: 462, baseType: !200, size: 512)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !201, line: 64, size: 512, elements: !202)
!201 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!202 = !{!203, !206, !212, !214, !274, !3203, !3342, !3347, !3348, !3349, !3350, !3351}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !200, file: !201, line: 65, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !200, file: !201, line: 66, baseType: !207, size: 128, offset: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !162, line: 178, size: 128, elements: !208)
!208 = !{!209, !211}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !207, file: !162, line: 179, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !207, file: !162, line: 179, baseType: !210, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !200, file: !201, line: 67, baseType: !213, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !200, file: !201, line: 68, baseType: !215, size: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !201, line: 192, size: 704, elements: !217)
!217 = !{!218, !219, !235, !236}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !216, file: !201, line: 193, baseType: !207, size: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !216, file: !201, line: 194, baseType: !220, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !221, line: 83, baseType: !222)
!221 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !221, line: 71, elements: !223)
!223 = !{!224}
!224 = !DIDerivedType(tag: DW_TAG_member, scope: !222, file: !221, line: 72, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !222, file: !221, line: 72, elements: !226)
!226 = !{!227}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !225, file: !221, line: 73, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !221, line: 20, elements: !229)
!229 = !{!230}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !228, file: !221, line: 21, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !232, line: 25, baseType: !233)
!232 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !232, line: 25, elements: !234)
!234 = !{}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !216, file: !201, line: 195, baseType: !200, size: 512, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !216, file: !201, line: 196, baseType: !237, size: 64, offset: 640)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !201, line: 156, size: 192, elements: !240)
!240 = !{!241, !246, !251}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !239, file: !201, line: 157, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!167, !215, !213}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !239, file: !201, line: 158, baseType: !247, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!204, !215, !213}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !239, file: !201, line: 159, baseType: !252, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!167, !215, !213, !256}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !201, line: 148, size: 20736, elements: !258)
!258 = !{!259, !264, !268, !269, !273}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !257, file: !201, line: 149, baseType: !260, size: 192)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 192, elements: !262)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!262 = !{!263}
!263 = !DISubrange(count: 3)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !257, file: !201, line: 150, baseType: !265, size: 4096, offset: 192)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 4096, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !257, file: !201, line: 151, baseType: !167, size: 32, offset: 4288)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !257, file: !201, line: 152, baseType: !270, size: 16384, offset: 4320)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 16384, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 2048)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !257, file: !201, line: 153, baseType: !167, size: 32, offset: 20704)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !200, file: !201, line: 69, baseType: !275, size: 64, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !201, line: 138, size: 448, elements: !277)
!277 = !{!278, !282, !312, !314, !3165, !3193, !3197}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !276, file: !201, line: 139, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !213}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !276, file: !201, line: 140, baseType: !283, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !286, line: 230, size: 128, elements: !287)
!286 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!287 = !{!288, !304}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !285, file: !286, line: 231, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!292, !213, !297, !261}
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !162, line: 60, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !294, line: 73, baseType: !295)
!294 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !294, line: 15, baseType: !296)
!296 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !286, line: 30, size: 128, elements: !299)
!299 = !{!300, !301}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !298, file: !286, line: 31, baseType: !204, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !298, file: !286, line: 32, baseType: !302, size: 16, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !162, line: 19, baseType: !303)
!303 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !285, file: !286, line: 232, baseType: !305, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!292, !213, !297, !204, !308}
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !162, line: 55, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !294, line: 72, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !294, line: 16, baseType: !311)
!311 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !276, file: !201, line: 141, baseType: !313, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !276, file: !201, line: 142, baseType: !315, size: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !286, line: 84, size: 320, elements: !319)
!319 = !{!320, !321, !325, !3162, !3163}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !318, file: !286, line: 85, baseType: !204, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !318, file: !286, line: 86, baseType: !322, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!302, !213, !297, !167}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !318, file: !286, line: 88, baseType: !326, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!302, !213, !329, !167}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !286, line: 168, size: 448, elements: !331)
!331 = !{!332, !333, !334, !335, !3157, !3158}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !330, file: !286, line: 169, baseType: !298, size: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !330, file: !286, line: 170, baseType: !308, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !330, file: !286, line: 171, baseType: !160, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !330, file: !286, line: 172, baseType: !336, size: 64, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!292, !339, !213, !329, !261, !514, !308}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !51, line: 916, size: 1856, align: 32, elements: !341)
!341 = !{!342, !360, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3140, !3141, !3150, !3151, !3152, !3153, !3154, !3155, !3156}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !340, file: !51, line: 920, baseType: !343, size: 128)
!343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !340, file: !51, line: 917, size: 128, elements: !344)
!344 = !{!345, !351}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !343, file: !51, line: 918, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !347, line: 58, size: 64, elements: !348)
!347 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !347, line: 59, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !343, file: !51, line: 919, baseType: !352, size: 128, align: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !162, line: 216, size: 128, align: 64, elements: !353)
!353 = !{!354, !356}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !352, file: !162, line: 217, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !352, file: !162, line: 218, baseType: !357, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !355}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !340, file: !51, line: 921, baseType: !361, size: 128, offset: 128)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !362, line: 8, size: 128, elements: !363)
!362 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!363 = !{!364, !368}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !361, file: !362, line: 9, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !367, line: 18, flags: DIFlagFwdDecl)
!367 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!368 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !361, file: !362, line: 10, baseType: !369, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !367, line: 89, size: 1536, elements: !371)
!371 = !{!372, !373, !383, !391, !392, !411, !3090, !3092, !3104, !3105, !3106, !3107, !3108, !3114, !3115, !3116}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !370, file: !367, line: 91, baseType: !7, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !370, file: !367, line: 92, baseType: !374, size: 32, offset: 32)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !375, line: 277, baseType: !376)
!375 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !375, line: 277, size: 32, elements: !377)
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !376, file: !375, line: 277, baseType: !379, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !375, line: 70, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !375, line: 65, size: 32, elements: !381)
!381 = !{!382}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !380, file: !375, line: 66, baseType: !7, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !370, file: !367, line: 93, baseType: !384, size: 128, offset: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !385, line: 38, size: 128, elements: !386)
!385 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!386 = !{!387, !389}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !384, file: !385, line: 39, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !384, file: !385, line: 39, baseType: !390, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !370, file: !367, line: 94, baseType: !369, size: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !370, file: !367, line: 95, baseType: !393, size: 128, offset: 256)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !367, line: 47, size: 128, elements: !394)
!394 = !{!395, !407}
!395 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !367, line: 48, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !367, line: 48, size: 64, elements: !397)
!397 = !{!398, !403}
!398 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !367, line: 49, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !396, file: !367, line: 49, size: 64, elements: !400)
!400 = !{!401, !402}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !399, file: !367, line: 50, baseType: !174, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !399, file: !367, line: 50, baseType: !174, size: 32, offset: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !396, file: !367, line: 52, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !175, line: 23, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !177, line: 31, baseType: !406)
!406 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !393, file: !367, line: 54, baseType: !408, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!410 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !370, file: !367, line: 96, baseType: !412, size: 64, offset: 384)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !51, line: 610, size: 4224, elements: !414)
!414 = !{!415, !416, !417, !425, !432, !433, !581, !2801, !2802, !2803, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !3066, !3074, !3075, !3076, !3086, !3087, !3088, !3089}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !413, file: !51, line: 611, baseType: !302, size: 16)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !413, file: !51, line: 612, baseType: !303, size: 16, offset: 16)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !413, file: !51, line: 613, baseType: !418, size: 32, offset: 32)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !419, line: 23, baseType: !420)
!419 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !419, line: 21, size: 32, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !420, file: !419, line: 22, baseType: !423, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !162, line: 32, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !294, line: 49, baseType: !7)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !413, file: !51, line: 614, baseType: !426, size: 32, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !419, line: 28, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !419, line: 26, size: 32, elements: !428)
!428 = !{!429}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !427, file: !419, line: 27, baseType: !430, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !162, line: 33, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !294, line: 50, baseType: !7)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !413, file: !51, line: 615, baseType: !7, size: 32, offset: 96)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !413, file: !51, line: 622, baseType: !434, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !51, line: 1864, size: 1536, align: 512, elements: !437)
!437 = !{!438, !442, !455, !459, !465, !469, !475, !479, !483, !487, !491, !492, !498, !502, !528, !557, !561, !567, !572, !576, !577}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !436, file: !51, line: 1865, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!369, !412, !369, !7}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !436, file: !51, line: 1866, baseType: !443, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!204, !369, !412, !446}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !448, line: 10, size: 128, elements: !449)
!448 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!449 = !{!450, !454}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !447, file: !448, line: 11, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !160}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !447, file: !448, line: 12, baseType: !160, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !436, file: !51, line: 1867, baseType: !456, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!167, !412, !167}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !436, file: !51, line: 1868, baseType: !460, size: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!463, !412, !167}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !51, line: 581, flags: DIFlagFwdDecl)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !436, file: !51, line: 1870, baseType: !466, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!167, !369, !261, !167}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !436, file: !51, line: 1872, baseType: !470, size: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!167, !412, !369, !302, !473}
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !162, line: 30, baseType: !474)
!474 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !436, file: !51, line: 1873, baseType: !476, size: 64, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!167, !369, !412, !369}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !436, file: !51, line: 1874, baseType: !480, size: 64, offset: 448)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!167, !412, !369}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !436, file: !51, line: 1875, baseType: !484, size: 64, offset: 512)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!167, !412, !369, !204}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !436, file: !51, line: 1876, baseType: !488, size: 64, offset: 576)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!167, !412, !369, !302}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !436, file: !51, line: 1877, baseType: !480, size: 64, offset: 640)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !436, file: !51, line: 1878, baseType: !493, size: 64, offset: 704)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!167, !412, !369, !302, !496}
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !162, line: 16, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !162, line: 13, baseType: !174)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !436, file: !51, line: 1879, baseType: !499, size: 64, offset: 768)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!167, !412, !369, !412, !369, !7}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !436, file: !51, line: 1881, baseType: !503, size: 64, offset: 832)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!167, !369, !506}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !51, line: 219, size: 640, elements: !508)
!508 = !{!509, !510, !511, !512, !513, !517, !525, !526, !527}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !507, file: !51, line: 220, baseType: !7, size: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !507, file: !51, line: 221, baseType: !302, size: 16, offset: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !507, file: !51, line: 222, baseType: !418, size: 32, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !507, file: !51, line: 223, baseType: !426, size: 32, offset: 96)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !507, file: !51, line: 224, baseType: !514, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !162, line: 46, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !294, line: 88, baseType: !516)
!516 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !507, file: !51, line: 225, baseType: !518, size: 128, offset: 192)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !519, line: 13, size: 128, elements: !520)
!519 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!520 = !{!521, !524}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !518, file: !519, line: 14, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !519, line: 8, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !177, line: 30, baseType: !516)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !518, file: !519, line: 15, baseType: !296, size: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !507, file: !51, line: 226, baseType: !518, size: 128, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !507, file: !51, line: 227, baseType: !518, size: 128, offset: 448)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !507, file: !51, line: 234, baseType: !339, size: 64, offset: 576)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !436, file: !51, line: 1882, baseType: !529, size: 64, offset: 896)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!167, !532, !534, !174, !7}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !536, line: 22, size: 1152, elements: !537)
!536 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!537 = !{!538, !539, !540, !541, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !535, file: !536, line: 23, baseType: !174, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !535, file: !536, line: 24, baseType: !302, size: 16, offset: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !535, file: !536, line: 25, baseType: !7, size: 32, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !535, file: !536, line: 26, baseType: !542, size: 32, offset: 96)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !162, line: 104, baseType: !174)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !535, file: !536, line: 27, baseType: !404, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !535, file: !536, line: 28, baseType: !404, size: 64, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !535, file: !536, line: 37, baseType: !404, size: 64, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !535, file: !536, line: 38, baseType: !496, size: 32, offset: 320)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !535, file: !536, line: 39, baseType: !496, size: 32, offset: 352)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !535, file: !536, line: 40, baseType: !418, size: 32, offset: 384)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !535, file: !536, line: 41, baseType: !426, size: 32, offset: 416)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !535, file: !536, line: 42, baseType: !514, size: 64, offset: 448)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !535, file: !536, line: 43, baseType: !518, size: 128, offset: 512)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !535, file: !536, line: 44, baseType: !518, size: 128, offset: 640)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !535, file: !536, line: 45, baseType: !518, size: 128, offset: 768)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !535, file: !536, line: 46, baseType: !518, size: 128, offset: 896)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !535, file: !536, line: 47, baseType: !404, size: 64, offset: 1024)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !535, file: !536, line: 48, baseType: !404, size: 64, offset: 1088)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !436, file: !51, line: 1883, baseType: !558, size: 64, offset: 960)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!292, !369, !261, !308}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !436, file: !51, line: 1884, baseType: !562, size: 64, offset: 1024)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!167, !412, !565, !404, !404}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !51, line: 50, flags: DIFlagFwdDecl)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !436, file: !51, line: 1886, baseType: !568, size: 64, offset: 1088)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!167, !412, !571, !167}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !436, file: !51, line: 1887, baseType: !573, size: 64, offset: 1152)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!167, !412, !369, !339, !7, !302}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !436, file: !51, line: 1890, baseType: !488, size: 64, offset: 1216)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !436, file: !51, line: 1891, baseType: !578, size: 64, offset: 1280)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!167, !412, !463, !167}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !413, file: !51, line: 623, baseType: !582, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !51, line: 1416, size: 9472, elements: !584)
!584 = !{!585, !586, !587, !588, !589, !590, !637, !2408, !2490, !2573, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2589, !2593, !2594, !2597, !2598, !2601, !2602, !2603, !2644, !2671, !2672, !2673, !2674, !2675, !2676, !2679, !2681, !2688, !2689, !2691, !2692, !2693, !2752, !2753, !2768, !2769, !2770, !2771, !2772, !2775, !2776, !2777, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !583, file: !51, line: 1417, baseType: !207, size: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !583, file: !51, line: 1418, baseType: !496, size: 32, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !583, file: !51, line: 1419, baseType: !410, size: 8, offset: 160)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !583, file: !51, line: 1420, baseType: !311, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !583, file: !51, line: 1421, baseType: !514, size: 64, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !583, file: !51, line: 1422, baseType: !591, size: 64, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !51, line: 2228, size: 576, elements: !593)
!593 = !{!594, !595, !596, !603, !607, !611, !615, !616, !617, !627, !630, !631, !632, !634, !635, !636}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !592, file: !51, line: 2229, baseType: !204, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !592, file: !51, line: 2230, baseType: !167, size: 32, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !592, file: !51, line: 2238, baseType: !597, size: 64, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!167, !600}
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !602, line: 28, flags: DIFlagFwdDecl)
!602 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!603 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !592, file: !51, line: 2239, baseType: !604, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !606)
!606 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !51, line: 70, flags: DIFlagFwdDecl)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !592, file: !51, line: 2240, baseType: !608, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!369, !591, !167, !204, !160}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !592, file: !51, line: 2242, baseType: !612, size: 64, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !582}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !592, file: !51, line: 2243, baseType: !157, size: 64, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !592, file: !51, line: 2244, baseType: !591, size: 64, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !592, file: !51, line: 2245, baseType: !618, size: 64, offset: 512)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !162, line: 182, size: 64, elements: !619)
!619 = !{!620}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !618, file: !162, line: 183, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !162, line: 186, size: 128, elements: !623)
!623 = !{!624, !625}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !622, file: !162, line: 187, baseType: !621, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !622, file: !162, line: 187, baseType: !626, size: 64, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !592, file: !51, line: 2247, baseType: !628, offset: 576)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !629, line: 187, elements: !234)
!629 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!630 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !592, file: !51, line: 2248, baseType: !628, offset: 576)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !592, file: !51, line: 2249, baseType: !628, offset: 576)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !592, file: !51, line: 2250, baseType: !633, offset: 576)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, elements: !262)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !592, file: !51, line: 2252, baseType: !628, offset: 576)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !592, file: !51, line: 2253, baseType: !628, offset: 576)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !592, file: !51, line: 2254, baseType: !628, offset: 576)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !583, file: !51, line: 1423, baseType: !638, size: 64, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !640)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !51, line: 1935, size: 1472, elements: !641)
!641 = !{!642, !646, !650, !651, !655, !661, !665, !666, !667, !671, !675, !676, !677, !678, !684, !689, !690, !697, !698, !699, !700, !2392, !2407}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !640, file: !51, line: 1936, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!412, !582}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !640, file: !51, line: 1937, baseType: !647, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !412}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !640, file: !51, line: 1938, baseType: !647, size: 64, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !640, file: !51, line: 1940, baseType: !652, size: 64, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !412, !167}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !640, file: !51, line: 1941, baseType: !656, size: 64, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!167, !412, !659}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !51, line: 289, flags: DIFlagFwdDecl)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !640, file: !51, line: 1942, baseType: !662, size: 64, offset: 320)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!167, !412}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !640, file: !51, line: 1943, baseType: !647, size: 64, offset: 384)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !640, file: !51, line: 1944, baseType: !612, size: 64, offset: 448)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !640, file: !51, line: 1945, baseType: !668, size: 64, offset: 512)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!167, !582, !167}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !640, file: !51, line: 1946, baseType: !672, size: 64, offset: 576)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!167, !582}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !640, file: !51, line: 1947, baseType: !672, size: 64, offset: 640)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !640, file: !51, line: 1948, baseType: !672, size: 64, offset: 704)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !640, file: !51, line: 1949, baseType: !672, size: 64, offset: 768)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !640, file: !51, line: 1950, baseType: !679, size: 64, offset: 832)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!167, !369, !682}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !51, line: 57, flags: DIFlagFwdDecl)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !640, file: !51, line: 1951, baseType: !685, size: 64, offset: 896)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!167, !582, !688, !261}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !640, file: !51, line: 1952, baseType: !612, size: 64, offset: 960)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !640, file: !51, line: 1954, baseType: !691, size: 64, offset: 1024)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!167, !694, !369}
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !696, line: 539, flags: DIFlagFwdDecl)
!696 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!697 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !640, file: !51, line: 1955, baseType: !691, size: 64, offset: 1088)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !640, file: !51, line: 1956, baseType: !691, size: 64, offset: 1152)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !640, file: !51, line: 1957, baseType: !691, size: 64, offset: 1216)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !640, file: !51, line: 1963, baseType: !701, size: 64, offset: 1280)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!167, !582, !704, !161}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !706, line: 68, size: 512, align: 128, elements: !707)
!706 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!707 = !{!708, !709, !2384, !2391}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !705, file: !706, line: 69, baseType: !311, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, scope: !705, file: !706, line: 77, baseType: !710, size: 320, offset: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !705, file: !706, line: 77, size: 320, elements: !711)
!711 = !{!712, !899, !904, !932, !940, !946, !2315, !2383}
!712 = !DIDerivedType(tag: DW_TAG_member, scope: !710, file: !706, line: 78, baseType: !713, size: 320)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !710, file: !706, line: 78, size: 320, elements: !714)
!714 = !{!715, !716, !897, !898}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !713, file: !706, line: 84, baseType: !207, size: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !713, file: !706, line: 86, baseType: !717, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !51, line: 451, size: 1216, align: 64, elements: !719)
!719 = !{!720, !721, !728, !729, !734, !749, !765, !766, !767, !768, !890, !891, !894, !895, !896}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !718, file: !51, line: 452, baseType: !412, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !718, file: !51, line: 453, baseType: !722, size: 128, offset: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !723, line: 292, size: 128, elements: !724)
!723 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!724 = !{!725, !726, !727}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !722, file: !723, line: 293, baseType: !220)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !722, file: !723, line: 295, baseType: !161, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !722, file: !723, line: 296, baseType: !160, size: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !718, file: !51, line: 454, baseType: !161, size: 32, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !718, file: !51, line: 455, baseType: !730, size: 32, offset: 224)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !162, line: 168, baseType: !731)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !162, line: 166, size: 32, elements: !732)
!732 = !{!733}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !731, file: !162, line: 167, baseType: !167, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !718, file: !51, line: 460, baseType: !735, size: 128, offset: 256)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !736, line: 125, size: 128, elements: !737)
!736 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!737 = !{!738, !748}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !735, file: !736, line: 126, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !736, line: 31, size: 64, elements: !740)
!740 = !{!741}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !739, file: !736, line: 32, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !736, line: 24, size: 192, align: 64, elements: !744)
!744 = !{!745, !746, !747}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !743, file: !736, line: 25, baseType: !311, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !743, file: !736, line: 26, baseType: !742, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !743, file: !736, line: 27, baseType: !742, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !735, file: !736, line: 127, baseType: !742, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !718, file: !51, line: 461, baseType: !750, size: 256, offset: 384)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !751, line: 35, size: 256, elements: !752)
!751 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!752 = !{!753, !761, !762, !764}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !750, file: !751, line: 36, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !755, line: 13, baseType: !756)
!755 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !162, line: 175, baseType: !757)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !162, line: 173, size: 64, elements: !758)
!758 = !{!759}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !757, file: !162, line: 174, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !175, line: 22, baseType: !523)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !750, file: !751, line: 42, baseType: !754, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !750, file: !751, line: 46, baseType: !763, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !221, line: 29, baseType: !228)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !750, file: !751, line: 47, baseType: !207, size: 128, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !718, file: !51, line: 462, baseType: !311, size: 64, offset: 640)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !718, file: !51, line: 463, baseType: !311, size: 64, offset: 704)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !718, file: !51, line: 464, baseType: !311, size: 64, offset: 768)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !718, file: !51, line: 465, baseType: !769, size: 64, offset: 832)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !771)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !51, line: 367, size: 1408, elements: !772)
!772 = !{!773, !777, !781, !785, !789, !793, !799, !805, !809, !814, !818, !822, !826, !854, !858, !864, !865, !866, !870, !875, !879, !886}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !771, file: !51, line: 368, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!167, !704, !659}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !771, file: !51, line: 369, baseType: !778, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!167, !339, !704}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !771, file: !51, line: 372, baseType: !782, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!167, !717, !659}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !771, file: !51, line: 375, baseType: !786, size: 64, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!167, !704}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !771, file: !51, line: 381, baseType: !790, size: 64, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!167, !339, !717, !210, !7}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !771, file: !51, line: 383, baseType: !794, size: 64, offset: 320)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{null, !797}
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !51, line: 290, flags: DIFlagFwdDecl)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !771, file: !51, line: 385, baseType: !800, size: 64, offset: 384)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!167, !339, !717, !514, !7, !7, !803, !804}
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !771, file: !51, line: 388, baseType: !806, size: 64, offset: 448)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!167, !339, !717, !514, !7, !7, !704, !160}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !771, file: !51, line: 393, baseType: !810, size: 64, offset: 512)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!813, !717, !813}
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !162, line: 125, baseType: !404)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !771, file: !51, line: 394, baseType: !815, size: 64, offset: 576)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{null, !704, !7, !7}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !771, file: !51, line: 395, baseType: !819, size: 64, offset: 640)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!167, !704, !161}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !771, file: !51, line: 396, baseType: !823, size: 64, offset: 704)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{null, !704}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !771, file: !51, line: 397, baseType: !827, size: 64, offset: 768)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!292, !830, !852}
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !51, line: 320, size: 384, elements: !832)
!832 = !{!833, !834, !835, !839, !840, !841, !844, !845}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !831, file: !51, line: 321, baseType: !339, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !831, file: !51, line: 326, baseType: !514, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !831, file: !51, line: 327, baseType: !836, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !830, !296, !296}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !831, file: !51, line: 328, baseType: !160, size: 64, offset: 192)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !831, file: !51, line: 329, baseType: !167, size: 32, offset: 256)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !831, file: !51, line: 330, baseType: !842, size: 16, offset: 288)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !175, line: 19, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !177, line: 24, baseType: !303)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !831, file: !51, line: 331, baseType: !842, size: 16, offset: 304)
!845 = !DIDerivedType(tag: DW_TAG_member, scope: !831, file: !51, line: 332, baseType: !846, size: 64, offset: 320)
!846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !831, file: !51, line: 332, size: 64, elements: !847)
!847 = !{!848, !849}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !846, file: !51, line: 333, baseType: !7, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !846, file: !51, line: 334, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !51, line: 334, flags: DIFlagFwdDecl)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !51, line: 64, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !771, file: !51, line: 402, baseType: !855, size: 64, offset: 832)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!167, !717, !704, !704, !13}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !771, file: !51, line: 404, baseType: !859, size: 64, offset: 896)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!473, !704, !862}
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !863, line: 305, baseType: !7)
!863 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!864 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !771, file: !51, line: 405, baseType: !823, size: 64, offset: 960)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !771, file: !51, line: 406, baseType: !786, size: 64, offset: 1024)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !771, file: !51, line: 407, baseType: !867, size: 64, offset: 1088)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!167, !704, !311, !311}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !771, file: !51, line: 409, baseType: !871, size: 64, offset: 1152)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{null, !704, !874, !874}
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !771, file: !51, line: 410, baseType: !876, size: 64, offset: 1216)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!167, !717, !704}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !771, file: !51, line: 413, baseType: !880, size: 64, offset: 1280)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!167, !883, !339, !885}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !51, line: 61, flags: DIFlagFwdDecl)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !771, file: !51, line: 415, baseType: !887, size: 64, offset: 1344)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{null, !339}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !718, file: !51, line: 466, baseType: !311, size: 64, offset: 896)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !718, file: !51, line: 467, baseType: !892, size: 32, offset: 960)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !893, line: 8, baseType: !174)
!893 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!894 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !718, file: !51, line: 468, baseType: !220, offset: 992)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !718, file: !51, line: 469, baseType: !207, size: 128, offset: 1024)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !718, file: !51, line: 470, baseType: !160, size: 64, offset: 1152)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !713, file: !706, line: 87, baseType: !311, size: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !713, file: !706, line: 94, baseType: !311, size: 64, offset: 256)
!899 = !DIDerivedType(tag: DW_TAG_member, scope: !710, file: !706, line: 96, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !710, file: !706, line: 96, size: 64, elements: !901)
!901 = !{!902}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !900, file: !706, line: 101, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !162, line: 143, baseType: !404)
!904 = !DIDerivedType(tag: DW_TAG_member, scope: !710, file: !706, line: 103, baseType: !905, size: 320)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !710, file: !706, line: 103, size: 320, elements: !906)
!906 = !{!907, !917, !920, !921}
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !905, file: !706, line: 104, baseType: !908, size: 128)
!908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !905, file: !706, line: 104, size: 128, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !908, file: !706, line: 105, baseType: !207, size: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, scope: !908, file: !706, line: 106, baseType: !912, size: 128)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !908, file: !706, line: 106, size: 128, elements: !913)
!913 = !{!914, !915, !916}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !912, file: !706, line: 107, baseType: !704, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !912, file: !706, line: 109, baseType: !167, size: 32, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !912, file: !706, line: 110, baseType: !167, size: 32, offset: 96)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !905, file: !706, line: 117, baseType: !918, size: 64, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !706, line: 117, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !905, file: !706, line: 119, baseType: !160, size: 64, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_member, scope: !905, file: !706, line: 120, baseType: !922, size: 64, offset: 256)
!922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !905, file: !706, line: 120, size: 64, elements: !923)
!923 = !{!924, !925, !926}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !922, file: !706, line: 121, baseType: !160, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !922, file: !706, line: 122, baseType: !311, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, scope: !922, file: !706, line: 123, baseType: !927, size: 32)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !922, file: !706, line: 123, size: 32, elements: !928)
!928 = !{!929, !930, !931}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !927, file: !706, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !927, file: !706, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !927, file: !706, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!932 = !DIDerivedType(tag: DW_TAG_member, scope: !710, file: !706, line: 130, baseType: !933, size: 192)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !710, file: !706, line: 130, size: 192, elements: !934)
!934 = !{!935, !936, !937, !938, !939}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !933, file: !706, line: 131, baseType: !311, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !933, file: !706, line: 134, baseType: !410, size: 8, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !933, file: !706, line: 135, baseType: !410, size: 8, offset: 72)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !933, file: !706, line: 136, baseType: !730, size: 32, offset: 96)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !933, file: !706, line: 137, baseType: !7, size: 32, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, scope: !710, file: !706, line: 139, baseType: !941, size: 256)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !710, file: !706, line: 139, size: 256, elements: !942)
!942 = !{!943, !944, !945}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !941, file: !706, line: 140, baseType: !311, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !941, file: !706, line: 141, baseType: !730, size: 32, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !941, file: !706, line: 143, baseType: !207, size: 128, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !710, file: !706, line: 145, baseType: !947, size: 256)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !710, file: !706, line: 145, size: 256, elements: !948)
!948 = !{!949, !950, !952, !953, !2314}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !947, file: !706, line: 146, baseType: !311, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !947, file: !706, line: 147, baseType: !951, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !696, line: 509, baseType: !704)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !947, file: !706, line: 148, baseType: !311, size: 64, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !947, file: !706, line: 149, baseType: !954, size: 64, offset: 192)
!954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !947, file: !706, line: 149, size: 64, elements: !955)
!955 = !{!956, !2313}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !954, file: !706, line: 150, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !706, line: 388, size: 7296, elements: !959)
!959 = !{!960, !2309}
!960 = !DIDerivedType(tag: DW_TAG_member, scope: !958, file: !706, line: 389, baseType: !961, size: 7296)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !958, file: !706, line: 389, size: 7296, elements: !962)
!962 = !{!963, !1081, !1082, !1083, !1087, !1088, !1089, !1090, !1091, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1132, !1140, !1143, !1189, !1190, !2293, !2294, !2297, !2298, !2299, !2302, !2303, !2304, !2307, !2308}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !961, file: !706, line: 390, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !706, line: 305, size: 1472, elements: !966)
!966 = !{!967, !968, !969, !970, !971, !972, !973, !974, !981, !982, !987, !988, !991, !1075, !1076, !1077, !1078, !1079}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !965, file: !706, line: 308, baseType: !311, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !965, file: !706, line: 309, baseType: !311, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !965, file: !706, line: 313, baseType: !964, size: 64, offset: 128)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !965, file: !706, line: 313, baseType: !964, size: 64, offset: 192)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !965, file: !706, line: 315, baseType: !743, size: 192, align: 64, offset: 256)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !965, file: !706, line: 323, baseType: !311, size: 64, offset: 448)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !965, file: !706, line: 327, baseType: !957, size: 64, offset: 512)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !965, file: !706, line: 333, baseType: !975, size: 64, offset: 576)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !696, line: 284, baseType: !976)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !696, line: 284, size: 64, elements: !977)
!977 = !{!978}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !976, file: !696, line: 284, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !980, line: 19, baseType: !311)
!980 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!981 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !965, file: !706, line: 334, baseType: !311, size: 64, offset: 640)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !965, file: !706, line: 343, baseType: !983, size: 256, offset: 704)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !965, file: !706, line: 340, size: 256, elements: !984)
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !983, file: !706, line: 341, baseType: !743, size: 192, align: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !983, file: !706, line: 342, baseType: !311, size: 64, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !965, file: !706, line: 351, baseType: !207, size: 128, offset: 960)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !965, file: !706, line: 353, baseType: !989, size: 64, offset: 1088)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !706, line: 353, flags: DIFlagFwdDecl)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !965, file: !706, line: 356, baseType: !992, size: 64, offset: 1152)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !994)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !21, line: 557, size: 832, elements: !995)
!995 = !{!996, !1000, !1001, !1005, !1009, !1049, !1053, !1057, !1061, !1062, !1063, !1067, !1071}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !994, file: !21, line: 558, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{null, !964}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !994, file: !21, line: 559, baseType: !997, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !994, file: !21, line: 560, baseType: !1002, size: 64, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!167, !964, !311}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !994, file: !21, line: 561, baseType: !1006, size: 64, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!167, !964}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !994, file: !21, line: 562, baseType: !1010, size: 64, offset: 256)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!1013, !1014}
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !706, line: 682, baseType: !7)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !21, line: 508, size: 768, elements: !1016)
!1016 = !{!1017, !1018, !1019, !1020, !1021, !1022, !1029, !1036, !1042, !1043, !1044, !1046, !1048}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1015, file: !21, line: 509, baseType: !964, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1015, file: !21, line: 510, baseType: !7, size: 32, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1015, file: !21, line: 511, baseType: !161, size: 32, offset: 96)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1015, file: !21, line: 512, baseType: !311, size: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1015, file: !21, line: 513, baseType: !311, size: 64, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1015, file: !21, line: 514, baseType: !1023, size: 64, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !696, line: 385, baseType: !1025)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !696, line: 385, size: 64, elements: !1026)
!1026 = !{!1027}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1025, file: !696, line: 385, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !980, line: 15, baseType: !311)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1015, file: !21, line: 516, baseType: !1030, size: 64, offset: 320)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !696, line: 359, baseType: !1032)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !696, line: 359, size: 64, elements: !1033)
!1033 = !{!1034}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1032, file: !696, line: 359, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !980, line: 16, baseType: !311)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1015, file: !21, line: 519, baseType: !1037, size: 64, offset: 384)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !980, line: 21, baseType: !1038)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !980, line: 21, size: 64, elements: !1039)
!1039 = !{!1040}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1038, file: !980, line: 21, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !980, line: 14, baseType: !311)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1015, file: !21, line: 521, baseType: !704, size: 64, offset: 448)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1015, file: !21, line: 522, baseType: !704, size: 64, offset: 512)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1015, file: !21, line: 528, baseType: !1045, size: 64, offset: 576)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1015, file: !21, line: 532, baseType: !1047, size: 64, offset: 640)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1015, file: !21, line: 536, baseType: !951, size: 64, offset: 704)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !994, file: !21, line: 563, baseType: !1050, size: 64, offset: 320)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!1013, !1014, !20}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !994, file: !21, line: 565, baseType: !1054, size: 64, offset: 384)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !1014, !311, !311}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !994, file: !21, line: 567, baseType: !1058, size: 64, offset: 448)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!311, !964}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !994, file: !21, line: 571, baseType: !1010, size: 64, offset: 512)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !994, file: !21, line: 574, baseType: !1010, size: 64, offset: 576)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !994, file: !21, line: 579, baseType: !1064, size: 64, offset: 640)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!167, !964, !311, !160, !167, !167}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !994, file: !21, line: 585, baseType: !1068, size: 64, offset: 704)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!204, !964}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !994, file: !21, line: 615, baseType: !1072, size: 64, offset: 768)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!704, !964, !311}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !965, file: !706, line: 359, baseType: !311, size: 64, offset: 1216)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !965, file: !706, line: 361, baseType: !339, size: 64, offset: 1280)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !965, file: !706, line: 362, baseType: !160, size: 64, offset: 1344)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !965, file: !706, line: 365, baseType: !754, size: 64, offset: 1408)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !965, file: !706, line: 373, baseType: !1080, offset: 1472)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !706, line: 296, elements: !234)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !961, file: !706, line: 391, baseType: !739, size: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !961, file: !706, line: 392, baseType: !404, size: 64, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !961, file: !706, line: 394, baseType: !1084, size: 64, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!311, !339, !311, !311, !311, !311}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !961, file: !706, line: 398, baseType: !311, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !961, file: !706, line: 399, baseType: !311, size: 64, offset: 320)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !961, file: !706, line: 405, baseType: !311, size: 64, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !961, file: !706, line: 406, baseType: !311, size: 64, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !961, file: !706, line: 407, baseType: !1092, size: 64, offset: 512)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !696, line: 286, baseType: !1094)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !696, line: 286, size: 64, elements: !1095)
!1095 = !{!1096}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1094, file: !696, line: 286, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !980, line: 18, baseType: !311)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !961, file: !706, line: 416, baseType: !730, size: 32, offset: 576)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !961, file: !706, line: 428, baseType: !730, size: 32, offset: 608)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !961, file: !706, line: 437, baseType: !730, size: 32, offset: 640)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !961, file: !706, line: 447, baseType: !730, size: 32, offset: 672)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !961, file: !706, line: 450, baseType: !754, size: 64, offset: 704)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !961, file: !706, line: 452, baseType: !167, size: 32, offset: 768)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !961, file: !706, line: 454, baseType: !220, offset: 800)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !961, file: !706, line: 457, baseType: !750, size: 256, offset: 832)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !961, file: !706, line: 459, baseType: !207, size: 128, offset: 1088)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !961, file: !706, line: 466, baseType: !311, size: 64, offset: 1216)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !961, file: !706, line: 467, baseType: !311, size: 64, offset: 1280)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !961, file: !706, line: 469, baseType: !311, size: 64, offset: 1344)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !961, file: !706, line: 470, baseType: !311, size: 64, offset: 1408)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !961, file: !706, line: 471, baseType: !756, size: 64, offset: 1472)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !961, file: !706, line: 472, baseType: !311, size: 64, offset: 1536)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !961, file: !706, line: 473, baseType: !311, size: 64, offset: 1600)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !961, file: !706, line: 474, baseType: !311, size: 64, offset: 1664)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !961, file: !706, line: 475, baseType: !311, size: 64, offset: 1728)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !961, file: !706, line: 477, baseType: !220, offset: 1792)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !961, file: !706, line: 478, baseType: !311, size: 64, offset: 1792)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !961, file: !706, line: 478, baseType: !311, size: 64, offset: 1856)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !961, file: !706, line: 478, baseType: !311, size: 64, offset: 1920)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !961, file: !706, line: 478, baseType: !311, size: 64, offset: 1984)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !961, file: !706, line: 479, baseType: !311, size: 64, offset: 2048)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !961, file: !706, line: 479, baseType: !311, size: 64, offset: 2112)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !961, file: !706, line: 479, baseType: !311, size: 64, offset: 2176)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !961, file: !706, line: 480, baseType: !311, size: 64, offset: 2240)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !961, file: !706, line: 480, baseType: !311, size: 64, offset: 2304)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !961, file: !706, line: 480, baseType: !311, size: 64, offset: 2368)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !961, file: !706, line: 480, baseType: !311, size: 64, offset: 2432)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !961, file: !706, line: 482, baseType: !1129, size: 2816, offset: 2496)
!1129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 2816, elements: !1130)
!1130 = !{!1131}
!1131 = !DISubrange(count: 44)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !961, file: !706, line: 488, baseType: !1133, size: 256, offset: 5312)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1134, line: 60, size: 256, elements: !1135)
!1134 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1135 = !{!1136}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1133, file: !1134, line: 61, baseType: !1137, size: 256)
!1137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !754, size: 256, elements: !1138)
!1138 = !{!1139}
!1139 = !DISubrange(count: 4)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !961, file: !706, line: 490, baseType: !1141, size: 64, offset: 5568)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !706, line: 490, flags: DIFlagFwdDecl)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !961, file: !706, line: 493, baseType: !1144, size: 896, offset: 5632)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1145, line: 53, baseType: !1146)
!1145 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1145, line: 13, size: 896, elements: !1147)
!1147 = !{!1148, !1149, !1150, !1151, !1154, !1155, !1162, !1163, !1183, !1184, !1185}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1146, file: !1145, line: 18, baseType: !404, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1146, file: !1145, line: 28, baseType: !756, size: 64, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1146, file: !1145, line: 31, baseType: !750, size: 256, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1146, file: !1145, line: 32, baseType: !1152, size: 64, offset: 384)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1145, line: 32, flags: DIFlagFwdDecl)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1146, file: !1145, line: 37, baseType: !303, size: 16, offset: 448)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1146, file: !1145, line: 40, baseType: !1156, size: 192, offset: 512)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1157, line: 53, size: 192, elements: !1158)
!1157 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1158 = !{!1159, !1160, !1161}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1156, file: !1157, line: 54, baseType: !754, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1156, file: !1157, line: 55, baseType: !220, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1156, file: !1157, line: 59, baseType: !207, size: 128, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1146, file: !1145, line: 41, baseType: !160, size: 64, offset: 704)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1146, file: !1145, line: 42, baseType: !1164, size: 64, offset: 768)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1166)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1167, line: 13, size: 896, elements: !1168)
!1167 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1168 = !{!1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1166, file: !1167, line: 14, baseType: !160, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1166, file: !1167, line: 15, baseType: !311, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1166, file: !1167, line: 17, baseType: !311, size: 64, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1166, file: !1167, line: 17, baseType: !311, size: 64, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1166, file: !1167, line: 19, baseType: !296, size: 64, offset: 256)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1166, file: !1167, line: 21, baseType: !296, size: 64, offset: 320)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1166, file: !1167, line: 22, baseType: !296, size: 64, offset: 384)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1166, file: !1167, line: 23, baseType: !296, size: 64, offset: 448)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1166, file: !1167, line: 24, baseType: !296, size: 64, offset: 512)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1166, file: !1167, line: 25, baseType: !296, size: 64, offset: 576)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1166, file: !1167, line: 26, baseType: !296, size: 64, offset: 640)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1166, file: !1167, line: 27, baseType: !296, size: 64, offset: 704)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1166, file: !1167, line: 28, baseType: !296, size: 64, offset: 768)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1166, file: !1167, line: 29, baseType: !296, size: 64, offset: 832)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1146, file: !1145, line: 44, baseType: !730, size: 32, offset: 832)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1146, file: !1145, line: 50, baseType: !842, size: 16, offset: 864)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1146, file: !1145, line: 51, baseType: !1186, size: 16, offset: 880)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !175, line: 18, baseType: !1187)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !177, line: 23, baseType: !1188)
!1188 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !961, file: !706, line: 495, baseType: !311, size: 64, offset: 6528)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !961, file: !706, line: 497, baseType: !1191, size: 64, offset: 6592)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !706, line: 381, size: 384, elements: !1193)
!1193 = !{!1194, !1195, !2292}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1192, file: !706, line: 382, baseType: !730, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1192, file: !706, line: 383, baseType: !1196, size: 128, offset: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !706, line: 376, size: 128, elements: !1197)
!1197 = !{!1198, !2290}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1196, file: !706, line: 377, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1201, line: 640, size: 48640, elements: !1202)
!1201 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1202 = !{!1203, !1209, !1211, !1212, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1229, !1247, !1258, !1343, !1344, !1345, !1356, !1357, !1359, !1360, !1361, !1362, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1441, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1479, !1481, !1482, !1483, !1495, !1496, !1497, !1498, !1499, !1500, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1524, !1529, !1711, !1712, !1713, !1714, !1715, !1718, !1721, !1724, !1727, !1731, !1832, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1878, !1879, !1880, !1881, !1882, !1887, !1888, !1889, !1892, !1893, !1896, !1899, !1902, !1905, !1948, !1951, !1952, !2031, !2032, !2035, !2036, !2039, !2040, !2041, !2045, !2046, !2047, !2060, !2061, !2062, !2072, !2077, !2080, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1200, file: !1201, line: 646, baseType: !1204, size: 128)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1205, line: 56, size: 128, elements: !1206)
!1205 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1206 = !{!1207, !1208}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1204, file: !1205, line: 57, baseType: !311, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1204, file: !1205, line: 58, baseType: !174, size: 32, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1200, file: !1201, line: 649, baseType: !1210, size: 64, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !296)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1200, file: !1201, line: 657, baseType: !160, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1200, file: !1201, line: 658, baseType: !1213, size: 32, offset: 256)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1214, line: 113, baseType: !1215)
!1214 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1214, line: 111, size: 32, elements: !1216)
!1216 = !{!1217}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1215, file: !1214, line: 112, baseType: !730, size: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1200, file: !1201, line: 660, baseType: !7, size: 32, offset: 288)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1200, file: !1201, line: 661, baseType: !7, size: 32, offset: 320)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1200, file: !1201, line: 684, baseType: !167, size: 32, offset: 352)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1200, file: !1201, line: 686, baseType: !167, size: 32, offset: 384)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1200, file: !1201, line: 687, baseType: !167, size: 32, offset: 416)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1200, file: !1201, line: 688, baseType: !167, size: 32, offset: 448)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1200, file: !1201, line: 689, baseType: !7, size: 32, offset: 480)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1200, file: !1201, line: 691, baseType: !1226, size: 64, offset: 512)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1228)
!1228 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1201, line: 691, flags: DIFlagFwdDecl)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1200, file: !1201, line: 692, baseType: !1230, size: 832, offset: 576)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1201, line: 451, size: 832, elements: !1231)
!1231 = !{!1232, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1230, file: !1201, line: 453, baseType: !1233, size: 128)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1201, line: 325, size: 128, elements: !1234)
!1234 = !{!1235, !1236}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1233, file: !1201, line: 326, baseType: !311, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1233, file: !1201, line: 327, baseType: !174, size: 32, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1230, file: !1201, line: 454, baseType: !743, size: 192, align: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1230, file: !1201, line: 455, baseType: !207, size: 128, offset: 320)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1230, file: !1201, line: 456, baseType: !7, size: 32, offset: 448)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1230, file: !1201, line: 458, baseType: !404, size: 64, offset: 512)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1230, file: !1201, line: 459, baseType: !404, size: 64, offset: 576)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1230, file: !1201, line: 460, baseType: !404, size: 64, offset: 640)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1230, file: !1201, line: 461, baseType: !404, size: 64, offset: 704)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1230, file: !1201, line: 463, baseType: !404, size: 64, offset: 768)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1230, file: !1201, line: 465, baseType: !1246, offset: 832)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1201, line: 415, elements: !234)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1200, file: !1201, line: 693, baseType: !1248, size: 384, offset: 1408)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1201, line: 489, size: 384, elements: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !1256}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1248, file: !1201, line: 490, baseType: !207, size: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1248, file: !1201, line: 491, baseType: !311, size: 64, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1248, file: !1201, line: 492, baseType: !311, size: 64, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1248, file: !1201, line: 493, baseType: !7, size: 32, offset: 256)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1248, file: !1201, line: 494, baseType: !303, size: 16, offset: 288)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1248, file: !1201, line: 495, baseType: !303, size: 16, offset: 304)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1248, file: !1201, line: 497, baseType: !1257, size: 64, offset: 320)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1200, file: !1201, line: 697, baseType: !1259, size: 1792, offset: 1792)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1201, line: 507, size: 1792, elements: !1260)
!1260 = !{!1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1340, !1341}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1259, file: !1201, line: 508, baseType: !743, size: 192, align: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1259, file: !1201, line: 515, baseType: !404, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1259, file: !1201, line: 516, baseType: !404, size: 64, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1259, file: !1201, line: 517, baseType: !404, size: 64, offset: 320)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1259, file: !1201, line: 518, baseType: !404, size: 64, offset: 384)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1259, file: !1201, line: 519, baseType: !404, size: 64, offset: 448)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1259, file: !1201, line: 526, baseType: !760, size: 64, offset: 512)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1259, file: !1201, line: 527, baseType: !404, size: 64, offset: 576)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1259, file: !1201, line: 528, baseType: !7, size: 32, offset: 640)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1259, file: !1201, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1259, file: !1201, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1259, file: !1201, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1259, file: !1201, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1259, file: !1201, line: 563, baseType: !1275, size: 512, offset: 704)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !27, line: 118, size: 512, elements: !1276)
!1276 = !{!1277, !1285, !1286, !1291, !1334, !1337, !1338, !1339}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1275, file: !27, line: 119, baseType: !1278, size: 256)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1279, line: 9, size: 256, elements: !1280)
!1279 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1280 = !{!1281, !1282}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1278, file: !1279, line: 10, baseType: !743, size: 192, align: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1278, file: !1279, line: 11, baseType: !1283, size: 64, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1284, line: 29, baseType: !760)
!1284 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1275, file: !27, line: 120, baseType: !1283, size: 64, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1275, file: !27, line: 121, baseType: !1287, size: 64, offset: 320)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!26, !1290}
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1275, file: !27, line: 122, baseType: !1292, size: 64, offset: 384)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !27, line: 159, size: 512, align: 512, elements: !1294)
!1294 = !{!1295, !1315, !1316, !1319, !1324, !1325, !1329, !1333}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1293, file: !27, line: 160, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !27, line: 214, size: 4608, align: 512, elements: !1298)
!1298 = !{!1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1297, file: !27, line: 215, baseType: !763)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1297, file: !27, line: 216, baseType: !7, size: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1297, file: !27, line: 217, baseType: !7, size: 32, offset: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1297, file: !27, line: 218, baseType: !7, size: 32, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1297, file: !27, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1297, file: !27, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1297, file: !27, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1297, file: !27, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1297, file: !27, line: 233, baseType: !1283, size: 64, offset: 128)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1297, file: !27, line: 234, baseType: !1290, size: 64, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1297, file: !27, line: 235, baseType: !1283, size: 64, offset: 256)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1297, file: !27, line: 236, baseType: !1290, size: 64, offset: 320)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1297, file: !27, line: 237, baseType: !1312, size: 4096, offset: 512)
!1312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1293, size: 4096, elements: !1313)
!1313 = !{!1314}
!1314 = !DISubrange(count: 8)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1293, file: !27, line: 161, baseType: !7, size: 32, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1293, file: !27, line: 162, baseType: !1317, size: 32, offset: 96)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !162, line: 27, baseType: !1318)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !294, line: 96, baseType: !167)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1293, file: !27, line: 163, baseType: !1320, size: 32, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !375, line: 276, baseType: !1321)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !375, line: 276, size: 32, elements: !1322)
!1322 = !{!1323}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1321, file: !375, line: 276, baseType: !379, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1293, file: !27, line: 164, baseType: !1290, size: 64, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1293, file: !27, line: 165, baseType: !1326, size: 128, offset: 256)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1279, line: 14, size: 128, elements: !1327)
!1327 = !{!1328}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1326, file: !1279, line: 15, baseType: !735, size: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1293, file: !27, line: 166, baseType: !1330, size: 64, offset: 384)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!1283}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1293, file: !27, line: 167, baseType: !1283, size: 64, offset: 448)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1275, file: !27, line: 123, baseType: !1335, size: 8, offset: 448)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !175, line: 17, baseType: !1336)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !177, line: 21, baseType: !410)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1275, file: !27, line: 124, baseType: !1335, size: 8, offset: 456)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1275, file: !27, line: 125, baseType: !1335, size: 8, offset: 464)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1275, file: !27, line: 126, baseType: !1335, size: 8, offset: 472)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1259, file: !1201, line: 572, baseType: !1275, size: 512, offset: 1216)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1259, file: !1201, line: 580, baseType: !1342, size: 64, offset: 1728)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1200, file: !1201, line: 721, baseType: !7, size: 32, offset: 3584)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1200, file: !1201, line: 722, baseType: !167, size: 32, offset: 3616)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1200, file: !1201, line: 723, baseType: !1346, size: 64, offset: 3648)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1348)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1349, line: 17, baseType: !1350)
!1349 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1349, line: 17, size: 64, elements: !1351)
!1351 = !{!1352}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1350, file: !1349, line: 17, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 64, elements: !1354)
!1354 = !{!1355}
!1355 = !DISubrange(count: 1)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1200, file: !1201, line: 724, baseType: !1348, size: 64, offset: 3712)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1200, file: !1201, line: 749, baseType: !1358, offset: 3776)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1201, line: 290, elements: !234)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1200, file: !1201, line: 751, baseType: !207, size: 128, offset: 3776)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1200, file: !1201, line: 757, baseType: !957, size: 64, offset: 3904)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1200, file: !1201, line: 758, baseType: !957, size: 64, offset: 3968)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1200, file: !1201, line: 761, baseType: !1363, size: 320, offset: 4032)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1134, line: 34, size: 320, elements: !1364)
!1364 = !{!1365, !1366}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1363, file: !1134, line: 35, baseType: !404, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1363, file: !1134, line: 36, baseType: !1367, size: 256, offset: 64)
!1367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !964, size: 256, elements: !1138)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1200, file: !1201, line: 766, baseType: !167, size: 32, offset: 4352)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1200, file: !1201, line: 767, baseType: !167, size: 32, offset: 4384)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1200, file: !1201, line: 768, baseType: !167, size: 32, offset: 4416)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1200, file: !1201, line: 770, baseType: !167, size: 32, offset: 4448)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1200, file: !1201, line: 772, baseType: !311, size: 64, offset: 4480)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1200, file: !1201, line: 775, baseType: !7, size: 32, offset: 4544)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1200, file: !1201, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1200, file: !1201, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1200, file: !1201, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1200, file: !1201, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1200, file: !1201, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1200, file: !1201, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1200, file: !1201, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1200, file: !1201, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1200, file: !1201, line: 831, baseType: !311, size: 64, offset: 4672)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1200, file: !1201, line: 833, baseType: !1384, size: 384, offset: 4736)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !32, line: 25, size: 384, elements: !1385)
!1385 = !{!1386, !1391}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1384, file: !32, line: 26, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!296, !1390}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, scope: !1384, file: !32, line: 27, baseType: !1392, size: 320, offset: 64)
!1392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1384, file: !32, line: 27, size: 320, elements: !1393)
!1393 = !{!1394, !1404, !1431}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1392, file: !32, line: 36, baseType: !1395, size: 320)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1392, file: !32, line: 29, size: 320, elements: !1396)
!1396 = !{!1397, !1399, !1400, !1401, !1402, !1403}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1395, file: !32, line: 30, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1395, file: !32, line: 31, baseType: !174, size: 32, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1395, file: !32, line: 32, baseType: !174, size: 32, offset: 96)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1395, file: !32, line: 33, baseType: !174, size: 32, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1395, file: !32, line: 34, baseType: !404, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1395, file: !32, line: 35, baseType: !1398, size: 64, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1392, file: !32, line: 46, baseType: !1405, size: 192)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1392, file: !32, line: 38, size: 192, elements: !1406)
!1406 = !{!1407, !1408, !1409, !1430}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1405, file: !32, line: 39, baseType: !1317, size: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1405, file: !32, line: 40, baseType: !31, size: 32, offset: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !32, line: 41, baseType: !1410, size: 64, offset: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1405, file: !32, line: 41, size: 64, elements: !1411)
!1411 = !{!1412, !1420}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1410, file: !32, line: 42, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1415, line: 7, size: 128, elements: !1416)
!1415 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1416 = !{!1417, !1419}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1414, file: !1415, line: 8, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !294, line: 93, baseType: !516)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1414, file: !1415, line: 9, baseType: !516, size: 64, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1410, file: !32, line: 43, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1423, line: 7, size: 64, elements: !1424)
!1423 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1424 = !{!1425, !1429}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1422, file: !1423, line: 8, baseType: !1426, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1423, line: 5, baseType: !1427)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !175, line: 20, baseType: !1428)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !177, line: 26, baseType: !167)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1422, file: !1423, line: 9, baseType: !1427, size: 32, offset: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1405, file: !32, line: 45, baseType: !404, size: 64, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1392, file: !32, line: 54, baseType: !1432, size: 256)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1392, file: !32, line: 48, size: 256, elements: !1433)
!1433 = !{!1434, !1437, !1438, !1439, !1440}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1432, file: !32, line: 49, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !32, line: 14, flags: DIFlagFwdDecl)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1432, file: !32, line: 50, baseType: !167, size: 32, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1432, file: !32, line: 51, baseType: !167, size: 32, offset: 96)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1432, file: !32, line: 52, baseType: !311, size: 64, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1432, file: !32, line: 53, baseType: !311, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1200, file: !1201, line: 835, baseType: !1442, size: 32, offset: 5120)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !162, line: 22, baseType: !1443)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !294, line: 28, baseType: !167)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1200, file: !1201, line: 836, baseType: !1442, size: 32, offset: 5152)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1200, file: !1201, line: 840, baseType: !311, size: 64, offset: 5184)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1200, file: !1201, line: 849, baseType: !1199, size: 64, offset: 5248)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1200, file: !1201, line: 852, baseType: !1199, size: 64, offset: 5312)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1200, file: !1201, line: 857, baseType: !207, size: 128, offset: 5376)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1200, file: !1201, line: 858, baseType: !207, size: 128, offset: 5504)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1200, file: !1201, line: 859, baseType: !1199, size: 64, offset: 5632)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1200, file: !1201, line: 867, baseType: !207, size: 128, offset: 5696)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1200, file: !1201, line: 868, baseType: !207, size: 128, offset: 5824)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1200, file: !1201, line: 871, baseType: !1454, size: 64, offset: 5952)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !60, line: 59, size: 768, elements: !1456)
!1456 = !{!1457, !1458, !1459, !1460, !1462, !1463, !1470, !1471}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1455, file: !60, line: 61, baseType: !1213, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1455, file: !60, line: 62, baseType: !7, size: 32, offset: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1455, file: !60, line: 63, baseType: !220, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1455, file: !60, line: 65, baseType: !1461, size: 256, offset: 64)
!1461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 256, elements: !1138)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1455, file: !60, line: 66, baseType: !618, size: 64, offset: 320)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1455, file: !60, line: 68, baseType: !1464, size: 128, offset: 384)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1465, line: 40, baseType: !1466)
!1465 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1465, line: 36, size: 128, elements: !1467)
!1467 = !{!1468, !1469}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1466, file: !1465, line: 37, baseType: !220)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1466, file: !1465, line: 38, baseType: !207, size: 128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1455, file: !60, line: 69, baseType: !352, size: 128, align: 64, offset: 512)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1455, file: !60, line: 70, baseType: !1472, size: 128, offset: 640)
!1472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1473, size: 128, elements: !1354)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !60, line: 54, size: 128, elements: !1474)
!1474 = !{!1475, !1476}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1473, file: !60, line: 55, baseType: !167, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1473, file: !60, line: 56, baseType: !1477, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !60, line: 56, flags: DIFlagFwdDecl)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1200, file: !1201, line: 872, baseType: !1480, size: 512, offset: 6016)
!1480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 512, elements: !1138)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1200, file: !1201, line: 873, baseType: !207, size: 128, offset: 6528)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1200, file: !1201, line: 874, baseType: !207, size: 128, offset: 6656)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1200, file: !1201, line: 876, baseType: !1484, size: 64, offset: 6784)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1486, line: 26, size: 192, elements: !1487)
!1486 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1487 = !{!1488, !1489}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1485, file: !1486, line: 27, baseType: !7, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1485, file: !1486, line: 28, baseType: !1490, size: 128, offset: 64)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1491, line: 43, size: 128, elements: !1492)
!1491 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1490, file: !1491, line: 44, baseType: !763)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1490, file: !1491, line: 45, baseType: !207, size: 128)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1200, file: !1201, line: 879, baseType: !688, size: 64, offset: 6848)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1200, file: !1201, line: 882, baseType: !688, size: 64, offset: 6912)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1200, file: !1201, line: 884, baseType: !404, size: 64, offset: 6976)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1200, file: !1201, line: 885, baseType: !404, size: 64, offset: 7040)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1200, file: !1201, line: 890, baseType: !404, size: 64, offset: 7104)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1200, file: !1201, line: 891, baseType: !1501, size: 128, offset: 7168)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1201, line: 242, size: 128, elements: !1502)
!1502 = !{!1503, !1504, !1505}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1501, file: !1201, line: 244, baseType: !404, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1501, file: !1201, line: 245, baseType: !404, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1501, file: !1201, line: 246, baseType: !763, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1200, file: !1201, line: 900, baseType: !311, size: 64, offset: 7296)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1200, file: !1201, line: 901, baseType: !311, size: 64, offset: 7360)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1200, file: !1201, line: 904, baseType: !404, size: 64, offset: 7424)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1200, file: !1201, line: 907, baseType: !404, size: 64, offset: 7488)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1200, file: !1201, line: 910, baseType: !311, size: 64, offset: 7552)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1200, file: !1201, line: 911, baseType: !311, size: 64, offset: 7616)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1200, file: !1201, line: 914, baseType: !1513, size: 640, offset: 7680)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1514, line: 123, size: 640, elements: !1515)
!1514 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1515 = !{!1516, !1522, !1523}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1513, file: !1514, line: 124, baseType: !1517, size: 576)
!1517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1518, size: 576, elements: !262)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1514, line: 108, size: 192, elements: !1519)
!1519 = !{!1520, !1521}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1518, file: !1514, line: 109, baseType: !404, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1518, file: !1514, line: 110, baseType: !1326, size: 128, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1513, file: !1514, line: 125, baseType: !7, size: 32, offset: 576)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1513, file: !1514, line: 126, baseType: !7, size: 32, offset: 608)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1200, file: !1201, line: 917, baseType: !1525, size: 192, offset: 8320)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1514, line: 134, size: 192, elements: !1526)
!1526 = !{!1527, !1528}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1525, file: !1514, line: 135, baseType: !352, size: 128, align: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1525, file: !1514, line: 136, baseType: !7, size: 32, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1200, file: !1201, line: 923, baseType: !1530, size: 64, offset: 8512)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1532)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1533, line: 111, size: 1280, elements: !1534)
!1533 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1534 = !{!1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1552, !1553, !1554, !1555, !1556, !1557, !1664, !1665, !1666, !1667, !1693, !1696, !1706}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1532, file: !1533, line: 112, baseType: !730, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1532, file: !1533, line: 120, baseType: !418, size: 32, offset: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1532, file: !1533, line: 121, baseType: !426, size: 32, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1532, file: !1533, line: 122, baseType: !418, size: 32, offset: 96)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1532, file: !1533, line: 123, baseType: !426, size: 32, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1532, file: !1533, line: 124, baseType: !418, size: 32, offset: 160)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1532, file: !1533, line: 125, baseType: !426, size: 32, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1532, file: !1533, line: 126, baseType: !418, size: 32, offset: 224)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1532, file: !1533, line: 127, baseType: !426, size: 32, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1532, file: !1533, line: 128, baseType: !7, size: 32, offset: 288)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1532, file: !1533, line: 129, baseType: !1546, size: 64, offset: 320)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1547, line: 26, baseType: !1548)
!1547 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1547, line: 24, size: 64, elements: !1549)
!1549 = !{!1550}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1548, file: !1547, line: 25, baseType: !1551, size: 64)
!1551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 64, elements: !188)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1532, file: !1533, line: 130, baseType: !1546, size: 64, offset: 384)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1532, file: !1533, line: 131, baseType: !1546, size: 64, offset: 448)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1532, file: !1533, line: 132, baseType: !1546, size: 64, offset: 512)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1532, file: !1533, line: 133, baseType: !1546, size: 64, offset: 576)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1532, file: !1533, line: 135, baseType: !410, size: 8, offset: 640)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1532, file: !1533, line: 137, baseType: !1558, size: 64, offset: 704)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1560, line: 189, size: 1664, elements: !1561)
!1560 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1561 = !{!1562, !1563, !1566, !1571, !1572, !1575, !1576, !1581, !1582, !1583, !1584, !1586, !1587, !1588, !1589, !1590, !1628, !1649}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1559, file: !1560, line: 190, baseType: !1213, size: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1559, file: !1560, line: 191, baseType: !1564, size: 32, offset: 32)
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1560, line: 28, baseType: !1565)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !162, line: 98, baseType: !1427)
!1566 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !1560, line: 192, baseType: !1567, size: 192, offset: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1559, file: !1560, line: 192, size: 192, elements: !1568)
!1568 = !{!1569, !1570}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1567, file: !1560, line: 193, baseType: !207, size: 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1567, file: !1560, line: 194, baseType: !743, size: 192, align: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1559, file: !1560, line: 199, baseType: !750, size: 256, offset: 256)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1559, file: !1560, line: 200, baseType: !1573, size: 64, offset: 512)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1560, line: 200, flags: DIFlagFwdDecl)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1559, file: !1560, line: 201, baseType: !160, size: 64, offset: 576)
!1576 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !1560, line: 202, baseType: !1577, size: 64, offset: 640)
!1577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1559, file: !1560, line: 202, size: 64, elements: !1578)
!1578 = !{!1579, !1580}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1577, file: !1560, line: 203, baseType: !522, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1577, file: !1560, line: 204, baseType: !522, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1559, file: !1560, line: 206, baseType: !522, size: 64, offset: 704)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1559, file: !1560, line: 207, baseType: !418, size: 32, offset: 768)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1559, file: !1560, line: 208, baseType: !426, size: 32, offset: 800)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1559, file: !1560, line: 209, baseType: !1585, size: 32, offset: 832)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1560, line: 31, baseType: !542)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1559, file: !1560, line: 210, baseType: !303, size: 16, offset: 864)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1559, file: !1560, line: 211, baseType: !303, size: 16, offset: 880)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1559, file: !1560, line: 215, baseType: !1188, size: 16, offset: 896)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1559, file: !1560, line: 222, baseType: !311, size: 64, offset: 960)
!1590 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !1560, line: 239, baseType: !1591, size: 320, offset: 1024)
!1591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1559, file: !1560, line: 239, size: 320, elements: !1592)
!1592 = !{!1593, !1620}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1591, file: !1560, line: 240, baseType: !1594, size: 320)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1560, line: 108, size: 320, elements: !1595)
!1595 = !{!1596, !1597, !1609, !1612, !1619}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1594, file: !1560, line: 110, baseType: !311, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, scope: !1594, file: !1560, line: 111, baseType: !1598, size: 64, offset: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1594, file: !1560, line: 111, size: 64, elements: !1599)
!1599 = !{!1600, !1608}
!1600 = !DIDerivedType(tag: DW_TAG_member, scope: !1598, file: !1560, line: 112, baseType: !1601, size: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1598, file: !1560, line: 112, size: 64, elements: !1602)
!1602 = !{!1603, !1604}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1601, file: !1560, line: 114, baseType: !842, size: 16)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1601, file: !1560, line: 115, baseType: !1605, size: 48, offset: 16)
!1605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 48, elements: !1606)
!1606 = !{!1607}
!1607 = !DISubrange(count: 6)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1598, file: !1560, line: 121, baseType: !311, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1594, file: !1560, line: 123, baseType: !1610, size: 64, offset: 128)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1560, line: 96, flags: DIFlagFwdDecl)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1594, file: !1560, line: 124, baseType: !1613, size: 64, offset: 192)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1560, line: 102, size: 192, elements: !1615)
!1615 = !{!1616, !1617, !1618}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1614, file: !1560, line: 103, baseType: !352, size: 128, align: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1614, file: !1560, line: 104, baseType: !1213, size: 32, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1614, file: !1560, line: 105, baseType: !473, size: 8, offset: 160)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1594, file: !1560, line: 125, baseType: !204, size: 64, offset: 256)
!1620 = !DIDerivedType(tag: DW_TAG_member, scope: !1591, file: !1560, line: 241, baseType: !1621, size: 320)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1591, file: !1560, line: 241, size: 320, elements: !1622)
!1622 = !{!1623, !1624, !1625, !1626, !1627}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1621, file: !1560, line: 242, baseType: !311, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1621, file: !1560, line: 243, baseType: !311, size: 64, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1621, file: !1560, line: 244, baseType: !1610, size: 64, offset: 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1621, file: !1560, line: 245, baseType: !1613, size: 64, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1621, file: !1560, line: 246, baseType: !261, size: 64, offset: 256)
!1628 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !1560, line: 254, baseType: !1629, size: 256, offset: 1344)
!1629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1559, file: !1560, line: 254, size: 256, elements: !1630)
!1630 = !{!1631, !1637}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1629, file: !1560, line: 255, baseType: !1632, size: 256)
!1632 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1560, line: 128, size: 256, elements: !1633)
!1633 = !{!1634, !1635}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1632, file: !1560, line: 129, baseType: !160, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1632, file: !1560, line: 130, baseType: !1636, size: 256)
!1636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 256, elements: !1138)
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1629, file: !1560, line: 256, baseType: !1638, size: 256)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1629, file: !1560, line: 256, size: 256, elements: !1639)
!1639 = !{!1640, !1641}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1638, file: !1560, line: 258, baseType: !207, size: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1638, file: !1560, line: 259, baseType: !1642, size: 128, offset: 128)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1643, line: 22, size: 128, elements: !1644)
!1643 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1644 = !{!1645, !1648}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1642, file: !1643, line: 23, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1643, line: 23, flags: DIFlagFwdDecl)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1642, file: !1643, line: 24, baseType: !311, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1559, file: !1560, line: 274, baseType: !1650, size: 64, offset: 1600)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1560, line: 170, size: 192, elements: !1652)
!1652 = !{!1653, !1662, !1663}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1651, file: !1560, line: 171, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1560, line: 165, baseType: !1655)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!167, !1558, !1658, !1660, !1558}
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1611)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1632)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1651, file: !1560, line: 172, baseType: !1558, size: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1651, file: !1560, line: 173, baseType: !1610, size: 64, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1532, file: !1533, line: 138, baseType: !1558, size: 64, offset: 768)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1532, file: !1533, line: 139, baseType: !1558, size: 64, offset: 832)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1532, file: !1533, line: 140, baseType: !1558, size: 64, offset: 896)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1532, file: !1533, line: 145, baseType: !1668, size: 64, offset: 960)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1670, line: 13, size: 896, elements: !1671)
!1670 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1671 = !{!1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1669, file: !1670, line: 14, baseType: !1213, size: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1669, file: !1670, line: 15, baseType: !730, size: 32, offset: 32)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1669, file: !1670, line: 16, baseType: !730, size: 32, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1669, file: !1670, line: 21, baseType: !754, size: 64, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1669, file: !1670, line: 27, baseType: !311, size: 64, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1669, file: !1670, line: 28, baseType: !311, size: 64, offset: 256)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1669, file: !1670, line: 29, baseType: !754, size: 64, offset: 320)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1669, file: !1670, line: 32, baseType: !622, size: 128, offset: 384)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1669, file: !1670, line: 33, baseType: !418, size: 32, offset: 512)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1669, file: !1670, line: 37, baseType: !754, size: 64, offset: 576)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1669, file: !1670, line: 44, baseType: !1683, size: 256, offset: 640)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1684, line: 15, size: 256, elements: !1685)
!1684 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1685 = !{!1686, !1687, !1688, !1689, !1690, !1691, !1692}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1683, file: !1684, line: 16, baseType: !763)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1683, file: !1684, line: 18, baseType: !167, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1683, file: !1684, line: 19, baseType: !167, size: 32, offset: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1683, file: !1684, line: 20, baseType: !167, size: 32, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1683, file: !1684, line: 21, baseType: !167, size: 32, offset: 96)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1683, file: !1684, line: 22, baseType: !311, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1683, file: !1684, line: 23, baseType: !311, size: 64, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1532, file: !1533, line: 146, baseType: !1694, size: 64, offset: 1024)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !419, line: 18, flags: DIFlagFwdDecl)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1532, file: !1533, line: 147, baseType: !1697, size: 64, offset: 1088)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1533, line: 25, size: 64, elements: !1699)
!1699 = !{!1700, !1701, !1702}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1698, file: !1533, line: 26, baseType: !730, size: 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1698, file: !1533, line: 27, baseType: !167, size: 32, offset: 32)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1698, file: !1533, line: 28, baseType: !1703, offset: 64)
!1703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, elements: !1704)
!1704 = !{!1705}
!1705 = !DISubrange(count: 0)
!1706 = !DIDerivedType(tag: DW_TAG_member, scope: !1532, file: !1533, line: 149, baseType: !1707, size: 128, offset: 1152)
!1707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1532, file: !1533, line: 149, size: 128, elements: !1708)
!1708 = !{!1709, !1710}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1707, file: !1533, line: 150, baseType: !167, size: 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1707, file: !1533, line: 151, baseType: !352, size: 128, align: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1200, file: !1201, line: 926, baseType: !1530, size: 64, offset: 8576)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1200, file: !1201, line: 929, baseType: !1530, size: 64, offset: 8640)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1200, file: !1201, line: 933, baseType: !1558, size: 64, offset: 8704)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1200, file: !1201, line: 943, baseType: !169, size: 128, offset: 8768)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1200, file: !1201, line: 945, baseType: !1716, size: 64, offset: 8896)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1201, line: 49, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1200, file: !1201, line: 956, baseType: !1719, size: 64, offset: 8960)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1201, line: 45, flags: DIFlagFwdDecl)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1200, file: !1201, line: 959, baseType: !1722, size: 64, offset: 9024)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1201, line: 959, flags: DIFlagFwdDecl)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1200, file: !1201, line: 962, baseType: !1725, size: 64, offset: 9088)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1201, line: 66, flags: DIFlagFwdDecl)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1200, file: !1201, line: 966, baseType: !1728, size: 64, offset: 9152)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1730, line: 35, flags: DIFlagFwdDecl)
!1730 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1200, file: !1201, line: 969, baseType: !1732, size: 64, offset: 9216)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1734, line: 82, size: 7296, elements: !1735)
!1734 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1735 = !{!1736, !1737, !1738, !1739, !1740, !1741, !1742, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1771, !1780, !1781, !1783, !1784, !1785, !1788, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1818, !1819, !1826, !1827, !1828, !1829, !1830, !1831}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1733, file: !1734, line: 83, baseType: !1213, size: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1733, file: !1734, line: 84, baseType: !730, size: 32, offset: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1733, file: !1734, line: 85, baseType: !167, size: 32, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1733, file: !1734, line: 86, baseType: !207, size: 128, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1733, file: !1734, line: 88, baseType: !1464, size: 128, offset: 256)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1733, file: !1734, line: 91, baseType: !1199, size: 64, offset: 384)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1733, file: !1734, line: 94, baseType: !1743, size: 192, offset: 448)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1744, line: 30, size: 192, elements: !1745)
!1744 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1745 = !{!1746, !1747}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1743, file: !1744, line: 31, baseType: !207, size: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1743, file: !1744, line: 32, baseType: !1748, size: 64, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1749, line: 25, baseType: !1750)
!1749 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1749, line: 23, size: 64, elements: !1751)
!1751 = !{!1752}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1750, file: !1749, line: 24, baseType: !1353, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1733, file: !1734, line: 97, baseType: !618, size: 64, offset: 640)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1733, file: !1734, line: 100, baseType: !167, size: 32, offset: 704)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1733, file: !1734, line: 106, baseType: !167, size: 32, offset: 736)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1733, file: !1734, line: 107, baseType: !1199, size: 64, offset: 768)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1733, file: !1734, line: 110, baseType: !167, size: 32, offset: 832)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1733, file: !1734, line: 111, baseType: !7, size: 32, offset: 864)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1733, file: !1734, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1733, file: !1734, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1733, file: !1734, line: 128, baseType: !167, size: 32, offset: 928)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1733, file: !1734, line: 129, baseType: !207, size: 128, offset: 960)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1733, file: !1734, line: 132, baseType: !1275, size: 512, offset: 1088)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1733, file: !1734, line: 133, baseType: !1283, size: 64, offset: 1600)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1733, file: !1734, line: 140, baseType: !1766, size: 256, offset: 1664)
!1766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1767, size: 256, elements: !188)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1734, line: 38, size: 128, elements: !1768)
!1768 = !{!1769, !1770}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1767, file: !1734, line: 39, baseType: !404, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1767, file: !1734, line: 40, baseType: !404, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1733, file: !1734, line: 146, baseType: !1772, size: 192, offset: 1920)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1734, line: 66, size: 192, elements: !1773)
!1773 = !{!1774}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1772, file: !1734, line: 67, baseType: !1775, size: 192)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1734, line: 47, size: 192, elements: !1776)
!1776 = !{!1777, !1778, !1779}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1775, file: !1734, line: 48, baseType: !756, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1775, file: !1734, line: 49, baseType: !756, size: 64, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1775, file: !1734, line: 50, baseType: !756, size: 64, offset: 128)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1733, file: !1734, line: 150, baseType: !1513, size: 640, offset: 2112)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1733, file: !1734, line: 153, baseType: !1782, size: 256, offset: 2752)
!1782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1454, size: 256, elements: !1138)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1733, file: !1734, line: 159, baseType: !1454, size: 64, offset: 3008)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1733, file: !1734, line: 162, baseType: !167, size: 32, offset: 3072)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1733, file: !1734, line: 164, baseType: !1786, size: 64, offset: 3136)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1734, line: 164, flags: DIFlagFwdDecl)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1733, file: !1734, line: 175, baseType: !1789, size: 32, offset: 3200)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !375, line: 805, baseType: !1790)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !375, line: 798, size: 32, elements: !1791)
!1791 = !{!1792, !1793}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1790, file: !375, line: 803, baseType: !374, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1790, file: !375, line: 804, baseType: !220, offset: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1733, file: !1734, line: 176, baseType: !404, size: 64, offset: 3264)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1733, file: !1734, line: 176, baseType: !404, size: 64, offset: 3328)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1733, file: !1734, line: 176, baseType: !404, size: 64, offset: 3392)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1733, file: !1734, line: 176, baseType: !404, size: 64, offset: 3456)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1733, file: !1734, line: 177, baseType: !404, size: 64, offset: 3520)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1733, file: !1734, line: 178, baseType: !404, size: 64, offset: 3584)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1733, file: !1734, line: 179, baseType: !1501, size: 128, offset: 3648)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1733, file: !1734, line: 180, baseType: !311, size: 64, offset: 3776)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1733, file: !1734, line: 180, baseType: !311, size: 64, offset: 3840)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1733, file: !1734, line: 180, baseType: !311, size: 64, offset: 3904)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1733, file: !1734, line: 180, baseType: !311, size: 64, offset: 3968)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1733, file: !1734, line: 181, baseType: !311, size: 64, offset: 4032)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1733, file: !1734, line: 181, baseType: !311, size: 64, offset: 4096)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1733, file: !1734, line: 181, baseType: !311, size: 64, offset: 4160)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1733, file: !1734, line: 181, baseType: !311, size: 64, offset: 4224)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1733, file: !1734, line: 182, baseType: !311, size: 64, offset: 4288)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1733, file: !1734, line: 182, baseType: !311, size: 64, offset: 4352)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1733, file: !1734, line: 182, baseType: !311, size: 64, offset: 4416)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1733, file: !1734, line: 182, baseType: !311, size: 64, offset: 4480)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1733, file: !1734, line: 183, baseType: !311, size: 64, offset: 4544)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1733, file: !1734, line: 183, baseType: !311, size: 64, offset: 4608)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1733, file: !1734, line: 184, baseType: !1816, offset: 4672)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1817, line: 12, elements: !234)
!1817 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1733, file: !1734, line: 192, baseType: !406, size: 64, offset: 4672)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1733, file: !1734, line: 203, baseType: !1820, size: 2048, offset: 4736)
!1820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1821, size: 2048, elements: !171)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1822, line: 43, size: 128, elements: !1823)
!1822 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1823 = !{!1824, !1825}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1821, file: !1822, line: 44, baseType: !310, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1821, file: !1822, line: 45, baseType: !310, size: 64, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1733, file: !1734, line: 220, baseType: !473, size: 8, offset: 6784)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1733, file: !1734, line: 221, baseType: !1188, size: 16, offset: 6800)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1733, file: !1734, line: 222, baseType: !1188, size: 16, offset: 6816)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1733, file: !1734, line: 224, baseType: !957, size: 64, offset: 6848)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1733, file: !1734, line: 227, baseType: !1156, size: 192, offset: 6912)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1733, file: !1734, line: 233, baseType: !1156, size: 192, offset: 7104)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1200, file: !1201, line: 970, baseType: !1833, size: 64, offset: 9280)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1734, line: 20, size: 16576, elements: !1835)
!1835 = !{!1836, !1837, !1838, !1839}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1834, file: !1734, line: 21, baseType: !220)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1834, file: !1734, line: 22, baseType: !1213, size: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1834, file: !1734, line: 23, baseType: !1464, size: 128, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1834, file: !1734, line: 24, baseType: !1840, size: 16384, offset: 192)
!1840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1841, size: 16384, elements: !266)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1744, line: 49, size: 256, elements: !1842)
!1842 = !{!1843}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1841, file: !1744, line: 50, baseType: !1844, size: 256)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1744, line: 35, size: 256, elements: !1845)
!1845 = !{!1846, !1853, !1854, !1860}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1844, file: !1744, line: 37, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1848, line: 19, baseType: !1849)
!1848 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1848, line: 18, baseType: !1851)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{null, !167}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1844, file: !1744, line: 38, baseType: !311, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1844, file: !1744, line: 44, baseType: !1855, size: 64, offset: 128)
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1848, line: 22, baseType: !1856)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1848, line: 21, baseType: !1858)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{null}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1844, file: !1744, line: 46, baseType: !1748, size: 64, offset: 192)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1200, file: !1201, line: 971, baseType: !1748, size: 64, offset: 9344)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1200, file: !1201, line: 972, baseType: !1748, size: 64, offset: 9408)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1200, file: !1201, line: 974, baseType: !1748, size: 64, offset: 9472)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1200, file: !1201, line: 975, baseType: !1743, size: 192, offset: 9536)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1200, file: !1201, line: 976, baseType: !311, size: 64, offset: 9728)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1200, file: !1201, line: 977, baseType: !308, size: 64, offset: 9792)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1200, file: !1201, line: 978, baseType: !7, size: 32, offset: 9856)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1200, file: !1201, line: 980, baseType: !355, size: 64, offset: 9920)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1200, file: !1201, line: 989, baseType: !1870, size: 128, offset: 9984)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1871, line: 35, size: 128, elements: !1872)
!1871 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1872 = !{!1873, !1874, !1875}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1870, file: !1871, line: 36, baseType: !167, size: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1870, file: !1871, line: 37, baseType: !730, size: 32, offset: 32)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1870, file: !1871, line: 38, baseType: !1876, size: 64, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1871, line: 23, flags: DIFlagFwdDecl)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1200, file: !1201, line: 992, baseType: !404, size: 64, offset: 10112)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1200, file: !1201, line: 993, baseType: !404, size: 64, offset: 10176)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1200, file: !1201, line: 996, baseType: !220, offset: 10240)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1200, file: !1201, line: 999, baseType: !763, offset: 10240)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1200, file: !1201, line: 1001, baseType: !1883, size: 64, offset: 10240)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1201, line: 636, size: 64, elements: !1884)
!1884 = !{!1885}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1883, file: !1201, line: 637, baseType: !1886, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1200, file: !1201, line: 1005, baseType: !735, size: 128, offset: 10304)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1200, file: !1201, line: 1007, baseType: !1199, size: 64, offset: 10432)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1200, file: !1201, line: 1009, baseType: !1890, size: 64, offset: 10496)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1201, line: 1009, flags: DIFlagFwdDecl)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1200, file: !1201, line: 1043, baseType: !160, size: 64, offset: 10560)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1200, file: !1201, line: 1046, baseType: !1894, size: 64, offset: 10624)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1201, line: 41, flags: DIFlagFwdDecl)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1200, file: !1201, line: 1050, baseType: !1897, size: 64, offset: 10688)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1201, line: 42, flags: DIFlagFwdDecl)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1200, file: !1201, line: 1054, baseType: !1900, size: 64, offset: 10752)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1201, line: 55, flags: DIFlagFwdDecl)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1200, file: !1201, line: 1056, baseType: !1903, size: 64, offset: 10816)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1201, line: 40, flags: DIFlagFwdDecl)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1200, file: !1201, line: 1058, baseType: !1906, size: 64, offset: 10880)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1908, line: 99, size: 704, elements: !1909)
!1908 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1909 = !{!1910, !1911, !1912, !1913, !1914, !1915, !1916, !1935, !1936}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1907, file: !1908, line: 100, baseType: !754, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1907, file: !1908, line: 101, baseType: !730, size: 32, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1907, file: !1908, line: 102, baseType: !730, size: 32, offset: 96)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1907, file: !1908, line: 105, baseType: !220, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1907, file: !1908, line: 107, baseType: !303, size: 16, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1907, file: !1908, line: 109, baseType: !722, size: 128, offset: 192)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1907, file: !1908, line: 110, baseType: !1917, size: 64, offset: 320)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1908, line: 73, size: 448, elements: !1919)
!1919 = !{!1920, !1923, !1924, !1929, !1934}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1918, file: !1908, line: 74, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1908, line: 74, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1918, file: !1908, line: 75, baseType: !1906, size: 64, offset: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, scope: !1918, file: !1908, line: 83, baseType: !1925, size: 128, offset: 128)
!1925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1918, file: !1908, line: 83, size: 128, elements: !1926)
!1926 = !{!1927, !1928}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1925, file: !1908, line: 84, baseType: !207, size: 128)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1925, file: !1908, line: 85, baseType: !918, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, scope: !1918, file: !1908, line: 87, baseType: !1930, size: 128, offset: 256)
!1930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1918, file: !1908, line: 87, size: 128, elements: !1931)
!1931 = !{!1932, !1933}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1930, file: !1908, line: 88, baseType: !622, size: 128)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1930, file: !1908, line: 89, baseType: !352, size: 128, align: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1918, file: !1908, line: 92, baseType: !7, size: 32, offset: 384)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1907, file: !1908, line: 111, baseType: !618, size: 64, offset: 384)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1907, file: !1908, line: 113, baseType: !1937, size: 256, offset: 448)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1938, line: 102, size: 256, elements: !1939)
!1938 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1939 = !{!1940, !1941, !1942}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1937, file: !1938, line: 103, baseType: !754, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1937, file: !1938, line: 104, baseType: !207, size: 128, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1937, file: !1938, line: 105, baseType: !1943, size: 64, offset: 192)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1938, line: 21, baseType: !1944)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{null, !1947}
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1200, file: !1201, line: 1061, baseType: !1949, size: 64, offset: 10944)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1201, line: 43, flags: DIFlagFwdDecl)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1200, file: !1201, line: 1064, baseType: !311, size: 64, offset: 11008)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1200, file: !1201, line: 1065, baseType: !1953, size: 64, offset: 11072)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1744, line: 14, baseType: !1955)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1744, line: 12, size: 384, elements: !1956)
!1956 = !{!1957}
!1957 = !DIDerivedType(tag: DW_TAG_member, scope: !1955, file: !1744, line: 13, baseType: !1958, size: 384)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1955, file: !1744, line: 13, size: 384, elements: !1959)
!1959 = !{!1960, !1961, !1962, !1963}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1958, file: !1744, line: 13, baseType: !167, size: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1958, file: !1744, line: 13, baseType: !167, size: 32, offset: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1958, file: !1744, line: 13, baseType: !167, size: 32, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1958, file: !1744, line: 13, baseType: !1964, size: 256, offset: 128)
!1964 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1965, line: 32, size: 256, elements: !1966)
!1965 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1966 = !{!1967, !1972, !1985, !1991, !2000, !2020, !2025}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1964, file: !1965, line: 37, baseType: !1968, size: 64)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1964, file: !1965, line: 34, size: 64, elements: !1969)
!1969 = !{!1970, !1971}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1968, file: !1965, line: 35, baseType: !1443, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1968, file: !1965, line: 36, baseType: !424, size: 32, offset: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1964, file: !1965, line: 45, baseType: !1973, size: 192)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1964, file: !1965, line: 40, size: 192, elements: !1974)
!1974 = !{!1975, !1977, !1978, !1984}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1973, file: !1965, line: 41, baseType: !1976, size: 32)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !294, line: 95, baseType: !167)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1973, file: !1965, line: 42, baseType: !167, size: 32, offset: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1973, file: !1965, line: 43, baseType: !1979, size: 64, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1965, line: 11, baseType: !1980)
!1980 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1965, line: 8, size: 64, elements: !1981)
!1981 = !{!1982, !1983}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1980, file: !1965, line: 9, baseType: !167, size: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1980, file: !1965, line: 10, baseType: !160, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1973, file: !1965, line: 44, baseType: !167, size: 32, offset: 128)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1964, file: !1965, line: 52, baseType: !1986, size: 128)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1964, file: !1965, line: 48, size: 128, elements: !1987)
!1987 = !{!1988, !1989, !1990}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1986, file: !1965, line: 49, baseType: !1443, size: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1986, file: !1965, line: 50, baseType: !424, size: 32, offset: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1986, file: !1965, line: 51, baseType: !1979, size: 64, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1964, file: !1965, line: 61, baseType: !1992, size: 256)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1964, file: !1965, line: 55, size: 256, elements: !1993)
!1993 = !{!1994, !1995, !1996, !1997, !1999}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1992, file: !1965, line: 56, baseType: !1443, size: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1992, file: !1965, line: 57, baseType: !424, size: 32, offset: 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1992, file: !1965, line: 58, baseType: !167, size: 32, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1992, file: !1965, line: 59, baseType: !1998, size: 64, offset: 128)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !294, line: 94, baseType: !295)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1992, file: !1965, line: 60, baseType: !1998, size: 64, offset: 192)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1964, file: !1965, line: 95, baseType: !2001, size: 256)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1964, file: !1965, line: 64, size: 256, elements: !2002)
!2002 = !{!2003, !2004}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2001, file: !1965, line: 65, baseType: !160, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, scope: !2001, file: !1965, line: 77, baseType: !2005, size: 192, offset: 64)
!2005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2001, file: !1965, line: 77, size: 192, elements: !2006)
!2006 = !{!2007, !2008, !2015}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2005, file: !1965, line: 82, baseType: !1188, size: 16)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2005, file: !1965, line: 88, baseType: !2009, size: 192)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2005, file: !1965, line: 84, size: 192, elements: !2010)
!2010 = !{!2011, !2013, !2014}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2009, file: !1965, line: 85, baseType: !2012, size: 64)
!2012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 64, elements: !1313)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2009, file: !1965, line: 86, baseType: !160, size: 64, offset: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2009, file: !1965, line: 87, baseType: !160, size: 64, offset: 128)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2005, file: !1965, line: 93, baseType: !2016, size: 96)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2005, file: !1965, line: 90, size: 96, elements: !2017)
!2017 = !{!2018, !2019}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2016, file: !1965, line: 91, baseType: !2012, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2016, file: !1965, line: 92, baseType: !176, size: 32, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1964, file: !1965, line: 101, baseType: !2021, size: 128)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1964, file: !1965, line: 98, size: 128, elements: !2022)
!2022 = !{!2023, !2024}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2021, file: !1965, line: 99, baseType: !296, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2021, file: !1965, line: 100, baseType: !167, size: 32, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1964, file: !1965, line: 108, baseType: !2026, size: 128)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1964, file: !1965, line: 104, size: 128, elements: !2027)
!2027 = !{!2028, !2029, !2030}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2026, file: !1965, line: 105, baseType: !160, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2026, file: !1965, line: 106, baseType: !167, size: 32, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2026, file: !1965, line: 107, baseType: !7, size: 32, offset: 96)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1200, file: !1201, line: 1067, baseType: !1816, offset: 11136)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1200, file: !1201, line: 1099, baseType: !2033, size: 64, offset: 11136)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1201, line: 56, flags: DIFlagFwdDecl)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1200, file: !1201, line: 1103, baseType: !207, size: 128, offset: 11200)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1200, file: !1201, line: 1104, baseType: !2037, size: 64, offset: 11328)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1201, line: 46, flags: DIFlagFwdDecl)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1200, file: !1201, line: 1105, baseType: !1156, size: 192, offset: 11392)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1200, file: !1201, line: 1106, baseType: !7, size: 32, offset: 11584)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1200, file: !1201, line: 1109, baseType: !2042, size: 128, offset: 11648)
!2042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2043, size: 128, elements: !188)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1201, line: 51, flags: DIFlagFwdDecl)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1200, file: !1201, line: 1110, baseType: !1156, size: 192, offset: 11776)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1200, file: !1201, line: 1111, baseType: !207, size: 128, offset: 11968)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1200, file: !1201, line: 1173, baseType: !2048, size: 64, offset: 12096)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2050, line: 62, size: 256, align: 256, elements: !2051)
!2050 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2051 = !{!2052, !2053, !2054, !2059}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2049, file: !2050, line: 75, baseType: !176, size: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2049, file: !2050, line: 90, baseType: !176, size: 32, offset: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2049, file: !2050, line: 124, baseType: !2055, size: 64, offset: 64)
!2055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2049, file: !2050, line: 109, size: 64, elements: !2056)
!2056 = !{!2057, !2058}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2055, file: !2050, line: 110, baseType: !405, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2055, file: !2050, line: 112, baseType: !405, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2049, file: !2050, line: 144, baseType: !176, size: 32, offset: 128)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1200, file: !1201, line: 1174, baseType: !174, size: 32, offset: 12160)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1200, file: !1201, line: 1179, baseType: !311, size: 64, offset: 12224)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1200, file: !1201, line: 1182, baseType: !2063, size: 128, offset: 12288)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1134, line: 76, size: 128, elements: !2064)
!2064 = !{!2065, !2070, !2071}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2063, file: !1134, line: 85, baseType: !2066, size: 64)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2067, line: 7, size: 64, elements: !2068)
!2067 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2068 = !{!2069}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2066, file: !2067, line: 12, baseType: !1350, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2063, file: !1134, line: 88, baseType: !473, size: 8, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2063, file: !1134, line: 95, baseType: !473, size: 8, offset: 72)
!2072 = !DIDerivedType(tag: DW_TAG_member, scope: !1200, file: !1201, line: 1184, baseType: !2073, size: 128, offset: 12416)
!2073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1200, file: !1201, line: 1184, size: 128, elements: !2074)
!2074 = !{!2075, !2076}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2073, file: !1201, line: 1185, baseType: !1213, size: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2073, file: !1201, line: 1186, baseType: !352, size: 128, align: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1200, file: !1201, line: 1190, baseType: !2078, size: 64, offset: 12544)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1201, line: 53, flags: DIFlagFwdDecl)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1200, file: !1201, line: 1192, baseType: !2081, size: 128, offset: 12608)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1134, line: 64, size: 128, elements: !2082)
!2082 = !{!2083, !2084, !2085}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2081, file: !1134, line: 65, baseType: !704, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2081, file: !1134, line: 67, baseType: !176, size: 32, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2081, file: !1134, line: 68, baseType: !176, size: 32, offset: 96)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1200, file: !1201, line: 1206, baseType: !167, size: 32, offset: 12736)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1200, file: !1201, line: 1207, baseType: !167, size: 32, offset: 12768)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1200, file: !1201, line: 1209, baseType: !311, size: 64, offset: 12800)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1200, file: !1201, line: 1219, baseType: !404, size: 64, offset: 12864)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1200, file: !1201, line: 1220, baseType: !404, size: 64, offset: 12928)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1200, file: !1201, line: 1317, baseType: !167, size: 32, offset: 12992)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1200, file: !1201, line: 1319, baseType: !1199, size: 64, offset: 13056)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1200, file: !1201, line: 1322, baseType: !2094, size: 64, offset: 13120)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2096, line: 56, size: 512, elements: !2097)
!2096 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2097 = !{!2098, !2099, !2100, !2101, !2102, !2103, !2104, !2106}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2095, file: !2096, line: 57, baseType: !2094, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2095, file: !2096, line: 58, baseType: !160, size: 64, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2095, file: !2096, line: 59, baseType: !311, size: 64, offset: 128)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2095, file: !2096, line: 60, baseType: !311, size: 64, offset: 192)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2095, file: !2096, line: 61, baseType: !803, size: 64, offset: 256)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2095, file: !2096, line: 62, baseType: !7, size: 32, offset: 320)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2095, file: !2096, line: 63, baseType: !2105, size: 64, offset: 384)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !162, line: 153, baseType: !404)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2095, file: !2096, line: 64, baseType: !2107, size: 64, offset: 448)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1200, file: !1201, line: 1326, baseType: !1213, size: 32, offset: 13184)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1200, file: !1201, line: 1342, baseType: !160, size: 64, offset: 13248)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1200, file: !1201, line: 1343, baseType: !405, size: 64, offset: 13312)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1200, file: !1201, line: 1344, baseType: !404, size: 64, offset: 13376)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1200, file: !1201, line: 1345, baseType: !405, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1200, file: !1201, line: 1346, baseType: !405, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1200, file: !1201, line: 1347, baseType: !405, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1200, file: !1201, line: 1348, baseType: !352, size: 128, align: 64, offset: 13504)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1200, file: !1201, line: 1358, baseType: !2118, size: 34816, offset: 13824)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2119, line: 485, size: 34816, elements: !2120)
!2119 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2120 = !{!2121, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2150, !2151, !2152, !2153, !2154, !2155, !2158, !2159, !2160}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2118, file: !2119, line: 487, baseType: !2122, size: 192)
!2122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2123, size: 192, elements: !262)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2124, line: 16, size: 64, elements: !2125)
!2124 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2125 = !{!2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2123, file: !2124, line: 17, baseType: !842, size: 16)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2123, file: !2124, line: 18, baseType: !842, size: 16, offset: 16)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2123, file: !2124, line: 19, baseType: !842, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2123, file: !2124, line: 19, baseType: !842, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2123, file: !2124, line: 19, baseType: !842, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2123, file: !2124, line: 19, baseType: !842, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2123, file: !2124, line: 19, baseType: !842, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2123, file: !2124, line: 20, baseType: !842, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2123, file: !2124, line: 20, baseType: !842, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2123, file: !2124, line: 20, baseType: !842, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2123, file: !2124, line: 20, baseType: !842, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2123, file: !2124, line: 20, baseType: !842, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2123, file: !2124, line: 20, baseType: !842, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2118, file: !2119, line: 491, baseType: !311, size: 64, offset: 192)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2118, file: !2119, line: 495, baseType: !303, size: 16, offset: 256)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2118, file: !2119, line: 496, baseType: !303, size: 16, offset: 272)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2118, file: !2119, line: 497, baseType: !303, size: 16, offset: 288)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2118, file: !2119, line: 498, baseType: !303, size: 16, offset: 304)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2118, file: !2119, line: 502, baseType: !311, size: 64, offset: 320)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2118, file: !2119, line: 503, baseType: !311, size: 64, offset: 384)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2118, file: !2119, line: 514, baseType: !2147, size: 256, offset: 448)
!2147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2148, size: 256, elements: !1138)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2119, line: 483, flags: DIFlagFwdDecl)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2118, file: !2119, line: 516, baseType: !311, size: 64, offset: 704)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2118, file: !2119, line: 518, baseType: !311, size: 64, offset: 768)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2118, file: !2119, line: 520, baseType: !311, size: 64, offset: 832)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2118, file: !2119, line: 521, baseType: !311, size: 64, offset: 896)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2118, file: !2119, line: 522, baseType: !311, size: 64, offset: 960)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2118, file: !2119, line: 528, baseType: !2156, size: 64, offset: 1024)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2119, line: 10, flags: DIFlagFwdDecl)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2118, file: !2119, line: 535, baseType: !311, size: 64, offset: 1088)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2118, file: !2119, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2118, file: !2119, line: 540, baseType: !2161, size: 33280, offset: 1536)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2162, line: 317, size: 33280, elements: !2163)
!2162 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2163 = !{!2164, !2165, !2166}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2161, file: !2162, line: 330, baseType: !7, size: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2161, file: !2162, line: 337, baseType: !311, size: 64, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2161, file: !2162, line: 348, baseType: !2167, size: 32768, offset: 512)
!2167 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2162, line: 304, size: 32768, elements: !2168)
!2168 = !{!2169, !2184, !2223, !2273, !2286}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2167, file: !2162, line: 305, baseType: !2170, size: 896)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2162, line: 12, size: 896, elements: !2171)
!2171 = !{!2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2183}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2170, file: !2162, line: 13, baseType: !174, size: 32)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2170, file: !2162, line: 14, baseType: !174, size: 32, offset: 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2170, file: !2162, line: 15, baseType: !174, size: 32, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2170, file: !2162, line: 16, baseType: !174, size: 32, offset: 96)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2170, file: !2162, line: 17, baseType: !174, size: 32, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2170, file: !2162, line: 18, baseType: !174, size: 32, offset: 160)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2170, file: !2162, line: 19, baseType: !174, size: 32, offset: 192)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2170, file: !2162, line: 22, baseType: !2180, size: 640, offset: 224)
!2180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 640, elements: !2181)
!2181 = !{!2182}
!2182 = !DISubrange(count: 20)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2170, file: !2162, line: 25, baseType: !174, size: 32, offset: 864)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2167, file: !2162, line: 306, baseType: !2185, size: 4096, align: 128)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2162, line: 34, size: 4096, align: 128, elements: !2186)
!2186 = !{!2187, !2188, !2189, !2190, !2191, !2206, !2207, !2208, !2212, !2214, !2218}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2185, file: !2162, line: 35, baseType: !842, size: 16)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2185, file: !2162, line: 36, baseType: !842, size: 16, offset: 16)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2185, file: !2162, line: 37, baseType: !842, size: 16, offset: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2185, file: !2162, line: 38, baseType: !842, size: 16, offset: 48)
!2191 = !DIDerivedType(tag: DW_TAG_member, scope: !2185, file: !2162, line: 39, baseType: !2192, size: 128, offset: 64)
!2192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2185, file: !2162, line: 39, size: 128, elements: !2193)
!2193 = !{!2194, !2199}
!2194 = !DIDerivedType(tag: DW_TAG_member, scope: !2192, file: !2162, line: 40, baseType: !2195, size: 128)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2192, file: !2162, line: 40, size: 128, elements: !2196)
!2196 = !{!2197, !2198}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2195, file: !2162, line: 41, baseType: !404, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2195, file: !2162, line: 42, baseType: !404, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, scope: !2192, file: !2162, line: 44, baseType: !2200, size: 128)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2192, file: !2162, line: 44, size: 128, elements: !2201)
!2201 = !{!2202, !2203, !2204, !2205}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2200, file: !2162, line: 45, baseType: !174, size: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2200, file: !2162, line: 46, baseType: !174, size: 32, offset: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2200, file: !2162, line: 47, baseType: !174, size: 32, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2200, file: !2162, line: 48, baseType: !174, size: 32, offset: 96)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2185, file: !2162, line: 51, baseType: !174, size: 32, offset: 192)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2185, file: !2162, line: 52, baseType: !174, size: 32, offset: 224)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2185, file: !2162, line: 55, baseType: !2209, size: 1024, offset: 256)
!2209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 1024, elements: !2210)
!2210 = !{!2211}
!2211 = !DISubrange(count: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2185, file: !2162, line: 58, baseType: !2213, size: 2048, offset: 1280)
!2213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 2048, elements: !266)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2185, file: !2162, line: 60, baseType: !2215, size: 384, offset: 3328)
!2215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 384, elements: !2216)
!2216 = !{!2217}
!2217 = !DISubrange(count: 12)
!2218 = !DIDerivedType(tag: DW_TAG_member, scope: !2185, file: !2162, line: 62, baseType: !2219, size: 384, offset: 3712)
!2219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2185, file: !2162, line: 62, size: 384, elements: !2220)
!2220 = !{!2221, !2222}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2219, file: !2162, line: 63, baseType: !2215, size: 384)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2219, file: !2162, line: 64, baseType: !2215, size: 384)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2167, file: !2162, line: 307, baseType: !2224, size: 1088)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2162, line: 79, size: 1088, elements: !2225)
!2225 = !{!2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2272}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2224, file: !2162, line: 80, baseType: !174, size: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2224, file: !2162, line: 81, baseType: !174, size: 32, offset: 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2224, file: !2162, line: 82, baseType: !174, size: 32, offset: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2224, file: !2162, line: 83, baseType: !174, size: 32, offset: 96)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2224, file: !2162, line: 84, baseType: !174, size: 32, offset: 128)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2224, file: !2162, line: 85, baseType: !174, size: 32, offset: 160)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2224, file: !2162, line: 86, baseType: !174, size: 32, offset: 192)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2224, file: !2162, line: 88, baseType: !2180, size: 640, offset: 224)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2224, file: !2162, line: 89, baseType: !1335, size: 8, offset: 864)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2224, file: !2162, line: 90, baseType: !1335, size: 8, offset: 872)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2224, file: !2162, line: 91, baseType: !1335, size: 8, offset: 880)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2224, file: !2162, line: 92, baseType: !1335, size: 8, offset: 888)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2224, file: !2162, line: 93, baseType: !1335, size: 8, offset: 896)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2224, file: !2162, line: 94, baseType: !1335, size: 8, offset: 904)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2224, file: !2162, line: 95, baseType: !2241, size: 64, offset: 960)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2243, line: 11, size: 128, elements: !2244)
!2243 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2244 = !{!2245, !2246}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2242, file: !2243, line: 12, baseType: !296, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2242, file: !2243, line: 13, baseType: !2247, size: 64, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2249, line: 56, size: 1344, elements: !2250)
!2249 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2250 = !{!2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2248, file: !2249, line: 61, baseType: !311, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2248, file: !2249, line: 62, baseType: !311, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2248, file: !2249, line: 63, baseType: !311, size: 64, offset: 128)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2248, file: !2249, line: 64, baseType: !311, size: 64, offset: 192)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2248, file: !2249, line: 65, baseType: !311, size: 64, offset: 256)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2248, file: !2249, line: 66, baseType: !311, size: 64, offset: 320)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2248, file: !2249, line: 68, baseType: !311, size: 64, offset: 384)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2248, file: !2249, line: 69, baseType: !311, size: 64, offset: 448)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2248, file: !2249, line: 70, baseType: !311, size: 64, offset: 512)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2248, file: !2249, line: 71, baseType: !311, size: 64, offset: 576)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2248, file: !2249, line: 72, baseType: !311, size: 64, offset: 640)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2248, file: !2249, line: 73, baseType: !311, size: 64, offset: 704)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2248, file: !2249, line: 74, baseType: !311, size: 64, offset: 768)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2248, file: !2249, line: 75, baseType: !311, size: 64, offset: 832)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2248, file: !2249, line: 76, baseType: !311, size: 64, offset: 896)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2248, file: !2249, line: 81, baseType: !311, size: 64, offset: 960)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2248, file: !2249, line: 83, baseType: !311, size: 64, offset: 1024)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2248, file: !2249, line: 84, baseType: !311, size: 64, offset: 1088)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2248, file: !2249, line: 85, baseType: !311, size: 64, offset: 1152)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2248, file: !2249, line: 86, baseType: !311, size: 64, offset: 1216)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2248, file: !2249, line: 87, baseType: !311, size: 64, offset: 1280)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2224, file: !2162, line: 96, baseType: !174, size: 32, offset: 1024)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2167, file: !2162, line: 308, baseType: !2274, size: 4608, align: 512)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2162, line: 289, size: 4608, align: 512, elements: !2275)
!2275 = !{!2276, !2277, !2284}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2274, file: !2162, line: 290, baseType: !2185, size: 4096, align: 128)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2274, file: !2162, line: 291, baseType: !2278, size: 512, offset: 4096)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2162, line: 268, size: 512, elements: !2279)
!2279 = !{!2280, !2281, !2282}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2278, file: !2162, line: 269, baseType: !404, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2278, file: !2162, line: 270, baseType: !404, size: 64, offset: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2278, file: !2162, line: 271, baseType: !2283, size: 384, offset: 128)
!2283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 384, elements: !1606)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2274, file: !2162, line: 292, baseType: !2285, offset: 4608)
!2285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1335, elements: !1704)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2167, file: !2162, line: 309, baseType: !2287, size: 32768)
!2287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1335, size: 32768, elements: !2288)
!2288 = !{!2289}
!2289 = !DISubrange(count: 4096)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1196, file: !706, line: 378, baseType: !2291, size: 64, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1192, file: !706, line: 384, baseType: !1485, size: 192, offset: 192)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !961, file: !706, line: 500, baseType: !220, offset: 6656)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !961, file: !706, line: 501, baseType: !2295, size: 64, offset: 6656)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !706, line: 387, flags: DIFlagFwdDecl)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !961, file: !706, line: 516, baseType: !1694, size: 64, offset: 6720)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !961, file: !706, line: 519, baseType: !339, size: 64, offset: 6784)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !961, file: !706, line: 521, baseType: !2300, size: 64, offset: 6848)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !706, line: 521, flags: DIFlagFwdDecl)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !961, file: !706, line: 545, baseType: !730, size: 32, offset: 6912)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !961, file: !706, line: 548, baseType: !473, size: 8, offset: 6944)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !961, file: !706, line: 550, baseType: !2305, offset: 6952)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2306, line: 142, elements: !234)
!2306 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !961, file: !706, line: 554, baseType: !1937, size: 256, offset: 6976)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !961, file: !706, line: 557, baseType: !174, size: 32, offset: 7232)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !958, file: !706, line: 565, baseType: !2310, offset: 7296)
!2310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, elements: !2311)
!2311 = !{!2312}
!2312 = !DISubrange(count: -1)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !954, file: !706, line: 151, baseType: !730, size: 32)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !947, file: !706, line: 156, baseType: !220, offset: 256)
!2315 = !DIDerivedType(tag: DW_TAG_member, scope: !710, file: !706, line: 159, baseType: !2316, size: 128)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !710, file: !706, line: 159, size: 128, elements: !2317)
!2317 = !{!2318, !2382}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2316, file: !706, line: 161, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !38, line: 110, size: 1152, elements: !2321)
!2321 = !{!2322, !2332, !2353, !2354, !2355, !2356, !2357, !2369, !2370, !2371}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2320, file: !38, line: 111, baseType: !2323, size: 384)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !38, line: 19, size: 384, elements: !2324)
!2324 = !{!2325, !2327, !2328, !2329, !2330, !2331}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2323, file: !38, line: 20, baseType: !2326, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2323, file: !38, line: 21, baseType: !2326, size: 64, offset: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2323, file: !38, line: 22, baseType: !2326, size: 64, offset: 128)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2323, file: !38, line: 23, baseType: !311, size: 64, offset: 192)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2323, file: !38, line: 24, baseType: !311, size: 64, offset: 256)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2323, file: !38, line: 25, baseType: !311, size: 64, offset: 320)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2320, file: !38, line: 112, baseType: !2333, size: 64, offset: 384)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2335, line: 105, size: 128, elements: !2336)
!2335 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2336 = !{!2337, !2338}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2334, file: !2335, line: 110, baseType: !311, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2334, file: !2335, line: 118, baseType: !2339, size: 64, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2335, line: 95, size: 448, elements: !2341)
!2341 = !{!2342, !2343, !2348, !2349, !2350, !2351, !2352}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2340, file: !2335, line: 96, baseType: !754, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2340, file: !2335, line: 97, baseType: !2344, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2335, line: 60, baseType: !2346)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{null, !2333}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2340, file: !2335, line: 98, baseType: !2344, size: 64, offset: 128)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2340, file: !2335, line: 99, baseType: !473, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2340, file: !2335, line: 100, baseType: !473, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2340, file: !2335, line: 101, baseType: !352, size: 128, align: 64, offset: 256)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2340, file: !2335, line: 102, baseType: !2333, size: 64, offset: 384)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2320, file: !38, line: 113, baseType: !2334, size: 128, offset: 448)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2320, file: !38, line: 114, baseType: !1485, size: 192, offset: 576)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2320, file: !38, line: 115, baseType: !37, size: 32, offset: 768)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2320, file: !38, line: 116, baseType: !7, size: 32, offset: 800)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2320, file: !38, line: 117, baseType: !2358, size: 64, offset: 832)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2360)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !38, line: 67, size: 256, elements: !2361)
!2361 = !{!2362, !2363, !2367, !2368}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2360, file: !38, line: 73, baseType: !823, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2360, file: !38, line: 78, baseType: !2364, size: 64, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{null, !2319}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2360, file: !38, line: 83, baseType: !2364, size: 64, offset: 128)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2360, file: !38, line: 89, baseType: !1010, size: 64, offset: 192)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2320, file: !38, line: 118, baseType: !160, size: 64, offset: 896)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2320, file: !38, line: 119, baseType: !167, size: 32, offset: 960)
!2371 = !DIDerivedType(tag: DW_TAG_member, scope: !2320, file: !38, line: 120, baseType: !2372, size: 128, offset: 1024)
!2372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2320, file: !38, line: 120, size: 128, elements: !2373)
!2373 = !{!2374, !2380}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2372, file: !38, line: 121, baseType: !2375, size: 128)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2376, line: 6, size: 128, elements: !2377)
!2376 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2377 = !{!2378, !2379}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2375, file: !2376, line: 7, baseType: !404, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2375, file: !2376, line: 8, baseType: !404, size: 64, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2372, file: !38, line: 122, baseType: !2381)
!2381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2375, elements: !1704)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2316, file: !706, line: 162, baseType: !160, size: 64, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !710, file: !706, line: 176, baseType: !352, size: 128, align: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, scope: !705, file: !706, line: 179, baseType: !2385, size: 32, offset: 384)
!2385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !705, file: !706, line: 179, size: 32, elements: !2386)
!2386 = !{!2387, !2388, !2389, !2390}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2385, file: !706, line: 184, baseType: !730, size: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2385, file: !706, line: 192, baseType: !7, size: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2385, file: !706, line: 194, baseType: !7, size: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2385, file: !706, line: 195, baseType: !167, size: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !705, file: !706, line: 199, baseType: !730, size: 32, offset: 416)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !640, file: !51, line: 1964, baseType: !2393, size: 64, offset: 1344)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!296, !582, !2396}
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2398, line: 12, size: 256, elements: !2399)
!2398 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2399 = !{!2400, !2401, !2402, !2403, !2404}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2397, file: !2398, line: 13, baseType: !161, size: 32)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2397, file: !2398, line: 16, baseType: !167, size: 32, offset: 32)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2397, file: !2398, line: 23, baseType: !311, size: 64, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2397, file: !2398, line: 30, baseType: !311, size: 64, offset: 128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2397, file: !2398, line: 33, baseType: !2405, size: 64, offset: 192)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !706, line: 27, flags: DIFlagFwdDecl)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !640, file: !51, line: 1966, baseType: !2393, size: 64, offset: 1408)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !583, file: !51, line: 1424, baseType: !2409, size: 64, offset: 448)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2411)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !45, line: 322, size: 704, elements: !2412)
!2412 = !{!2413, !2459, !2463, !2467, !2468, !2469, !2470, !2471, !2476, !2481, !2485}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2411, file: !45, line: 323, baseType: !2414, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!167, !2417}
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !45, line: 294, size: 1600, elements: !2419)
!2419 = !{!2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2444, !2445, !2446}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2418, file: !45, line: 295, baseType: !622, size: 128)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2418, file: !45, line: 296, baseType: !207, size: 128, offset: 128)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2418, file: !45, line: 297, baseType: !207, size: 128, offset: 256)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2418, file: !45, line: 298, baseType: !207, size: 128, offset: 384)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2418, file: !45, line: 299, baseType: !1156, size: 192, offset: 512)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2418, file: !45, line: 300, baseType: !220, offset: 704)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2418, file: !45, line: 301, baseType: !730, size: 32, offset: 704)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2418, file: !45, line: 302, baseType: !582, size: 64, offset: 768)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2418, file: !45, line: 303, baseType: !2429, size: 64, offset: 832)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !45, line: 68, size: 64, elements: !2430)
!2430 = !{!2431, !2443}
!2431 = !DIDerivedType(tag: DW_TAG_member, scope: !2429, file: !45, line: 69, baseType: !2432, size: 32)
!2432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2429, file: !45, line: 69, size: 32, elements: !2433)
!2433 = !{!2434, !2435, !2436}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2432, file: !45, line: 70, baseType: !418, size: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2432, file: !45, line: 71, baseType: !426, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2432, file: !45, line: 72, baseType: !2437, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2438, line: 24, baseType: !2439)
!2438 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2438, line: 22, size: 32, elements: !2440)
!2440 = !{!2441}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2439, file: !2438, line: 23, baseType: !2442, size: 32)
!2442 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2438, line: 20, baseType: !424)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2429, file: !45, line: 74, baseType: !44, size: 32, offset: 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2418, file: !45, line: 304, baseType: !514, size: 64, offset: 896)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2418, file: !45, line: 305, baseType: !311, size: 64, offset: 960)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2418, file: !45, line: 306, baseType: !2447, size: 576, offset: 1024)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !45, line: 205, size: 576, elements: !2448)
!2448 = !{!2449, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2447, file: !45, line: 206, baseType: !2450, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !45, line: 66, baseType: !516)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2447, file: !45, line: 207, baseType: !2450, size: 64, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2447, file: !45, line: 208, baseType: !2450, size: 64, offset: 128)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2447, file: !45, line: 209, baseType: !2450, size: 64, offset: 192)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2447, file: !45, line: 210, baseType: !2450, size: 64, offset: 256)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2447, file: !45, line: 211, baseType: !2450, size: 64, offset: 320)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2447, file: !45, line: 212, baseType: !2450, size: 64, offset: 384)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2447, file: !45, line: 213, baseType: !522, size: 64, offset: 448)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2447, file: !45, line: 214, baseType: !522, size: 64, offset: 512)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2411, file: !45, line: 324, baseType: !2460, size: 64, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!2417, !582, !167}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2411, file: !45, line: 325, baseType: !2464, size: 64, offset: 128)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{null, !2417}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2411, file: !45, line: 326, baseType: !2414, size: 64, offset: 192)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2411, file: !45, line: 327, baseType: !2414, size: 64, offset: 256)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2411, file: !45, line: 328, baseType: !2414, size: 64, offset: 320)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2411, file: !45, line: 329, baseType: !668, size: 64, offset: 384)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2411, file: !45, line: 332, baseType: !2472, size: 64, offset: 448)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!2475, !412}
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2411, file: !45, line: 333, baseType: !2477, size: 64, offset: 512)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!167, !412, !2480}
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2411, file: !45, line: 335, baseType: !2482, size: 64, offset: 576)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!167, !412, !2475}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2411, file: !45, line: 337, baseType: !2486, size: 64, offset: 640)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!167, !582, !2489}
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !583, file: !51, line: 1425, baseType: !2491, size: 64, offset: 512)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2493)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !45, line: 428, size: 704, elements: !2494)
!2494 = !{!2495, !2499, !2500, !2504, !2505, !2506, !2521, !2544, !2548, !2549, !2572}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2493, file: !45, line: 429, baseType: !2496, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!167, !582, !167, !167, !532}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2493, file: !45, line: 430, baseType: !668, size: 64, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2493, file: !45, line: 431, baseType: !2501, size: 64, offset: 128)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!167, !582, !7}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2493, file: !45, line: 432, baseType: !2501, size: 64, offset: 192)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2493, file: !45, line: 433, baseType: !668, size: 64, offset: 256)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2493, file: !45, line: 434, baseType: !2507, size: 64, offset: 320)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!167, !582, !167, !2510}
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !45, line: 415, size: 256, elements: !2512)
!2512 = !{!2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2511, file: !45, line: 416, baseType: !167, size: 32)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2511, file: !45, line: 417, baseType: !7, size: 32, offset: 32)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2511, file: !45, line: 418, baseType: !7, size: 32, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2511, file: !45, line: 420, baseType: !7, size: 32, offset: 96)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2511, file: !45, line: 421, baseType: !7, size: 32, offset: 128)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2511, file: !45, line: 422, baseType: !7, size: 32, offset: 160)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2511, file: !45, line: 423, baseType: !7, size: 32, offset: 192)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2511, file: !45, line: 424, baseType: !7, size: 32, offset: 224)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2493, file: !45, line: 435, baseType: !2522, size: 64, offset: 384)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!167, !582, !2429, !2525}
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !45, line: 343, size: 960, elements: !2527)
!2527 = !{!2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2526, file: !45, line: 344, baseType: !167, size: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2526, file: !45, line: 345, baseType: !404, size: 64, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2526, file: !45, line: 346, baseType: !404, size: 64, offset: 128)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2526, file: !45, line: 347, baseType: !404, size: 64, offset: 192)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2526, file: !45, line: 348, baseType: !404, size: 64, offset: 256)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2526, file: !45, line: 349, baseType: !404, size: 64, offset: 320)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2526, file: !45, line: 350, baseType: !404, size: 64, offset: 384)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2526, file: !45, line: 351, baseType: !760, size: 64, offset: 448)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2526, file: !45, line: 353, baseType: !760, size: 64, offset: 512)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2526, file: !45, line: 354, baseType: !167, size: 32, offset: 576)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2526, file: !45, line: 355, baseType: !167, size: 32, offset: 608)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2526, file: !45, line: 356, baseType: !404, size: 64, offset: 640)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2526, file: !45, line: 357, baseType: !404, size: 64, offset: 704)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2526, file: !45, line: 358, baseType: !404, size: 64, offset: 768)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2526, file: !45, line: 359, baseType: !760, size: 64, offset: 832)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2526, file: !45, line: 360, baseType: !167, size: 32, offset: 896)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2493, file: !45, line: 436, baseType: !2545, size: 64, offset: 448)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!167, !582, !2489, !2525}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2493, file: !45, line: 438, baseType: !2522, size: 64, offset: 512)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2493, file: !45, line: 439, baseType: !2550, size: 64, offset: 576)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!167, !582, !2553}
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !45, line: 409, size: 1408, elements: !2555)
!2555 = !{!2556, !2557}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2554, file: !45, line: 410, baseType: !7, size: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2554, file: !45, line: 411, baseType: !2558, size: 1344, offset: 64)
!2558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2559, size: 1344, elements: !262)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !45, line: 395, size: 448, elements: !2560)
!2560 = !{!2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2571}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2559, file: !45, line: 396, baseType: !7, size: 32)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2559, file: !45, line: 397, baseType: !7, size: 32, offset: 32)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2559, file: !45, line: 399, baseType: !7, size: 32, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2559, file: !45, line: 400, baseType: !7, size: 32, offset: 96)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2559, file: !45, line: 401, baseType: !7, size: 32, offset: 128)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2559, file: !45, line: 402, baseType: !7, size: 32, offset: 160)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2559, file: !45, line: 403, baseType: !7, size: 32, offset: 192)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2559, file: !45, line: 404, baseType: !406, size: 64, offset: 256)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2559, file: !45, line: 405, baseType: !2570, size: 64, offset: 320)
!2570 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !162, line: 126, baseType: !404)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2559, file: !45, line: 406, baseType: !2570, size: 64, offset: 384)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2493, file: !45, line: 440, baseType: !2501, size: 64, offset: 640)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !583, file: !51, line: 1426, baseType: !2574, size: 64, offset: 576)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2576)
!2576 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !51, line: 49, flags: DIFlagFwdDecl)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !583, file: !51, line: 1427, baseType: !311, size: 64, offset: 640)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !583, file: !51, line: 1428, baseType: !311, size: 64, offset: 704)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !583, file: !51, line: 1429, baseType: !311, size: 64, offset: 768)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !583, file: !51, line: 1430, baseType: !369, size: 64, offset: 832)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !583, file: !51, line: 1431, baseType: !750, size: 256, offset: 896)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !583, file: !51, line: 1432, baseType: !167, size: 32, offset: 1152)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !583, file: !51, line: 1433, baseType: !730, size: 32, offset: 1184)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !583, file: !51, line: 1437, baseType: !2585, size: 64, offset: 1216)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2588)
!2588 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !51, line: 1437, flags: DIFlagFwdDecl)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !583, file: !51, line: 1449, baseType: !2590, size: 64, offset: 1280)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !385, line: 34, size: 64, elements: !2591)
!2591 = !{!2592}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2590, file: !385, line: 35, baseType: !388, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !583, file: !51, line: 1450, baseType: !207, size: 128, offset: 1344)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !583, file: !51, line: 1451, baseType: !2595, size: 64, offset: 1472)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !51, line: 699, flags: DIFlagFwdDecl)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !583, file: !51, line: 1452, baseType: !1903, size: 64, offset: 1536)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !583, file: !51, line: 1453, baseType: !2599, size: 64, offset: 1600)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !51, line: 1453, flags: DIFlagFwdDecl)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !583, file: !51, line: 1454, baseType: !622, size: 128, offset: 1664)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !583, file: !51, line: 1455, baseType: !7, size: 32, offset: 1792)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !583, file: !51, line: 1456, baseType: !2604, size: 2432, offset: 1856)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !45, line: 518, size: 2432, elements: !2605)
!2605 = !{!2606, !2607, !2608, !2610, !2642}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2604, file: !45, line: 519, baseType: !7, size: 32)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2604, file: !45, line: 520, baseType: !750, size: 256, offset: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2604, file: !45, line: 521, baseType: !2609, size: 192, offset: 320)
!2609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 192, elements: !262)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2604, file: !45, line: 522, baseType: !2611, size: 1728, offset: 512)
!2611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2612, size: 1728, elements: !262)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !45, line: 222, size: 576, elements: !2613)
!2613 = !{!2614, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2612, file: !45, line: 223, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !45, line: 443, size: 256, elements: !2617)
!2617 = !{!2618, !2619, !2632, !2633}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2616, file: !45, line: 444, baseType: !167, size: 32)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2616, file: !45, line: 445, baseType: !2620, size: 64, offset: 64)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2622)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !45, line: 310, size: 512, elements: !2623)
!2623 = !{!2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2622, file: !45, line: 311, baseType: !668, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2622, file: !45, line: 312, baseType: !668, size: 64, offset: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2622, file: !45, line: 313, baseType: !668, size: 64, offset: 128)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2622, file: !45, line: 314, baseType: !668, size: 64, offset: 192)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2622, file: !45, line: 315, baseType: !2414, size: 64, offset: 256)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2622, file: !45, line: 316, baseType: !2414, size: 64, offset: 320)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2622, file: !45, line: 317, baseType: !2414, size: 64, offset: 384)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2622, file: !45, line: 318, baseType: !2486, size: 64, offset: 448)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2616, file: !45, line: 446, baseType: !157, size: 64, offset: 128)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2616, file: !45, line: 447, baseType: !2615, size: 64, offset: 192)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2612, file: !45, line: 224, baseType: !167, size: 32, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2612, file: !45, line: 226, baseType: !207, size: 128, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2612, file: !45, line: 227, baseType: !311, size: 64, offset: 256)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2612, file: !45, line: 228, baseType: !7, size: 32, offset: 320)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2612, file: !45, line: 229, baseType: !7, size: 32, offset: 352)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2612, file: !45, line: 230, baseType: !2450, size: 64, offset: 384)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2612, file: !45, line: 231, baseType: !2450, size: 64, offset: 448)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2612, file: !45, line: 232, baseType: !160, size: 64, offset: 512)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2604, file: !45, line: 523, baseType: !2643, size: 192, offset: 2240)
!2643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2620, size: 192, elements: !262)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !583, file: !51, line: 1458, baseType: !2645, size: 2112, offset: 4288)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !51, line: 1410, size: 2112, elements: !2646)
!2646 = !{!2647, !2648, !2649}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2645, file: !51, line: 1411, baseType: !167, size: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2645, file: !51, line: 1412, baseType: !1464, size: 128, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2645, file: !51, line: 1413, baseType: !2650, size: 1920, offset: 192)
!2650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2651, size: 1920, elements: !262)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2652, line: 12, size: 640, elements: !2653)
!2652 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2653 = !{!2654, !2662, !2664, !2669, !2670}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2651, file: !2652, line: 13, baseType: !2655, size: 320)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2656, line: 17, size: 320, elements: !2657)
!2656 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2657 = !{!2658, !2659, !2660, !2661}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2655, file: !2656, line: 18, baseType: !167, size: 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2655, file: !2656, line: 19, baseType: !167, size: 32, offset: 32)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2655, file: !2656, line: 20, baseType: !1464, size: 128, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2655, file: !2656, line: 22, baseType: !352, size: 128, align: 64, offset: 192)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2651, file: !2652, line: 14, baseType: !2663, size: 64, offset: 320)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2651, file: !2652, line: 15, baseType: !2665, size: 64, offset: 384)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2666, line: 16, size: 64, elements: !2667)
!2666 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2667 = !{!2668}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2665, file: !2666, line: 17, baseType: !1199, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2651, file: !2652, line: 16, baseType: !1464, size: 128, offset: 448)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2651, file: !2652, line: 17, baseType: !730, size: 32, offset: 576)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !583, file: !51, line: 1465, baseType: !160, size: 64, offset: 6400)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !583, file: !51, line: 1468, baseType: !174, size: 32, offset: 6464)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !583, file: !51, line: 1470, baseType: !522, size: 64, offset: 6528)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !583, file: !51, line: 1471, baseType: !522, size: 64, offset: 6592)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !583, file: !51, line: 1473, baseType: !176, size: 32, offset: 6656)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !583, file: !51, line: 1474, baseType: !2677, size: 64, offset: 6720)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !51, line: 603, flags: DIFlagFwdDecl)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !583, file: !51, line: 1477, baseType: !2680, size: 256, offset: 6784)
!2680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 256, elements: !2210)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !583, file: !51, line: 1478, baseType: !2682, size: 128, offset: 7040)
!2682 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2683, line: 18, baseType: !2684)
!2683 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2683, line: 16, size: 128, elements: !2685)
!2685 = !{!2686}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2684, file: !2683, line: 17, baseType: !2687, size: 128)
!2687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1336, size: 128, elements: !171)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !583, file: !51, line: 1480, baseType: !7, size: 32, offset: 7168)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !583, file: !51, line: 1481, baseType: !2690, size: 32, offset: 7200)
!2690 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !162, line: 150, baseType: !7)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !583, file: !51, line: 1487, baseType: !1156, size: 192, offset: 7232)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !583, file: !51, line: 1493, baseType: !204, size: 64, offset: 7424)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !583, file: !51, line: 1495, baseType: !2694, size: 64, offset: 7488)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2696)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !367, line: 135, size: 1024, align: 512, elements: !2697)
!2697 = !{!2698, !2702, !2703, !2710, !2716, !2720, !2724, !2728, !2729, !2733, !2737, !2742, !2746}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2696, file: !367, line: 136, baseType: !2699, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!167, !369, !7}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2696, file: !367, line: 137, baseType: !2699, size: 64, offset: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2696, file: !367, line: 138, baseType: !2704, size: 64, offset: 128)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!167, !2707, !2709}
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2696, file: !367, line: 139, baseType: !2711, size: 64, offset: 192)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!167, !2707, !7, !204, !2714}
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2696, file: !367, line: 141, baseType: !2717, size: 64, offset: 256)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!167, !2707}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2696, file: !367, line: 142, baseType: !2721, size: 64, offset: 320)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!167, !369}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2696, file: !367, line: 143, baseType: !2725, size: 64, offset: 384)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{null, !369}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2696, file: !367, line: 144, baseType: !2725, size: 64, offset: 448)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2696, file: !367, line: 145, baseType: !2730, size: 64, offset: 512)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{null, !369, !412}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2696, file: !367, line: 146, baseType: !2734, size: 64, offset: 576)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!261, !369, !261, !167}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2696, file: !367, line: 147, baseType: !2738, size: 64, offset: 640)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!365, !2741}
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2696, file: !367, line: 148, baseType: !2743, size: 64, offset: 704)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!167, !532, !473}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2696, file: !367, line: 149, baseType: !2747, size: 64, offset: 768)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!369, !369, !2750}
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !583, file: !51, line: 1500, baseType: !167, size: 32, offset: 7552)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !583, file: !51, line: 1502, baseType: !2754, size: 448, offset: 7616)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2398, line: 60, size: 448, elements: !2755)
!2755 = !{!2756, !2761, !2762, !2763, !2764, !2765, !2766}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2754, file: !2398, line: 61, baseType: !2757, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!311, !2760, !2396}
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2754, file: !2398, line: 63, baseType: !2757, size: 64, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2754, file: !2398, line: 66, baseType: !296, size: 64, offset: 128)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2754, file: !2398, line: 67, baseType: !167, size: 32, offset: 192)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2754, file: !2398, line: 68, baseType: !7, size: 32, offset: 224)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2754, file: !2398, line: 71, baseType: !207, size: 128, offset: 256)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2754, file: !2398, line: 77, baseType: !2767, size: 64, offset: 384)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !583, file: !51, line: 1505, baseType: !754, size: 64, offset: 8064)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !583, file: !51, line: 1508, baseType: !754, size: 64, offset: 8128)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !583, file: !51, line: 1511, baseType: !167, size: 32, offset: 8192)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !583, file: !51, line: 1514, baseType: !892, size: 32, offset: 8224)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !583, file: !51, line: 1517, baseType: !2773, size: 64, offset: 8256)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1938, line: 18, flags: DIFlagFwdDecl)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !583, file: !51, line: 1518, baseType: !618, size: 64, offset: 8320)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !583, file: !51, line: 1525, baseType: !1694, size: 64, offset: 8384)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !583, file: !51, line: 1532, baseType: !2778, size: 64, offset: 8448)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2779, line: 52, size: 64, elements: !2780)
!2779 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2780 = !{!2781}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2778, file: !2779, line: 53, baseType: !2782, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2779, line: 40, size: 256, elements: !2784)
!2784 = !{!2785, !2786, !2791}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2783, file: !2779, line: 42, baseType: !220)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2783, file: !2779, line: 44, baseType: !2787, size: 192)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2779, line: 28, size: 192, elements: !2788)
!2788 = !{!2789, !2790}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2787, file: !2779, line: 29, baseType: !207, size: 128)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2787, file: !2779, line: 31, baseType: !296, size: 64, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2783, file: !2779, line: 49, baseType: !296, size: 64, offset: 192)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !583, file: !51, line: 1533, baseType: !2778, size: 64, offset: 8512)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !583, file: !51, line: 1534, baseType: !352, size: 128, align: 64, offset: 8576)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !583, file: !51, line: 1535, baseType: !1937, size: 256, offset: 8704)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !583, file: !51, line: 1537, baseType: !1156, size: 192, offset: 8960)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !583, file: !51, line: 1542, baseType: !167, size: 32, offset: 9152)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !583, file: !51, line: 1545, baseType: !220, offset: 9184)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !583, file: !51, line: 1546, baseType: !207, size: 128, offset: 9216)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !583, file: !51, line: 1548, baseType: !220, offset: 9344)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !583, file: !51, line: 1549, baseType: !207, size: 128, offset: 9344)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !413, file: !51, line: 624, baseType: !717, size: 64, offset: 256)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !413, file: !51, line: 631, baseType: !311, size: 64, offset: 320)
!2803 = !DIDerivedType(tag: DW_TAG_member, scope: !413, file: !51, line: 639, baseType: !2804, size: 32, offset: 384)
!2804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !413, file: !51, line: 639, size: 32, elements: !2805)
!2805 = !{!2806, !2808}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2804, file: !51, line: 640, baseType: !2807, size: 32)
!2807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2804, file: !51, line: 641, baseType: !7, size: 32)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !413, file: !51, line: 643, baseType: !496, size: 32, offset: 416)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !413, file: !51, line: 644, baseType: !514, size: 64, offset: 448)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !413, file: !51, line: 645, baseType: !518, size: 128, offset: 512)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !413, file: !51, line: 646, baseType: !518, size: 128, offset: 640)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !413, file: !51, line: 647, baseType: !518, size: 128, offset: 768)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !413, file: !51, line: 648, baseType: !220, offset: 896)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !413, file: !51, line: 649, baseType: !303, size: 16, offset: 896)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !413, file: !51, line: 650, baseType: !1335, size: 8, offset: 912)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !413, file: !51, line: 651, baseType: !1335, size: 8, offset: 920)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !413, file: !51, line: 652, baseType: !2570, size: 64, offset: 960)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !413, file: !51, line: 659, baseType: !311, size: 64, offset: 1024)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !413, file: !51, line: 660, baseType: !750, size: 256, offset: 1088)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !413, file: !51, line: 662, baseType: !311, size: 64, offset: 1344)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !413, file: !51, line: 663, baseType: !311, size: 64, offset: 1408)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !413, file: !51, line: 665, baseType: !622, size: 128, offset: 1472)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !413, file: !51, line: 666, baseType: !207, size: 128, offset: 1600)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !413, file: !51, line: 675, baseType: !207, size: 128, offset: 1728)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !413, file: !51, line: 676, baseType: !207, size: 128, offset: 1856)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !413, file: !51, line: 677, baseType: !207, size: 128, offset: 1984)
!2828 = !DIDerivedType(tag: DW_TAG_member, scope: !413, file: !51, line: 678, baseType: !2829, size: 128, offset: 2112)
!2829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !413, file: !51, line: 678, size: 128, elements: !2830)
!2830 = !{!2831, !2832}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2829, file: !51, line: 679, baseType: !618, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2829, file: !51, line: 680, baseType: !352, size: 128, align: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !413, file: !51, line: 682, baseType: !756, size: 64, offset: 2240)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !413, file: !51, line: 683, baseType: !756, size: 64, offset: 2304)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !413, file: !51, line: 684, baseType: !730, size: 32, offset: 2368)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !413, file: !51, line: 685, baseType: !730, size: 32, offset: 2400)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !413, file: !51, line: 686, baseType: !730, size: 32, offset: 2432)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !413, file: !51, line: 688, baseType: !730, size: 32, offset: 2464)
!2839 = !DIDerivedType(tag: DW_TAG_member, scope: !413, file: !51, line: 690, baseType: !2840, size: 64, offset: 2496)
!2840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !413, file: !51, line: 690, size: 64, elements: !2841)
!2841 = !{!2842, !3065}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2840, file: !51, line: 691, baseType: !2843, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2845)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !51, line: 1822, size: 2048, elements: !2846)
!2846 = !{!2847, !2848, !2852, !2857, !2861, !2862, !2863, !2867, !2880, !2881, !2889, !2893, !2894, !2898, !2899, !2903, !2908, !2909, !2913, !2917, !3025, !3029, !3030, !3034, !3035, !3039, !3043, !3048, !3052, !3056, !3060, !3064}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2845, file: !51, line: 1823, baseType: !157, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2845, file: !51, line: 1824, baseType: !2849, size: 64, offset: 64)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!514, !339, !514, !167}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2845, file: !51, line: 1825, baseType: !2853, size: 64, offset: 128)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!292, !339, !261, !308, !2856}
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2845, file: !51, line: 1826, baseType: !2858, size: 64, offset: 192)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!292, !339, !204, !308, !2856}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2845, file: !51, line: 1827, baseType: !827, size: 64, offset: 256)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2845, file: !51, line: 1828, baseType: !827, size: 64, offset: 320)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2845, file: !51, line: 1829, baseType: !2864, size: 64, offset: 384)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!167, !830, !473}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2845, file: !51, line: 1830, baseType: !2868, size: 64, offset: 448)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!167, !339, !2871}
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !51, line: 1776, size: 128, elements: !2873)
!2873 = !{!2874, !2879}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2872, file: !51, line: 1777, baseType: !2875, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !51, line: 1773, baseType: !2876)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!167, !2871, !204, !167, !514, !404, !7}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2872, file: !51, line: 1778, baseType: !514, size: 64, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2845, file: !51, line: 1831, baseType: !2868, size: 64, offset: 512)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2845, file: !51, line: 1832, baseType: !2882, size: 64, offset: 576)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!2885, !339, !2887}
!2885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2886, line: 52, baseType: !7)
!2886 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !602, line: 27, flags: DIFlagFwdDecl)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2845, file: !51, line: 1833, baseType: !2890, size: 64, offset: 640)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!296, !339, !7, !311}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2845, file: !51, line: 1834, baseType: !2890, size: 64, offset: 704)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2845, file: !51, line: 1835, baseType: !2895, size: 64, offset: 768)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!167, !339, !964}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2845, file: !51, line: 1836, baseType: !311, size: 64, offset: 832)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2845, file: !51, line: 1837, baseType: !2900, size: 64, offset: 896)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!167, !412, !339}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2845, file: !51, line: 1838, baseType: !2904, size: 64, offset: 960)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!167, !339, !2907}
!2907 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !51, line: 1007, baseType: !160)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2845, file: !51, line: 1839, baseType: !2900, size: 64, offset: 1024)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2845, file: !51, line: 1840, baseType: !2910, size: 64, offset: 1088)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!167, !339, !514, !514, !167}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2845, file: !51, line: 1841, baseType: !2914, size: 64, offset: 1152)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!167, !167, !339, !167}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2845, file: !51, line: 1842, baseType: !2918, size: 64, offset: 1216)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!167, !339, !167, !2921}
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !51, line: 1062, size: 1664, elements: !2923)
!2923 = !{!2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2955, !2956, !2957, !2970, !3001}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2922, file: !51, line: 1063, baseType: !2921, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2922, file: !51, line: 1064, baseType: !207, size: 128, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2922, file: !51, line: 1065, baseType: !622, size: 128, offset: 192)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2922, file: !51, line: 1066, baseType: !207, size: 128, offset: 320)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2922, file: !51, line: 1069, baseType: !207, size: 128, offset: 448)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2922, file: !51, line: 1072, baseType: !2907, size: 64, offset: 576)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2922, file: !51, line: 1073, baseType: !7, size: 32, offset: 640)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2922, file: !51, line: 1074, baseType: !410, size: 8, offset: 672)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2922, file: !51, line: 1075, baseType: !7, size: 32, offset: 704)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2922, file: !51, line: 1076, baseType: !167, size: 32, offset: 736)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2922, file: !51, line: 1077, baseType: !1464, size: 128, offset: 768)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2922, file: !51, line: 1078, baseType: !339, size: 64, offset: 896)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2922, file: !51, line: 1079, baseType: !514, size: 64, offset: 960)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2922, file: !51, line: 1080, baseType: !514, size: 64, offset: 1024)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2922, file: !51, line: 1082, baseType: !2939, size: 64, offset: 1088)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !51, line: 1314, size: 320, elements: !2941)
!2941 = !{!2942, !2950, !2951, !2952, !2953, !2954}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2940, file: !51, line: 1315, baseType: !2943)
!2943 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2944, line: 20, baseType: !2945)
!2944 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2944, line: 11, elements: !2946)
!2946 = !{!2947}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2945, file: !2944, line: 12, baseType: !2948)
!2948 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !232, line: 33, baseType: !2949)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !232, line: 31, elements: !234)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2940, file: !51, line: 1316, baseType: !167, size: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2940, file: !51, line: 1317, baseType: !167, size: 32, offset: 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2940, file: !51, line: 1318, baseType: !2939, size: 64, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2940, file: !51, line: 1319, baseType: !339, size: 64, offset: 128)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2940, file: !51, line: 1320, baseType: !352, size: 128, align: 64, offset: 192)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2922, file: !51, line: 1084, baseType: !311, size: 64, offset: 1152)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2922, file: !51, line: 1085, baseType: !311, size: 64, offset: 1216)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2922, file: !51, line: 1087, baseType: !2958, size: 64, offset: 1280)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2960)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !51, line: 1011, size: 128, elements: !2961)
!2961 = !{!2962, !2966}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2960, file: !51, line: 1012, baseType: !2963, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{null, !2921, !2921}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2960, file: !51, line: 1013, baseType: !2967, size: 64, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{null, !2921}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2922, file: !51, line: 1088, baseType: !2971, size: 64, offset: 1344)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2973)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !51, line: 1016, size: 512, elements: !2974)
!2974 = !{!2975, !2979, !2983, !2984, !2988, !2992, !2996, !3000}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2973, file: !51, line: 1017, baseType: !2976, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!2907, !2907}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2973, file: !51, line: 1018, baseType: !2980, size: 64, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{null, !2907}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2973, file: !51, line: 1019, baseType: !2967, size: 64, offset: 128)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2973, file: !51, line: 1020, baseType: !2985, size: 64, offset: 192)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!167, !2921, !167}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2973, file: !51, line: 1021, baseType: !2989, size: 64, offset: 256)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!473, !2921}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2973, file: !51, line: 1022, baseType: !2993, size: 64, offset: 320)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!167, !2921, !167, !210}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2973, file: !51, line: 1023, baseType: !2997, size: 64, offset: 384)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{null, !2921, !804}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2973, file: !51, line: 1024, baseType: !2989, size: 64, offset: 448)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2922, file: !51, line: 1097, baseType: !3002, size: 256, offset: 1408)
!3002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2922, file: !51, line: 1089, size: 256, elements: !3003)
!3003 = !{!3004, !3013, !3019}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3002, file: !51, line: 1090, baseType: !3005, size: 256)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3006, line: 10, size: 256, elements: !3007)
!3006 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3007 = !{!3008, !3009, !3012}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3005, file: !3006, line: 11, baseType: !174, size: 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3005, file: !3006, line: 12, baseType: !3010, size: 64, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3006, line: 5, flags: DIFlagFwdDecl)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3005, file: !3006, line: 13, baseType: !207, size: 128, offset: 128)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3002, file: !51, line: 1091, baseType: !3014, size: 64)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3006, line: 17, size: 64, elements: !3015)
!3015 = !{!3016}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3014, file: !3006, line: 18, baseType: !3017, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3006, line: 16, flags: DIFlagFwdDecl)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3002, file: !51, line: 1096, baseType: !3020, size: 192)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3002, file: !51, line: 1092, size: 192, elements: !3021)
!3021 = !{!3022, !3023, !3024}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3020, file: !51, line: 1093, baseType: !207, size: 128)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3020, file: !51, line: 1094, baseType: !167, size: 32, offset: 128)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3020, file: !51, line: 1095, baseType: !7, size: 32, offset: 160)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2845, file: !51, line: 1843, baseType: !3026, size: 64, offset: 1280)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!292, !339, !704, !167, !308, !2856, !167}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2845, file: !51, line: 1844, baseType: !1084, size: 64, offset: 1344)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2845, file: !51, line: 1845, baseType: !3031, size: 64, offset: 1408)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!167, !167}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2845, file: !51, line: 1846, baseType: !2918, size: 64, offset: 1472)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2845, file: !51, line: 1847, baseType: !3036, size: 64, offset: 1536)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!292, !2078, !339, !2856, !308, !7}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2845, file: !51, line: 1848, baseType: !3040, size: 64, offset: 1600)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!292, !339, !2856, !2078, !308, !7}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2845, file: !51, line: 1849, baseType: !3044, size: 64, offset: 1664)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!167, !339, !296, !3047, !804}
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2845, file: !51, line: 1850, baseType: !3049, size: 64, offset: 1728)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!296, !339, !167, !514, !514}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2845, file: !51, line: 1852, baseType: !3053, size: 64, offset: 1792)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{null, !694, !339}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2845, file: !51, line: 1856, baseType: !3057, size: 64, offset: 1856)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!292, !339, !514, !339, !514, !308, !7}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2845, file: !51, line: 1858, baseType: !3061, size: 64, offset: 1920)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!514, !339, !514, !339, !514, !514, !7}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2845, file: !51, line: 1861, baseType: !2910, size: 64, offset: 1984)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2840, file: !51, line: 692, baseType: !647, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !413, file: !51, line: 694, baseType: !3067, size: 64, offset: 2560)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !51, line: 1100, size: 384, elements: !3069)
!3069 = !{!3070, !3071, !3072, !3073}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3068, file: !51, line: 1101, baseType: !220)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3068, file: !51, line: 1102, baseType: !207, size: 128)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3068, file: !51, line: 1103, baseType: !207, size: 128, offset: 128)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3068, file: !51, line: 1104, baseType: !207, size: 128, offset: 256)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !413, file: !51, line: 695, baseType: !718, size: 1216, align: 64, offset: 2624)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !413, file: !51, line: 696, baseType: !207, size: 128, offset: 3840)
!3076 = !DIDerivedType(tag: DW_TAG_member, scope: !413, file: !51, line: 697, baseType: !3077, size: 64, offset: 3968)
!3077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !413, file: !51, line: 697, size: 64, elements: !3078)
!3078 = !{!3079, !3080, !3081, !3084, !3085}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3077, file: !51, line: 698, baseType: !2078, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3077, file: !51, line: 699, baseType: !2595, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3077, file: !51, line: 700, baseType: !3082, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !51, line: 700, flags: DIFlagFwdDecl)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3077, file: !51, line: 701, baseType: !261, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3077, file: !51, line: 702, baseType: !7, size: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !413, file: !51, line: 705, baseType: !176, size: 32, offset: 4032)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !413, file: !51, line: 708, baseType: !176, size: 32, offset: 4064)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !413, file: !51, line: 709, baseType: !2677, size: 64, offset: 4096)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !413, file: !51, line: 720, baseType: !160, size: 64, offset: 4160)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !370, file: !367, line: 98, baseType: !3091, size: 256, offset: 448)
!3091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 256, elements: !2210)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !370, file: !367, line: 101, baseType: !3093, size: 32, offset: 704)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3094, line: 25, size: 32, elements: !3095)
!3094 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3095 = !{!3096}
!3096 = !DIDerivedType(tag: DW_TAG_member, scope: !3093, file: !3094, line: 26, baseType: !3097, size: 32)
!3097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3093, file: !3094, line: 26, size: 32, elements: !3098)
!3098 = !{!3099}
!3099 = !DIDerivedType(tag: DW_TAG_member, scope: !3097, file: !3094, line: 30, baseType: !3100, size: 32)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3097, file: !3094, line: 30, size: 32, elements: !3101)
!3101 = !{!3102, !3103}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3100, file: !3094, line: 31, baseType: !220)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3100, file: !3094, line: 32, baseType: !167, size: 32)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !370, file: !367, line: 102, baseType: !2694, size: 64, offset: 768)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !370, file: !367, line: 103, baseType: !582, size: 64, offset: 832)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !370, file: !367, line: 104, baseType: !311, size: 64, offset: 896)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !370, file: !367, line: 105, baseType: !160, size: 64, offset: 960)
!3108 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !367, line: 107, baseType: !3109, size: 128, offset: 1024)
!3109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !370, file: !367, line: 107, size: 128, elements: !3110)
!3110 = !{!3111, !3112}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3109, file: !367, line: 108, baseType: !207, size: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3109, file: !367, line: 109, baseType: !3113, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !370, file: !367, line: 111, baseType: !207, size: 128, offset: 1152)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !370, file: !367, line: 112, baseType: !207, size: 128, offset: 1280)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !370, file: !367, line: 120, baseType: !3117, size: 128, offset: 1408)
!3117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !370, file: !367, line: 116, size: 128, elements: !3118)
!3118 = !{!3119, !3120, !3121}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3117, file: !367, line: 117, baseType: !622, size: 128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3117, file: !367, line: 118, baseType: !384, size: 128)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3117, file: !367, line: 119, baseType: !352, size: 128, align: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !340, file: !51, line: 922, baseType: !412, size: 64, offset: 256)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !340, file: !51, line: 923, baseType: !2843, size: 64, offset: 320)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !340, file: !51, line: 929, baseType: !220, offset: 384)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !340, file: !51, line: 930, baseType: !50, size: 32, offset: 384)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !340, file: !51, line: 931, baseType: !754, size: 64, offset: 448)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !340, file: !51, line: 932, baseType: !7, size: 32, offset: 512)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !340, file: !51, line: 933, baseType: !2690, size: 32, offset: 544)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !340, file: !51, line: 934, baseType: !1156, size: 192, offset: 576)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !340, file: !51, line: 935, baseType: !514, size: 64, offset: 768)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !340, file: !51, line: 936, baseType: !3132, size: 192, offset: 832)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !51, line: 885, size: 192, elements: !3133)
!3133 = !{!3134, !3135, !3136, !3137, !3138, !3139}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3132, file: !51, line: 886, baseType: !2943)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3132, file: !51, line: 887, baseType: !1454, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3132, file: !51, line: 888, baseType: !59, size: 32, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3132, file: !51, line: 889, baseType: !418, size: 32, offset: 96)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3132, file: !51, line: 889, baseType: !418, size: 32, offset: 128)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3132, file: !51, line: 890, baseType: !167, size: 32, offset: 160)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !340, file: !51, line: 937, baseType: !1530, size: 64, offset: 1024)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !340, file: !51, line: 938, baseType: !3142, size: 256, offset: 1088)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !51, line: 896, size: 256, elements: !3143)
!3143 = !{!3144, !3145, !3146, !3147, !3148, !3149}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3142, file: !51, line: 897, baseType: !311, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3142, file: !51, line: 898, baseType: !7, size: 32, offset: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3142, file: !51, line: 899, baseType: !7, size: 32, offset: 96)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3142, file: !51, line: 902, baseType: !7, size: 32, offset: 128)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3142, file: !51, line: 903, baseType: !7, size: 32, offset: 160)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3142, file: !51, line: 904, baseType: !514, size: 64, offset: 192)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !340, file: !51, line: 940, baseType: !404, size: 64, offset: 1344)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !340, file: !51, line: 945, baseType: !160, size: 64, offset: 1408)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !340, file: !51, line: 949, baseType: !207, size: 128, offset: 1472)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !340, file: !51, line: 950, baseType: !207, size: 128, offset: 1600)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !340, file: !51, line: 952, baseType: !717, size: 64, offset: 1728)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !340, file: !51, line: 953, baseType: !892, size: 32, offset: 1792)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !340, file: !51, line: 954, baseType: !892, size: 32, offset: 1824)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !330, file: !286, line: 174, baseType: !336, size: 64, offset: 320)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !330, file: !286, line: 176, baseType: !3159, size: 64, offset: 384)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!167, !339, !213, !329, !964}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !318, file: !286, line: 90, baseType: !313, size: 64, offset: 192)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !318, file: !286, line: 91, baseType: !3164, size: 64, offset: 256)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !276, file: !201, line: 143, baseType: !3166, size: 64, offset: 256)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!3169, !213}
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3171)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !68, line: 39, size: 384, elements: !3172)
!3172 = !{!3173, !3174, !3178, !3182, !3188, !3192}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3171, file: !68, line: 40, baseType: !67, size: 32)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3171, file: !68, line: 41, baseType: !3175, size: 64, offset: 64)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!473}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3171, file: !68, line: 42, baseType: !3179, size: 64, offset: 128)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!160}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3171, file: !68, line: 43, baseType: !3183, size: 64, offset: 192)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!2107, !3186}
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !68, line: 19, flags: DIFlagFwdDecl)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3171, file: !68, line: 44, baseType: !3189, size: 64, offset: 256)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!2107}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3171, file: !68, line: 45, baseType: !451, size: 64, offset: 320)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !276, file: !201, line: 144, baseType: !3194, size: 64, offset: 320)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!2107, !213}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !276, file: !201, line: 145, baseType: !3198, size: 64, offset: 384)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{null, !213, !3201, !3202}
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !200, file: !201, line: 70, baseType: !3204, size: 64, offset: 384)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !602, line: 123, size: 1024, elements: !3206)
!3206 = !{!3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3335, !3336, !3337, !3338, !3339}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3205, file: !602, line: 124, baseType: !730, size: 32)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3205, file: !602, line: 125, baseType: !730, size: 32, offset: 32)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3205, file: !602, line: 135, baseType: !3204, size: 64, offset: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3205, file: !602, line: 136, baseType: !204, size: 64, offset: 128)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3205, file: !602, line: 138, baseType: !743, size: 192, align: 64, offset: 192)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3205, file: !602, line: 140, baseType: !2107, size: 64, offset: 384)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3205, file: !602, line: 141, baseType: !7, size: 32, offset: 448)
!3214 = !DIDerivedType(tag: DW_TAG_member, scope: !3205, file: !602, line: 142, baseType: !3215, size: 256, offset: 512)
!3215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3205, file: !602, line: 142, size: 256, elements: !3216)
!3216 = !{!3217, !3263, !3267}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3215, file: !602, line: 143, baseType: !3218, size: 192)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !602, line: 91, size: 192, elements: !3219)
!3219 = !{!3220, !3221, !3222}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3218, file: !602, line: 92, baseType: !311, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3218, file: !602, line: 94, baseType: !739, size: 64, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3218, file: !602, line: 100, baseType: !3223, size: 64, offset: 128)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !602, line: 180, size: 704, elements: !3225)
!3225 = !{!3226, !3227, !3228, !3235, !3236, !3237, !3261, !3262}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3224, file: !602, line: 182, baseType: !3204, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3224, file: !602, line: 183, baseType: !7, size: 32, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3224, file: !602, line: 186, baseType: !3229, size: 192, offset: 128)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3230, line: 19, size: 192, elements: !3231)
!3230 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3231 = !{!3232, !3233, !3234}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3229, file: !3230, line: 20, baseType: !722, size: 128)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3229, file: !3230, line: 21, baseType: !7, size: 32, offset: 128)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3229, file: !3230, line: 22, baseType: !7, size: 32, offset: 160)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3224, file: !602, line: 187, baseType: !174, size: 32, offset: 320)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3224, file: !602, line: 188, baseType: !174, size: 32, offset: 352)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3224, file: !602, line: 189, baseType: !3238, size: 64, offset: 384)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !602, line: 168, size: 320, elements: !3240)
!3240 = !{!3241, !3245, !3249, !3253, !3257}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3239, file: !602, line: 169, baseType: !3242, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!167, !694, !3223}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3239, file: !602, line: 171, baseType: !3246, size: 64, offset: 64)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!167, !3204, !204, !302}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3239, file: !602, line: 173, baseType: !3250, size: 64, offset: 128)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!167, !3204}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3239, file: !602, line: 174, baseType: !3254, size: 64, offset: 192)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!167, !3204, !3204, !204}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3239, file: !602, line: 176, baseType: !3258, size: 64, offset: 256)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!167, !694, !3204, !3223}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3224, file: !602, line: 192, baseType: !207, size: 128, offset: 448)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3224, file: !602, line: 194, baseType: !1464, size: 128, offset: 576)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3215, file: !602, line: 144, baseType: !3264, size: 64)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !602, line: 103, size: 64, elements: !3265)
!3265 = !{!3266}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3264, file: !602, line: 104, baseType: !3204, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3215, file: !602, line: 145, baseType: !3268, size: 256)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !602, line: 107, size: 256, elements: !3269)
!3269 = !{!3270, !3330, !3333, !3334}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3268, file: !602, line: 108, baseType: !3271, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3273)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !602, line: 217, size: 768, elements: !3274)
!3274 = !{!3275, !3295, !3299, !3303, !3307, !3311, !3315, !3319, !3320, !3321, !3322, !3326}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3273, file: !602, line: 222, baseType: !3276, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!167, !3279}
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !602, line: 197, size: 1088, elements: !3281)
!3281 = !{!3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3280, file: !602, line: 199, baseType: !3204, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3280, file: !602, line: 200, baseType: !339, size: 64, offset: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3280, file: !602, line: 201, baseType: !694, size: 64, offset: 128)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3280, file: !602, line: 202, baseType: !160, size: 64, offset: 192)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3280, file: !602, line: 205, baseType: !1156, size: 192, offset: 256)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3280, file: !602, line: 206, baseType: !1156, size: 192, offset: 448)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3280, file: !602, line: 207, baseType: !167, size: 32, offset: 640)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3280, file: !602, line: 208, baseType: !207, size: 128, offset: 704)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3280, file: !602, line: 209, baseType: !261, size: 64, offset: 832)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3280, file: !602, line: 211, baseType: !308, size: 64, offset: 896)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3280, file: !602, line: 212, baseType: !473, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3280, file: !602, line: 213, baseType: !473, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3280, file: !602, line: 214, baseType: !992, size: 64, offset: 1024)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3273, file: !602, line: 223, baseType: !3296, size: 64, offset: 64)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{null, !3279}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3273, file: !602, line: 236, baseType: !3300, size: 64, offset: 128)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!167, !694, !160}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3273, file: !602, line: 238, baseType: !3304, size: 64, offset: 192)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!160, !694, !2856}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3273, file: !602, line: 239, baseType: !3308, size: 64, offset: 256)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!160, !694, !160, !2856}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3273, file: !602, line: 240, baseType: !3312, size: 64, offset: 320)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{null, !694, !160}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3273, file: !602, line: 242, baseType: !3316, size: 64, offset: 384)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!292, !3279, !261, !308, !514}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3273, file: !602, line: 252, baseType: !308, size: 64, offset: 448)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3273, file: !602, line: 259, baseType: !473, size: 8, offset: 512)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3273, file: !602, line: 260, baseType: !3316, size: 64, offset: 576)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3273, file: !602, line: 263, baseType: !3323, size: 64, offset: 640)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!2885, !3279, !2887}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3273, file: !602, line: 266, baseType: !3327, size: 64, offset: 704)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!167, !3279, !964}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3268, file: !602, line: 109, baseType: !3331, size: 64, offset: 64)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !602, line: 31, flags: DIFlagFwdDecl)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3268, file: !602, line: 110, baseType: !514, size: 64, offset: 128)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3268, file: !602, line: 111, baseType: !3204, size: 64, offset: 192)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3205, file: !602, line: 148, baseType: !160, size: 64, offset: 768)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3205, file: !602, line: 154, baseType: !404, size: 64, offset: 832)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3205, file: !602, line: 156, baseType: !303, size: 16, offset: 896)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3205, file: !602, line: 157, baseType: !302, size: 16, offset: 912)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3205, file: !602, line: 158, baseType: !3340, size: 64, offset: 960)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !602, line: 32, flags: DIFlagFwdDecl)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !200, file: !201, line: 71, baseType: !3343, size: 32, offset: 448)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3344, line: 19, size: 32, elements: !3345)
!3344 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3345 = !{!3346}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3343, file: !3344, line: 20, baseType: !1213, size: 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !200, file: !201, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !200, file: !201, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !200, file: !201, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !200, file: !201, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !200, file: !201, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !197, file: !80, line: 463, baseType: !196, size: 64, offset: 512)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !197, file: !80, line: 465, baseType: !3354, size: 64, offset: 576)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !80, line: 36, flags: DIFlagFwdDecl)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !197, file: !80, line: 467, baseType: !204, size: 64, offset: 640)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !197, file: !80, line: 468, baseType: !3358, size: 64, offset: 704)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3360)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !80, line: 87, size: 384, elements: !3361)
!3361 = !{!3362, !3363, !3364, !3368, !3373, !3377}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3360, file: !80, line: 88, baseType: !204, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3360, file: !80, line: 89, baseType: !315, size: 64, offset: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3360, file: !80, line: 90, baseType: !3365, size: 64, offset: 128)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!167, !196, !256}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3360, file: !80, line: 91, baseType: !3369, size: 64, offset: 192)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!261, !196, !3372, !3201, !3202}
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3360, file: !80, line: 93, baseType: !3374, size: 64, offset: 256)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{null, !196}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3360, file: !80, line: 95, baseType: !3378, size: 64, offset: 320)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3380)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !87, line: 278, size: 1472, elements: !3381)
!3381 = !{!3382, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3380, file: !87, line: 279, baseType: !3383, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!167, !196}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3380, file: !87, line: 280, baseType: !3374, size: 64, offset: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3380, file: !87, line: 281, baseType: !3383, size: 64, offset: 128)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3380, file: !87, line: 282, baseType: !3383, size: 64, offset: 192)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3380, file: !87, line: 283, baseType: !3383, size: 64, offset: 256)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3380, file: !87, line: 284, baseType: !3383, size: 64, offset: 320)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3380, file: !87, line: 285, baseType: !3383, size: 64, offset: 384)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3380, file: !87, line: 286, baseType: !3383, size: 64, offset: 448)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3380, file: !87, line: 287, baseType: !3383, size: 64, offset: 512)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3380, file: !87, line: 288, baseType: !3383, size: 64, offset: 576)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3380, file: !87, line: 289, baseType: !3383, size: 64, offset: 640)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3380, file: !87, line: 290, baseType: !3383, size: 64, offset: 704)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3380, file: !87, line: 291, baseType: !3383, size: 64, offset: 768)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3380, file: !87, line: 292, baseType: !3383, size: 64, offset: 832)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3380, file: !87, line: 293, baseType: !3383, size: 64, offset: 896)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3380, file: !87, line: 294, baseType: !3383, size: 64, offset: 960)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3380, file: !87, line: 295, baseType: !3383, size: 64, offset: 1024)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3380, file: !87, line: 296, baseType: !3383, size: 64, offset: 1088)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3380, file: !87, line: 297, baseType: !3383, size: 64, offset: 1152)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3380, file: !87, line: 298, baseType: !3383, size: 64, offset: 1216)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3380, file: !87, line: 299, baseType: !3383, size: 64, offset: 1280)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3380, file: !87, line: 300, baseType: !3383, size: 64, offset: 1344)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3380, file: !87, line: 301, baseType: !3383, size: 64, offset: 1408)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !197, file: !80, line: 470, baseType: !3409, size: 64, offset: 768)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3411, line: 82, size: 1408, elements: !3412)
!3411 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3412 = !{!3413, !3414, !3415, !3416, !3417, !3418, !3419, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3494, !3497, !3498}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3410, file: !3411, line: 83, baseType: !204, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3410, file: !3411, line: 84, baseType: !204, size: 64, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3410, file: !3411, line: 85, baseType: !196, size: 64, offset: 128)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3410, file: !3411, line: 86, baseType: !315, size: 64, offset: 192)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3410, file: !3411, line: 87, baseType: !315, size: 64, offset: 256)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3410, file: !3411, line: 88, baseType: !315, size: 64, offset: 320)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3410, file: !3411, line: 90, baseType: !3420, size: 64, offset: 384)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!167, !196, !3423}
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !74, line: 95, size: 1152, elements: !3425)
!3425 = !{!3426, !3427, !3428, !3429, !3430, !3431, !3432, !3445, !3458, !3459, !3460, !3461, !3462, !3470, !3471, !3472, !3473, !3474, !3475}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3424, file: !74, line: 96, baseType: !204, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3424, file: !74, line: 97, baseType: !3409, size: 64, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3424, file: !74, line: 99, baseType: !157, size: 64, offset: 128)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3424, file: !74, line: 100, baseType: !204, size: 64, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3424, file: !74, line: 102, baseType: !473, size: 8, offset: 256)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3424, file: !74, line: 103, baseType: !73, size: 32, offset: 288)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3424, file: !74, line: 105, baseType: !3433, size: 64, offset: 320)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3435)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3436, line: 262, size: 1600, elements: !3437)
!3436 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3437 = !{!3438, !3439, !3440, !3444}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3435, file: !3436, line: 263, baseType: !2680, size: 256)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3435, file: !3436, line: 264, baseType: !2680, size: 256, offset: 256)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3435, file: !3436, line: 265, baseType: !3441, size: 1024, offset: 512)
!3441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 1024, elements: !3442)
!3442 = !{!3443}
!3443 = !DISubrange(count: 128)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3435, file: !3436, line: 266, baseType: !2107, size: 64, offset: 1536)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3424, file: !74, line: 106, baseType: !3446, size: 64, offset: 384)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3448)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3436, line: 210, size: 256, elements: !3449)
!3449 = !{!3450, !3454, !3456, !3457}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3448, file: !3436, line: 211, baseType: !3451, size: 72)
!3451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1336, size: 72, elements: !3452)
!3452 = !{!3453}
!3453 = !DISubrange(count: 9)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3448, file: !3436, line: 212, baseType: !3455, size: 64, offset: 128)
!3455 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3436, line: 14, baseType: !311)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3448, file: !3436, line: 213, baseType: !176, size: 32, offset: 192)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3448, file: !3436, line: 214, baseType: !176, size: 32, offset: 224)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3424, file: !74, line: 108, baseType: !3383, size: 64, offset: 448)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3424, file: !74, line: 109, baseType: !3374, size: 64, offset: 512)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3424, file: !74, line: 110, baseType: !3383, size: 64, offset: 576)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3424, file: !74, line: 111, baseType: !3374, size: 64, offset: 640)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3424, file: !74, line: 112, baseType: !3463, size: 64, offset: 704)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!167, !196, !3466}
!3466 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !87, line: 52, baseType: !3467)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !87, line: 50, size: 32, elements: !3468)
!3468 = !{!3469}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3467, file: !87, line: 51, baseType: !167, size: 32)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3424, file: !74, line: 113, baseType: !3383, size: 64, offset: 768)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3424, file: !74, line: 114, baseType: !315, size: 64, offset: 832)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3424, file: !74, line: 115, baseType: !315, size: 64, offset: 896)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3424, file: !74, line: 117, baseType: !3378, size: 64, offset: 960)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3424, file: !74, line: 118, baseType: !3374, size: 64, offset: 1024)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3424, file: !74, line: 120, baseType: !3476, size: 64, offset: 1088)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !74, line: 120, flags: DIFlagFwdDecl)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3410, file: !3411, line: 91, baseType: !3365, size: 64, offset: 448)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3410, file: !3411, line: 92, baseType: !3383, size: 64, offset: 512)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3410, file: !3411, line: 93, baseType: !3374, size: 64, offset: 576)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3410, file: !3411, line: 94, baseType: !3383, size: 64, offset: 640)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3410, file: !3411, line: 95, baseType: !3374, size: 64, offset: 704)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3410, file: !3411, line: 97, baseType: !3383, size: 64, offset: 768)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3410, file: !3411, line: 98, baseType: !3383, size: 64, offset: 832)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3410, file: !3411, line: 100, baseType: !3463, size: 64, offset: 896)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3410, file: !3411, line: 101, baseType: !3383, size: 64, offset: 960)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3410, file: !3411, line: 103, baseType: !3383, size: 64, offset: 1024)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3410, file: !3411, line: 105, baseType: !3383, size: 64, offset: 1088)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3410, file: !3411, line: 107, baseType: !3378, size: 64, offset: 1152)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3410, file: !3411, line: 109, baseType: !3491, size: 64, offset: 1216)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3493)
!3493 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3411, line: 109, flags: DIFlagFwdDecl)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3410, file: !3411, line: 111, baseType: !3495, size: 64, offset: 1280)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3411, line: 111, flags: DIFlagFwdDecl)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3410, file: !3411, line: 112, baseType: !628, offset: 1344)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3410, file: !3411, line: 114, baseType: !473, size: 8, offset: 1344)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !197, file: !80, line: 471, baseType: !3423, size: 64, offset: 832)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !197, file: !80, line: 473, baseType: !160, size: 64, offset: 896)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !197, file: !80, line: 475, baseType: !160, size: 64, offset: 960)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !197, file: !80, line: 480, baseType: !1156, size: 192, offset: 1024)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !197, file: !80, line: 484, baseType: !3504, size: 576, offset: 1216)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !80, line: 361, size: 576, elements: !3505)
!3505 = !{!3506, !3507, !3508, !3509, !3510, !3511}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3504, file: !80, line: 362, baseType: !207, size: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3504, file: !80, line: 363, baseType: !207, size: 128, offset: 128)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3504, file: !80, line: 364, baseType: !207, size: 128, offset: 256)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3504, file: !80, line: 365, baseType: !207, size: 128, offset: 384)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3504, file: !80, line: 366, baseType: !473, size: 8, offset: 512)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3504, file: !80, line: 367, baseType: !79, size: 32, offset: 544)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !197, file: !80, line: 485, baseType: !3513, size: 2304, offset: 1792)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !87, line: 565, size: 2304, elements: !3514)
!3514 = !{!3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3610, !3614}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3513, file: !87, line: 566, baseType: !3466, size: 32)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3513, file: !87, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3513, file: !87, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3513, file: !87, line: 569, baseType: !473, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3513, file: !87, line: 570, baseType: !473, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3513, file: !87, line: 571, baseType: !473, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3513, file: !87, line: 572, baseType: !473, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3513, file: !87, line: 573, baseType: !473, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3513, file: !87, line: 574, baseType: !473, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3513, file: !87, line: 575, baseType: !473, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3513, file: !87, line: 576, baseType: !473, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3513, file: !87, line: 577, baseType: !174, size: 32, offset: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3513, file: !87, line: 578, baseType: !220, offset: 96)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3513, file: !87, line: 580, baseType: !207, size: 128, offset: 128)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3513, file: !87, line: 581, baseType: !1485, size: 192, offset: 256)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3513, file: !87, line: 582, baseType: !3531, size: 64, offset: 448)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3533, line: 43, size: 1472, elements: !3534)
!3533 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3534 = !{!3535, !3536, !3537, !3538, !3539, !3542, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3532, file: !3533, line: 44, baseType: !204, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3532, file: !3533, line: 45, baseType: !167, size: 32, offset: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3532, file: !3533, line: 46, baseType: !207, size: 128, offset: 128)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3532, file: !3533, line: 47, baseType: !220, offset: 256)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3532, file: !3533, line: 48, baseType: !3540, size: 64, offset: 256)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !87, line: 533, flags: DIFlagFwdDecl)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3532, file: !3533, line: 49, baseType: !3543, size: 320, offset: 320)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3544, line: 11, size: 320, elements: !3545)
!3544 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3545 = !{!3546, !3547, !3548, !3553}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3543, file: !3544, line: 16, baseType: !622, size: 128)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3543, file: !3544, line: 17, baseType: !311, size: 64, offset: 128)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3543, file: !3544, line: 18, baseType: !3549, size: 64, offset: 192)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{null, !3552}
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3543, file: !3544, line: 19, baseType: !174, size: 32, offset: 256)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3532, file: !3533, line: 50, baseType: !311, size: 64, offset: 640)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3532, file: !3533, line: 51, baseType: !1283, size: 64, offset: 704)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3532, file: !3533, line: 52, baseType: !1283, size: 64, offset: 768)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3532, file: !3533, line: 53, baseType: !1283, size: 64, offset: 832)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3532, file: !3533, line: 54, baseType: !1283, size: 64, offset: 896)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3532, file: !3533, line: 55, baseType: !1283, size: 64, offset: 960)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3532, file: !3533, line: 56, baseType: !311, size: 64, offset: 1024)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3532, file: !3533, line: 57, baseType: !311, size: 64, offset: 1088)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3532, file: !3533, line: 58, baseType: !311, size: 64, offset: 1152)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3532, file: !3533, line: 59, baseType: !311, size: 64, offset: 1216)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3532, file: !3533, line: 60, baseType: !311, size: 64, offset: 1280)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3532, file: !3533, line: 61, baseType: !196, size: 64, offset: 1344)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3532, file: !3533, line: 62, baseType: !473, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3532, file: !3533, line: 63, baseType: !473, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3513, file: !87, line: 583, baseType: !473, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3513, file: !87, line: 584, baseType: !473, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3513, file: !87, line: 585, baseType: !473, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3513, file: !87, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3513, file: !87, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3513, file: !87, line: 592, baseType: !1275, size: 512, offset: 576)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3513, file: !87, line: 593, baseType: !404, size: 64, offset: 1088)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3513, file: !87, line: 594, baseType: !1937, size: 256, offset: 1152)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3513, file: !87, line: 595, baseType: !1464, size: 128, offset: 1408)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3513, file: !87, line: 596, baseType: !3540, size: 64, offset: 1536)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3513, file: !87, line: 597, baseType: !730, size: 32, offset: 1600)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3513, file: !87, line: 598, baseType: !730, size: 32, offset: 1632)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3513, file: !87, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3513, file: !87, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3513, file: !87, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3513, file: !87, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3513, file: !87, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3513, file: !87, line: 604, baseType: !473, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3513, file: !87, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3513, file: !87, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3513, file: !87, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3513, file: !87, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3513, file: !87, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3513, file: !87, line: 610, baseType: !7, size: 32, offset: 1696)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3513, file: !87, line: 611, baseType: !86, size: 32, offset: 1728)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3513, file: !87, line: 612, baseType: !94, size: 32, offset: 1760)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3513, file: !87, line: 613, baseType: !167, size: 32, offset: 1792)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3513, file: !87, line: 614, baseType: !167, size: 32, offset: 1824)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3513, file: !87, line: 615, baseType: !404, size: 64, offset: 1856)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3513, file: !87, line: 616, baseType: !404, size: 64, offset: 1920)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3513, file: !87, line: 617, baseType: !404, size: 64, offset: 1984)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3513, file: !87, line: 618, baseType: !404, size: 64, offset: 2048)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3513, file: !87, line: 620, baseType: !3601, size: 64, offset: 2112)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !87, line: 536, size: 256, elements: !3603)
!3603 = !{!3604, !3605, !3606, !3607}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3602, file: !87, line: 537, baseType: !220)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3602, file: !87, line: 538, baseType: !7, size: 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3602, file: !87, line: 540, baseType: !207, size: 128, offset: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3602, file: !87, line: 543, baseType: !3608, size: 64, offset: 192)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !87, line: 534, flags: DIFlagFwdDecl)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3513, file: !87, line: 621, baseType: !3611, size: 64, offset: 2176)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{null, !196, !1427}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3513, file: !87, line: 622, baseType: !3615, size: 64, offset: 2240)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !87, line: 622, flags: DIFlagFwdDecl)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !197, file: !80, line: 486, baseType: !3618, size: 64, offset: 4096)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !87, line: 642, size: 1792, elements: !3620)
!3620 = !{!3621, !3622, !3623, !3627, !3628, !3629}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3619, file: !87, line: 643, baseType: !3380, size: 1472)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3619, file: !87, line: 644, baseType: !3383, size: 64, offset: 1472)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3619, file: !87, line: 645, baseType: !3624, size: 64, offset: 1536)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{null, !196, !473}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3619, file: !87, line: 646, baseType: !3383, size: 64, offset: 1600)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3619, file: !87, line: 647, baseType: !3374, size: 64, offset: 1664)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3619, file: !87, line: 648, baseType: !3374, size: 64, offset: 1728)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !197, file: !80, line: 493, baseType: !3631, size: 64, offset: 4160)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !80, line: 493, flags: DIFlagFwdDecl)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !197, file: !80, line: 499, baseType: !207, size: 128, offset: 4224)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !197, file: !80, line: 502, baseType: !3635, size: 64, offset: 4352)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3637)
!3637 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !80, line: 502, flags: DIFlagFwdDecl)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !197, file: !80, line: 504, baseType: !3639, size: 64, offset: 4416)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !197, file: !80, line: 505, baseType: !404, size: 64, offset: 4480)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !197, file: !80, line: 510, baseType: !404, size: 64, offset: 4544)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !197, file: !80, line: 511, baseType: !3643, size: 64, offset: 4608)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3645)
!3645 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !80, line: 511, flags: DIFlagFwdDecl)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !197, file: !80, line: 513, baseType: !3647, size: 64, offset: 4672)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !80, line: 288, size: 128, elements: !3649)
!3649 = !{!3650, !3651}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3648, file: !80, line: 293, baseType: !7, size: 32)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3648, file: !80, line: 294, baseType: !311, size: 64, offset: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !197, file: !80, line: 515, baseType: !207, size: 128, offset: 4736)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !197, file: !80, line: 526, baseType: !3654, offset: 4864)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3655, line: 5, elements: !234)
!3655 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !197, file: !80, line: 528, baseType: !3657, size: 64, offset: 4864)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3659, line: 14, flags: DIFlagFwdDecl)
!3659 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !197, file: !80, line: 529, baseType: !3661, size: 64, offset: 4928)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3663, line: 17, size: 192, elements: !3664)
!3663 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3664 = !{!3665, !3666, !3749}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3662, file: !3663, line: 18, baseType: !3661, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3662, file: !3663, line: 19, baseType: !3667, size: 64, offset: 64)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3669)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3663, line: 110, size: 1152, elements: !3670)
!3670 = !{!3671, !3675, !3679, !3685, !3691, !3695, !3699, !3704, !3708, !3709, !3713, !3717, !3721, !3732, !3733, !3734, !3735, !3745}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3669, file: !3663, line: 111, baseType: !3672, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!3661, !3661}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3669, file: !3663, line: 112, baseType: !3676, size: 64, offset: 64)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{null, !3661}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3669, file: !3663, line: 113, baseType: !3680, size: 64, offset: 128)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!473, !3683}
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3662)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3669, file: !3663, line: 114, baseType: !3686, size: 64, offset: 192)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!2107, !3683, !3689}
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3669, file: !3663, line: 116, baseType: !3692, size: 64, offset: 256)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!473, !3683, !204}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3669, file: !3663, line: 118, baseType: !3696, size: 64, offset: 320)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!167, !3683, !204, !7, !160, !308}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3669, file: !3663, line: 123, baseType: !3700, size: 64, offset: 384)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!167, !3683, !204, !3703, !308}
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3669, file: !3663, line: 126, baseType: !3705, size: 64, offset: 448)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!204, !3683}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3669, file: !3663, line: 127, baseType: !3705, size: 64, offset: 512)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3669, file: !3663, line: 128, baseType: !3710, size: 64, offset: 576)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!3661, !3683}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3669, file: !3663, line: 130, baseType: !3714, size: 64, offset: 640)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!3661, !3683, !3661}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3669, file: !3663, line: 133, baseType: !3718, size: 64, offset: 704)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!3661, !3683, !204}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3669, file: !3663, line: 135, baseType: !3722, size: 64, offset: 768)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!167, !3683, !204, !204, !7, !7, !3725}
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3663, line: 43, size: 640, elements: !3727)
!3727 = !{!3728, !3729, !3730}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3726, file: !3663, line: 44, baseType: !3661, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3726, file: !3663, line: 45, baseType: !7, size: 32, offset: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3726, file: !3663, line: 46, baseType: !3731, size: 512, offset: 128)
!3731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 512, elements: !1313)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3669, file: !3663, line: 140, baseType: !3714, size: 64, offset: 832)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3669, file: !3663, line: 143, baseType: !3710, size: 64, offset: 896)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3669, file: !3663, line: 145, baseType: !3672, size: 64, offset: 960)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3669, file: !3663, line: 146, baseType: !3736, size: 64, offset: 1024)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!167, !3683, !3739}
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3663, line: 29, size: 128, elements: !3741)
!3741 = !{!3742, !3743, !3744}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3740, file: !3663, line: 30, baseType: !7, size: 32)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3740, file: !3663, line: 31, baseType: !7, size: 32, offset: 32)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3740, file: !3663, line: 32, baseType: !3683, size: 64, offset: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3669, file: !3663, line: 148, baseType: !3746, size: 64, offset: 1088)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!167, !3683, !196}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3662, file: !3663, line: 20, baseType: !196, size: 64, offset: 128)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !197, file: !80, line: 534, baseType: !496, size: 32, offset: 4992)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !197, file: !80, line: 535, baseType: !174, size: 32, offset: 5024)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !197, file: !80, line: 537, baseType: !220, offset: 5056)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !197, file: !80, line: 538, baseType: !207, size: 128, offset: 5056)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !197, file: !80, line: 540, baseType: !3755, size: 64, offset: 5184)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3757, line: 54, size: 960, elements: !3758)
!3757 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3758 = !{!3759, !3760, !3761, !3762, !3763, !3764, !3765, !3769, !3773, !3774, !3775, !3776, !3780, !3784, !3785}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3756, file: !3757, line: 55, baseType: !204, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3756, file: !3757, line: 56, baseType: !157, size: 64, offset: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3756, file: !3757, line: 58, baseType: !315, size: 64, offset: 128)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3756, file: !3757, line: 59, baseType: !315, size: 64, offset: 192)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3756, file: !3757, line: 60, baseType: !213, size: 64, offset: 256)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3756, file: !3757, line: 62, baseType: !3365, size: 64, offset: 320)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3756, file: !3757, line: 63, baseType: !3766, size: 64, offset: 384)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!261, !196, !3372}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3756, file: !3757, line: 65, baseType: !3770, size: 64, offset: 448)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{null, !3755}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3756, file: !3757, line: 66, baseType: !3374, size: 64, offset: 512)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3756, file: !3757, line: 68, baseType: !3383, size: 64, offset: 576)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3756, file: !3757, line: 70, baseType: !3169, size: 64, offset: 640)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3756, file: !3757, line: 71, baseType: !3777, size: 64, offset: 704)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!2107, !196}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3756, file: !3757, line: 73, baseType: !3781, size: 64, offset: 768)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{null, !196, !3201, !3202}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3756, file: !3757, line: 75, baseType: !3378, size: 64, offset: 832)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3756, file: !3757, line: 77, baseType: !3495, size: 64, offset: 896)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !197, file: !80, line: 541, baseType: !315, size: 64, offset: 5248)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !197, file: !80, line: 543, baseType: !3374, size: 64, offset: 5312)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !197, file: !80, line: 544, baseType: !3789, size: 64, offset: 5376)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !80, line: 45, flags: DIFlagFwdDecl)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !197, file: !80, line: 545, baseType: !3792, size: 64, offset: 5440)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !80, line: 47, flags: DIFlagFwdDecl)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !197, file: !80, line: 547, baseType: !473, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !197, file: !80, line: 548, baseType: !473, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !197, file: !80, line: 549, baseType: !473, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !197, file: !80, line: 550, baseType: !473, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !193, file: !6, line: 426, baseType: !196, size: 64, offset: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !193, file: !6, line: 427, baseType: !167, size: 32, offset: 128)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !193, file: !6, line: 428, baseType: !204, size: 64, offset: 192)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !193, file: !6, line: 429, baseType: !1335, size: 8, offset: 256)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !193, file: !6, line: 433, baseType: !1335, size: 8, offset: 264)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !193, file: !6, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !193, file: !6, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !193, file: !6, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !193, file: !6, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !193, file: !6, line: 442, baseType: !7, size: 32, offset: 288)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !193, file: !6, line: 444, baseType: !167, size: 32, offset: 320)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !193, file: !6, line: 446, baseType: !1156, size: 192, offset: 384)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !193, file: !6, line: 448, baseType: !3811, size: 128, offset: 576)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !6, line: 417, size: 128, elements: !3812)
!3812 = !{!3813}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !3811, file: !6, line: 418, baseType: !3814, size: 128)
!3814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 128, elements: !188)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !193, file: !6, line: 449, baseType: !163, size: 64, offset: 704)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !193, file: !6, line: 450, baseType: !192, size: 64, offset: 768)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !193, file: !6, line: 452, baseType: !167, size: 32, offset: 832)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !193, file: !6, line: 459, baseType: !167, size: 32, offset: 864)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !193, file: !6, line: 460, baseType: !167, size: 32, offset: 896)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !193, file: !6, line: 462, baseType: !7, size: 32, offset: 928)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !164, file: !6, line: 647, baseType: !3822, size: 640, offset: 640)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !6, line: 67, size: 640, elements: !3823)
!3823 = !{!3824, !3836, !3844, !3852, !3853, !3854, !3857, !3859, !3860, !3861}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3822, file: !6, line: 68, baseType: !3825, size: 72)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !101, line: 407, size: 72, elements: !3826)
!3826 = !{!3827, !3828, !3829, !3830, !3831, !3833, !3834, !3835}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3825, file: !101, line: 408, baseType: !1336, size: 8)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3825, file: !101, line: 409, baseType: !1336, size: 8, offset: 8)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !3825, file: !101, line: 411, baseType: !1336, size: 8, offset: 16)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3825, file: !101, line: 412, baseType: !1336, size: 8, offset: 24)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !3825, file: !101, line: 413, baseType: !3832, size: 16, offset: 32)
!3832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !2886, line: 29, baseType: !843)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !3825, file: !101, line: 414, baseType: !1336, size: 8, offset: 48)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !3825, file: !101, line: 418, baseType: !1336, size: 8, offset: 56)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !3825, file: !101, line: 419, baseType: !1336, size: 8, offset: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !3822, file: !6, line: 69, baseType: !3837, size: 48, offset: 72)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !101, line: 689, size: 48, elements: !3838)
!3838 = !{!3839, !3840, !3841, !3842, !3843}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3837, file: !101, line: 690, baseType: !1336, size: 8)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3837, file: !101, line: 691, baseType: !1336, size: 8, offset: 8)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !3837, file: !101, line: 693, baseType: !1336, size: 8, offset: 16)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3837, file: !101, line: 694, baseType: !1336, size: 8, offset: 24)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !3837, file: !101, line: 695, baseType: !3832, size: 16, offset: 32)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !3822, file: !6, line: 70, baseType: !3845, size: 64, offset: 120)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !101, line: 677, size: 64, elements: !3846)
!3846 = !{!3847, !3848, !3849, !3850}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3845, file: !101, line: 678, baseType: !1336, size: 8)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3845, file: !101, line: 679, baseType: !1336, size: 8, offset: 8)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !3845, file: !101, line: 680, baseType: !3832, size: 16, offset: 16)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !3845, file: !101, line: 681, baseType: !3851, size: 32, offset: 32)
!3851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2886, line: 31, baseType: !176)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3822, file: !6, line: 71, baseType: !207, size: 128, offset: 192)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3822, file: !6, line: 72, baseType: !160, size: 64, offset: 320)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !3822, file: !6, line: 73, baseType: !3855, size: 64, offset: 384)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !6, line: 48, flags: DIFlagFwdDecl)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3822, file: !6, line: 75, baseType: !3858, size: 64, offset: 448)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3822, file: !6, line: 76, baseType: !167, size: 32, offset: 512)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3822, file: !6, line: 77, baseType: !167, size: 32, offset: 544)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3822, file: !6, line: 78, baseType: !167, size: 32, offset: 576)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !164, file: !6, line: 649, baseType: !197, size: 5568, offset: 1280)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !164, file: !6, line: 651, baseType: !3864, size: 144, offset: 6848)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !101, line: 289, size: 144, elements: !3865)
!3865 = !{!3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3864, file: !101, line: 290, baseType: !1336, size: 8)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3864, file: !101, line: 291, baseType: !1336, size: 8, offset: 8)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !3864, file: !101, line: 293, baseType: !3832, size: 16, offset: 16)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3864, file: !101, line: 294, baseType: !1336, size: 8, offset: 32)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3864, file: !101, line: 295, baseType: !1336, size: 8, offset: 40)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3864, file: !101, line: 296, baseType: !1336, size: 8, offset: 48)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !3864, file: !101, line: 297, baseType: !1336, size: 8, offset: 56)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3864, file: !101, line: 298, baseType: !3832, size: 16, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3864, file: !101, line: 299, baseType: !3832, size: 16, offset: 80)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !3864, file: !101, line: 300, baseType: !3832, size: 16, offset: 96)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !3864, file: !101, line: 301, baseType: !1336, size: 8, offset: 112)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !3864, file: !101, line: 302, baseType: !1336, size: 8, offset: 120)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !3864, file: !101, line: 303, baseType: !1336, size: 8, offset: 128)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !3864, file: !101, line: 304, baseType: !1336, size: 8, offset: 136)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !164, file: !6, line: 652, baseType: !3881, size: 64, offset: 7040)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !6, line: 396, size: 384, elements: !3883)
!3883 = !{!3884, !3892, !3900, !3912, !3925, !3934}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3882, file: !6, line: 397, baseType: !3885, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !101, line: 844, size: 40, elements: !3887)
!3887 = !{!3888, !3889, !3890, !3891}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3886, file: !101, line: 845, baseType: !1336, size: 8)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3886, file: !101, line: 846, baseType: !1336, size: 8, offset: 8)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3886, file: !101, line: 848, baseType: !3832, size: 16, offset: 16)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !3886, file: !101, line: 849, baseType: !1336, size: 8, offset: 32)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !3882, file: !6, line: 400, baseType: !3893, size: 64, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !101, line: 895, size: 56, elements: !3895)
!3895 = !{!3896, !3897, !3898, !3899}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3894, file: !101, line: 896, baseType: !1336, size: 8)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3894, file: !101, line: 897, baseType: !1336, size: 8, offset: 8)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3894, file: !101, line: 898, baseType: !1336, size: 8, offset: 16)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3894, file: !101, line: 899, baseType: !3851, size: 32, offset: 24)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !3882, file: !6, line: 401, baseType: !3901, size: 64, offset: 128)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !101, line: 917, size: 80, elements: !3903)
!3903 = !{!3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3902, file: !101, line: 918, baseType: !1336, size: 8)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3902, file: !101, line: 919, baseType: !1336, size: 8, offset: 8)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3902, file: !101, line: 920, baseType: !1336, size: 8, offset: 16)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3902, file: !101, line: 921, baseType: !1336, size: 8, offset: 24)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !3902, file: !101, line: 923, baseType: !3832, size: 16, offset: 32)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !3902, file: !101, line: 928, baseType: !1336, size: 8, offset: 48)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !3902, file: !101, line: 929, baseType: !1336, size: 8, offset: 56)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !3902, file: !101, line: 930, baseType: !3832, size: 16, offset: 64)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !3882, file: !6, line: 402, baseType: !3913, size: 64, offset: 192)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !101, line: 955, size: 128, elements: !3915)
!3915 = !{!3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3914, file: !101, line: 956, baseType: !1336, size: 8)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3914, file: !101, line: 957, baseType: !1336, size: 8, offset: 8)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3914, file: !101, line: 958, baseType: !1336, size: 8, offset: 16)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3914, file: !101, line: 959, baseType: !1336, size: 8, offset: 24)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3914, file: !101, line: 960, baseType: !3851, size: 32, offset: 32)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !3914, file: !101, line: 963, baseType: !3832, size: 16, offset: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !3914, file: !101, line: 967, baseType: !3832, size: 16, offset: 80)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !3914, file: !101, line: 968, baseType: !3924, size: 32, offset: 96)
!3924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3851, size: 32, elements: !1354)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !3882, file: !6, line: 403, baseType: !3926, size: 64, offset: 256)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !101, line: 940, size: 160, elements: !3928)
!3928 = !{!3929, !3930, !3931, !3932, !3933}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3927, file: !101, line: 941, baseType: !1336, size: 8)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3927, file: !101, line: 942, baseType: !1336, size: 8, offset: 8)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3927, file: !101, line: 943, baseType: !1336, size: 8, offset: 16)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3927, file: !101, line: 944, baseType: !1336, size: 8, offset: 24)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !3927, file: !101, line: 945, baseType: !2687, size: 128, offset: 32)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !3882, file: !6, line: 404, baseType: !3935, size: 64, offset: 320)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !101, line: 1080, size: 24, elements: !3937)
!3937 = !{!3938, !3939, !3940}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3936, file: !101, line: 1081, baseType: !1336, size: 8)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3936, file: !101, line: 1082, baseType: !1336, size: 8, offset: 8)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3936, file: !101, line: 1083, baseType: !1336, size: 8, offset: 16)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !164, file: !6, line: 653, baseType: !3942, size: 64, offset: 7104)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !6, line: 374, size: 5440, elements: !3944)
!3944 = !{!3945, !3956, !3957, !3970, !4012, !4021, !4022}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3943, file: !6, line: 375, baseType: !3946, size: 72)
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !101, line: 349, size: 72, elements: !3947)
!3947 = !{!3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3946, file: !101, line: 350, baseType: !1336, size: 8)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3946, file: !101, line: 351, baseType: !1336, size: 8, offset: 8)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3946, file: !101, line: 353, baseType: !3832, size: 16, offset: 16)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !3946, file: !101, line: 354, baseType: !1336, size: 8, offset: 32)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !3946, file: !101, line: 355, baseType: !1336, size: 8, offset: 40)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !3946, file: !101, line: 356, baseType: !1336, size: 8, offset: 48)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3946, file: !101, line: 357, baseType: !1336, size: 8, offset: 56)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !3946, file: !101, line: 358, baseType: !1336, size: 8, offset: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3943, file: !6, line: 377, baseType: !261, size: 64, offset: 128)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3943, file: !6, line: 381, baseType: !3958, size: 1024, offset: 192)
!3958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3959, size: 1024, elements: !171)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !101, line: 783, size: 64, elements: !3961)
!3961 = !{!3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3960, file: !101, line: 784, baseType: !1336, size: 8)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3960, file: !101, line: 785, baseType: !1336, size: 8, offset: 8)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !3960, file: !101, line: 787, baseType: !1336, size: 8, offset: 16)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !3960, file: !101, line: 788, baseType: !1336, size: 8, offset: 24)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !3960, file: !101, line: 789, baseType: !1336, size: 8, offset: 32)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !3960, file: !101, line: 790, baseType: !1336, size: 8, offset: 40)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !3960, file: !101, line: 791, baseType: !1336, size: 8, offset: 48)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !3960, file: !101, line: 792, baseType: !1336, size: 8, offset: 56)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !3943, file: !6, line: 385, baseType: !3971, size: 2048, offset: 1216)
!3971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3972, size: 2048, elements: !2210)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !6, line: 232, size: 6272, elements: !3974)
!3974 = !{!3975, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3973, file: !6, line: 235, baseType: !3976, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !6, line: 82, size: 320, elements: !3978)
!3978 = !{!3979, !3991, !3992, !3993, !3995}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3977, file: !6, line: 83, baseType: !3980, size: 72)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !101, line: 389, size: 72, elements: !3981)
!3981 = !{!3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3980, file: !101, line: 390, baseType: !1336, size: 8)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3980, file: !101, line: 391, baseType: !1336, size: 8, offset: 8)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3980, file: !101, line: 393, baseType: !1336, size: 8, offset: 16)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !3980, file: !101, line: 394, baseType: !1336, size: 8, offset: 24)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !3980, file: !101, line: 395, baseType: !1336, size: 8, offset: 32)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3980, file: !101, line: 396, baseType: !1336, size: 8, offset: 40)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3980, file: !101, line: 397, baseType: !1336, size: 8, offset: 48)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3980, file: !101, line: 398, baseType: !1336, size: 8, offset: 56)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !3980, file: !101, line: 399, baseType: !1336, size: 8, offset: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3977, file: !6, line: 85, baseType: !167, size: 32, offset: 96)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3977, file: !6, line: 86, baseType: !3858, size: 64, offset: 128)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !3977, file: !6, line: 91, baseType: !3994, size: 64, offset: 192)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3977, file: !6, line: 93, baseType: !261, size: 64, offset: 256)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !3973, file: !6, line: 237, baseType: !3976, size: 64, offset: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3973, file: !6, line: 239, baseType: !7, size: 32, offset: 128)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3973, file: !6, line: 243, baseType: !3959, size: 64, offset: 192)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3973, file: !6, line: 245, baseType: !167, size: 32, offset: 256)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !3973, file: !6, line: 247, baseType: !5, size: 32, offset: 288)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !3973, file: !6, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !3973, file: !6, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !3973, file: !6, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !3973, file: !6, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !3973, file: !6, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !3973, file: !6, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !3973, file: !6, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !3973, file: !6, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3973, file: !6, line: 257, baseType: !197, size: 5568, offset: 384)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !3973, file: !6, line: 258, baseType: !196, size: 64, offset: 5952)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !3973, file: !6, line: 259, baseType: !1937, size: 256, offset: 6016)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !3943, file: !6, line: 389, baseType: !4013, size: 2048, offset: 3264)
!4013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4014, size: 2048, elements: !2210)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !6, line: 322, size: 64, elements: !4016)
!4016 = !{!4017, !4018, !4019}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4015, file: !6, line: 323, baseType: !7, size: 32)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4015, file: !6, line: 324, baseType: !3343, size: 32, offset: 32)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4015, file: !6, line: 328, baseType: !4020, offset: 64)
!4020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3977, elements: !2311)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3943, file: !6, line: 391, baseType: !3858, size: 64, offset: 5312)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3943, file: !6, line: 392, baseType: !167, size: 32, offset: 5376)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !164, file: !6, line: 655, baseType: !3942, size: 64, offset: 7168)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !164, file: !6, line: 656, baseType: !4025, size: 1024, offset: 7232)
!4025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3994, size: 1024, elements: !171)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !164, file: !6, line: 657, baseType: !4025, size: 1024, offset: 8256)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !164, file: !6, line: 659, baseType: !4028, size: 64, offset: 9280)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !164, file: !6, line: 661, baseType: !303, size: 16, offset: 9344)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !164, file: !6, line: 662, baseType: !1335, size: 8, offset: 9360)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !164, file: !6, line: 663, baseType: !1335, size: 8, offset: 9368)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !164, file: !6, line: 664, baseType: !1335, size: 8, offset: 9376)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !164, file: !6, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !164, file: !6, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !164, file: !6, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !164, file: !6, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !164, file: !6, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !164, file: !6, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !164, file: !6, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !164, file: !6, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !164, file: !6, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !164, file: !6, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !164, file: !6, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !164, file: !6, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !164, file: !6, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !164, file: !6, line: 679, baseType: !167, size: 32, offset: 9408)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !164, file: !6, line: 682, baseType: !261, size: 64, offset: 9472)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !164, file: !6, line: 683, baseType: !261, size: 64, offset: 9536)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !164, file: !6, line: 684, baseType: !261, size: 64, offset: 9600)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !164, file: !6, line: 686, baseType: !207, size: 128, offset: 9664)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !164, file: !6, line: 688, baseType: !167, size: 32, offset: 9792)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !164, file: !6, line: 690, baseType: !174, size: 32, offset: 9824)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !164, file: !6, line: 691, baseType: !730, size: 32, offset: 9856)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !164, file: !6, line: 693, baseType: !311, size: 64, offset: 9920)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !164, file: !6, line: 696, baseType: !311, size: 64, offset: 9984)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !164, file: !6, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !164, file: !6, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !164, file: !6, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !164, file: !6, line: 702, baseType: !4060, size: 64, offset: 10112)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !6, line: 28, flags: DIFlagFwdDecl)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !164, file: !6, line: 703, baseType: !167, size: 32, offset: 10176)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !164, file: !6, line: 704, baseType: !121, size: 32, offset: 10208)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !164, file: !6, line: 705, baseType: !4065, size: 64, offset: 10240)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !6, line: 502, size: 64, elements: !4066)
!4066 = !{!4067, !4068}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !4065, file: !6, line: 506, baseType: !7, size: 32)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4065, file: !6, line: 512, baseType: !167, size: 32, offset: 32)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !164, file: !6, line: 706, baseType: !4070, size: 128, offset: 10304)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !6, line: 522, size: 128, elements: !4071)
!4071 = !{!4072, !4073, !4074, !4075}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !4070, file: !6, line: 529, baseType: !7, size: 32)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !4070, file: !6, line: 535, baseType: !7, size: 32, offset: 32)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !4070, file: !6, line: 545, baseType: !7, size: 32, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4070, file: !6, line: 551, baseType: !167, size: 32, offset: 96)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !164, file: !6, line: 707, baseType: !4070, size: 128, offset: 10432)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !164, file: !6, line: 708, baseType: !7, size: 32, offset: 10560)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !164, file: !6, line: 710, baseType: !842, size: 16, offset: 10592)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !164, file: !6, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !170)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!4084 = !{!0, !4085, !4090, !4095, !4100, !4103, !4108, !4169, !4659}
!4085 = !DIGlobalVariableExpression(var: !4086, expr: !DIExpression())
!4086 = distinct !DIGlobalVariable(name: "__exitcall_ushc_driver_exit", scope: !2, file: !3, line: 564, type: !4087, isLocal: true, isDefinition: true)
!4087 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4088, line: 117, baseType: !4089)
!4088 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!4090 = !DIGlobalVariableExpression(var: !4091, expr: !DIExpression())
!4091 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description241", scope: !2, file: !3, line: 566, type: !4092, isLocal: true, isDefinition: true, align: 8)
!4092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 376, elements: !4093)
!4093 = !{!4094}
!4094 = !DISubrange(count: 47)
!4095 = !DIGlobalVariableExpression(var: !4096, expr: !DIExpression())
!4096 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author242", scope: !2, file: !3, line: 567, type: !4097, isLocal: true, isDefinition: true, align: 8)
!4097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 384, elements: !4098)
!4098 = !{!4099}
!4099 = !DISubrange(count: 48)
!4100 = !DIGlobalVariableExpression(var: !4101, expr: !DIExpression())
!4101 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file243", scope: !2, file: !3, line: 568, type: !4102, isLocal: true, isDefinition: true, align: 8)
!4102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 256, elements: !2210)
!4103 = !DIGlobalVariableExpression(var: !4104, expr: !DIExpression())
!4104 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license244", scope: !2, file: !3, line: 568, type: !4105, isLocal: true, isDefinition: true, align: 8)
!4105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 136, elements: !4106)
!4106 = !{!4107}
!4107 = !DISubrange(count: 17)
!4108 = !DIGlobalVariableExpression(var: !4109, expr: !DIExpression())
!4109 = distinct !DIGlobalVariable(name: "ushc_driver", scope: !2, file: !3, line: 557, type: !4110, isLocal: true, isDefinition: true)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !6, line: 1184, size: 2112, elements: !4111)
!4111 = !{!4112, !4113, !4134, !4138, !4142, !4146, !4150, !4151, !4152, !4153, !4154, !4155, !4160, !4165, !4166, !4167, !4168}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4110, file: !6, line: 1185, baseType: !204, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4110, file: !6, line: 1187, baseType: !4114, size: 64, offset: 64)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!167, !3972, !4117}
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4119)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3436, line: 121, size: 256, elements: !4120)
!4120 = !{!4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !4119, file: !3436, line: 123, baseType: !843, size: 16)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !4119, file: !3436, line: 126, baseType: !843, size: 16, offset: 16)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !4119, file: !3436, line: 127, baseType: !843, size: 16, offset: 32)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !4119, file: !3436, line: 128, baseType: !843, size: 16, offset: 48)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !4119, file: !3436, line: 129, baseType: !843, size: 16, offset: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !4119, file: !3436, line: 132, baseType: !1336, size: 8, offset: 80)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !4119, file: !3436, line: 133, baseType: !1336, size: 8, offset: 88)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !4119, file: !3436, line: 134, baseType: !1336, size: 8, offset: 96)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4119, file: !3436, line: 137, baseType: !1336, size: 8, offset: 104)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4119, file: !3436, line: 138, baseType: !1336, size: 8, offset: 112)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4119, file: !3436, line: 139, baseType: !1336, size: 8, offset: 120)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4119, file: !3436, line: 142, baseType: !1336, size: 8, offset: 128)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4119, file: !3436, line: 145, baseType: !3455, size: 64, align: 64, offset: 192)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4110, file: !6, line: 1190, baseType: !4135, size: 64, offset: 128)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{null, !3972}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4110, file: !6, line: 1192, baseType: !4139, size: 64, offset: 192)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!167, !3972, !7, !160}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4110, file: !6, line: 1195, baseType: !4143, size: 64, offset: 256)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!167, !3972, !3466}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4110, file: !6, line: 1196, baseType: !4147, size: 64, offset: 320)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!167, !3972}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !4110, file: !6, line: 1197, baseType: !4147, size: 64, offset: 384)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !4110, file: !6, line: 1199, baseType: !4147, size: 64, offset: 448)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !4110, file: !6, line: 1200, baseType: !4147, size: 64, offset: 512)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4110, file: !6, line: 1202, baseType: !4117, size: 64, offset: 576)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4110, file: !6, line: 1203, baseType: !315, size: 64, offset: 640)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4110, file: !6, line: 1205, baseType: !4156, size: 128, offset: 704)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !6, line: 1091, size: 128, elements: !4157)
!4157 = !{!4158, !4159}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4156, file: !6, line: 1092, baseType: !220)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4156, file: !6, line: 1093, baseType: !207, size: 128)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !4110, file: !6, line: 1206, baseType: !4161, size: 1216, offset: 832)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !6, line: 1113, size: 1216, elements: !4162)
!4162 = !{!4163, !4164}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4161, file: !6, line: 1114, baseType: !3424, size: 1152)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !4161, file: !6, line: 1115, baseType: !167, size: 32, offset: 1152)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !4110, file: !6, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !4110, file: !6, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !4110, file: !6, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !4110, file: !6, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!4169 = !DIGlobalVariableExpression(var: !4170, expr: !DIExpression())
!4170 = distinct !DIGlobalVariable(name: "ushc_ops", scope: !2, file: !3, line: 411, type: !4171, isLocal: true, isDefinition: true)
!4171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4172)
!4172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_host_ops", file: !4173, line: 82, size: 1408, elements: !4174)
!4173 = !DIFile(filename: "./include/linux/mmc/host.h", directory: "/home/lizy2001/genbc/linux")
!4174 = !{!4175, !4616, !4617, !4618, !4619, !4624, !4625, !4626, !4630, !4631, !4635, !4639, !4640, !4644, !4645, !4646, !4647, !4648, !4649, !4653, !4654, !4655}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "post_req", scope: !4172, file: !4173, line: 91, baseType: !4176, size: 64)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{null, !4179, !4518, !167}
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_host", file: !4173, line: 275, size: 10752, elements: !4181)
!4181 = !{!4182, !4183, !4184, !4185, !4187, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4473, !4474, !4479, !4480, !4481, !4488, !4489, !4495, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4509, !4516, !4517, !4574, !4575, !4576, !4577, !4578, !4610, !4611, !4612, !4613, !4614, !4615}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4180, file: !4173, line: 276, baseType: !196, size: 64)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !4180, file: !4173, line: 277, baseType: !197, size: 5568, offset: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4180, file: !4173, line: 278, baseType: !167, size: 32, offset: 5632)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4180, file: !4173, line: 279, baseType: !4186, size: 64, offset: 5696)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "pwrseq", scope: !4180, file: !4173, line: 280, baseType: !4188, size: 64, offset: 5760)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_pwrseq", file: !4173, line: 264, flags: DIFlagFwdDecl)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "f_min", scope: !4180, file: !4173, line: 281, baseType: !7, size: 32, offset: 5824)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "f_max", scope: !4180, file: !4173, line: 282, baseType: !7, size: 32, offset: 5856)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "f_init", scope: !4180, file: !4173, line: 283, baseType: !7, size: 32, offset: 5888)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "ocr_avail", scope: !4180, file: !4173, line: 284, baseType: !174, size: 32, offset: 5920)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "ocr_avail_sdio", scope: !4180, file: !4173, line: 285, baseType: !174, size: 32, offset: 5952)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "ocr_avail_sd", scope: !4180, file: !4173, line: 286, baseType: !174, size: 32, offset: 5984)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "ocr_avail_mmc", scope: !4180, file: !4173, line: 287, baseType: !174, size: 32, offset: 6016)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "pm_notify", scope: !4180, file: !4173, line: 289, baseType: !4198, size: 192, offset: 6080)
!4198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4199, line: 54, size: 192, elements: !4200)
!4199 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!4200 = !{!4201, !4207, !4208}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4198, file: !4199, line: 55, baseType: !4202, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4199, line: 51, baseType: !4203)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!167, !4206, !311, !160}
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4198, file: !4199, line: 56, baseType: !4206, size: 64, offset: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4198, file: !4199, line: 57, baseType: !167, size: 32, offset: 128)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !4180, file: !4173, line: 291, baseType: !3531, size: 64, offset: 6272)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "max_current_330", scope: !4180, file: !4173, line: 292, baseType: !174, size: 32, offset: 6336)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "max_current_300", scope: !4180, file: !4173, line: 293, baseType: !174, size: 32, offset: 6368)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "max_current_180", scope: !4180, file: !4173, line: 294, baseType: !174, size: 32, offset: 6400)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !4180, file: !4173, line: 314, baseType: !174, size: 32, offset: 6432)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "caps2", scope: !4180, file: !4173, line: 352, baseType: !174, size: 32, offset: 6464)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_drv_type", scope: !4180, file: !4173, line: 381, baseType: !167, size: 32, offset: 6496)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "pm_caps", scope: !4180, file: !4173, line: 383, baseType: !4217, size: 32, offset: 6528)
!4217 = !DIDerivedType(tag: DW_TAG_typedef, name: "mmc_pm_flag_t", file: !4218, line: 22, baseType: !7)
!4218 = !DIFile(filename: "./include/linux/mmc/pm.h", directory: "/home/lizy2001/genbc/linux")
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "max_seg_size", scope: !4180, file: !4173, line: 386, baseType: !7, size: 32, offset: 6560)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "max_segs", scope: !4180, file: !4173, line: 387, baseType: !303, size: 16, offset: 6592)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4180, file: !4173, line: 388, baseType: !303, size: 16, offset: 6608)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "max_req_size", scope: !4180, file: !4173, line: 389, baseType: !7, size: 32, offset: 6624)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "max_blk_size", scope: !4180, file: !4173, line: 390, baseType: !7, size: 32, offset: 6656)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "max_blk_count", scope: !4180, file: !4173, line: 391, baseType: !7, size: 32, offset: 6688)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "max_busy_timeout", scope: !4180, file: !4173, line: 392, baseType: !7, size: 32, offset: 6720)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4180, file: !4173, line: 395, baseType: !220, offset: 6752)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "ios", scope: !4180, file: !4173, line: 397, baseType: !4228, size: 160, offset: 6752)
!4228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_ios", file: !4173, line: 19, size: 160, elements: !4229)
!4229 = !{!4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !4228, file: !4173, line: 20, baseType: !7, size: 32)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "vdd", scope: !4228, file: !4173, line: 21, baseType: !303, size: 16, offset: 32)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "power_delay_ms", scope: !4228, file: !4173, line: 22, baseType: !7, size: 32, offset: 64)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mode", scope: !4228, file: !4173, line: 26, baseType: !410, size: 8, offset: 96)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "chip_select", scope: !4228, file: !4173, line: 31, baseType: !410, size: 8, offset: 104)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "power_mode", scope: !4228, file: !4173, line: 37, baseType: !410, size: 8, offset: 112)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "bus_width", scope: !4228, file: !4173, line: 44, baseType: !410, size: 8, offset: 120)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "timing", scope: !4228, file: !4173, line: 50, baseType: !410, size: 8, offset: 128)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "signal_voltage", scope: !4228, file: !4173, line: 64, baseType: !410, size: 8, offset: 136)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "drv_type", scope: !4228, file: !4173, line: 70, baseType: !410, size: 8, offset: 144)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "enhanced_strobe", scope: !4228, file: !4173, line: 77, baseType: !473, size: 8, offset: 152)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "use_spi_crc", scope: !4180, file: !4173, line: 400, baseType: !7, size: 1, offset: 6912, flags: DIFlagBitField, extraData: i64 6912)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "claimed", scope: !4180, file: !4173, line: 401, baseType: !7, size: 1, offset: 6913, flags: DIFlagBitField, extraData: i64 6912)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dead", scope: !4180, file: !4173, line: 402, baseType: !7, size: 1, offset: 6914, flags: DIFlagBitField, extraData: i64 6912)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "doing_init_tune", scope: !4180, file: !4173, line: 403, baseType: !7, size: 1, offset: 6915, flags: DIFlagBitField, extraData: i64 6912)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "can_retune", scope: !4180, file: !4173, line: 404, baseType: !7, size: 1, offset: 6916, flags: DIFlagBitField, extraData: i64 6912)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "doing_retune", scope: !4180, file: !4173, line: 405, baseType: !7, size: 1, offset: 6917, flags: DIFlagBitField, extraData: i64 6912)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "retune_now", scope: !4180, file: !4173, line: 406, baseType: !7, size: 1, offset: 6918, flags: DIFlagBitField, extraData: i64 6912)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "retune_paused", scope: !4180, file: !4173, line: 407, baseType: !7, size: 1, offset: 6919, flags: DIFlagBitField, extraData: i64 6912)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "use_blk_mq", scope: !4180, file: !4173, line: 408, baseType: !7, size: 1, offset: 6920, flags: DIFlagBitField, extraData: i64 6912)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "retune_crc_disable", scope: !4180, file: !4173, line: 409, baseType: !7, size: 1, offset: 6921, flags: DIFlagBitField, extraData: i64 6912)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "can_dma_map_merge", scope: !4180, file: !4173, line: 410, baseType: !7, size: 1, offset: 6922, flags: DIFlagBitField, extraData: i64 6912)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "rescan_disable", scope: !4180, file: !4173, line: 412, baseType: !167, size: 32, offset: 6944)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "rescan_entered", scope: !4180, file: !4173, line: 413, baseType: !167, size: 32, offset: 6976)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "need_retune", scope: !4180, file: !4173, line: 415, baseType: !167, size: 32, offset: 7008)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "hold_retune", scope: !4180, file: !4173, line: 416, baseType: !167, size: 32, offset: 7040)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "retune_period", scope: !4180, file: !4173, line: 417, baseType: !7, size: 32, offset: 7072)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "retune_timer", scope: !4180, file: !4173, line: 418, baseType: !3543, size: 320, offset: 7104)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_card_event", scope: !4180, file: !4173, line: 420, baseType: !473, size: 8, offset: 7424)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !4180, file: !4173, line: 422, baseType: !4260, size: 64, offset: 7488)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_card", file: !4262, line: 244, size: 12672, elements: !4263)
!4262 = !DIFile(filename: "./include/linux/mmc/card.h", directory: "/home/lizy2001/genbc/linux")
!4263 = !{!4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4281, !4282, !4284, !4286, !4298, !4318, !4399, !4408, !4414, !4422, !4423, !4424, !4435, !4442, !4448, !4449, !4450, !4451, !4452, !4453, !4456, !4457, !4458, !4459, !4460, !4470, !4471, !4472}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !4261, file: !4262, line: 245, baseType: !4179, size: 64)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4261, file: !4262, line: 246, baseType: !197, size: 5568, offset: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "ocr", scope: !4261, file: !4262, line: 247, baseType: !174, size: 32, offset: 5632)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "rca", scope: !4261, file: !4262, line: 248, baseType: !7, size: 32, offset: 5664)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4261, file: !4262, line: 249, baseType: !7, size: 32, offset: 5696)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4261, file: !4262, line: 254, baseType: !7, size: 32, offset: 5728)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4261, file: !4262, line: 255, baseType: !7, size: 32, offset: 5760)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_max_rate", scope: !4261, file: !4262, line: 256, baseType: !7, size: 32, offset: 5792)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "reenable_cmdq", scope: !4261, file: !4262, line: 274, baseType: !473, size: 8, offset: 5824)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "erase_size", scope: !4261, file: !4262, line: 276, baseType: !7, size: 32, offset: 5856)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "erase_shift", scope: !4261, file: !4262, line: 277, baseType: !7, size: 32, offset: 5888)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "pref_erase", scope: !4261, file: !4262, line: 278, baseType: !7, size: 32, offset: 5920)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "eg_boundary", scope: !4261, file: !4262, line: 279, baseType: !7, size: 32, offset: 5952)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "erase_arg", scope: !4261, file: !4262, line: 280, baseType: !7, size: 32, offset: 5984)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "erased_byte", scope: !4261, file: !4262, line: 281, baseType: !1335, size: 8, offset: 6016)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "raw_cid", scope: !4261, file: !4262, line: 283, baseType: !4280, size: 128, offset: 6048)
!4280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 128, elements: !1138)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "raw_csd", scope: !4261, file: !4262, line: 284, baseType: !4280, size: 128, offset: 6176)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "raw_scr", scope: !4261, file: !4262, line: 285, baseType: !4283, size: 64, offset: 6304)
!4283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 64, elements: !188)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "raw_ssr", scope: !4261, file: !4262, line: 286, baseType: !4285, size: 512, offset: 6368)
!4285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 512, elements: !171)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !4261, file: !4262, line: 287, baseType: !4287, size: 224, offset: 6880)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_cid", file: !4262, line: 13, size: 224, elements: !4288)
!4288 = !{!4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "manfid", scope: !4287, file: !4262, line: 14, baseType: !7, size: 32)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "prod_name", scope: !4287, file: !4262, line: 15, baseType: !2012, size: 64, offset: 32)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !4287, file: !4262, line: 16, baseType: !410, size: 8, offset: 96)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !4287, file: !4262, line: 17, baseType: !7, size: 32, offset: 128)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "oemid", scope: !4287, file: !4262, line: 18, baseType: !303, size: 16, offset: 160)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !4287, file: !4262, line: 19, baseType: !303, size: 16, offset: 176)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "hwrev", scope: !4287, file: !4262, line: 20, baseType: !410, size: 8, offset: 192)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "fwrev", scope: !4287, file: !4262, line: 21, baseType: !410, size: 8, offset: 200)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "month", scope: !4287, file: !4262, line: 22, baseType: !410, size: 8, offset: 208)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "csd", scope: !4261, file: !4262, line: 288, baseType: !4299, size: 352, offset: 7104)
!4299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_csd", file: !4262, line: 25, size: 352, elements: !4300)
!4300 = !{!4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !4299, file: !4262, line: 26, baseType: !410, size: 8)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "mmca_vsn", scope: !4299, file: !4262, line: 27, baseType: !410, size: 8, offset: 8)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "cmdclass", scope: !4299, file: !4262, line: 28, baseType: !303, size: 16, offset: 16)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "taac_clks", scope: !4299, file: !4262, line: 29, baseType: !303, size: 16, offset: 32)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "taac_ns", scope: !4299, file: !4262, line: 30, baseType: !7, size: 32, offset: 64)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "c_size", scope: !4299, file: !4262, line: 31, baseType: !7, size: 32, offset: 96)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "r2w_factor", scope: !4299, file: !4262, line: 32, baseType: !7, size: 32, offset: 128)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "max_dtr", scope: !4299, file: !4262, line: 33, baseType: !7, size: 32, offset: 160)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "erase_size", scope: !4299, file: !4262, line: 34, baseType: !7, size: 32, offset: 192)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "read_blkbits", scope: !4299, file: !4262, line: 35, baseType: !7, size: 32, offset: 224)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "write_blkbits", scope: !4299, file: !4262, line: 36, baseType: !7, size: 32, offset: 256)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !4299, file: !4262, line: 37, baseType: !7, size: 32, offset: 288)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "read_partial", scope: !4299, file: !4262, line: 38, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "read_misalign", scope: !4299, file: !4262, line: 39, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "write_partial", scope: !4299, file: !4262, line: 40, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "write_misalign", scope: !4299, file: !4262, line: 41, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "dsr_imp", scope: !4299, file: !4262, line: 42, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "ext_csd", scope: !4261, file: !4262, line: 289, baseType: !4319, size: 1344, offset: 7488)
!4319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_ext_csd", file: !4262, line: 45, size: 1344, elements: !4320)
!4320 = !{!4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4395, !4396, !4397, !4398}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4319, file: !4262, line: 46, baseType: !1335, size: 8)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "erase_group_def", scope: !4319, file: !4262, line: 47, baseType: !1335, size: 8, offset: 8)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "sec_feature_support", scope: !4319, file: !4262, line: 48, baseType: !1335, size: 8, offset: 16)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "rel_sectors", scope: !4319, file: !4262, line: 49, baseType: !1335, size: 8, offset: 24)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "rel_param", scope: !4319, file: !4262, line: 50, baseType: !1335, size: 8, offset: 32)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "enhanced_rpmb_supported", scope: !4319, file: !4262, line: 51, baseType: !473, size: 8, offset: 40)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "part_config", scope: !4319, file: !4262, line: 52, baseType: !1335, size: 8, offset: 48)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "cache_ctrl", scope: !4319, file: !4262, line: 53, baseType: !1335, size: 8, offset: 56)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "rst_n_function", scope: !4319, file: !4262, line: 54, baseType: !1335, size: 8, offset: 64)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "max_packed_writes", scope: !4319, file: !4262, line: 55, baseType: !1335, size: 8, offset: 72)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "max_packed_reads", scope: !4319, file: !4262, line: 56, baseType: !1335, size: 8, offset: 80)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "packed_event_en", scope: !4319, file: !4262, line: 57, baseType: !1335, size: 8, offset: 88)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "part_time", scope: !4319, file: !4262, line: 58, baseType: !7, size: 32, offset: 96)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "sa_timeout", scope: !4319, file: !4262, line: 59, baseType: !7, size: 32, offset: 128)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "generic_cmd6_time", scope: !4319, file: !4262, line: 60, baseType: !7, size: 32, offset: 160)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "power_off_longtime", scope: !4319, file: !4262, line: 61, baseType: !7, size: 32, offset: 192)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "power_off_notification", scope: !4319, file: !4262, line: 62, baseType: !1335, size: 8, offset: 224)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "hs_max_dtr", scope: !4319, file: !4262, line: 63, baseType: !7, size: 32, offset: 256)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "hs200_max_dtr", scope: !4319, file: !4262, line: 64, baseType: !7, size: 32, offset: 288)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "sectors", scope: !4319, file: !4262, line: 69, baseType: !7, size: 32, offset: 320)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "hc_erase_size", scope: !4319, file: !4262, line: 70, baseType: !7, size: 32, offset: 352)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "hc_erase_timeout", scope: !4319, file: !4262, line: 71, baseType: !7, size: 32, offset: 384)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "sec_trim_mult", scope: !4319, file: !4262, line: 72, baseType: !7, size: 32, offset: 416)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "sec_erase_mult", scope: !4319, file: !4262, line: 73, baseType: !7, size: 32, offset: 448)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "trim_timeout", scope: !4319, file: !4262, line: 74, baseType: !7, size: 32, offset: 480)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "partition_setting_completed", scope: !4319, file: !4262, line: 75, baseType: !473, size: 8, offset: 512)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "enhanced_area_offset", scope: !4319, file: !4262, line: 76, baseType: !406, size: 64, offset: 576)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "enhanced_area_size", scope: !4319, file: !4262, line: 77, baseType: !7, size: 32, offset: 640)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "cache_size", scope: !4319, file: !4262, line: 78, baseType: !7, size: 32, offset: 672)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "hpi_en", scope: !4319, file: !4262, line: 79, baseType: !473, size: 8, offset: 704)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "hpi", scope: !4319, file: !4262, line: 80, baseType: !473, size: 8, offset: 712)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "hpi_cmd", scope: !4319, file: !4262, line: 81, baseType: !7, size: 32, offset: 736)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "bkops", scope: !4319, file: !4262, line: 82, baseType: !473, size: 8, offset: 768)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "man_bkops_en", scope: !4319, file: !4262, line: 83, baseType: !473, size: 8, offset: 776)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "auto_bkops_en", scope: !4319, file: !4262, line: 84, baseType: !473, size: 8, offset: 784)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "data_sector_size", scope: !4319, file: !4262, line: 85, baseType: !7, size: 32, offset: 800)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "data_tag_unit_size", scope: !4319, file: !4262, line: 86, baseType: !7, size: 32, offset: 832)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "boot_ro_lock", scope: !4319, file: !4262, line: 87, baseType: !7, size: 32, offset: 864)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "boot_ro_lockable", scope: !4319, file: !4262, line: 88, baseType: !473, size: 8, offset: 896)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "ffu_capable", scope: !4319, file: !4262, line: 89, baseType: !473, size: 8, offset: 904)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "cmdq_en", scope: !4319, file: !4262, line: 90, baseType: !473, size: 8, offset: 912)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "cmdq_support", scope: !4319, file: !4262, line: 91, baseType: !473, size: 8, offset: 920)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "cmdq_depth", scope: !4319, file: !4262, line: 92, baseType: !7, size: 32, offset: 928)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "fwrev", scope: !4319, file: !4262, line: 94, baseType: !4365, size: 64, offset: 960)
!4365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1335, size: 64, elements: !1313)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "raw_exception_status", scope: !4319, file: !4262, line: 95, baseType: !1335, size: 8, offset: 1024)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "raw_partition_support", scope: !4319, file: !4262, line: 96, baseType: !1335, size: 8, offset: 1032)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "raw_rpmb_size_mult", scope: !4319, file: !4262, line: 97, baseType: !1335, size: 8, offset: 1040)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "raw_erased_mem_count", scope: !4319, file: !4262, line: 98, baseType: !1335, size: 8, offset: 1048)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "strobe_support", scope: !4319, file: !4262, line: 99, baseType: !1335, size: 8, offset: 1056)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "raw_ext_csd_structure", scope: !4319, file: !4262, line: 100, baseType: !1335, size: 8, offset: 1064)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "raw_card_type", scope: !4319, file: !4262, line: 101, baseType: !1335, size: 8, offset: 1072)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "raw_driver_strength", scope: !4319, file: !4262, line: 102, baseType: !1335, size: 8, offset: 1080)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "out_of_int_time", scope: !4319, file: !4262, line: 103, baseType: !1335, size: 8, offset: 1088)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_52_195", scope: !4319, file: !4262, line: 104, baseType: !1335, size: 8, offset: 1096)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_26_195", scope: !4319, file: !4262, line: 105, baseType: !1335, size: 8, offset: 1104)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_52_360", scope: !4319, file: !4262, line: 106, baseType: !1335, size: 8, offset: 1112)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_26_360", scope: !4319, file: !4262, line: 107, baseType: !1335, size: 8, offset: 1120)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "raw_s_a_timeout", scope: !4319, file: !4262, line: 108, baseType: !1335, size: 8, offset: 1128)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "raw_hc_erase_gap_size", scope: !4319, file: !4262, line: 109, baseType: !1335, size: 8, offset: 1136)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "raw_erase_timeout_mult", scope: !4319, file: !4262, line: 110, baseType: !1335, size: 8, offset: 1144)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "raw_hc_erase_grp_size", scope: !4319, file: !4262, line: 111, baseType: !1335, size: 8, offset: 1152)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sec_trim_mult", scope: !4319, file: !4262, line: 112, baseType: !1335, size: 8, offset: 1160)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sec_erase_mult", scope: !4319, file: !4262, line: 113, baseType: !1335, size: 8, offset: 1168)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sec_feature_support", scope: !4319, file: !4262, line: 114, baseType: !1335, size: 8, offset: 1176)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "raw_trim_mult", scope: !4319, file: !4262, line: 115, baseType: !1335, size: 8, offset: 1184)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_200_195", scope: !4319, file: !4262, line: 116, baseType: !1335, size: 8, offset: 1192)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_200_360", scope: !4319, file: !4262, line: 117, baseType: !1335, size: 8, offset: 1200)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_ddr_52_195", scope: !4319, file: !4262, line: 118, baseType: !1335, size: 8, offset: 1208)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_ddr_52_360", scope: !4319, file: !4262, line: 119, baseType: !1335, size: 8, offset: 1216)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "raw_pwr_cl_ddr_200_360", scope: !4319, file: !4262, line: 120, baseType: !1335, size: 8, offset: 1224)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "raw_bkops_status", scope: !4319, file: !4262, line: 121, baseType: !1335, size: 8, offset: 1232)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sectors", scope: !4319, file: !4262, line: 122, baseType: !4394, size: 32, offset: 1240)
!4394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1335, size: 32, elements: !1138)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "pre_eol_info", scope: !4319, file: !4262, line: 123, baseType: !1335, size: 8, offset: 1272)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "device_life_time_est_typ_a", scope: !4319, file: !4262, line: 124, baseType: !1335, size: 8, offset: 1280)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "device_life_time_est_typ_b", scope: !4319, file: !4262, line: 125, baseType: !1335, size: 8, offset: 1288)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "feature_support", scope: !4319, file: !4262, line: 127, baseType: !7, size: 32, offset: 1312)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "scr", scope: !4261, file: !4262, line: 290, baseType: !4400, size: 48, offset: 8832)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sd_scr", file: !4262, line: 131, size: 48, elements: !4401)
!4401 = !{!4402, !4403, !4404, !4405, !4406, !4407}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "sda_vsn", scope: !4400, file: !4262, line: 132, baseType: !410, size: 8)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "sda_spec3", scope: !4400, file: !4262, line: 133, baseType: !410, size: 8, offset: 8)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "sda_spec4", scope: !4400, file: !4262, line: 134, baseType: !410, size: 8, offset: 16)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "sda_specx", scope: !4400, file: !4262, line: 135, baseType: !410, size: 8, offset: 24)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "bus_widths", scope: !4400, file: !4262, line: 136, baseType: !410, size: 8, offset: 32)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "cmds", scope: !4400, file: !4262, line: 139, baseType: !410, size: 8, offset: 40)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "ssr", scope: !4261, file: !4262, line: 291, baseType: !4409, size: 96, offset: 8896)
!4409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sd_ssr", file: !4262, line: 144, size: 96, elements: !4410)
!4410 = !{!4411, !4412, !4413}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "au", scope: !4409, file: !4262, line: 145, baseType: !7, size: 32)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "erase_timeout", scope: !4409, file: !4262, line: 146, baseType: !7, size: 32, offset: 32)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "erase_offset", scope: !4409, file: !4262, line: 147, baseType: !7, size: 32, offset: 64)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "sw_caps", scope: !4261, file: !4262, line: 292, baseType: !4415, size: 160, offset: 8992)
!4415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sd_switch_caps", file: !4262, line: 150, size: 160, elements: !4416)
!4416 = !{!4417, !4418, !4419, !4420, !4421}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "hs_max_dtr", scope: !4415, file: !4262, line: 151, baseType: !7, size: 32)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "uhs_max_dtr", scope: !4415, file: !4262, line: 152, baseType: !7, size: 32, offset: 32)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "sd3_bus_mode", scope: !4415, file: !4262, line: 160, baseType: !7, size: 32, offset: 64)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "sd3_drv_type", scope: !4415, file: !4262, line: 174, baseType: !7, size: 32, offset: 96)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "sd3_curr_limit", scope: !4415, file: !4262, line: 179, baseType: !7, size: 32, offset: 128)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_funcs", scope: !4261, file: !4262, line: 294, baseType: !7, size: 32, offset: 9152)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_funcs_probed", scope: !4261, file: !4262, line: 295, baseType: !730, size: 32, offset: 9184)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "cccr", scope: !4261, file: !4262, line: 296, baseType: !4425, size: 96, offset: 9216)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_cccr", file: !4262, line: 192, size: 96, elements: !4426)
!4426 = !{!4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_vsn", scope: !4425, file: !4262, line: 193, baseType: !7, size: 32)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "sd_vsn", scope: !4425, file: !4262, line: 194, baseType: !7, size: 32, offset: 32)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "multi_block", scope: !4425, file: !4262, line: 195, baseType: !7, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "low_speed", scope: !4425, file: !4262, line: 196, baseType: !7, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "wide_bus", scope: !4425, file: !4262, line: 197, baseType: !7, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "high_power", scope: !4425, file: !4262, line: 198, baseType: !7, size: 1, offset: 67, flags: DIFlagBitField, extraData: i64 64)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "high_speed", scope: !4425, file: !4262, line: 199, baseType: !7, size: 1, offset: 68, flags: DIFlagBitField, extraData: i64 64)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "disable_cd", scope: !4425, file: !4262, line: 200, baseType: !7, size: 1, offset: 69, flags: DIFlagBitField, extraData: i64 64)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "cis", scope: !4261, file: !4262, line: 297, baseType: !4436, size: 96, offset: 9312)
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_cis", file: !4262, line: 203, size: 96, elements: !4437)
!4437 = !{!4438, !4439, !4440, !4441}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4436, file: !4262, line: 204, baseType: !303, size: 16)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4436, file: !4262, line: 205, baseType: !303, size: 16, offset: 16)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4436, file: !4262, line: 206, baseType: !303, size: 16, offset: 32)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "max_dtr", scope: !4436, file: !4262, line: 207, baseType: !7, size: 32, offset: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_func", scope: !4261, file: !4262, line: 298, baseType: !4443, size: 448, offset: 9408)
!4443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4444, size: 448, elements: !4446)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_func", file: !4262, line: 211, flags: DIFlagFwdDecl)
!4446 = !{!4447}
!4447 = !DISubrange(count: 7)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_single_irq", scope: !4261, file: !4262, line: 299, baseType: !4444, size: 64, offset: 9856)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "major_rev", scope: !4261, file: !4262, line: 300, baseType: !1335, size: 8, offset: 9920)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "minor_rev", scope: !4261, file: !4262, line: 301, baseType: !1335, size: 8, offset: 9928)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "num_info", scope: !4261, file: !4262, line: 302, baseType: !7, size: 32, offset: 9952)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4261, file: !4262, line: 303, baseType: !3703, size: 64, offset: 9984)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "tuples", scope: !4261, file: !4262, line: 304, baseType: !4454, size: 64, offset: 10048)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_func_tuple", file: !4262, line: 212, flags: DIFlagFwdDecl)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "sd_bus_speed", scope: !4261, file: !4262, line: 306, baseType: !7, size: 32, offset: 10112)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_avail_type", scope: !4261, file: !4262, line: 307, baseType: !7, size: 32, offset: 10144)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !4261, file: !4262, line: 308, baseType: !7, size: 32, offset: 10176)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !4261, file: !4262, line: 310, baseType: !369, size: 64, offset: 10240)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !4261, file: !4262, line: 311, baseType: !4461, size: 2240, offset: 10304)
!4461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4462, size: 2240, elements: !4446)
!4462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_part", file: !4262, line: 229, size: 320, elements: !4463)
!4463 = !{!4464, !4465, !4466, !4468, !4469}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4462, file: !4262, line: 230, baseType: !404, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "part_cfg", scope: !4462, file: !4262, line: 231, baseType: !7, size: 32, offset: 64)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4462, file: !4262, line: 232, baseType: !4467, size: 160, offset: 96)
!4467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 160, elements: !2181)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "force_ro", scope: !4462, file: !4262, line: 233, baseType: !473, size: 8, offset: 256)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "area_type", scope: !4462, file: !4262, line: 234, baseType: !7, size: 32, offset: 288)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_parts", scope: !4261, file: !4262, line: 312, baseType: !7, size: 32, offset: 12544)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "bouncesz", scope: !4261, file: !4262, line: 314, baseType: !7, size: 32, offset: 12576)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "complete_wq", scope: !4261, file: !4262, line: 315, baseType: !2773, size: 64, offset: 12608)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4180, file: !4173, line: 424, baseType: !1464, size: 128, offset: 7552)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "claimer", scope: !4180, file: !4173, line: 425, baseType: !4475, size: 64, offset: 7680)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_ctx", file: !4173, line: 271, size: 64, elements: !4477)
!4477 = !{!4478}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4476, file: !4173, line: 272, baseType: !1199, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "claim_cnt", scope: !4180, file: !4173, line: 426, baseType: !167, size: 32, offset: 7744)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "default_ctx", scope: !4180, file: !4173, line: 427, baseType: !4476, size: 64, offset: 7808)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !4180, file: !4173, line: 429, baseType: !4482, size: 704, offset: 7872)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1938, line: 115, size: 704, elements: !4483)
!4483 = !{!4484, !4485, !4486, !4487}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4482, file: !1938, line: 116, baseType: !1937, size: 256)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4482, file: !1938, line: 117, baseType: !3543, size: 320, offset: 256)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4482, file: !1938, line: 120, baseType: !2773, size: 64, offset: 576)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4482, file: !1938, line: 121, baseType: !167, size: 32, offset: 640)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "detect_change", scope: !4180, file: !4173, line: 430, baseType: !167, size: 32, offset: 8576)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4180, file: !4173, line: 431, baseType: !4490, size: 128, offset: 8640)
!4490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_slot", file: !4173, line: 243, size: 128, elements: !4491)
!4491 = !{!4492, !4493, !4494}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "cd_irq", scope: !4490, file: !4173, line: 244, baseType: !167, size: 32)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "cd_wake_enabled", scope: !4490, file: !4173, line: 245, baseType: !473, size: 8, offset: 32)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "handler_priv", scope: !4490, file: !4173, line: 246, baseType: !160, size: 64, offset: 64)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "bus_ops", scope: !4180, file: !4173, line: 433, baseType: !4496, size: 64, offset: 8768)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4498)
!4498 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_bus_ops", file: !4173, line: 433, flags: DIFlagFwdDecl)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "bus_refs", scope: !4180, file: !4173, line: 434, baseType: !7, size: 32, offset: 8832)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irqs", scope: !4180, file: !4173, line: 436, baseType: !7, size: 32, offset: 8864)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irq_thread", scope: !4180, file: !4173, line: 437, baseType: !1199, size: 64, offset: 8896)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irq_work", scope: !4180, file: !4173, line: 438, baseType: !4482, size: 704, offset: 8960)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irq_pending", scope: !4180, file: !4173, line: 439, baseType: !473, size: 8, offset: 9664)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_irq_thread_abort", scope: !4180, file: !4173, line: 440, baseType: !730, size: 32, offset: 9696)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "pm_flags", scope: !4180, file: !4173, line: 442, baseType: !4217, size: 32, offset: 9728)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !4180, file: !4173, line: 444, baseType: !4507, size: 64, offset: 9792)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DICompositeType(tag: DW_TAG_structure_type, name: "led_trigger", file: !4173, line: 444, flags: DIFlagFwdDecl)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "supply", scope: !4180, file: !4173, line: 449, baseType: !4510, size: 128, offset: 9856)
!4510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_supply", file: !4173, line: 266, size: 128, elements: !4511)
!4511 = !{!4512, !4515}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "vmmc", scope: !4510, file: !4173, line: 267, baseType: !4513, size: 64)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DICompositeType(tag: DW_TAG_structure_type, name: "regulator", file: !4173, line: 263, flags: DIFlagFwdDecl)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "vqmmc", scope: !4510, file: !4173, line: 268, baseType: !4513, size: 64, offset: 64)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !4180, file: !4173, line: 451, baseType: !369, size: 64, offset: 9984)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "ongoing_mrq", scope: !4180, file: !4173, line: 454, baseType: !4518, size: 64, offset: 10048)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_request", file: !4520, line: 144, size: 896, elements: !4521)
!4520 = !DIFile(filename: "./include/linux/mmc/core.h", directory: "/home/lizy2001/genbc/linux")
!4521 = !{!4522, !4561, !4562, !4563, !4564, !4565, !4566, !4570, !4571, !4572, !4573}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "sbc", scope: !4519, file: !4520, line: 145, baseType: !4523, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_command", file: !4520, line: 26, size: 448, elements: !4525)
!4525 = !{!4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4560}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !4524, file: !4520, line: 27, baseType: !174, size: 32)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4524, file: !4520, line: 28, baseType: !174, size: 32, offset: 32)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !4524, file: !4520, line: 32, baseType: !4280, size: 128, offset: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4524, file: !4520, line: 33, baseType: !7, size: 32, offset: 192)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !4524, file: !4520, line: 92, baseType: !7, size: 32, offset: 224)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4524, file: !4520, line: 93, baseType: !167, size: 32, offset: 256)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "busy_timeout", scope: !4524, file: !4520, line: 109, baseType: !7, size: 32, offset: 288)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4524, file: !4520, line: 110, baseType: !4534, size: 64, offset: 320)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_data", file: !4520, line: 114, size: 576, elements: !4536)
!4536 = !{!4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4559}
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_ns", scope: !4535, file: !4520, line: 115, baseType: !7, size: 32)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_clks", scope: !4535, file: !4520, line: 116, baseType: !7, size: 32, offset: 32)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "blksz", scope: !4535, file: !4520, line: 117, baseType: !7, size: 32, offset: 64)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4535, file: !4520, line: 118, baseType: !7, size: 32, offset: 96)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "blk_addr", scope: !4535, file: !4520, line: 119, baseType: !7, size: 32, offset: 128)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4535, file: !4520, line: 120, baseType: !167, size: 32, offset: 160)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4535, file: !4520, line: 121, baseType: !7, size: 32, offset: 192)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_xfered", scope: !4535, file: !4520, line: 132, baseType: !7, size: 32, offset: 224)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4535, file: !4520, line: 134, baseType: !4523, size: 64, offset: 256)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "mrq", scope: !4535, file: !4520, line: 135, baseType: !4518, size: 64, offset: 320)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "sg_len", scope: !4535, file: !4520, line: 137, baseType: !7, size: 32, offset: 384)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "sg_count", scope: !4535, file: !4520, line: 138, baseType: !167, size: 32, offset: 416)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !4535, file: !4520, line: 139, baseType: !4550, size: 64, offset: 448)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4552, line: 11, size: 256, elements: !4553)
!4552 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!4553 = !{!4554, !4555, !4556, !4557, !4558}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4551, file: !4552, line: 12, baseType: !311, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4551, file: !4552, line: 13, baseType: !7, size: 32, offset: 64)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4551, file: !4552, line: 14, baseType: !7, size: 32, offset: 96)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4551, file: !4552, line: 15, baseType: !903, size: 64, offset: 128)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4551, file: !4552, line: 17, baseType: !7, size: 32, offset: 192)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "host_cookie", scope: !4535, file: !4520, line: 140, baseType: !1427, size: 32, offset: 512)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "mrq", scope: !4524, file: !4520, line: 111, baseType: !4518, size: 64, offset: 384)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !4519, file: !4520, line: 146, baseType: !4523, size: 64, offset: 64)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4519, file: !4520, line: 147, baseType: !4534, size: 64, offset: 128)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4519, file: !4520, line: 148, baseType: !4523, size: 64, offset: 192)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4519, file: !4520, line: 150, baseType: !1485, size: 192, offset: 256)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_completion", scope: !4519, file: !4520, line: 151, baseType: !1485, size: 192, offset: 448)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4519, file: !4520, line: 152, baseType: !4567, size: 64, offset: 640)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{null, !4518}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_notifier", scope: !4519, file: !4520, line: 158, baseType: !4567, size: 64, offset: 704)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !4519, file: !4520, line: 159, baseType: !4179, size: 64, offset: 768)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "cap_cmd_during_tfr", scope: !4519, file: !4520, line: 162, baseType: !473, size: 8, offset: 832)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !4519, file: !4520, line: 164, baseType: !167, size: 32, offset: 864)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "actual_clock", scope: !4180, file: !4173, line: 460, baseType: !7, size: 32, offset: 10112)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "slotno", scope: !4180, file: !4173, line: 462, baseType: !7, size: 32, offset: 10144)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "dsr_req", scope: !4180, file: !4173, line: 464, baseType: !167, size: 32, offset: 10176)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "dsr", scope: !4180, file: !4173, line: 465, baseType: !174, size: 32, offset: 10208)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_ops", scope: !4180, file: !4173, line: 468, baseType: !4579, size: 64, offset: 10240)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4581)
!4581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmc_cqe_ops", file: !4173, line: 178, size: 576, elements: !4582)
!4582 = !{!4583, !4587, !4591, !4595, !4599, !4600, !4604, !4608, !4609}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_enable", scope: !4581, file: !4173, line: 180, baseType: !4584, size: 64)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DISubroutineType(types: !4586)
!4586 = !{!167, !4179, !4260}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_disable", scope: !4581, file: !4173, line: 182, baseType: !4588, size: 64, offset: 64)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{null, !4179}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_request", scope: !4581, file: !4173, line: 187, baseType: !4592, size: 64, offset: 128)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!167, !4179, !4518}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_post_req", scope: !4581, file: !4173, line: 189, baseType: !4596, size: 64, offset: 192)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{null, !4179, !4518}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_off", scope: !4581, file: !4173, line: 195, baseType: !4588, size: 64, offset: 256)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_wait_for_idle", scope: !4581, file: !4173, line: 200, baseType: !4601, size: 64, offset: 320)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!167, !4179}
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_timeout", scope: !4581, file: !4173, line: 206, baseType: !4605, size: 64, offset: 384)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DISubroutineType(types: !4607)
!4607 = !{!473, !4179, !4518, !874}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_recovery_start", scope: !4581, file: !4173, line: 212, baseType: !4588, size: 64, offset: 448)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_recovery_finish", scope: !4581, file: !4173, line: 219, baseType: !4588, size: 64, offset: 512)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_private", scope: !4180, file: !4173, line: 469, baseType: !160, size: 64, offset: 10304)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_qdepth", scope: !4180, file: !4173, line: 470, baseType: !167, size: 32, offset: 10368)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_enabled", scope: !4180, file: !4173, line: 471, baseType: !473, size: 8, offset: 10400)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_on", scope: !4180, file: !4173, line: 472, baseType: !473, size: 8, offset: 10408)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "hsq_enabled", scope: !4180, file: !4173, line: 475, baseType: !473, size: 8, offset: 10416)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4180, file: !4173, line: 477, baseType: !2310, align: 512, offset: 10752)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "pre_req", scope: !4172, file: !4173, line: 93, baseType: !4596, size: 64, offset: 64)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4172, file: !4173, line: 94, baseType: !4596, size: 64, offset: 128)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "request_atomic", scope: !4172, file: !4173, line: 96, baseType: !4592, size: 64, offset: 192)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "set_ios", scope: !4172, file: !4173, line: 113, baseType: !4620, size: 64, offset: 256)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{null, !4179, !4623}
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "get_ro", scope: !4172, file: !4173, line: 122, baseType: !4601, size: 64, offset: 320)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "get_cd", scope: !4172, file: !4173, line: 131, baseType: !4601, size: 64, offset: 384)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "enable_sdio_irq", scope: !4172, file: !4173, line: 133, baseType: !4627, size: 64, offset: 448)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{null, !4179, !167}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "ack_sdio_irq", scope: !4172, file: !4173, line: 135, baseType: !4588, size: 64, offset: 512)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "init_card", scope: !4172, file: !4173, line: 138, baseType: !4632, size: 64, offset: 576)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{null, !4179, !4260}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "start_signal_voltage_switch", scope: !4172, file: !4173, line: 140, baseType: !4636, size: 64, offset: 640)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!167, !4179, !4623}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "card_busy", scope: !4172, file: !4173, line: 143, baseType: !4601, size: 64, offset: 704)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "execute_tuning", scope: !4172, file: !4173, line: 146, baseType: !4641, size: 64, offset: 768)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!167, !4179, !174}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_hs400_tuning", scope: !4172, file: !4173, line: 149, baseType: !4636, size: 64, offset: 832)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "hs400_prepare_ddr", scope: !4172, file: !4173, line: 152, baseType: !4601, size: 64, offset: 896)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "hs400_downgrade", scope: !4172, file: !4173, line: 155, baseType: !4588, size: 64, offset: 960)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "hs400_complete", scope: !4172, file: !4173, line: 158, baseType: !4588, size: 64, offset: 1024)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "hs400_enhanced_strobe", scope: !4172, file: !4173, line: 161, baseType: !4620, size: 64, offset: 1088)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "select_drive_strength", scope: !4172, file: !4173, line: 163, baseType: !4650, size: 64, offset: 1152)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{!167, !4260, !7, !167, !167, !688}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "hw_reset", scope: !4172, file: !4173, line: 167, baseType: !4588, size: 64, offset: 1216)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "card_event", scope: !4172, file: !4173, line: 168, baseType: !4588, size: 64, offset: 1280)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "multi_io_quirk", scope: !4172, file: !4173, line: 174, baseType: !4656, size: 64, offset: 1344)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = !DISubroutineType(types: !4658)
!4658 = !{!167, !4260, !7, !167}
!4659 = !DIGlobalVariableExpression(var: !4660, expr: !DIExpression())
!4660 = distinct !DIGlobalVariable(name: "ushc_id_table", scope: !2, file: !3, line: 550, type: !4661, isLocal: true, isDefinition: true)
!4661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4119, size: 512, elements: !188)
!4662 = !{!"rsp"}
!4663 = !{i32 7, !"Dwarf Version", i32 4}
!4664 = !{i32 2, !"Debug Info Version", i32 3}
!4665 = !{i32 1, !"wchar_size", i32 2}
!4666 = !{i32 1, !"Code Model", i32 2}
!4667 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4668 = distinct !DISubprogram(name: "ushc_driver_init", scope: !3, file: !3, line: 564, type: !4669, scopeLine: 564, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!4669 = !DISubroutineType(types: !4670)
!4670 = !{!167}
!4671 = !DILocation(line: 564, column: 1, scope: !4668)
!4672 = distinct !DISubprogram(name: "ushc_driver_exit", scope: !3, file: !3, line: 564, type: !1858, scopeLine: 564, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!4673 = !DILocation(line: 564, column: 1, scope: !4672)
!4674 = distinct !DISubprogram(name: "ushc_probe", scope: !3, file: !3, line: 418, type: !4115, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!4675 = !DILocalVariable(name: "lock", arg: 1, scope: !4676, file: !4677, line: 327, type: !1047)
!4676 = distinct !DISubprogram(name: "spinlock_check", scope: !4677, file: !4677, line: 327, type: !4678, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!4677 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!4680, !1047}
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!4681 = !DILocation(line: 327, column: 67, scope: !4676, inlinedAt: !4682)
!4682 = distinct !DILocation(line: 437, column: 2, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 437, column: 2)
!4684 = !DILocalVariable(name: "intf", arg: 1, scope: !4674, file: !3, line: 418, type: !3972)
!4685 = !DILocation(line: 418, column: 45, scope: !4674)
!4686 = !DILocalVariable(name: "id", arg: 2, scope: !4674, file: !3, line: 418, type: !4117)
!4687 = !DILocation(line: 418, column: 79, scope: !4674)
!4688 = !DILocalVariable(name: "usb_dev", scope: !4674, file: !3, line: 420, type: !163)
!4689 = !DILocation(line: 420, column: 21, scope: !4674)
!4690 = !DILocation(line: 420, column: 51, scope: !4674)
!4691 = !DILocation(line: 420, column: 31, scope: !4674)
!4692 = !DILocalVariable(name: "mmc", scope: !4674, file: !3, line: 421, type: !4179)
!4693 = !DILocation(line: 421, column: 19, scope: !4674)
!4694 = !DILocalVariable(name: "ushc", scope: !4674, file: !3, line: 422, type: !4695)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ushc_data", file: !3, line: 89, size: 832, elements: !4697)
!4697 = !{!4698, !4699, !4700, !4753, !4760, !4761, !4769, !4770, !4771, !4778, !4779, !4780, !4781, !4782, !4783, !4784}
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !4696, file: !3, line: 90, baseType: !163, size: 64)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "mmc", scope: !4696, file: !3, line: 91, baseType: !4179, size: 64, offset: 64)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "int_urb", scope: !4696, file: !3, line: 93, baseType: !4701, size: 64, offset: 128)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !6, line: 1561, size: 1472, elements: !4703)
!4703 = !{!4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4745}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4702, file: !6, line: 1563, baseType: !3343, size: 32)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !4702, file: !6, line: 1564, baseType: !167, size: 32, offset: 32)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4702, file: !6, line: 1565, baseType: !160, size: 64, offset: 64)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4702, file: !6, line: 1566, baseType: !730, size: 32, offset: 128)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !4702, file: !6, line: 1567, baseType: !730, size: 32, offset: 160)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4702, file: !6, line: 1570, baseType: !207, size: 128, offset: 192)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !4702, file: !6, line: 1572, baseType: !207, size: 128, offset: 320)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !4702, file: !6, line: 1573, baseType: !4712, size: 64, offset: 448)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !6, line: 1360, size: 320, elements: !4714)
!4714 = !{!4715, !4716, !4717, !4718, !4719}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4713, file: !6, line: 1361, baseType: !207, size: 128)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4713, file: !6, line: 1362, baseType: !1464, size: 128, offset: 128)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4713, file: !6, line: 1363, baseType: !220, offset: 256)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !4713, file: !6, line: 1364, baseType: !730, size: 32, offset: 256)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !4713, file: !6, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4702, file: !6, line: 1574, baseType: !163, size: 64, offset: 512)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !4702, file: !6, line: 1575, baseType: !3994, size: 64, offset: 576)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4702, file: !6, line: 1576, baseType: !7, size: 32, offset: 640)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4702, file: !6, line: 1577, baseType: !7, size: 32, offset: 672)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4702, file: !6, line: 1578, baseType: !167, size: 32, offset: 704)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !4702, file: !6, line: 1579, baseType: !7, size: 32, offset: 736)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !4702, file: !6, line: 1580, baseType: !160, size: 64, offset: 768)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !4702, file: !6, line: 1581, baseType: !903, size: 64, offset: 832)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !4702, file: !6, line: 1582, baseType: !4550, size: 64, offset: 896)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !4702, file: !6, line: 1583, baseType: !167, size: 32, offset: 960)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !4702, file: !6, line: 1584, baseType: !167, size: 32, offset: 992)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !4702, file: !6, line: 1585, baseType: !174, size: 32, offset: 1024)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4702, file: !6, line: 1586, baseType: !174, size: 32, offset: 1056)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !4702, file: !6, line: 1587, baseType: !3858, size: 64, offset: 1088)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !4702, file: !6, line: 1588, baseType: !903, size: 64, offset: 1152)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !4702, file: !6, line: 1589, baseType: !167, size: 32, offset: 1216)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !4702, file: !6, line: 1590, baseType: !167, size: 32, offset: 1248)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4702, file: !6, line: 1591, baseType: !167, size: 32, offset: 1280)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !4702, file: !6, line: 1593, baseType: !167, size: 32, offset: 1312)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4702, file: !6, line: 1594, baseType: !160, size: 64, offset: 1344)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4702, file: !6, line: 1595, baseType: !4741, size: 64, offset: 1408)
!4741 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !6, line: 1376, baseType: !4742)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{null, !4701}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !4702, file: !6, line: 1596, baseType: !4746, offset: 1472)
!4746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4747, elements: !2311)
!4747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !6, line: 1351, size: 128, elements: !4748)
!4748 = !{!4749, !4750, !4751, !4752}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4747, file: !6, line: 1352, baseType: !7, size: 32)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4747, file: !6, line: 1353, baseType: !7, size: 32, offset: 32)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4747, file: !6, line: 1354, baseType: !7, size: 32, offset: 64)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4747, file: !6, line: 1355, baseType: !167, size: 32, offset: 96)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "int_data", scope: !4696, file: !3, line: 94, baseType: !4754, size: 64, offset: 192)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ushc_int_data", file: !3, line: 80, size: 32, elements: !4756)
!4756 = !{!4757, !4758}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4755, file: !3, line: 81, baseType: !1335, size: 8)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4755, file: !3, line: 82, baseType: !4759, size: 24, offset: 8)
!4759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1335, size: 24, elements: !262)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "cbw_urb", scope: !4696, file: !3, line: 96, baseType: !4701, size: 64, offset: 256)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "cbw", scope: !4696, file: !3, line: 97, baseType: !4762, size: 64, offset: 320)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ushc_cbw", file: !3, line: 63, size: 64, elements: !4764)
!4764 = !{!4765, !4766, !4767, !4768}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !4763, file: !3, line: 64, baseType: !1336, size: 8)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_idx", scope: !4763, file: !3, line: 65, baseType: !1336, size: 8, offset: 8)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !4763, file: !3, line: 66, baseType: !3832, size: 16, offset: 16)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4763, file: !3, line: 67, baseType: !3851, size: 32, offset: 32)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "data_urb", scope: !4696, file: !3, line: 99, baseType: !4701, size: 64, offset: 384)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "csw_urb", scope: !4696, file: !3, line: 101, baseType: !4701, size: 64, offset: 448)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "csw", scope: !4696, file: !3, line: 102, baseType: !4772, size: 64, offset: 512)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ushc_csw", file: !3, line: 72, size: 48, elements: !4774)
!4774 = !{!4775, !4776, !4777}
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !4773, file: !3, line: 73, baseType: !1336, size: 8)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4773, file: !3, line: 74, baseType: !1336, size: 8, offset: 8)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !4773, file: !3, line: 75, baseType: !3851, size: 32, offset: 16)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4696, file: !3, line: 104, baseType: !220, offset: 576)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "current_req", scope: !4696, file: !3, line: 105, baseType: !4518, size: 64, offset: 576)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !4696, file: !3, line: 106, baseType: !174, size: 32, offset: 640)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "host_ctrl", scope: !4696, file: !3, line: 107, baseType: !842, size: 16, offset: 672)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4696, file: !3, line: 108, baseType: !311, size: 64, offset: 704)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4696, file: !3, line: 109, baseType: !1335, size: 8, offset: 768)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "clock_freq", scope: !4696, file: !3, line: 110, baseType: !167, size: 32, offset: 800)
!4785 = !DILocation(line: 422, column: 20, scope: !4674)
!4786 = !DILocalVariable(name: "ret", scope: !4674, file: !3, line: 423, type: !167)
!4787 = !DILocation(line: 423, column: 6, scope: !4674)
!4788 = !DILocation(line: 425, column: 6, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 425, column: 6)
!4790 = !DILocation(line: 425, column: 12, scope: !4789)
!4791 = !DILocation(line: 425, column: 28, scope: !4789)
!4792 = !DILocation(line: 425, column: 33, scope: !4789)
!4793 = !DILocation(line: 425, column: 47, scope: !4789)
!4794 = !DILocation(line: 425, column: 6, scope: !4674)
!4795 = !DILocation(line: 426, column: 3, scope: !4789)
!4796 = !DILocation(line: 428, column: 50, scope: !4674)
!4797 = !DILocation(line: 428, column: 56, scope: !4674)
!4798 = !DILocation(line: 428, column: 8, scope: !4674)
!4799 = !DILocation(line: 428, column: 6, scope: !4674)
!4800 = !DILocation(line: 429, column: 6, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 429, column: 6)
!4802 = !DILocation(line: 429, column: 10, scope: !4801)
!4803 = !DILocation(line: 429, column: 6, scope: !4674)
!4804 = !DILocation(line: 430, column: 3, scope: !4801)
!4805 = !DILocation(line: 431, column: 18, scope: !4674)
!4806 = !DILocation(line: 431, column: 9, scope: !4674)
!4807 = !DILocation(line: 431, column: 7, scope: !4674)
!4808 = !DILocation(line: 432, column: 19, scope: !4674)
!4809 = !DILocation(line: 432, column: 25, scope: !4674)
!4810 = !DILocation(line: 432, column: 2, scope: !4674)
!4811 = !DILocation(line: 434, column: 18, scope: !4674)
!4812 = !DILocation(line: 434, column: 2, scope: !4674)
!4813 = !DILocation(line: 434, column: 8, scope: !4674)
!4814 = !DILocation(line: 434, column: 16, scope: !4674)
!4815 = !DILocation(line: 435, column: 14, scope: !4674)
!4816 = !DILocation(line: 435, column: 2, scope: !4674)
!4817 = !DILocation(line: 435, column: 8, scope: !4674)
!4818 = !DILocation(line: 435, column: 12, scope: !4674)
!4819 = !DILocation(line: 437, column: 2, scope: !4674)
!4820 = !DILocation(line: 437, column: 2, scope: !4683)
!4821 = !DILocation(line: 329, column: 10, scope: !4676, inlinedAt: !4682)
!4822 = !DILocation(line: 329, column: 16, scope: !4676, inlinedAt: !4682)
!4823 = !DILocation(line: 439, column: 22, scope: !4674)
!4824 = !DILocation(line: 439, column: 8, scope: !4674)
!4825 = !DILocation(line: 439, column: 6, scope: !4674)
!4826 = !DILocation(line: 440, column: 6, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 440, column: 6)
!4828 = !DILocation(line: 440, column: 10, scope: !4827)
!4829 = !DILocation(line: 440, column: 6, scope: !4674)
!4830 = !DILocation(line: 441, column: 3, scope: !4827)
!4831 = !DILocation(line: 444, column: 25, scope: !4674)
!4832 = !DILocation(line: 444, column: 8, scope: !4674)
!4833 = !DILocation(line: 444, column: 6, scope: !4674)
!4834 = !DILocation(line: 445, column: 6, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 445, column: 6)
!4836 = !DILocation(line: 445, column: 10, scope: !4835)
!4837 = !DILocation(line: 445, column: 6, scope: !4674)
!4838 = !DILocation(line: 446, column: 3, scope: !4835)
!4839 = !DILocation(line: 448, column: 2, scope: !4674)
!4840 = !DILocation(line: 448, column: 7, scope: !4674)
!4841 = !DILocation(line: 448, column: 11, scope: !4674)
!4842 = !DILocation(line: 450, column: 2, scope: !4674)
!4843 = !DILocation(line: 450, column: 7, scope: !4674)
!4844 = !DILocation(line: 450, column: 13, scope: !4674)
!4845 = !DILocation(line: 451, column: 2, scope: !4674)
!4846 = !DILocation(line: 451, column: 7, scope: !4674)
!4847 = !DILocation(line: 451, column: 13, scope: !4674)
!4848 = !DILocation(line: 452, column: 2, scope: !4674)
!4849 = !DILocation(line: 452, column: 7, scope: !4674)
!4850 = !DILocation(line: 452, column: 17, scope: !4674)
!4851 = !DILocation(line: 453, column: 2, scope: !4674)
!4852 = !DILocation(line: 453, column: 7, scope: !4674)
!4853 = !DILocation(line: 453, column: 12, scope: !4674)
!4854 = !DILocation(line: 454, column: 16, scope: !4674)
!4855 = !DILocation(line: 454, column: 22, scope: !4674)
!4856 = !DILocation(line: 454, column: 27, scope: !4674)
!4857 = !DILocation(line: 454, column: 15, scope: !4674)
!4858 = !DILocation(line: 454, column: 2, scope: !4674)
!4859 = !DILocation(line: 454, column: 7, scope: !4674)
!4860 = !DILocation(line: 454, column: 12, scope: !4674)
!4861 = !DILocation(line: 456, column: 2, scope: !4674)
!4862 = !DILocation(line: 456, column: 7, scope: !4674)
!4863 = !DILocation(line: 456, column: 21, scope: !4674)
!4864 = !DILocation(line: 457, column: 2, scope: !4674)
!4865 = !DILocation(line: 457, column: 7, scope: !4674)
!4866 = !DILocation(line: 457, column: 21, scope: !4674)
!4867 = !DILocation(line: 458, column: 2, scope: !4674)
!4868 = !DILocation(line: 458, column: 7, scope: !4674)
!4869 = !DILocation(line: 458, column: 21, scope: !4674)
!4870 = !DILocation(line: 459, column: 2, scope: !4674)
!4871 = !DILocation(line: 459, column: 7, scope: !4674)
!4872 = !DILocation(line: 459, column: 21, scope: !4674)
!4873 = !DILocation(line: 460, column: 2, scope: !4674)
!4874 = !DILocation(line: 460, column: 7, scope: !4674)
!4875 = !DILocation(line: 460, column: 21, scope: !4674)
!4876 = !DILocation(line: 462, column: 18, scope: !4674)
!4877 = !DILocation(line: 462, column: 2, scope: !4674)
!4878 = !DILocation(line: 462, column: 8, scope: !4674)
!4879 = !DILocation(line: 462, column: 16, scope: !4674)
!4880 = !DILocation(line: 463, column: 6, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 463, column: 6)
!4882 = !DILocation(line: 463, column: 12, scope: !4881)
!4883 = !DILocation(line: 463, column: 20, scope: !4881)
!4884 = !DILocation(line: 463, column: 6, scope: !4674)
!4885 = !DILocation(line: 464, column: 7, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 463, column: 29)
!4887 = !DILocation(line: 465, column: 3, scope: !4886)
!4888 = !DILocation(line: 467, column: 19, scope: !4674)
!4889 = !DILocation(line: 467, column: 2, scope: !4674)
!4890 = !DILocation(line: 467, column: 8, scope: !4674)
!4891 = !DILocation(line: 467, column: 17, scope: !4674)
!4892 = !DILocation(line: 468, column: 6, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 468, column: 6)
!4894 = !DILocation(line: 468, column: 12, scope: !4893)
!4895 = !DILocation(line: 468, column: 21, scope: !4893)
!4896 = !DILocation(line: 468, column: 6, scope: !4674)
!4897 = !DILocation(line: 469, column: 7, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4893, file: !3, line: 468, column: 30)
!4899 = !DILocation(line: 470, column: 3, scope: !4898)
!4900 = !DILocation(line: 472, column: 19, scope: !4674)
!4901 = !DILocation(line: 472, column: 25, scope: !4674)
!4902 = !DILocation(line: 472, column: 34, scope: !4674)
!4903 = !DILocation(line: 472, column: 40, scope: !4674)
!4904 = !DILocation(line: 473, column: 5, scope: !4674)
!4905 = !DILocation(line: 475, column: 5, scope: !4674)
!4906 = !DILocation(line: 475, column: 11, scope: !4674)
!4907 = !DILocation(line: 476, column: 19, scope: !4674)
!4908 = !DILocation(line: 477, column: 5, scope: !4674)
!4909 = !DILocation(line: 477, column: 11, scope: !4674)
!4910 = !DILocation(line: 477, column: 27, scope: !4674)
!4911 = !DILocation(line: 477, column: 39, scope: !4674)
!4912 = !DILocation(line: 477, column: 44, scope: !4674)
!4913 = !DILocation(line: 472, column: 2, scope: !4674)
!4914 = !DILocation(line: 479, column: 18, scope: !4674)
!4915 = !DILocation(line: 479, column: 2, scope: !4674)
!4916 = !DILocation(line: 479, column: 8, scope: !4674)
!4917 = !DILocation(line: 479, column: 16, scope: !4674)
!4918 = !DILocation(line: 480, column: 6, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 480, column: 6)
!4920 = !DILocation(line: 480, column: 12, scope: !4919)
!4921 = !DILocation(line: 480, column: 20, scope: !4919)
!4922 = !DILocation(line: 480, column: 6, scope: !4674)
!4923 = !DILocation(line: 481, column: 7, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4919, file: !3, line: 480, column: 29)
!4925 = !DILocation(line: 482, column: 3, scope: !4924)
!4926 = !DILocation(line: 484, column: 14, scope: !4674)
!4927 = !DILocation(line: 484, column: 2, scope: !4674)
!4928 = !DILocation(line: 484, column: 8, scope: !4674)
!4929 = !DILocation(line: 484, column: 12, scope: !4674)
!4930 = !DILocation(line: 485, column: 6, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 485, column: 6)
!4932 = !DILocation(line: 485, column: 12, scope: !4931)
!4933 = !DILocation(line: 485, column: 16, scope: !4931)
!4934 = !DILocation(line: 485, column: 6, scope: !4674)
!4935 = !DILocation(line: 486, column: 7, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4931, file: !3, line: 485, column: 25)
!4937 = !DILocation(line: 487, column: 3, scope: !4936)
!4938 = !DILocation(line: 489, column: 2, scope: !4674)
!4939 = !DILocation(line: 489, column: 8, scope: !4674)
!4940 = !DILocation(line: 489, column: 13, scope: !4674)
!4941 = !DILocation(line: 489, column: 23, scope: !4674)
!4942 = !DILocation(line: 491, column: 20, scope: !4674)
!4943 = !DILocation(line: 491, column: 26, scope: !4674)
!4944 = !DILocation(line: 491, column: 35, scope: !4674)
!4945 = !DILocation(line: 491, column: 41, scope: !4674)
!4946 = !DILocation(line: 491, column: 50, scope: !4674)
!4947 = !DILocation(line: 492, column: 6, scope: !4674)
!4948 = !DILocation(line: 492, column: 12, scope: !4674)
!4949 = !DILocation(line: 493, column: 20, scope: !4674)
!4950 = !DILocation(line: 491, column: 2, scope: !4674)
!4951 = !DILocation(line: 495, column: 19, scope: !4674)
!4952 = !DILocation(line: 495, column: 2, scope: !4674)
!4953 = !DILocation(line: 495, column: 8, scope: !4674)
!4954 = !DILocation(line: 495, column: 17, scope: !4674)
!4955 = !DILocation(line: 496, column: 6, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 496, column: 6)
!4957 = !DILocation(line: 496, column: 12, scope: !4956)
!4958 = !DILocation(line: 496, column: 21, scope: !4956)
!4959 = !DILocation(line: 496, column: 6, scope: !4674)
!4960 = !DILocation(line: 497, column: 7, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 496, column: 30)
!4962 = !DILocation(line: 498, column: 3, scope: !4961)
!4963 = !DILocation(line: 501, column: 18, scope: !4674)
!4964 = !DILocation(line: 501, column: 2, scope: !4674)
!4965 = !DILocation(line: 501, column: 8, scope: !4674)
!4966 = !DILocation(line: 501, column: 16, scope: !4674)
!4967 = !DILocation(line: 502, column: 6, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 502, column: 6)
!4969 = !DILocation(line: 502, column: 12, scope: !4968)
!4970 = !DILocation(line: 502, column: 20, scope: !4968)
!4971 = !DILocation(line: 502, column: 6, scope: !4674)
!4972 = !DILocation(line: 503, column: 7, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4968, file: !3, line: 502, column: 29)
!4974 = !DILocation(line: 504, column: 3, scope: !4973)
!4975 = !DILocation(line: 506, column: 14, scope: !4674)
!4976 = !DILocation(line: 506, column: 2, scope: !4674)
!4977 = !DILocation(line: 506, column: 8, scope: !4674)
!4978 = !DILocation(line: 506, column: 12, scope: !4674)
!4979 = !DILocation(line: 507, column: 6, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 507, column: 6)
!4981 = !DILocation(line: 507, column: 12, scope: !4980)
!4982 = !DILocation(line: 507, column: 16, scope: !4980)
!4983 = !DILocation(line: 507, column: 6, scope: !4674)
!4984 = !DILocation(line: 508, column: 7, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4980, file: !3, line: 507, column: 25)
!4986 = !DILocation(line: 509, column: 3, scope: !4985)
!4987 = !DILocation(line: 511, column: 20, scope: !4674)
!4988 = !DILocation(line: 511, column: 26, scope: !4674)
!4989 = !DILocation(line: 511, column: 35, scope: !4674)
!4990 = !DILocation(line: 511, column: 41, scope: !4674)
!4991 = !DILocation(line: 511, column: 50, scope: !4674)
!4992 = !DILocation(line: 512, column: 6, scope: !4674)
!4993 = !DILocation(line: 512, column: 12, scope: !4674)
!4994 = !DILocation(line: 513, column: 20, scope: !4674)
!4995 = !DILocation(line: 511, column: 2, scope: !4674)
!4996 = !DILocation(line: 515, column: 21, scope: !4674)
!4997 = !DILocation(line: 515, column: 27, scope: !4674)
!4998 = !DILocation(line: 515, column: 8, scope: !4674)
!4999 = !DILocation(line: 515, column: 6, scope: !4674)
!5000 = !DILocation(line: 516, column: 6, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 516, column: 6)
!5002 = !DILocation(line: 516, column: 6, scope: !4674)
!5003 = !DILocation(line: 517, column: 3, scope: !5001)
!5004 = !DILocation(line: 519, column: 23, scope: !4674)
!5005 = !DILocation(line: 519, column: 29, scope: !4674)
!5006 = !DILocation(line: 519, column: 8, scope: !4674)
!5007 = !DILocation(line: 519, column: 6, scope: !4674)
!5008 = !DILocation(line: 520, column: 6, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 520, column: 6)
!5010 = !DILocation(line: 520, column: 10, scope: !5009)
!5011 = !DILocation(line: 520, column: 6, scope: !4674)
!5012 = !DILocation(line: 521, column: 19, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5009, file: !3, line: 520, column: 15)
!5014 = !DILocation(line: 521, column: 25, scope: !5013)
!5015 = !DILocation(line: 521, column: 3, scope: !5013)
!5016 = !DILocation(line: 522, column: 3, scope: !5013)
!5017 = !DILocation(line: 525, column: 2, scope: !4674)
!5018 = !DILabel(scope: !4674, name: "err", file: !3, line: 527)
!5019 = !DILocation(line: 527, column: 1, scope: !4674)
!5020 = !DILocation(line: 528, column: 16, scope: !4674)
!5021 = !DILocation(line: 528, column: 2, scope: !4674)
!5022 = !DILocation(line: 529, column: 9, scope: !4674)
!5023 = !DILocation(line: 529, column: 2, scope: !4674)
!5024 = !DILocation(line: 530, column: 1, scope: !4674)
!5025 = distinct !DISubprogram(name: "ushc_disconnect", scope: !3, file: !3, line: 532, type: !4136, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!5026 = !DILocalVariable(name: "lock", arg: 1, scope: !5027, file: !4677, line: 402, type: !1047)
!5027 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !4677, file: !4677, line: 402, type: !5028, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!5028 = !DISubroutineType(types: !5029)
!5029 = !{null, !1047}
!5030 = !DILocation(line: 402, column: 57, scope: !5027, inlinedAt: !5031)
!5031 = distinct !DILocation(line: 538, column: 2, scope: !5025)
!5032 = !DILocalVariable(name: "lock", arg: 1, scope: !5033, file: !4677, line: 377, type: !1047)
!5033 = distinct !DISubprogram(name: "spin_lock_irq", scope: !4677, file: !4677, line: 377, type: !5028, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!5034 = !DILocation(line: 377, column: 55, scope: !5033, inlinedAt: !5035)
!5035 = distinct !DILocation(line: 536, column: 2, scope: !5025)
!5036 = !DILocalVariable(name: "intf", arg: 1, scope: !5025, file: !3, line: 532, type: !3972)
!5037 = !DILocation(line: 532, column: 51, scope: !5025)
!5038 = !DILocalVariable(name: "ushc", scope: !5025, file: !3, line: 534, type: !4695)
!5039 = !DILocation(line: 534, column: 20, scope: !5025)
!5040 = !DILocation(line: 534, column: 44, scope: !5025)
!5041 = !DILocation(line: 534, column: 27, scope: !5025)
!5042 = !DILocation(line: 536, column: 17, scope: !5025)
!5043 = !DILocation(line: 536, column: 23, scope: !5025)
!5044 = !DILocation(line: 379, column: 2, scope: !5045, inlinedAt: !5035)
!5045 = distinct !DILexicalBlock(scope: !5046, file: !4677, line: 379, column: 2)
!5046 = distinct !DILexicalBlock(scope: !5033, file: !4677, line: 379, column: 2)
!5047 = !DILocation(line: 379, column: 2, scope: !5048, inlinedAt: !5035)
!5048 = distinct !DILexicalBlock(scope: !5046, file: !4677, line: 379, column: 2)
!5049 = !{i32 -2145467097}
!5050 = !DILocation(line: 379, column: 2, scope: !5051, inlinedAt: !5035)
!5051 = distinct !DILexicalBlock(scope: !5048, file: !4677, line: 379, column: 2)
!5052 = !DILocation(line: 537, column: 25, scope: !5025)
!5053 = !DILocation(line: 537, column: 31, scope: !5025)
!5054 = !DILocation(line: 537, column: 2, scope: !5025)
!5055 = !DILocation(line: 538, column: 19, scope: !5025)
!5056 = !DILocation(line: 538, column: 25, scope: !5025)
!5057 = !DILocation(line: 404, column: 2, scope: !5058, inlinedAt: !5031)
!5058 = distinct !DILexicalBlock(scope: !5059, file: !4677, line: 404, column: 2)
!5059 = distinct !DILexicalBlock(scope: !5027, file: !4677, line: 404, column: 2)
!5060 = !DILocation(line: 404, column: 2, scope: !5061, inlinedAt: !5031)
!5061 = distinct !DILexicalBlock(scope: !5059, file: !4677, line: 404, column: 2)
!5062 = !{i32 -2145465349}
!5063 = !DILocation(line: 404, column: 2, scope: !5064, inlinedAt: !5031)
!5064 = distinct !DILexicalBlock(scope: !5061, file: !4677, line: 404, column: 2)
!5065 = !DILocation(line: 540, column: 15, scope: !5025)
!5066 = !DILocation(line: 540, column: 21, scope: !5025)
!5067 = !DILocation(line: 540, column: 2, scope: !5025)
!5068 = !DILocation(line: 541, column: 15, scope: !5025)
!5069 = !DILocation(line: 541, column: 21, scope: !5025)
!5070 = !DILocation(line: 541, column: 2, scope: !5025)
!5071 = !DILocation(line: 542, column: 15, scope: !5025)
!5072 = !DILocation(line: 542, column: 21, scope: !5025)
!5073 = !DILocation(line: 542, column: 2, scope: !5025)
!5074 = !DILocation(line: 543, column: 15, scope: !5025)
!5075 = !DILocation(line: 543, column: 21, scope: !5025)
!5076 = !DILocation(line: 543, column: 2, scope: !5025)
!5077 = !DILocation(line: 545, column: 18, scope: !5025)
!5078 = !DILocation(line: 545, column: 24, scope: !5025)
!5079 = !DILocation(line: 545, column: 2, scope: !5025)
!5080 = !DILocation(line: 547, column: 16, scope: !5025)
!5081 = !DILocation(line: 547, column: 2, scope: !5025)
!5082 = !DILocation(line: 548, column: 1, scope: !5025)
!5083 = distinct !DISubprogram(name: "interface_to_usbdev", scope: !6, file: !6, line: 715, type: !5084, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!5084 = !DISubroutineType(types: !5085)
!5085 = !{!163, !3972}
!5086 = !DILocalVariable(name: "intf", arg: 1, scope: !5083, file: !6, line: 715, type: !3972)
!5087 = !DILocation(line: 715, column: 76, scope: !5083)
!5088 = !DILocalVariable(name: "__mptr", scope: !5089, file: !6, line: 717, type: !160)
!5089 = distinct !DILexicalBlock(scope: !5083, file: !6, line: 717, column: 9)
!5090 = !DILocation(line: 717, column: 9, scope: !5089)
!5091 = !DILocation(line: 717, column: 9, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5089, file: !6, line: 717, column: 9)
!5093 = !DILocation(line: 717, column: 2, scope: !5083)
!5094 = distinct !DISubprogram(name: "mmc_priv", scope: !4173, file: !4173, line: 489, type: !5095, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!5095 = !DISubroutineType(types: !5096)
!5096 = !{!160, !4179}
!5097 = !DILocalVariable(name: "host", arg: 1, scope: !5094, file: !4173, line: 489, type: !4179)
!5098 = !DILocation(line: 489, column: 47, scope: !5094)
!5099 = !DILocation(line: 491, column: 17, scope: !5094)
!5100 = !DILocation(line: 491, column: 23, scope: !5094)
!5101 = !DILocation(line: 491, column: 9, scope: !5094)
!5102 = !DILocation(line: 491, column: 2, scope: !5094)
!5103 = distinct !DISubprogram(name: "usb_set_intfdata", scope: !6, file: !6, line: 268, type: !5104, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!5104 = !DISubroutineType(types: !5105)
!5105 = !{null, !3972, !160}
!5106 = !DILocalVariable(name: "intf", arg: 1, scope: !5103, file: !6, line: 268, type: !3972)
!5107 = !DILocation(line: 268, column: 59, scope: !5103)
!5108 = !DILocalVariable(name: "data", arg: 2, scope: !5103, file: !6, line: 268, type: !160)
!5109 = !DILocation(line: 268, column: 71, scope: !5103)
!5110 = !DILocation(line: 270, column: 19, scope: !5103)
!5111 = !DILocation(line: 270, column: 25, scope: !5103)
!5112 = !DILocation(line: 270, column: 30, scope: !5103)
!5113 = !DILocation(line: 270, column: 2, scope: !5103)
!5114 = !DILocation(line: 271, column: 1, scope: !5103)
!5115 = distinct !DISubprogram(name: "ushc_hw_reset", scope: !3, file: !3, line: 119, type: !5116, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!5116 = !DISubroutineType(types: !5117)
!5117 = !{!167, !4695}
!5118 = !DILocalVariable(name: "ushc", arg: 1, scope: !5115, file: !3, line: 119, type: !4695)
!5119 = !DILocation(line: 119, column: 44, scope: !5115)
!5120 = !DILocation(line: 121, column: 25, scope: !5115)
!5121 = !DILocation(line: 121, column: 31, scope: !5115)
!5122 = !DILocation(line: 121, column: 40, scope: !5115)
!5123 = !DILocation(line: 121, column: 9, scope: !5115)
!5124 = !DILocation(line: 121, column: 2, scope: !5115)
!5125 = distinct !DISubprogram(name: "ushc_hw_get_caps", scope: !3, file: !3, line: 126, type: !5116, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!5126 = !DILocalVariable(name: "ushc", arg: 1, scope: !5125, file: !3, line: 126, type: !4695)
!5127 = !DILocation(line: 126, column: 47, scope: !5125)
!5128 = !DILocalVariable(name: "ret", scope: !5125, file: !3, line: 128, type: !167)
!5129 = !DILocation(line: 128, column: 6, scope: !5125)
!5130 = !DILocalVariable(name: "version", scope: !5125, file: !3, line: 129, type: !167)
!5131 = !DILocation(line: 129, column: 6, scope: !5125)
!5132 = !DILocation(line: 131, column: 24, scope: !5125)
!5133 = !DILocation(line: 131, column: 30, scope: !5125)
!5134 = !DILocation(line: 131, column: 39, scope: !5125)
!5135 = !DILocation(line: 133, column: 17, scope: !5125)
!5136 = !DILocation(line: 133, column: 23, scope: !5125)
!5137 = !DILocation(line: 133, column: 16, scope: !5125)
!5138 = !DILocation(line: 131, column: 8, scope: !5125)
!5139 = !DILocation(line: 131, column: 6, scope: !5125)
!5140 = !DILocation(line: 134, column: 6, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5125, file: !3, line: 134, column: 6)
!5142 = !DILocation(line: 134, column: 10, scope: !5141)
!5143 = !DILocation(line: 134, column: 6, scope: !5125)
!5144 = !DILocation(line: 135, column: 10, scope: !5141)
!5145 = !DILocation(line: 135, column: 3, scope: !5141)
!5146 = !DILocation(line: 137, column: 15, scope: !5125)
!5147 = !DILocation(line: 137, column: 2, scope: !5125)
!5148 = !DILocation(line: 137, column: 8, scope: !5125)
!5149 = !DILocation(line: 137, column: 13, scope: !5125)
!5150 = !DILocation(line: 139, column: 12, scope: !5125)
!5151 = !DILocation(line: 139, column: 18, scope: !5125)
!5152 = !DILocation(line: 139, column: 23, scope: !5125)
!5153 = !DILocation(line: 139, column: 10, scope: !5125)
!5154 = !DILocation(line: 140, column: 6, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5125, file: !3, line: 140, column: 6)
!5156 = !DILocation(line: 140, column: 14, scope: !5155)
!5157 = !DILocation(line: 140, column: 6, scope: !5125)
!5158 = !DILocation(line: 141, column: 3, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5155, file: !3, line: 140, column: 23)
!5160 = !DILocation(line: 142, column: 3, scope: !5159)
!5161 = !DILocation(line: 145, column: 2, scope: !5125)
!5162 = !DILocation(line: 146, column: 1, scope: !5125)
!5163 = distinct !DISubprogram(name: "kzalloc", scope: !150, file: !150, line: 662, type: !5164, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!5164 = !DISubroutineType(types: !5165)
!5165 = !{!160, !308, !161}
!5166 = !DILocalVariable(name: "s", arg: 1, scope: !5167, file: !150, line: 445, type: !918)
!5167 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !150, file: !150, line: 445, type: !5168, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!5168 = !DISubroutineType(types: !5169)
!5169 = !{!160, !918, !161, !308}
!5170 = !DILocation(line: 445, column: 72, scope: !5167, inlinedAt: !5171)
!5171 = distinct !DILocation(line: 552, column: 10, scope: !5172, inlinedAt: !5175)
!5172 = distinct !DILexicalBlock(scope: !5173, file: !150, line: 540, column: 34)
!5173 = distinct !DILexicalBlock(scope: !5174, file: !150, line: 540, column: 6)
!5174 = distinct !DISubprogram(name: "kmalloc", scope: !150, file: !150, line: 538, type: !5164, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!5175 = distinct !DILocation(line: 664, column: 9, scope: !5163)
!5176 = !DILocalVariable(name: "flags", arg: 2, scope: !5167, file: !150, line: 446, type: !161)
!5177 = !DILocation(line: 446, column: 9, scope: !5167, inlinedAt: !5171)
!5178 = !DILocalVariable(name: "size", arg: 3, scope: !5167, file: !150, line: 446, type: !308)
!5179 = !DILocation(line: 446, column: 23, scope: !5167, inlinedAt: !5171)
!5180 = !DILocalVariable(name: "ret", scope: !5167, file: !150, line: 448, type: !160)
!5181 = !DILocation(line: 448, column: 8, scope: !5167, inlinedAt: !5171)
!5182 = !DILocalVariable(name: "flags", arg: 1, scope: !5183, file: !150, line: 318, type: !161)
!5183 = distinct !DISubprogram(name: "kmalloc_type", scope: !150, file: !150, line: 318, type: !5184, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!5184 = !DISubroutineType(types: !5185)
!5185 = !{!149, !161}
!5186 = !DILocation(line: 318, column: 67, scope: !5183, inlinedAt: !5187)
!5187 = distinct !DILocation(line: 553, column: 20, scope: !5172, inlinedAt: !5175)
!5188 = !DILocalVariable(name: "size", arg: 1, scope: !5189, file: !150, line: 346, type: !308)
!5189 = distinct !DISubprogram(name: "kmalloc_index", scope: !150, file: !150, line: 346, type: !5190, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!5190 = !DISubroutineType(types: !5191)
!5191 = !{!7, !308}
!5192 = !DILocation(line: 346, column: 58, scope: !5189, inlinedAt: !5193)
!5193 = distinct !DILocation(line: 547, column: 11, scope: !5172, inlinedAt: !5175)
!5194 = !DILocalVariable(name: "size", arg: 1, scope: !5195, file: !150, line: 472, type: !308)
!5195 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !150, file: !150, line: 472, type: !5196, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!5196 = !DISubroutineType(types: !5197)
!5197 = !{!160, !308, !161, !7}
!5198 = !DILocation(line: 472, column: 28, scope: !5195, inlinedAt: !5199)
!5199 = distinct !DILocation(line: 481, column: 9, scope: !5200, inlinedAt: !5201)
!5200 = distinct !DISubprogram(name: "kmalloc_large", scope: !150, file: !150, line: 478, type: !5164, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!5201 = distinct !DILocation(line: 545, column: 11, scope: !5202, inlinedAt: !5175)
!5202 = distinct !DILexicalBlock(scope: !5172, file: !150, line: 544, column: 7)
!5203 = !DILocalVariable(name: "flags", arg: 2, scope: !5195, file: !150, line: 472, type: !161)
!5204 = !DILocation(line: 472, column: 40, scope: !5195, inlinedAt: !5199)
!5205 = !DILocalVariable(name: "order", arg: 3, scope: !5195, file: !150, line: 472, type: !7)
!5206 = !DILocation(line: 472, column: 60, scope: !5195, inlinedAt: !5199)
!5207 = !DILocalVariable(name: "size", arg: 1, scope: !5200, file: !150, line: 478, type: !308)
!5208 = !DILocation(line: 478, column: 51, scope: !5200, inlinedAt: !5201)
!5209 = !DILocalVariable(name: "flags", arg: 2, scope: !5200, file: !150, line: 478, type: !161)
!5210 = !DILocation(line: 478, column: 63, scope: !5200, inlinedAt: !5201)
!5211 = !DILocalVariable(name: "order", scope: !5200, file: !150, line: 480, type: !7)
!5212 = !DILocation(line: 480, column: 15, scope: !5200, inlinedAt: !5201)
!5213 = !DILocalVariable(name: "size", arg: 1, scope: !5174, file: !150, line: 538, type: !308)
!5214 = !DILocation(line: 538, column: 45, scope: !5174, inlinedAt: !5175)
!5215 = !DILocalVariable(name: "flags", arg: 2, scope: !5174, file: !150, line: 538, type: !161)
!5216 = !DILocation(line: 538, column: 57, scope: !5174, inlinedAt: !5175)
!5217 = !DILocalVariable(name: "index", scope: !5172, file: !150, line: 542, type: !7)
!5218 = !DILocation(line: 542, column: 16, scope: !5172, inlinedAt: !5175)
!5219 = !DILocalVariable(name: "size", arg: 1, scope: !5163, file: !150, line: 662, type: !308)
!5220 = !DILocation(line: 662, column: 36, scope: !5163)
!5221 = !DILocalVariable(name: "flags", arg: 2, scope: !5163, file: !150, line: 662, type: !161)
!5222 = !DILocation(line: 662, column: 48, scope: !5163)
!5223 = !DILocation(line: 664, column: 17, scope: !5163)
!5224 = !DILocation(line: 664, column: 23, scope: !5163)
!5225 = !DILocation(line: 664, column: 29, scope: !5163)
!5226 = !DILocation(line: 540, column: 27, scope: !5173, inlinedAt: !5175)
!5227 = !DILocation(line: 540, column: 6, scope: !5173, inlinedAt: !5175)
!5228 = !DILocation(line: 540, column: 6, scope: !5174, inlinedAt: !5175)
!5229 = !DILocation(line: 544, column: 7, scope: !5202, inlinedAt: !5175)
!5230 = !DILocation(line: 544, column: 12, scope: !5202, inlinedAt: !5175)
!5231 = !DILocation(line: 544, column: 7, scope: !5172, inlinedAt: !5175)
!5232 = !DILocation(line: 545, column: 25, scope: !5202, inlinedAt: !5175)
!5233 = !DILocation(line: 545, column: 31, scope: !5202, inlinedAt: !5175)
!5234 = !DILocation(line: 480, column: 33, scope: !5200, inlinedAt: !5201)
!5235 = !DILocation(line: 480, column: 23, scope: !5200, inlinedAt: !5201)
!5236 = !DILocation(line: 481, column: 29, scope: !5200, inlinedAt: !5201)
!5237 = !DILocation(line: 481, column: 35, scope: !5200, inlinedAt: !5201)
!5238 = !DILocation(line: 481, column: 42, scope: !5200, inlinedAt: !5201)
!5239 = !DILocation(line: 474, column: 23, scope: !5195, inlinedAt: !5199)
!5240 = !DILocation(line: 474, column: 29, scope: !5195, inlinedAt: !5199)
!5241 = !DILocation(line: 474, column: 36, scope: !5195, inlinedAt: !5199)
!5242 = !DILocation(line: 474, column: 9, scope: !5195, inlinedAt: !5199)
!5243 = !DILocation(line: 545, column: 4, scope: !5202, inlinedAt: !5175)
!5244 = !DILocation(line: 547, column: 25, scope: !5172, inlinedAt: !5175)
!5245 = !DILocation(line: 348, column: 7, scope: !5246, inlinedAt: !5193)
!5246 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 348, column: 6)
!5247 = !DILocation(line: 348, column: 6, scope: !5189, inlinedAt: !5193)
!5248 = !DILocation(line: 349, column: 3, scope: !5246, inlinedAt: !5193)
!5249 = !DILocation(line: 351, column: 6, scope: !5250, inlinedAt: !5193)
!5250 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 351, column: 6)
!5251 = !DILocation(line: 351, column: 11, scope: !5250, inlinedAt: !5193)
!5252 = !DILocation(line: 351, column: 6, scope: !5189, inlinedAt: !5193)
!5253 = !DILocation(line: 352, column: 3, scope: !5250, inlinedAt: !5193)
!5254 = !DILocation(line: 354, column: 32, scope: !5255, inlinedAt: !5193)
!5255 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 354, column: 6)
!5256 = !DILocation(line: 354, column: 37, scope: !5255, inlinedAt: !5193)
!5257 = !DILocation(line: 354, column: 42, scope: !5255, inlinedAt: !5193)
!5258 = !DILocation(line: 354, column: 45, scope: !5255, inlinedAt: !5193)
!5259 = !DILocation(line: 354, column: 50, scope: !5255, inlinedAt: !5193)
!5260 = !DILocation(line: 354, column: 6, scope: !5189, inlinedAt: !5193)
!5261 = !DILocation(line: 355, column: 3, scope: !5255, inlinedAt: !5193)
!5262 = !DILocation(line: 356, column: 32, scope: !5263, inlinedAt: !5193)
!5263 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 356, column: 6)
!5264 = !DILocation(line: 356, column: 37, scope: !5263, inlinedAt: !5193)
!5265 = !DILocation(line: 356, column: 43, scope: !5263, inlinedAt: !5193)
!5266 = !DILocation(line: 356, column: 46, scope: !5263, inlinedAt: !5193)
!5267 = !DILocation(line: 356, column: 51, scope: !5263, inlinedAt: !5193)
!5268 = !DILocation(line: 356, column: 6, scope: !5189, inlinedAt: !5193)
!5269 = !DILocation(line: 357, column: 3, scope: !5263, inlinedAt: !5193)
!5270 = !DILocation(line: 358, column: 6, scope: !5271, inlinedAt: !5193)
!5271 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 358, column: 6)
!5272 = !DILocation(line: 358, column: 11, scope: !5271, inlinedAt: !5193)
!5273 = !DILocation(line: 358, column: 6, scope: !5189, inlinedAt: !5193)
!5274 = !DILocation(line: 358, column: 26, scope: !5271, inlinedAt: !5193)
!5275 = !DILocation(line: 359, column: 6, scope: !5276, inlinedAt: !5193)
!5276 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 359, column: 6)
!5277 = !DILocation(line: 359, column: 11, scope: !5276, inlinedAt: !5193)
!5278 = !DILocation(line: 359, column: 6, scope: !5189, inlinedAt: !5193)
!5279 = !DILocation(line: 359, column: 26, scope: !5276, inlinedAt: !5193)
!5280 = !DILocation(line: 360, column: 6, scope: !5281, inlinedAt: !5193)
!5281 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 360, column: 6)
!5282 = !DILocation(line: 360, column: 11, scope: !5281, inlinedAt: !5193)
!5283 = !DILocation(line: 360, column: 6, scope: !5189, inlinedAt: !5193)
!5284 = !DILocation(line: 360, column: 26, scope: !5281, inlinedAt: !5193)
!5285 = !DILocation(line: 361, column: 6, scope: !5286, inlinedAt: !5193)
!5286 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 361, column: 6)
!5287 = !DILocation(line: 361, column: 11, scope: !5286, inlinedAt: !5193)
!5288 = !DILocation(line: 361, column: 6, scope: !5189, inlinedAt: !5193)
!5289 = !DILocation(line: 361, column: 26, scope: !5286, inlinedAt: !5193)
!5290 = !DILocation(line: 362, column: 6, scope: !5291, inlinedAt: !5193)
!5291 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 362, column: 6)
!5292 = !DILocation(line: 362, column: 11, scope: !5291, inlinedAt: !5193)
!5293 = !DILocation(line: 362, column: 6, scope: !5189, inlinedAt: !5193)
!5294 = !DILocation(line: 362, column: 26, scope: !5291, inlinedAt: !5193)
!5295 = !DILocation(line: 363, column: 6, scope: !5296, inlinedAt: !5193)
!5296 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 363, column: 6)
!5297 = !DILocation(line: 363, column: 11, scope: !5296, inlinedAt: !5193)
!5298 = !DILocation(line: 363, column: 6, scope: !5189, inlinedAt: !5193)
!5299 = !DILocation(line: 363, column: 26, scope: !5296, inlinedAt: !5193)
!5300 = !DILocation(line: 364, column: 6, scope: !5301, inlinedAt: !5193)
!5301 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 364, column: 6)
!5302 = !DILocation(line: 364, column: 11, scope: !5301, inlinedAt: !5193)
!5303 = !DILocation(line: 364, column: 6, scope: !5189, inlinedAt: !5193)
!5304 = !DILocation(line: 364, column: 26, scope: !5301, inlinedAt: !5193)
!5305 = !DILocation(line: 365, column: 6, scope: !5306, inlinedAt: !5193)
!5306 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 365, column: 6)
!5307 = !DILocation(line: 365, column: 11, scope: !5306, inlinedAt: !5193)
!5308 = !DILocation(line: 365, column: 6, scope: !5189, inlinedAt: !5193)
!5309 = !DILocation(line: 365, column: 26, scope: !5306, inlinedAt: !5193)
!5310 = !DILocation(line: 366, column: 6, scope: !5311, inlinedAt: !5193)
!5311 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 366, column: 6)
!5312 = !DILocation(line: 366, column: 11, scope: !5311, inlinedAt: !5193)
!5313 = !DILocation(line: 366, column: 6, scope: !5189, inlinedAt: !5193)
!5314 = !DILocation(line: 366, column: 26, scope: !5311, inlinedAt: !5193)
!5315 = !DILocation(line: 367, column: 6, scope: !5316, inlinedAt: !5193)
!5316 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 367, column: 6)
!5317 = !DILocation(line: 367, column: 11, scope: !5316, inlinedAt: !5193)
!5318 = !DILocation(line: 367, column: 6, scope: !5189, inlinedAt: !5193)
!5319 = !DILocation(line: 367, column: 26, scope: !5316, inlinedAt: !5193)
!5320 = !DILocation(line: 368, column: 6, scope: !5321, inlinedAt: !5193)
!5321 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 368, column: 6)
!5322 = !DILocation(line: 368, column: 11, scope: !5321, inlinedAt: !5193)
!5323 = !DILocation(line: 368, column: 6, scope: !5189, inlinedAt: !5193)
!5324 = !DILocation(line: 368, column: 26, scope: !5321, inlinedAt: !5193)
!5325 = !DILocation(line: 369, column: 6, scope: !5326, inlinedAt: !5193)
!5326 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 369, column: 6)
!5327 = !DILocation(line: 369, column: 11, scope: !5326, inlinedAt: !5193)
!5328 = !DILocation(line: 369, column: 6, scope: !5189, inlinedAt: !5193)
!5329 = !DILocation(line: 369, column: 26, scope: !5326, inlinedAt: !5193)
!5330 = !DILocation(line: 370, column: 6, scope: !5331, inlinedAt: !5193)
!5331 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 370, column: 6)
!5332 = !DILocation(line: 370, column: 11, scope: !5331, inlinedAt: !5193)
!5333 = !DILocation(line: 370, column: 6, scope: !5189, inlinedAt: !5193)
!5334 = !DILocation(line: 370, column: 26, scope: !5331, inlinedAt: !5193)
!5335 = !DILocation(line: 371, column: 6, scope: !5336, inlinedAt: !5193)
!5336 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 371, column: 6)
!5337 = !DILocation(line: 371, column: 11, scope: !5336, inlinedAt: !5193)
!5338 = !DILocation(line: 371, column: 6, scope: !5189, inlinedAt: !5193)
!5339 = !DILocation(line: 371, column: 26, scope: !5336, inlinedAt: !5193)
!5340 = !DILocation(line: 372, column: 6, scope: !5341, inlinedAt: !5193)
!5341 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 372, column: 6)
!5342 = !DILocation(line: 372, column: 11, scope: !5341, inlinedAt: !5193)
!5343 = !DILocation(line: 372, column: 6, scope: !5189, inlinedAt: !5193)
!5344 = !DILocation(line: 372, column: 26, scope: !5341, inlinedAt: !5193)
!5345 = !DILocation(line: 373, column: 6, scope: !5346, inlinedAt: !5193)
!5346 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 373, column: 6)
!5347 = !DILocation(line: 373, column: 11, scope: !5346, inlinedAt: !5193)
!5348 = !DILocation(line: 373, column: 6, scope: !5189, inlinedAt: !5193)
!5349 = !DILocation(line: 373, column: 26, scope: !5346, inlinedAt: !5193)
!5350 = !DILocation(line: 374, column: 6, scope: !5351, inlinedAt: !5193)
!5351 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 374, column: 6)
!5352 = !DILocation(line: 374, column: 11, scope: !5351, inlinedAt: !5193)
!5353 = !DILocation(line: 374, column: 6, scope: !5189, inlinedAt: !5193)
!5354 = !DILocation(line: 374, column: 26, scope: !5351, inlinedAt: !5193)
!5355 = !DILocation(line: 375, column: 6, scope: !5356, inlinedAt: !5193)
!5356 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 375, column: 6)
!5357 = !DILocation(line: 375, column: 11, scope: !5356, inlinedAt: !5193)
!5358 = !DILocation(line: 375, column: 6, scope: !5189, inlinedAt: !5193)
!5359 = !DILocation(line: 375, column: 27, scope: !5356, inlinedAt: !5193)
!5360 = !DILocation(line: 376, column: 6, scope: !5361, inlinedAt: !5193)
!5361 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 376, column: 6)
!5362 = !DILocation(line: 376, column: 11, scope: !5361, inlinedAt: !5193)
!5363 = !DILocation(line: 376, column: 6, scope: !5189, inlinedAt: !5193)
!5364 = !DILocation(line: 376, column: 32, scope: !5361, inlinedAt: !5193)
!5365 = !DILocation(line: 377, column: 6, scope: !5366, inlinedAt: !5193)
!5366 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 377, column: 6)
!5367 = !DILocation(line: 377, column: 11, scope: !5366, inlinedAt: !5193)
!5368 = !DILocation(line: 377, column: 6, scope: !5189, inlinedAt: !5193)
!5369 = !DILocation(line: 377, column: 32, scope: !5366, inlinedAt: !5193)
!5370 = !DILocation(line: 378, column: 6, scope: !5371, inlinedAt: !5193)
!5371 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 378, column: 6)
!5372 = !DILocation(line: 378, column: 11, scope: !5371, inlinedAt: !5193)
!5373 = !DILocation(line: 378, column: 6, scope: !5189, inlinedAt: !5193)
!5374 = !DILocation(line: 378, column: 32, scope: !5371, inlinedAt: !5193)
!5375 = !DILocation(line: 379, column: 6, scope: !5376, inlinedAt: !5193)
!5376 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 379, column: 6)
!5377 = !DILocation(line: 379, column: 11, scope: !5376, inlinedAt: !5193)
!5378 = !DILocation(line: 379, column: 6, scope: !5189, inlinedAt: !5193)
!5379 = !DILocation(line: 379, column: 33, scope: !5376, inlinedAt: !5193)
!5380 = !DILocation(line: 380, column: 6, scope: !5381, inlinedAt: !5193)
!5381 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 380, column: 6)
!5382 = !DILocation(line: 380, column: 11, scope: !5381, inlinedAt: !5193)
!5383 = !DILocation(line: 380, column: 6, scope: !5189, inlinedAt: !5193)
!5384 = !DILocation(line: 380, column: 33, scope: !5381, inlinedAt: !5193)
!5385 = !DILocation(line: 381, column: 6, scope: !5386, inlinedAt: !5193)
!5386 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 381, column: 6)
!5387 = !DILocation(line: 381, column: 11, scope: !5386, inlinedAt: !5193)
!5388 = !DILocation(line: 381, column: 6, scope: !5189, inlinedAt: !5193)
!5389 = !DILocation(line: 381, column: 33, scope: !5386, inlinedAt: !5193)
!5390 = !DILocation(line: 382, column: 2, scope: !5391, inlinedAt: !5193)
!5391 = distinct !DILexicalBlock(scope: !5392, file: !150, line: 382, column: 2)
!5392 = distinct !DILexicalBlock(scope: !5189, file: !150, line: 382, column: 2)
!5393 = !{i32 -2142626786, i32 -2142626757, i32 -2142626711, i32 -2142626653, i32 -2142626599, i32 -2142626545, i32 -2142626490, i32 -2142626459}
!5394 = !DILocation(line: 382, column: 2, scope: !5395, inlinedAt: !5193)
!5395 = distinct !DILexicalBlock(scope: !5396, file: !150, line: 382, column: 2)
!5396 = distinct !DILexicalBlock(scope: !5392, file: !150, line: 382, column: 2)
!5397 = !{i32 -2142626016, i32 -2142626009, i32 -2142625955, i32 -2142625924, i32 -2142625894}
!5398 = !DILocation(line: 382, column: 2, scope: !5396, inlinedAt: !5193)
!5399 = !DILocation(line: 386, column: 1, scope: !5189, inlinedAt: !5193)
!5400 = !DILocation(line: 547, column: 9, scope: !5172, inlinedAt: !5175)
!5401 = !DILocation(line: 549, column: 8, scope: !5402, inlinedAt: !5175)
!5402 = distinct !DILexicalBlock(scope: !5172, file: !150, line: 549, column: 7)
!5403 = !DILocation(line: 549, column: 7, scope: !5172, inlinedAt: !5175)
!5404 = !DILocation(line: 550, column: 4, scope: !5402, inlinedAt: !5175)
!5405 = !DILocation(line: 553, column: 33, scope: !5172, inlinedAt: !5175)
!5406 = !DILocation(line: 325, column: 6, scope: !5407, inlinedAt: !5187)
!5407 = distinct !DILexicalBlock(scope: !5183, file: !150, line: 325, column: 6)
!5408 = !DILocation(line: 325, column: 6, scope: !5183, inlinedAt: !5187)
!5409 = !DILocation(line: 326, column: 3, scope: !5407, inlinedAt: !5187)
!5410 = !DILocation(line: 332, column: 9, scope: !5183, inlinedAt: !5187)
!5411 = !DILocation(line: 332, column: 15, scope: !5183, inlinedAt: !5187)
!5412 = !DILocation(line: 332, column: 2, scope: !5183, inlinedAt: !5187)
!5413 = !DILocation(line: 336, column: 1, scope: !5183, inlinedAt: !5187)
!5414 = !DILocation(line: 553, column: 5, scope: !5172, inlinedAt: !5175)
!5415 = !DILocation(line: 553, column: 41, scope: !5172, inlinedAt: !5175)
!5416 = !DILocation(line: 554, column: 5, scope: !5172, inlinedAt: !5175)
!5417 = !DILocation(line: 554, column: 12, scope: !5172, inlinedAt: !5175)
!5418 = !DILocation(line: 448, column: 31, scope: !5167, inlinedAt: !5171)
!5419 = !DILocation(line: 448, column: 34, scope: !5167, inlinedAt: !5171)
!5420 = !DILocation(line: 448, column: 14, scope: !5167, inlinedAt: !5171)
!5421 = !DILocation(line: 450, column: 22, scope: !5167, inlinedAt: !5171)
!5422 = !DILocation(line: 450, column: 25, scope: !5167, inlinedAt: !5171)
!5423 = !DILocation(line: 450, column: 30, scope: !5167, inlinedAt: !5171)
!5424 = !DILocation(line: 450, column: 36, scope: !5167, inlinedAt: !5171)
!5425 = !DILocation(line: 450, column: 8, scope: !5167, inlinedAt: !5171)
!5426 = !DILocation(line: 450, column: 6, scope: !5167, inlinedAt: !5171)
!5427 = !DILocation(line: 451, column: 9, scope: !5167, inlinedAt: !5171)
!5428 = !DILocation(line: 552, column: 3, scope: !5172, inlinedAt: !5175)
!5429 = !DILocation(line: 557, column: 19, scope: !5174, inlinedAt: !5175)
!5430 = !DILocation(line: 557, column: 25, scope: !5174, inlinedAt: !5175)
!5431 = !DILocation(line: 557, column: 9, scope: !5174, inlinedAt: !5175)
!5432 = !DILocation(line: 557, column: 2, scope: !5174, inlinedAt: !5175)
!5433 = !DILocation(line: 558, column: 1, scope: !5174, inlinedAt: !5175)
!5434 = !DILocation(line: 664, column: 2, scope: !5163)
!5435 = distinct !DISubprogram(name: "usb_fill_int_urb", scope: !6, file: !6, line: 1688, type: !5436, scopeLine: 1696, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!5436 = !DISubroutineType(types: !5437)
!5437 = !{null, !4701, !163, !7, !160, !167, !4741, !160, !167}
!5438 = !DILocalVariable(name: "urb", arg: 1, scope: !5435, file: !6, line: 1688, type: !4701)
!5439 = !DILocation(line: 1688, column: 49, scope: !5435)
!5440 = !DILocalVariable(name: "dev", arg: 2, scope: !5435, file: !6, line: 1689, type: !163)
!5441 = !DILocation(line: 1689, column: 28, scope: !5435)
!5442 = !DILocalVariable(name: "pipe", arg: 3, scope: !5435, file: !6, line: 1690, type: !7)
!5443 = !DILocation(line: 1690, column: 22, scope: !5435)
!5444 = !DILocalVariable(name: "transfer_buffer", arg: 4, scope: !5435, file: !6, line: 1691, type: !160)
!5445 = !DILocation(line: 1691, column: 15, scope: !5435)
!5446 = !DILocalVariable(name: "buffer_length", arg: 5, scope: !5435, file: !6, line: 1692, type: !167)
!5447 = !DILocation(line: 1692, column: 13, scope: !5435)
!5448 = !DILocalVariable(name: "complete_fn", arg: 6, scope: !5435, file: !6, line: 1693, type: !4741)
!5449 = !DILocation(line: 1693, column: 24, scope: !5435)
!5450 = !DILocalVariable(name: "context", arg: 7, scope: !5435, file: !6, line: 1694, type: !160)
!5451 = !DILocation(line: 1694, column: 15, scope: !5435)
!5452 = !DILocalVariable(name: "interval", arg: 8, scope: !5435, file: !6, line: 1695, type: !167)
!5453 = !DILocation(line: 1695, column: 13, scope: !5435)
!5454 = !DILocation(line: 1697, column: 13, scope: !5435)
!5455 = !DILocation(line: 1697, column: 2, scope: !5435)
!5456 = !DILocation(line: 1697, column: 7, scope: !5435)
!5457 = !DILocation(line: 1697, column: 11, scope: !5435)
!5458 = !DILocation(line: 1698, column: 14, scope: !5435)
!5459 = !DILocation(line: 1698, column: 2, scope: !5435)
!5460 = !DILocation(line: 1698, column: 7, scope: !5435)
!5461 = !DILocation(line: 1698, column: 12, scope: !5435)
!5462 = !DILocation(line: 1699, column: 25, scope: !5435)
!5463 = !DILocation(line: 1699, column: 2, scope: !5435)
!5464 = !DILocation(line: 1699, column: 7, scope: !5435)
!5465 = !DILocation(line: 1699, column: 23, scope: !5435)
!5466 = !DILocation(line: 1700, column: 32, scope: !5435)
!5467 = !DILocation(line: 1700, column: 2, scope: !5435)
!5468 = !DILocation(line: 1700, column: 7, scope: !5435)
!5469 = !DILocation(line: 1700, column: 30, scope: !5435)
!5470 = !DILocation(line: 1701, column: 18, scope: !5435)
!5471 = !DILocation(line: 1701, column: 2, scope: !5435)
!5472 = !DILocation(line: 1701, column: 7, scope: !5435)
!5473 = !DILocation(line: 1701, column: 16, scope: !5435)
!5474 = !DILocation(line: 1702, column: 17, scope: !5435)
!5475 = !DILocation(line: 1702, column: 2, scope: !5435)
!5476 = !DILocation(line: 1702, column: 7, scope: !5435)
!5477 = !DILocation(line: 1702, column: 15, scope: !5435)
!5478 = !DILocation(line: 1704, column: 6, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5435, file: !6, line: 1704, column: 6)
!5480 = !DILocation(line: 1704, column: 11, scope: !5479)
!5481 = !DILocation(line: 1704, column: 17, scope: !5479)
!5482 = !DILocation(line: 1704, column: 35, scope: !5479)
!5483 = !DILocation(line: 1704, column: 38, scope: !5479)
!5484 = !DILocation(line: 1704, column: 43, scope: !5479)
!5485 = !DILocation(line: 1704, column: 49, scope: !5479)
!5486 = !DILocation(line: 1704, column: 6, scope: !5435)
!5487 = !DILocalVariable(name: "__UNIQUE_ID___x205", scope: !5488, file: !6, line: 1706, type: !167)
!5488 = distinct !DILexicalBlock(scope: !5489, file: !6, line: 1706, column: 14)
!5489 = distinct !DILexicalBlock(scope: !5479, file: !6, line: 1704, column: 69)
!5490 = !DILocation(line: 1706, column: 14, scope: !5488)
!5491 = !DILocalVariable(name: "__UNIQUE_ID___x203", scope: !5492, file: !6, line: 1706, type: !167)
!5492 = distinct !DILexicalBlock(scope: !5488, file: !6, line: 1706, column: 14)
!5493 = !DILocation(line: 1706, column: 14, scope: !5492)
!5494 = !DILocalVariable(name: "__UNIQUE_ID___y204", scope: !5492, file: !6, line: 1706, type: !167)
!5495 = !DILocalVariable(name: "__UNIQUE_ID___y206", scope: !5488, file: !6, line: 1706, type: !167)
!5496 = !DILocation(line: 1706, column: 12, scope: !5489)
!5497 = !DILocation(line: 1708, column: 25, scope: !5489)
!5498 = !DILocation(line: 1708, column: 34, scope: !5489)
!5499 = !DILocation(line: 1708, column: 21, scope: !5489)
!5500 = !DILocation(line: 1708, column: 3, scope: !5489)
!5501 = !DILocation(line: 1708, column: 8, scope: !5489)
!5502 = !DILocation(line: 1708, column: 17, scope: !5489)
!5503 = !DILocation(line: 1709, column: 2, scope: !5489)
!5504 = !DILocation(line: 1710, column: 19, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !5479, file: !6, line: 1709, column: 9)
!5506 = !DILocation(line: 1710, column: 3, scope: !5505)
!5507 = !DILocation(line: 1710, column: 8, scope: !5505)
!5508 = !DILocation(line: 1710, column: 17, scope: !5505)
!5509 = !DILocation(line: 1713, column: 2, scope: !5435)
!5510 = !DILocation(line: 1713, column: 7, scope: !5435)
!5511 = !DILocation(line: 1713, column: 19, scope: !5435)
!5512 = !DILocation(line: 1714, column: 1, scope: !5435)
!5513 = distinct !DISubprogram(name: "__create_pipe", scope: !6, file: !6, line: 1945, type: !5514, scopeLine: 1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!5514 = !DISubroutineType(types: !5515)
!5515 = !{!7, !163, !7}
!5516 = !DILocalVariable(name: "dev", arg: 1, scope: !5513, file: !6, line: 1945, type: !163)
!5517 = !DILocation(line: 1945, column: 61, scope: !5513)
!5518 = !DILocalVariable(name: "endpoint", arg: 2, scope: !5513, file: !6, line: 1946, type: !7)
!5519 = !DILocation(line: 1946, column: 16, scope: !5513)
!5520 = !DILocation(line: 1948, column: 10, scope: !5513)
!5521 = !DILocation(line: 1948, column: 15, scope: !5513)
!5522 = !DILocation(line: 1948, column: 22, scope: !5513)
!5523 = !DILocation(line: 1948, column: 31, scope: !5513)
!5524 = !DILocation(line: 1948, column: 40, scope: !5513)
!5525 = !DILocation(line: 1948, column: 28, scope: !5513)
!5526 = !DILocation(line: 1948, column: 2, scope: !5513)
!5527 = distinct !DISubprogram(name: "int_callback", scope: !3, file: !3, line: 163, type: !4743, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!5528 = !DILocalVariable(name: "m", arg: 1, scope: !5529, file: !5530, line: 363, type: !2807)
!5529 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !5530, file: !5530, line: 363, type: !5531, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!5530 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!5531 = !DISubroutineType(types: !5532)
!5532 = !{!311, !2807}
!5533 = !DILocation(line: 363, column: 74, scope: !5529, inlinedAt: !5534)
!5534 = distinct !DILocation(line: 190, column: 32, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 189, column: 6)
!5536 = !DILocalVariable(name: "urb", arg: 1, scope: !5527, file: !3, line: 163, type: !4701)
!5537 = !DILocation(line: 163, column: 38, scope: !5527)
!5538 = !DILocalVariable(name: "ushc", scope: !5527, file: !3, line: 165, type: !4695)
!5539 = !DILocation(line: 165, column: 20, scope: !5527)
!5540 = !DILocation(line: 165, column: 27, scope: !5527)
!5541 = !DILocation(line: 165, column: 32, scope: !5527)
!5542 = !DILocalVariable(name: "status", scope: !5527, file: !3, line: 166, type: !1335)
!5543 = !DILocation(line: 166, column: 5, scope: !5527)
!5544 = !DILocalVariable(name: "last_status", scope: !5527, file: !3, line: 166, type: !1335)
!5545 = !DILocation(line: 166, column: 13, scope: !5527)
!5546 = !DILocation(line: 168, column: 6, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 168, column: 6)
!5548 = !DILocation(line: 168, column: 11, scope: !5547)
!5549 = !DILocation(line: 168, column: 18, scope: !5547)
!5550 = !DILocation(line: 168, column: 6, scope: !5527)
!5551 = !DILocation(line: 169, column: 3, scope: !5547)
!5552 = !DILocation(line: 171, column: 11, scope: !5527)
!5553 = !DILocation(line: 171, column: 17, scope: !5527)
!5554 = !DILocation(line: 171, column: 27, scope: !5527)
!5555 = !DILocation(line: 171, column: 9, scope: !5527)
!5556 = !DILocation(line: 172, column: 16, scope: !5527)
!5557 = !DILocation(line: 172, column: 22, scope: !5527)
!5558 = !DILocation(line: 172, column: 14, scope: !5527)
!5559 = !DILocation(line: 173, column: 22, scope: !5527)
!5560 = !DILocation(line: 173, column: 2, scope: !5527)
!5561 = !DILocation(line: 173, column: 8, scope: !5527)
!5562 = !DILocation(line: 173, column: 20, scope: !5527)
!5563 = !DILocation(line: 183, column: 44, scope: !5564)
!5564 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 183, column: 6)
!5565 = !DILocation(line: 183, column: 50, scope: !5564)
!5566 = !DILocation(line: 183, column: 7, scope: !5564)
!5567 = !DILocation(line: 184, column: 6, scope: !5564)
!5568 = !DILocation(line: 184, column: 27, scope: !5564)
!5569 = !DILocation(line: 184, column: 33, scope: !5564)
!5570 = !DILocation(line: 184, column: 9, scope: !5564)
!5571 = !DILocation(line: 185, column: 6, scope: !5564)
!5572 = !DILocation(line: 185, column: 9, scope: !5564)
!5573 = !DILocation(line: 185, column: 16, scope: !5564)
!5574 = !DILocation(line: 183, column: 6, scope: !5527)
!5575 = !DILocation(line: 186, column: 23, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5564, file: !3, line: 185, column: 44)
!5577 = !DILocation(line: 186, column: 29, scope: !5576)
!5578 = !DILocation(line: 186, column: 3, scope: !5576)
!5579 = !DILocation(line: 187, column: 2, scope: !5576)
!5580 = !DILocation(line: 189, column: 7, scope: !5535)
!5581 = !DILocation(line: 189, column: 16, scope: !5535)
!5582 = !DILocation(line: 189, column: 14, scope: !5535)
!5583 = !DILocation(line: 189, column: 29, scope: !5535)
!5584 = !DILocation(line: 189, column: 6, scope: !5527)
!5585 = !DILocation(line: 190, column: 21, scope: !5535)
!5586 = !DILocation(line: 190, column: 27, scope: !5535)
!5587 = !DILocation(line: 365, column: 27, scope: !5588, inlinedAt: !5534)
!5588 = distinct !DILexicalBlock(scope: !5529, file: !5530, line: 365, column: 6)
!5589 = !DILocation(line: 365, column: 6, scope: !5588, inlinedAt: !5534)
!5590 = !DILocation(line: 365, column: 6, scope: !5529, inlinedAt: !5534)
!5591 = !DILocation(line: 366, column: 12, scope: !5592, inlinedAt: !5534)
!5592 = distinct !DILexicalBlock(scope: !5593, file: !5530, line: 366, column: 7)
!5593 = distinct !DILexicalBlock(scope: !5588, file: !5530, line: 365, column: 31)
!5594 = !DILocation(line: 366, column: 14, scope: !5592, inlinedAt: !5534)
!5595 = !DILocation(line: 366, column: 7, scope: !5593, inlinedAt: !5534)
!5596 = !DILocation(line: 367, column: 4, scope: !5592, inlinedAt: !5534)
!5597 = !DILocation(line: 368, column: 28, scope: !5593, inlinedAt: !5534)
!5598 = !DILocation(line: 368, column: 10, scope: !5593, inlinedAt: !5534)
!5599 = !DILocation(line: 368, column: 3, scope: !5593, inlinedAt: !5534)
!5600 = !DILocation(line: 370, column: 29, scope: !5601, inlinedAt: !5534)
!5601 = distinct !DILexicalBlock(scope: !5588, file: !5530, line: 369, column: 9)
!5602 = !DILocation(line: 370, column: 10, scope: !5601, inlinedAt: !5534)
!5603 = !DILocation(line: 370, column: 3, scope: !5601, inlinedAt: !5534)
!5604 = !DILocation(line: 372, column: 1, scope: !5529, inlinedAt: !5534)
!5605 = !DILocation(line: 190, column: 3, scope: !5535)
!5606 = !DILocation(line: 192, column: 25, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 192, column: 6)
!5608 = !DILocation(line: 192, column: 31, scope: !5607)
!5609 = !DILocation(line: 192, column: 7, scope: !5607)
!5610 = !DILocation(line: 192, column: 6, scope: !5527)
!5611 = !DILocation(line: 193, column: 29, scope: !5607)
!5612 = !DILocation(line: 193, column: 35, scope: !5607)
!5613 = !DILocation(line: 193, column: 3, scope: !5607)
!5614 = !DILocation(line: 194, column: 17, scope: !5527)
!5615 = !DILocation(line: 194, column: 23, scope: !5527)
!5616 = !DILocation(line: 194, column: 2, scope: !5527)
!5617 = !DILocation(line: 195, column: 1, scope: !5527)
!5618 = distinct !DISubprogram(name: "usb_fill_bulk_urb", scope: !6, file: !6, line: 1647, type: !5619, scopeLine: 1654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!5619 = !DISubroutineType(types: !5620)
!5620 = !{null, !4701, !163, !7, !160, !167, !4741, !160}
!5621 = !DILocalVariable(name: "urb", arg: 1, scope: !5618, file: !6, line: 1647, type: !4701)
!5622 = !DILocation(line: 1647, column: 50, scope: !5618)
!5623 = !DILocalVariable(name: "dev", arg: 2, scope: !5618, file: !6, line: 1648, type: !163)
!5624 = !DILocation(line: 1648, column: 29, scope: !5618)
!5625 = !DILocalVariable(name: "pipe", arg: 3, scope: !5618, file: !6, line: 1649, type: !7)
!5626 = !DILocation(line: 1649, column: 23, scope: !5618)
!5627 = !DILocalVariable(name: "transfer_buffer", arg: 4, scope: !5618, file: !6, line: 1650, type: !160)
!5628 = !DILocation(line: 1650, column: 16, scope: !5618)
!5629 = !DILocalVariable(name: "buffer_length", arg: 5, scope: !5618, file: !6, line: 1651, type: !167)
!5630 = !DILocation(line: 1651, column: 14, scope: !5618)
!5631 = !DILocalVariable(name: "complete_fn", arg: 6, scope: !5618, file: !6, line: 1652, type: !4741)
!5632 = !DILocation(line: 1652, column: 25, scope: !5618)
!5633 = !DILocalVariable(name: "context", arg: 7, scope: !5618, file: !6, line: 1653, type: !160)
!5634 = !DILocation(line: 1653, column: 16, scope: !5618)
!5635 = !DILocation(line: 1655, column: 13, scope: !5618)
!5636 = !DILocation(line: 1655, column: 2, scope: !5618)
!5637 = !DILocation(line: 1655, column: 7, scope: !5618)
!5638 = !DILocation(line: 1655, column: 11, scope: !5618)
!5639 = !DILocation(line: 1656, column: 14, scope: !5618)
!5640 = !DILocation(line: 1656, column: 2, scope: !5618)
!5641 = !DILocation(line: 1656, column: 7, scope: !5618)
!5642 = !DILocation(line: 1656, column: 12, scope: !5618)
!5643 = !DILocation(line: 1657, column: 25, scope: !5618)
!5644 = !DILocation(line: 1657, column: 2, scope: !5618)
!5645 = !DILocation(line: 1657, column: 7, scope: !5618)
!5646 = !DILocation(line: 1657, column: 23, scope: !5618)
!5647 = !DILocation(line: 1658, column: 32, scope: !5618)
!5648 = !DILocation(line: 1658, column: 2, scope: !5618)
!5649 = !DILocation(line: 1658, column: 7, scope: !5618)
!5650 = !DILocation(line: 1658, column: 30, scope: !5618)
!5651 = !DILocation(line: 1659, column: 18, scope: !5618)
!5652 = !DILocation(line: 1659, column: 2, scope: !5618)
!5653 = !DILocation(line: 1659, column: 7, scope: !5618)
!5654 = !DILocation(line: 1659, column: 16, scope: !5618)
!5655 = !DILocation(line: 1660, column: 17, scope: !5618)
!5656 = !DILocation(line: 1660, column: 2, scope: !5618)
!5657 = !DILocation(line: 1660, column: 7, scope: !5618)
!5658 = !DILocation(line: 1660, column: 15, scope: !5618)
!5659 = !DILocation(line: 1661, column: 1, scope: !5618)
!5660 = distinct !DISubprogram(name: "cbw_callback", scope: !3, file: !3, line: 197, type: !4743, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!5661 = !DILocalVariable(name: "urb", arg: 1, scope: !5660, file: !3, line: 197, type: !4701)
!5662 = !DILocation(line: 197, column: 38, scope: !5660)
!5663 = !DILocalVariable(name: "ushc", scope: !5660, file: !3, line: 199, type: !4695)
!5664 = !DILocation(line: 199, column: 20, scope: !5660)
!5665 = !DILocation(line: 199, column: 27, scope: !5660)
!5666 = !DILocation(line: 199, column: 32, scope: !5660)
!5667 = !DILocation(line: 201, column: 6, scope: !5668)
!5668 = distinct !DILexicalBlock(scope: !5660, file: !3, line: 201, column: 6)
!5669 = !DILocation(line: 201, column: 11, scope: !5668)
!5670 = !DILocation(line: 201, column: 18, scope: !5668)
!5671 = !DILocation(line: 201, column: 6, scope: !5660)
!5672 = !DILocation(line: 202, column: 18, scope: !5673)
!5673 = distinct !DILexicalBlock(scope: !5668, file: !3, line: 201, column: 24)
!5674 = !DILocation(line: 202, column: 24, scope: !5673)
!5675 = !DILocation(line: 202, column: 3, scope: !5673)
!5676 = !DILocation(line: 203, column: 18, scope: !5673)
!5677 = !DILocation(line: 203, column: 24, scope: !5673)
!5678 = !DILocation(line: 203, column: 3, scope: !5673)
!5679 = !DILocation(line: 204, column: 2, scope: !5673)
!5680 = !DILocation(line: 205, column: 1, scope: !5660)
!5681 = distinct !DISubprogram(name: "csw_callback", scope: !3, file: !3, line: 215, type: !4743, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!5682 = !DILocalVariable(name: "urb", arg: 1, scope: !5681, file: !3, line: 215, type: !4701)
!5683 = !DILocation(line: 215, column: 38, scope: !5681)
!5684 = !DILocalVariable(name: "ushc", scope: !5681, file: !3, line: 217, type: !4695)
!5685 = !DILocation(line: 217, column: 20, scope: !5681)
!5686 = !DILocation(line: 217, column: 27, scope: !5681)
!5687 = !DILocation(line: 217, column: 32, scope: !5681)
!5688 = !DILocalVariable(name: "req", scope: !5681, file: !3, line: 218, type: !4518)
!5689 = !DILocation(line: 218, column: 22, scope: !5681)
!5690 = !DILocation(line: 218, column: 28, scope: !5681)
!5691 = !DILocation(line: 218, column: 34, scope: !5681)
!5692 = !DILocalVariable(name: "status", scope: !5681, file: !3, line: 219, type: !167)
!5693 = !DILocation(line: 219, column: 6, scope: !5681)
!5694 = !DILocation(line: 221, column: 11, scope: !5681)
!5695 = !DILocation(line: 221, column: 17, scope: !5681)
!5696 = !DILocation(line: 221, column: 22, scope: !5681)
!5697 = !DILocation(line: 221, column: 9, scope: !5681)
!5698 = !DILocation(line: 223, column: 6, scope: !5699)
!5699 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 223, column: 6)
!5700 = !DILocation(line: 223, column: 11, scope: !5699)
!5701 = !DILocation(line: 223, column: 18, scope: !5699)
!5702 = !DILocation(line: 223, column: 6, scope: !5681)
!5703 = !DILocation(line: 224, column: 21, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5699, file: !3, line: 223, column: 24)
!5705 = !DILocation(line: 224, column: 26, scope: !5704)
!5706 = !DILocation(line: 224, column: 3, scope: !5704)
!5707 = !DILocation(line: 224, column: 8, scope: !5704)
!5708 = !DILocation(line: 224, column: 13, scope: !5704)
!5709 = !DILocation(line: 224, column: 19, scope: !5704)
!5710 = !DILocation(line: 225, column: 2, scope: !5704)
!5711 = !DILocation(line: 225, column: 13, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5699, file: !3, line: 225, column: 13)
!5713 = !DILocation(line: 225, column: 20, scope: !5712)
!5714 = !DILocation(line: 225, column: 13, scope: !5699)
!5715 = !DILocation(line: 226, column: 7, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5717, file: !3, line: 226, column: 7)
!5717 = distinct !DILexicalBlock(scope: !5712, file: !3, line: 225, column: 46)
!5718 = !DILocation(line: 226, column: 14, scope: !5716)
!5719 = !DILocation(line: 226, column: 7, scope: !5717)
!5720 = !DILocation(line: 227, column: 4, scope: !5716)
!5721 = !DILocation(line: 227, column: 9, scope: !5716)
!5722 = !DILocation(line: 227, column: 14, scope: !5716)
!5723 = !DILocation(line: 227, column: 20, scope: !5716)
!5724 = !DILocation(line: 229, column: 4, scope: !5716)
!5725 = !DILocation(line: 229, column: 9, scope: !5716)
!5726 = !DILocation(line: 229, column: 14, scope: !5716)
!5727 = !DILocation(line: 229, column: 20, scope: !5716)
!5728 = !DILocation(line: 230, column: 2, scope: !5717)
!5729 = !DILocation(line: 231, column: 6, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 231, column: 6)
!5731 = !DILocation(line: 231, column: 11, scope: !5730)
!5732 = !DILocation(line: 231, column: 6, scope: !5681)
!5733 = !DILocation(line: 232, column: 7, scope: !5734)
!5734 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 232, column: 7)
!5735 = distinct !DILexicalBlock(scope: !5730, file: !3, line: 231, column: 17)
!5736 = !DILocation(line: 232, column: 14, scope: !5734)
!5737 = !DILocation(line: 232, column: 7, scope: !5735)
!5738 = !DILocation(line: 233, column: 8, scope: !5739)
!5739 = distinct !DILexicalBlock(scope: !5740, file: !3, line: 233, column: 8)
!5740 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 232, column: 40)
!5741 = !DILocation(line: 233, column: 15, scope: !5739)
!5742 = !DILocation(line: 233, column: 8, scope: !5740)
!5743 = !DILocation(line: 234, column: 5, scope: !5739)
!5744 = !DILocation(line: 234, column: 10, scope: !5739)
!5745 = !DILocation(line: 234, column: 16, scope: !5739)
!5746 = !DILocation(line: 234, column: 22, scope: !5739)
!5747 = !DILocation(line: 236, column: 5, scope: !5739)
!5748 = !DILocation(line: 236, column: 10, scope: !5739)
!5749 = !DILocation(line: 236, column: 16, scope: !5739)
!5750 = !DILocation(line: 236, column: 22, scope: !5739)
!5751 = !DILocation(line: 237, column: 4, scope: !5740)
!5752 = !DILocation(line: 237, column: 9, scope: !5740)
!5753 = !DILocation(line: 237, column: 15, scope: !5740)
!5754 = !DILocation(line: 237, column: 28, scope: !5740)
!5755 = !DILocation(line: 238, column: 3, scope: !5740)
!5756 = !DILocation(line: 239, column: 30, scope: !5757)
!5757 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 238, column: 10)
!5758 = !DILocation(line: 239, column: 35, scope: !5757)
!5759 = !DILocation(line: 239, column: 41, scope: !5757)
!5760 = !DILocation(line: 239, column: 49, scope: !5757)
!5761 = !DILocation(line: 239, column: 54, scope: !5757)
!5762 = !DILocation(line: 239, column: 60, scope: !5757)
!5763 = !DILocation(line: 239, column: 47, scope: !5757)
!5764 = !DILocation(line: 239, column: 4, scope: !5757)
!5765 = !DILocation(line: 239, column: 9, scope: !5757)
!5766 = !DILocation(line: 239, column: 15, scope: !5757)
!5767 = !DILocation(line: 239, column: 28, scope: !5757)
!5768 = !DILocation(line: 241, column: 2, scope: !5735)
!5769 = !DILocation(line: 243, column: 22, scope: !5681)
!5770 = !DILocation(line: 243, column: 2, scope: !5681)
!5771 = !DILocation(line: 243, column: 7, scope: !5681)
!5772 = !DILocation(line: 243, column: 12, scope: !5681)
!5773 = !DILocation(line: 243, column: 20, scope: !5681)
!5774 = !DILocation(line: 245, column: 19, scope: !5681)
!5775 = !DILocation(line: 245, column: 25, scope: !5681)
!5776 = !DILocation(line: 245, column: 30, scope: !5681)
!5777 = !DILocation(line: 245, column: 2, scope: !5681)
!5778 = !DILocation(line: 246, column: 1, scope: !5681)
!5779 = distinct !DISubprogram(name: "ushc_clean_up", scope: !3, file: !3, line: 397, type: !5780, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!5780 = !DISubroutineType(types: !5781)
!5781 = !{null, !4695}
!5782 = !DILocalVariable(name: "ushc", arg: 1, scope: !5779, file: !3, line: 397, type: !4695)
!5783 = !DILocation(line: 397, column: 45, scope: !5779)
!5784 = !DILocation(line: 399, column: 15, scope: !5779)
!5785 = !DILocation(line: 399, column: 21, scope: !5779)
!5786 = !DILocation(line: 399, column: 2, scope: !5779)
!5787 = !DILocation(line: 400, column: 15, scope: !5779)
!5788 = !DILocation(line: 400, column: 21, scope: !5779)
!5789 = !DILocation(line: 400, column: 2, scope: !5779)
!5790 = !DILocation(line: 401, column: 15, scope: !5779)
!5791 = !DILocation(line: 401, column: 21, scope: !5779)
!5792 = !DILocation(line: 401, column: 2, scope: !5779)
!5793 = !DILocation(line: 402, column: 15, scope: !5779)
!5794 = !DILocation(line: 402, column: 21, scope: !5779)
!5795 = !DILocation(line: 402, column: 2, scope: !5779)
!5796 = !DILocation(line: 404, column: 8, scope: !5779)
!5797 = !DILocation(line: 404, column: 14, scope: !5779)
!5798 = !DILocation(line: 404, column: 2, scope: !5779)
!5799 = !DILocation(line: 405, column: 8, scope: !5779)
!5800 = !DILocation(line: 405, column: 14, scope: !5779)
!5801 = !DILocation(line: 405, column: 2, scope: !5779)
!5802 = !DILocation(line: 406, column: 8, scope: !5779)
!5803 = !DILocation(line: 406, column: 14, scope: !5779)
!5804 = !DILocation(line: 406, column: 2, scope: !5779)
!5805 = !DILocation(line: 408, column: 16, scope: !5779)
!5806 = !DILocation(line: 408, column: 22, scope: !5779)
!5807 = !DILocation(line: 408, column: 2, scope: !5779)
!5808 = !DILocation(line: 409, column: 1, scope: !5779)
!5809 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !80, file: !80, line: 660, type: !5810, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!5810 = !DISubroutineType(types: !5811)
!5811 = !{null, !196, !160}
!5812 = !DILocalVariable(name: "dev", arg: 1, scope: !5809, file: !80, line: 660, type: !196)
!5813 = !DILocation(line: 660, column: 51, scope: !5809)
!5814 = !DILocalVariable(name: "data", arg: 2, scope: !5809, file: !80, line: 660, type: !160)
!5815 = !DILocation(line: 660, column: 62, scope: !5809)
!5816 = !DILocation(line: 662, column: 21, scope: !5809)
!5817 = !DILocation(line: 662, column: 2, scope: !5809)
!5818 = !DILocation(line: 662, column: 7, scope: !5809)
!5819 = !DILocation(line: 662, column: 19, scope: !5809)
!5820 = !DILocation(line: 663, column: 1, scope: !5809)
!5821 = distinct !DISubprogram(name: "ushc_request", scope: !3, file: !3, line: 248, type: !4597, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!5822 = !DILocalVariable(name: "lock", arg: 1, scope: !5823, file: !4677, line: 407, type: !1047)
!5823 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4677, file: !4677, line: 407, type: !5824, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!5824 = !DISubroutineType(types: !5825)
!5825 = !{null, !1047, !311}
!5826 = !DILocation(line: 407, column: 64, scope: !5823, inlinedAt: !5827)
!5827 = distinct !DILocation(line: 312, column: 2, scope: !5821)
!5828 = !DILocalVariable(name: "flags", arg: 2, scope: !5823, file: !4677, line: 407, type: !311)
!5829 = !DILocation(line: 407, column: 84, scope: !5823, inlinedAt: !5827)
!5830 = !DILocation(line: 327, column: 67, scope: !4676, inlinedAt: !5831)
!5831 = distinct !DILocation(line: 254, column: 2, scope: !5832)
!5832 = distinct !DILexicalBlock(scope: !5833, file: !3, line: 254, column: 2)
!5833 = distinct !DILexicalBlock(scope: !5834, file: !3, line: 254, column: 2)
!5834 = distinct !DILexicalBlock(scope: !5835, file: !3, line: 254, column: 2)
!5835 = distinct !DILexicalBlock(scope: !5836, file: !3, line: 254, column: 2)
!5836 = distinct !DILexicalBlock(scope: !5821, file: !3, line: 254, column: 2)
!5837 = !DILocalVariable(name: "mmc", arg: 1, scope: !5821, file: !3, line: 248, type: !4179)
!5838 = !DILocation(line: 248, column: 43, scope: !5821)
!5839 = !DILocalVariable(name: "req", arg: 2, scope: !5821, file: !3, line: 248, type: !4518)
!5840 = !DILocation(line: 248, column: 68, scope: !5821)
!5841 = !DILocalVariable(name: "ushc", scope: !5821, file: !3, line: 250, type: !4695)
!5842 = !DILocation(line: 250, column: 20, scope: !5821)
!5843 = !DILocation(line: 250, column: 36, scope: !5821)
!5844 = !DILocation(line: 250, column: 27, scope: !5821)
!5845 = !DILocalVariable(name: "ret", scope: !5821, file: !3, line: 251, type: !167)
!5846 = !DILocation(line: 251, column: 6, scope: !5821)
!5847 = !DILocalVariable(name: "flags", scope: !5821, file: !3, line: 252, type: !311)
!5848 = !DILocation(line: 252, column: 16, scope: !5821)
!5849 = !DILocation(line: 254, column: 2, scope: !5821)
!5850 = !DILocation(line: 254, column: 2, scope: !5836)
!5851 = !DILocalVariable(name: "__dummy", scope: !5852, file: !3, line: 254, type: !311)
!5852 = distinct !DILexicalBlock(scope: !5835, file: !3, line: 254, column: 2)
!5853 = !DILocation(line: 254, column: 2, scope: !5852)
!5854 = !DILocalVariable(name: "__dummy2", scope: !5852, file: !3, line: 254, type: !311)
!5855 = !DILocation(line: 254, column: 2, scope: !5835)
!5856 = !DILocation(line: 254, column: 2, scope: !5834)
!5857 = !DILocation(line: 254, column: 2, scope: !5858)
!5858 = distinct !DILexicalBlock(scope: !5834, file: !3, line: 254, column: 2)
!5859 = !DILocalVariable(name: "__dummy", scope: !5860, file: !3, line: 254, type: !311)
!5860 = distinct !DILexicalBlock(scope: !5861, file: !3, line: 254, column: 2)
!5861 = distinct !DILexicalBlock(scope: !5858, file: !3, line: 254, column: 2)
!5862 = !DILocation(line: 254, column: 2, scope: !5860)
!5863 = !DILocalVariable(name: "__dummy2", scope: !5860, file: !3, line: 254, type: !311)
!5864 = !DILocation(line: 254, column: 2, scope: !5861)
!5865 = !DILocation(line: 254, column: 2, scope: !5833)
!5866 = !{i32 -2141832363}
!5867 = !DILocation(line: 254, column: 2, scope: !5832)
!5868 = !DILocation(line: 329, column: 10, scope: !4676, inlinedAt: !5831)
!5869 = !DILocation(line: 329, column: 16, scope: !4676, inlinedAt: !5831)
!5870 = !DILocation(line: 256, column: 30, scope: !5871)
!5871 = distinct !DILexicalBlock(scope: !5821, file: !3, line: 256, column: 6)
!5872 = !DILocation(line: 256, column: 36, scope: !5871)
!5873 = !DILocation(line: 256, column: 6, scope: !5871)
!5874 = !DILocation(line: 256, column: 6, scope: !5821)
!5875 = !DILocation(line: 257, column: 7, scope: !5876)
!5876 = distinct !DILexicalBlock(scope: !5871, file: !3, line: 256, column: 44)
!5877 = !DILocation(line: 258, column: 3, scope: !5876)
!5878 = !DILocation(line: 262, column: 6, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5821, file: !3, line: 262, column: 6)
!5880 = !DILocation(line: 262, column: 11, scope: !5879)
!5881 = !DILocation(line: 262, column: 16, scope: !5879)
!5882 = !DILocation(line: 262, column: 22, scope: !5879)
!5883 = !DILocation(line: 262, column: 6, scope: !5821)
!5884 = !DILocation(line: 263, column: 7, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5879, file: !3, line: 262, column: 37)
!5886 = !DILocation(line: 264, column: 3, scope: !5885)
!5887 = !DILocation(line: 269, column: 6, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5821, file: !3, line: 269, column: 6)
!5889 = !DILocation(line: 269, column: 11, scope: !5888)
!5890 = !DILocation(line: 269, column: 16, scope: !5888)
!5891 = !DILocation(line: 269, column: 19, scope: !5888)
!5892 = !DILocation(line: 269, column: 25, scope: !5888)
!5893 = !DILocation(line: 269, column: 36, scope: !5888)
!5894 = !DILocation(line: 269, column: 6, scope: !5821)
!5895 = !DILocation(line: 270, column: 7, scope: !5896)
!5896 = distinct !DILexicalBlock(scope: !5888, file: !3, line: 269, column: 47)
!5897 = !DILocation(line: 271, column: 3, scope: !5896)
!5898 = !DILocation(line: 274, column: 22, scope: !5821)
!5899 = !DILocation(line: 274, column: 2, scope: !5821)
!5900 = !DILocation(line: 274, column: 8, scope: !5821)
!5901 = !DILocation(line: 274, column: 20, scope: !5821)
!5902 = !DILocation(line: 277, column: 23, scope: !5821)
!5903 = !DILocation(line: 277, column: 2, scope: !5821)
!5904 = !DILocation(line: 277, column: 8, scope: !5821)
!5905 = !DILocation(line: 277, column: 13, scope: !5821)
!5906 = !DILocation(line: 277, column: 21, scope: !5821)
!5907 = !DILocation(line: 278, column: 6, scope: !5908)
!5908 = distinct !DILexicalBlock(scope: !5821, file: !3, line: 278, column: 6)
!5909 = !DILocation(line: 278, column: 11, scope: !5908)
!5910 = !DILocation(line: 278, column: 6, scope: !5821)
!5911 = !DILocation(line: 279, column: 27, scope: !5908)
!5912 = !DILocation(line: 279, column: 3, scope: !5908)
!5913 = !DILocation(line: 279, column: 9, scope: !5908)
!5914 = !DILocation(line: 279, column: 14, scope: !5908)
!5915 = !DILocation(line: 279, column: 25, scope: !5908)
!5916 = !DILocation(line: 281, column: 3, scope: !5908)
!5917 = !DILocation(line: 281, column: 9, scope: !5908)
!5918 = !DILocation(line: 281, column: 14, scope: !5908)
!5919 = !DILocation(line: 281, column: 25, scope: !5908)
!5920 = !DILocation(line: 282, column: 19, scope: !5821)
!5921 = !DILocation(line: 282, column: 2, scope: !5821)
!5922 = !DILocation(line: 282, column: 8, scope: !5821)
!5923 = !DILocation(line: 282, column: 13, scope: !5821)
!5924 = !DILocation(line: 282, column: 17, scope: !5821)
!5925 = !DILocation(line: 284, column: 23, scope: !5821)
!5926 = !DILocation(line: 284, column: 29, scope: !5821)
!5927 = !DILocation(line: 284, column: 8, scope: !5821)
!5928 = !DILocation(line: 284, column: 6, scope: !5821)
!5929 = !DILocation(line: 285, column: 6, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5821, file: !3, line: 285, column: 6)
!5931 = !DILocation(line: 285, column: 10, scope: !5930)
!5932 = !DILocation(line: 285, column: 6, scope: !5821)
!5933 = !DILocation(line: 286, column: 3, scope: !5930)
!5934 = !DILocation(line: 289, column: 6, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5821, file: !3, line: 289, column: 6)
!5936 = !DILocation(line: 289, column: 11, scope: !5935)
!5937 = !DILocation(line: 289, column: 6, scope: !5821)
!5938 = !DILocalVariable(name: "data", scope: !5939, file: !3, line: 290, type: !4534)
!5939 = distinct !DILexicalBlock(scope: !5935, file: !3, line: 289, column: 17)
!5940 = !DILocation(line: 290, column: 20, scope: !5939)
!5941 = !DILocation(line: 290, column: 27, scope: !5939)
!5942 = !DILocation(line: 290, column: 32, scope: !5939)
!5943 = !DILocalVariable(name: "pipe", scope: !5939, file: !3, line: 291, type: !167)
!5944 = !DILocation(line: 291, column: 7, scope: !5939)
!5945 = !DILocation(line: 293, column: 7, scope: !5946)
!5946 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 293, column: 7)
!5947 = !DILocation(line: 293, column: 13, scope: !5946)
!5948 = !DILocation(line: 293, column: 19, scope: !5946)
!5949 = !DILocation(line: 293, column: 7, scope: !5939)
!5950 = !DILocation(line: 294, column: 11, scope: !5946)
!5951 = !DILocation(line: 294, column: 9, scope: !5946)
!5952 = !DILocation(line: 294, column: 4, scope: !5946)
!5953 = !DILocation(line: 296, column: 11, scope: !5946)
!5954 = !DILocation(line: 296, column: 9, scope: !5946)
!5955 = !DILocation(line: 298, column: 21, scope: !5939)
!5956 = !DILocation(line: 298, column: 27, scope: !5939)
!5957 = !DILocation(line: 298, column: 37, scope: !5939)
!5958 = !DILocation(line: 298, column: 43, scope: !5939)
!5959 = !DILocation(line: 298, column: 52, scope: !5939)
!5960 = !DILocation(line: 299, column: 13, scope: !5939)
!5961 = !DILocation(line: 299, column: 19, scope: !5939)
!5962 = !DILocation(line: 299, column: 23, scope: !5939)
!5963 = !DILocation(line: 300, column: 22, scope: !5939)
!5964 = !DILocation(line: 298, column: 3, scope: !5939)
!5965 = !DILocation(line: 301, column: 3, scope: !5939)
!5966 = !DILocation(line: 301, column: 9, scope: !5939)
!5967 = !DILocation(line: 301, column: 19, scope: !5939)
!5968 = !DILocation(line: 301, column: 27, scope: !5939)
!5969 = !DILocation(line: 302, column: 24, scope: !5939)
!5970 = !DILocation(line: 302, column: 30, scope: !5939)
!5971 = !DILocation(line: 302, column: 3, scope: !5939)
!5972 = !DILocation(line: 302, column: 9, scope: !5939)
!5973 = !DILocation(line: 302, column: 19, scope: !5939)
!5974 = !DILocation(line: 302, column: 22, scope: !5939)
!5975 = !DILocation(line: 303, column: 24, scope: !5939)
!5976 = !DILocation(line: 303, column: 30, scope: !5939)
!5977 = !DILocation(line: 303, column: 9, scope: !5939)
!5978 = !DILocation(line: 303, column: 7, scope: !5939)
!5979 = !DILocation(line: 304, column: 7, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 304, column: 7)
!5981 = !DILocation(line: 304, column: 11, scope: !5980)
!5982 = !DILocation(line: 304, column: 7, scope: !5939)
!5983 = !DILocation(line: 305, column: 4, scope: !5980)
!5984 = !DILocation(line: 306, column: 2, scope: !5939)
!5985 = !DILocation(line: 309, column: 23, scope: !5821)
!5986 = !DILocation(line: 309, column: 29, scope: !5821)
!5987 = !DILocation(line: 309, column: 8, scope: !5821)
!5988 = !DILocation(line: 309, column: 6, scope: !5821)
!5989 = !DILocation(line: 309, column: 2, scope: !5821)
!5990 = !DILabel(scope: !5821, name: "out", file: !3, line: 311)
!5991 = !DILocation(line: 311, column: 1, scope: !5821)
!5992 = !DILocation(line: 312, column: 26, scope: !5821)
!5993 = !DILocation(line: 312, column: 32, scope: !5821)
!5994 = !DILocation(line: 312, column: 38, scope: !5821)
!5995 = !DILocalVariable(name: "__dummy", scope: !5996, file: !4677, line: 409, type: !311)
!5996 = distinct !DILexicalBlock(scope: !5997, file: !4677, line: 409, column: 2)
!5997 = distinct !DILexicalBlock(scope: !5823, file: !4677, line: 409, column: 2)
!5998 = !DILocation(line: 409, column: 2, scope: !5996, inlinedAt: !5827)
!5999 = !DILocalVariable(name: "__dummy2", scope: !5996, file: !4677, line: 409, type: !311)
!6000 = !DILocalVariable(name: "__dummy", scope: !6001, file: !4677, line: 409, type: !311)
!6001 = distinct !DILexicalBlock(scope: !6002, file: !4677, line: 409, column: 2)
!6002 = distinct !DILexicalBlock(scope: !6003, file: !4677, line: 409, column: 2)
!6003 = distinct !DILexicalBlock(scope: !6004, file: !4677, line: 409, column: 2)
!6004 = distinct !DILexicalBlock(scope: !5997, file: !4677, line: 409, column: 2)
!6005 = !DILocation(line: 409, column: 2, scope: !6001, inlinedAt: !5827)
!6006 = !DILocalVariable(name: "__dummy2", scope: !6001, file: !4677, line: 409, type: !311)
!6007 = !DILocation(line: 409, column: 2, scope: !6002, inlinedAt: !5827)
!6008 = !DILocation(line: 409, column: 2, scope: !6009, inlinedAt: !5827)
!6009 = distinct !DILexicalBlock(scope: !6004, file: !4677, line: 409, column: 2)
!6010 = !{i32 -2145464305}
!6011 = !DILocation(line: 409, column: 2, scope: !6012, inlinedAt: !5827)
!6012 = distinct !DILexicalBlock(scope: !6009, file: !4677, line: 409, column: 2)
!6013 = !DILocation(line: 313, column: 6, scope: !6014)
!6014 = distinct !DILexicalBlock(scope: !5821, file: !3, line: 313, column: 6)
!6015 = !DILocation(line: 313, column: 10, scope: !6014)
!6016 = !DILocation(line: 313, column: 6, scope: !5821)
!6017 = !DILocation(line: 314, column: 18, scope: !6018)
!6018 = distinct !DILexicalBlock(scope: !6014, file: !3, line: 313, column: 15)
!6019 = !DILocation(line: 314, column: 24, scope: !6018)
!6020 = !DILocation(line: 314, column: 3, scope: !6018)
!6021 = !DILocation(line: 315, column: 18, scope: !6018)
!6022 = !DILocation(line: 315, column: 24, scope: !6018)
!6023 = !DILocation(line: 315, column: 3, scope: !6018)
!6024 = !DILocation(line: 316, column: 21, scope: !6018)
!6025 = !DILocation(line: 316, column: 3, scope: !6018)
!6026 = !DILocation(line: 316, column: 8, scope: !6018)
!6027 = !DILocation(line: 316, column: 13, scope: !6018)
!6028 = !DILocation(line: 316, column: 19, scope: !6018)
!6029 = !DILocation(line: 317, column: 20, scope: !6018)
!6030 = !DILocation(line: 317, column: 25, scope: !6018)
!6031 = !DILocation(line: 317, column: 3, scope: !6018)
!6032 = !DILocation(line: 318, column: 2, scope: !6018)
!6033 = !DILocation(line: 319, column: 1, scope: !5821)
!6034 = distinct !DISubprogram(name: "ushc_set_ios", scope: !3, file: !3, line: 371, type: !4621, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6035 = !DILocalVariable(name: "mmc", arg: 1, scope: !6034, file: !3, line: 371, type: !4179)
!6036 = !DILocation(line: 371, column: 43, scope: !6034)
!6037 = !DILocalVariable(name: "ios", arg: 2, scope: !6034, file: !3, line: 371, type: !4623)
!6038 = !DILocation(line: 371, column: 64, scope: !6034)
!6039 = !DILocalVariable(name: "ushc", scope: !6034, file: !3, line: 373, type: !4695)
!6040 = !DILocation(line: 373, column: 20, scope: !6034)
!6041 = !DILocation(line: 373, column: 36, scope: !6034)
!6042 = !DILocation(line: 373, column: 27, scope: !6034)
!6043 = !DILocation(line: 375, column: 17, scope: !6034)
!6044 = !DILocation(line: 375, column: 23, scope: !6034)
!6045 = !DILocation(line: 375, column: 28, scope: !6034)
!6046 = !DILocation(line: 375, column: 2, scope: !6034)
!6047 = !DILocation(line: 376, column: 21, scope: !6034)
!6048 = !DILocation(line: 376, column: 32, scope: !6034)
!6049 = !DILocation(line: 376, column: 37, scope: !6034)
!6050 = !DILocation(line: 376, column: 29, scope: !6034)
!6051 = !DILocation(line: 376, column: 2, scope: !6034)
!6052 = !DILocation(line: 377, column: 20, scope: !6034)
!6053 = !DILocation(line: 377, column: 26, scope: !6034)
!6054 = !DILocation(line: 377, column: 31, scope: !6034)
!6055 = !DILocation(line: 377, column: 38, scope: !6034)
!6056 = !DILocation(line: 377, column: 43, scope: !6034)
!6057 = !DILocation(line: 377, column: 50, scope: !6034)
!6058 = !DILocation(line: 377, column: 2, scope: !6034)
!6059 = !DILocation(line: 378, column: 1, scope: !6034)
!6060 = distinct !DISubprogram(name: "ushc_get_cd", scope: !3, file: !3, line: 380, type: !4602, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6061 = !DILocalVariable(name: "mmc", arg: 1, scope: !6060, file: !3, line: 380, type: !4179)
!6062 = !DILocation(line: 380, column: 41, scope: !6060)
!6063 = !DILocalVariable(name: "ushc", scope: !6060, file: !3, line: 382, type: !4695)
!6064 = !DILocation(line: 382, column: 20, scope: !6060)
!6065 = !DILocation(line: 382, column: 36, scope: !6060)
!6066 = !DILocation(line: 382, column: 27, scope: !6060)
!6067 = !DILocation(line: 384, column: 12, scope: !6060)
!6068 = !DILocation(line: 384, column: 18, scope: !6060)
!6069 = !DILocation(line: 384, column: 30, scope: !6060)
!6070 = !DILocation(line: 384, column: 10, scope: !6060)
!6071 = !DILocation(line: 384, column: 9, scope: !6060)
!6072 = !DILocation(line: 384, column: 2, scope: !6060)
!6073 = distinct !DISubprogram(name: "ushc_enable_sdio_irq", scope: !3, file: !3, line: 387, type: !4628, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6074 = !DILocalVariable(name: "mmc", arg: 1, scope: !6073, file: !3, line: 387, type: !4179)
!6075 = !DILocation(line: 387, column: 51, scope: !6073)
!6076 = !DILocalVariable(name: "enable", arg: 2, scope: !6073, file: !3, line: 387, type: !167)
!6077 = !DILocation(line: 387, column: 60, scope: !6073)
!6078 = !DILocalVariable(name: "ushc", scope: !6073, file: !3, line: 389, type: !4695)
!6079 = !DILocation(line: 389, column: 20, scope: !6073)
!6080 = !DILocation(line: 389, column: 36, scope: !6073)
!6081 = !DILocation(line: 389, column: 27, scope: !6073)
!6082 = !DILocation(line: 391, column: 6, scope: !6083)
!6083 = distinct !DILexicalBlock(scope: !6073, file: !3, line: 391, column: 6)
!6084 = !DILocation(line: 391, column: 6, scope: !6073)
!6085 = !DILocation(line: 392, column: 20, scope: !6083)
!6086 = !DILocation(line: 392, column: 26, scope: !6083)
!6087 = !DILocation(line: 392, column: 3, scope: !6083)
!6088 = !DILocation(line: 394, column: 22, scope: !6083)
!6089 = !DILocation(line: 394, column: 28, scope: !6083)
!6090 = !DILocation(line: 394, column: 3, scope: !6083)
!6091 = !DILocation(line: 395, column: 1, scope: !6073)
!6092 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !6093, file: !6093, line: 666, type: !6094, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6093 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!6094 = !DISubroutineType(types: !6095)
!6095 = !{!311}
!6096 = !DILocalVariable(name: "f", scope: !6092, file: !6093, line: 668, type: !311)
!6097 = !DILocation(line: 668, column: 16, scope: !6092)
!6098 = !DILocation(line: 670, column: 6, scope: !6092)
!6099 = !DILocation(line: 670, column: 4, scope: !6092)
!6100 = !DILocation(line: 671, column: 2, scope: !6092)
!6101 = !DILocation(line: 672, column: 9, scope: !6092)
!6102 = !DILocation(line: 672, column: 2, scope: !6092)
!6103 = distinct !DISubprogram(name: "test_bit", scope: !6104, file: !6104, line: 132, type: !6105, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6104 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!6105 = !DISubroutineType(types: !6106)
!6106 = !{!473, !296, !6107}
!6107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6108, size: 64)
!6108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6109)
!6109 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !311)
!6110 = !DILocalVariable(name: "nr", arg: 1, scope: !6111, file: !6112, line: 210, type: !296)
!6111 = distinct !DISubprogram(name: "variable_test_bit", scope: !6112, file: !6112, line: 210, type: !6105, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6112 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!6113 = !DILocation(line: 210, column: 52, scope: !6111, inlinedAt: !6114)
!6114 = distinct !DILocation(line: 135, column: 9, scope: !6103)
!6115 = !DILocalVariable(name: "addr", arg: 2, scope: !6111, file: !6112, line: 210, type: !6107)
!6116 = !DILocation(line: 210, column: 86, scope: !6111, inlinedAt: !6114)
!6117 = !DILocalVariable(name: "oldbit", scope: !6111, file: !6112, line: 212, type: !473)
!6118 = !DILocation(line: 212, column: 7, scope: !6111, inlinedAt: !6114)
!6119 = !DILocalVariable(name: "nr", arg: 1, scope: !6120, file: !6112, line: 204, type: !296)
!6120 = distinct !DISubprogram(name: "constant_test_bit", scope: !6112, file: !6112, line: 204, type: !6105, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6121 = !DILocation(line: 204, column: 52, scope: !6120, inlinedAt: !6122)
!6122 = distinct !DILocation(line: 135, column: 9, scope: !6103)
!6123 = !DILocalVariable(name: "addr", arg: 2, scope: !6120, file: !6112, line: 204, type: !6107)
!6124 = !DILocation(line: 204, column: 86, scope: !6120, inlinedAt: !6122)
!6125 = !DILocalVariable(name: "v", arg: 1, scope: !6126, file: !6127, line: 69, type: !6130)
!6126 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6127, file: !6127, line: 69, type: !6128, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6127 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!6128 = !DISubroutineType(types: !6129)
!6129 = !{null, !6130, !308}
!6130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6131, size: 64)
!6131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6132)
!6132 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6133 = !DILocation(line: 69, column: 73, scope: !6126, inlinedAt: !6134)
!6134 = distinct !DILocation(line: 134, column: 2, scope: !6103)
!6135 = !DILocalVariable(name: "size", arg: 2, scope: !6126, file: !6127, line: 69, type: !308)
!6136 = !DILocation(line: 69, column: 83, scope: !6126, inlinedAt: !6134)
!6137 = !DILocalVariable(name: "nr", arg: 1, scope: !6103, file: !6104, line: 132, type: !296)
!6138 = !DILocation(line: 132, column: 34, scope: !6103)
!6139 = !DILocalVariable(name: "addr", arg: 2, scope: !6103, file: !6104, line: 132, type: !6107)
!6140 = !DILocation(line: 132, column: 68, scope: !6103)
!6141 = !DILocation(line: 134, column: 25, scope: !6103)
!6142 = !DILocation(line: 134, column: 32, scope: !6103)
!6143 = !DILocation(line: 134, column: 30, scope: !6103)
!6144 = !DILocation(line: 71, column: 19, scope: !6126, inlinedAt: !6134)
!6145 = !DILocation(line: 71, column: 22, scope: !6126, inlinedAt: !6134)
!6146 = !DILocation(line: 71, column: 2, scope: !6126, inlinedAt: !6134)
!6147 = !DILocation(line: 72, column: 2, scope: !6126, inlinedAt: !6134)
!6148 = !DILocation(line: 135, column: 9, scope: !6103)
!6149 = !DILocation(line: 206, column: 19, scope: !6120, inlinedAt: !6122)
!6150 = !DILocation(line: 206, column: 22, scope: !6120, inlinedAt: !6122)
!6151 = !DILocation(line: 206, column: 15, scope: !6120, inlinedAt: !6122)
!6152 = !DILocation(line: 207, column: 4, scope: !6120, inlinedAt: !6122)
!6153 = !DILocation(line: 207, column: 9, scope: !6120, inlinedAt: !6122)
!6154 = !DILocation(line: 207, column: 12, scope: !6120, inlinedAt: !6122)
!6155 = !DILocation(line: 206, column: 44, scope: !6120, inlinedAt: !6122)
!6156 = !DILocation(line: 207, column: 37, scope: !6120, inlinedAt: !6122)
!6157 = !DILocation(line: 217, column: 33, scope: !6111, inlinedAt: !6114)
!6158 = !DILocation(line: 217, column: 46, scope: !6111, inlinedAt: !6114)
!6159 = !DILocation(line: 214, column: 2, scope: !6111, inlinedAt: !6114)
!6160 = !{i32 -2147132888, i32 -2147132828}
!6161 = !DILocation(line: 219, column: 9, scope: !6111, inlinedAt: !6114)
!6162 = !DILocation(line: 135, column: 2, scope: !6103)
!6163 = distinct !DISubprogram(name: "data_callback", scope: !3, file: !3, line: 207, type: !4743, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6164 = !DILocalVariable(name: "urb", arg: 1, scope: !6163, file: !3, line: 207, type: !4701)
!6165 = !DILocation(line: 207, column: 39, scope: !6163)
!6166 = !DILocalVariable(name: "ushc", scope: !6163, file: !3, line: 209, type: !4695)
!6167 = !DILocation(line: 209, column: 20, scope: !6163)
!6168 = !DILocation(line: 209, column: 27, scope: !6163)
!6169 = !DILocation(line: 209, column: 32, scope: !6163)
!6170 = !DILocation(line: 211, column: 6, scope: !6171)
!6171 = distinct !DILexicalBlock(scope: !6163, file: !3, line: 211, column: 6)
!6172 = !DILocation(line: 211, column: 11, scope: !6171)
!6173 = !DILocation(line: 211, column: 18, scope: !6171)
!6174 = !DILocation(line: 211, column: 6, scope: !6163)
!6175 = !DILocation(line: 212, column: 18, scope: !6171)
!6176 = !DILocation(line: 212, column: 24, scope: !6171)
!6177 = !DILocation(line: 212, column: 3, scope: !6171)
!6178 = !DILocation(line: 213, column: 1, scope: !6163)
!6179 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !6093, file: !6093, line: 646, type: !6094, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6180 = !DILocalVariable(name: "__ret", scope: !6181, file: !6093, line: 648, type: !311)
!6181 = distinct !DILexicalBlock(scope: !6179, file: !6093, line: 648, column: 9)
!6182 = !DILocation(line: 648, column: 9, scope: !6181)
!6183 = !DILocalVariable(name: "__edi", scope: !6181, file: !6093, line: 648, type: !311)
!6184 = !DILocalVariable(name: "__esi", scope: !6181, file: !6093, line: 648, type: !311)
!6185 = !DILocalVariable(name: "__edx", scope: !6181, file: !6093, line: 648, type: !311)
!6186 = !DILocalVariable(name: "__ecx", scope: !6181, file: !6093, line: 648, type: !311)
!6187 = !DILocalVariable(name: "__eax", scope: !6181, file: !6093, line: 648, type: !311)
!6188 = !DILocation(line: 648, column: 9, scope: !6189)
!6189 = distinct !DILexicalBlock(scope: !6190, file: !6093, line: 648, column: 9)
!6190 = distinct !DILexicalBlock(scope: !6181, file: !6093, line: 648, column: 9)
!6191 = !{i32 -2145777874, i32 -2145775559, i32 -2145775325, i32 -2145775274, i32 -2145775246, i32 -2145775221, i32 -2145775537, i32 -2145775524, i32 -2145775086, i32 -2145774967, i32 -2145775432, i32 -2145775405, i32 -2145775377, i32 -2145775347}
!6192 = !DILocalVariable(name: "__mask", scope: !6193, file: !6093, line: 648, type: !311)
!6193 = distinct !DILexicalBlock(scope: !6189, file: !6093, line: 648, column: 9)
!6194 = !DILocation(line: 648, column: 9, scope: !6193)
!6195 = !DILocation(line: 648, column: 9, scope: !6190)
!6196 = !DILocation(line: 648, column: 2, scope: !6179)
!6197 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !6093, file: !6093, line: 656, type: !1858, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6198 = !DILocalVariable(name: "__edi", scope: !6199, file: !6093, line: 658, type: !311)
!6199 = distinct !DILexicalBlock(scope: !6197, file: !6093, line: 658, column: 2)
!6200 = !DILocation(line: 658, column: 2, scope: !6199)
!6201 = !DILocalVariable(name: "__esi", scope: !6199, file: !6093, line: 658, type: !311)
!6202 = !DILocalVariable(name: "__edx", scope: !6199, file: !6093, line: 658, type: !311)
!6203 = !DILocalVariable(name: "__ecx", scope: !6199, file: !6093, line: 658, type: !311)
!6204 = !DILocalVariable(name: "__eax", scope: !6199, file: !6093, line: 658, type: !311)
!6205 = !{i32 -2145770780, i32 -2145770048, i32 -2145769814, i32 -2145769763, i32 -2145769735, i32 -2145769710, i32 -2145770026, i32 -2145770013, i32 -2145769575, i32 -2145769456, i32 -2145769921, i32 -2145769894, i32 -2145769866, i32 -2145769836}
!6206 = !DILocation(line: 659, column: 1, scope: !6197)
!6207 = distinct !DISubprogram(name: "kasan_check_read", scope: !6208, file: !6208, line: 34, type: !6209, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6208 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6209 = !DISubroutineType(types: !6210)
!6210 = !{!473, !6130, !7}
!6211 = !DILocalVariable(name: "p", arg: 1, scope: !6207, file: !6208, line: 34, type: !6130)
!6212 = !DILocation(line: 34, column: 58, scope: !6207)
!6213 = !DILocalVariable(name: "size", arg: 2, scope: !6207, file: !6208, line: 34, type: !7)
!6214 = !DILocation(line: 34, column: 74, scope: !6207)
!6215 = !DILocation(line: 36, column: 2, scope: !6207)
!6216 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6217, file: !6217, line: 178, type: !6218, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6217 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6218 = !DISubroutineType(types: !6219)
!6219 = !{null, !6130, !308, !167}
!6220 = !DILocalVariable(name: "ptr", arg: 1, scope: !6216, file: !6217, line: 178, type: !6130)
!6221 = !DILocation(line: 178, column: 60, scope: !6216)
!6222 = !DILocalVariable(name: "size", arg: 2, scope: !6216, file: !6217, line: 178, type: !308)
!6223 = !DILocation(line: 178, column: 72, scope: !6216)
!6224 = !DILocalVariable(name: "type", arg: 3, scope: !6216, file: !6217, line: 179, type: !167)
!6225 = !DILocation(line: 179, column: 15, scope: !6216)
!6226 = !DILocation(line: 179, column: 23, scope: !6216)
!6227 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !6093, file: !6093, line: 651, type: !6228, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6228 = !DISubroutineType(types: !6229)
!6229 = !{null, !311}
!6230 = !DILocalVariable(name: "f", arg: 1, scope: !6227, file: !6093, line: 651, type: !311)
!6231 = !DILocation(line: 651, column: 65, scope: !6227)
!6232 = !DILocalVariable(name: "__edi", scope: !6233, file: !6093, line: 653, type: !311)
!6233 = distinct !DILexicalBlock(scope: !6227, file: !6093, line: 653, column: 2)
!6234 = !DILocation(line: 653, column: 2, scope: !6233)
!6235 = !DILocalVariable(name: "__esi", scope: !6233, file: !6093, line: 653, type: !311)
!6236 = !DILocalVariable(name: "__edx", scope: !6233, file: !6093, line: 653, type: !311)
!6237 = !DILocalVariable(name: "__ecx", scope: !6233, file: !6093, line: 653, type: !311)
!6238 = !DILocalVariable(name: "__eax", scope: !6233, file: !6093, line: 653, type: !311)
!6239 = !{i32 -2145773407, i32 -2145772657, i32 -2145772423, i32 -2145772372, i32 -2145772344, i32 -2145772319, i32 -2145772635, i32 -2145772622, i32 -2145772184, i32 -2145772065, i32 -2145772530, i32 -2145772503, i32 -2145772475, i32 -2145772445}
!6240 = !DILocation(line: 654, column: 1, scope: !6227)
!6241 = distinct !DISubprogram(name: "ushc_set_power", scope: !3, file: !3, line: 321, type: !6242, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6242 = !DISubroutineType(types: !6243)
!6243 = !{!167, !4695, !410}
!6244 = !DILocalVariable(name: "ushc", arg: 1, scope: !6241, file: !3, line: 321, type: !4695)
!6245 = !DILocation(line: 321, column: 45, scope: !6241)
!6246 = !DILocalVariable(name: "power_mode", arg: 2, scope: !6241, file: !3, line: 321, type: !410)
!6247 = !DILocation(line: 321, column: 65, scope: !6241)
!6248 = !DILocalVariable(name: "voltage", scope: !6241, file: !3, line: 323, type: !842)
!6249 = !DILocation(line: 323, column: 6, scope: !6241)
!6250 = !DILocation(line: 325, column: 10, scope: !6241)
!6251 = !DILocation(line: 325, column: 2, scope: !6241)
!6252 = !DILocation(line: 327, column: 11, scope: !6253)
!6253 = distinct !DILexicalBlock(scope: !6241, file: !3, line: 325, column: 22)
!6254 = !DILocation(line: 328, column: 3, scope: !6253)
!6255 = !DILocation(line: 331, column: 11, scope: !6253)
!6256 = !DILocation(line: 332, column: 3, scope: !6253)
!6257 = !DILocation(line: 334, column: 3, scope: !6253)
!6258 = !DILocation(line: 337, column: 25, scope: !6241)
!6259 = !DILocation(line: 337, column: 31, scope: !6241)
!6260 = !DILocation(line: 337, column: 40, scope: !6241)
!6261 = !DILocation(line: 339, column: 11, scope: !6241)
!6262 = !DILocation(line: 337, column: 9, scope: !6241)
!6263 = !DILocation(line: 337, column: 2, scope: !6241)
!6264 = !DILocation(line: 340, column: 1, scope: !6241)
!6265 = distinct !DISubprogram(name: "ushc_set_bus_width", scope: !3, file: !3, line: 342, type: !6266, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6266 = !DISubroutineType(types: !6267)
!6267 = !{!167, !4695, !167}
!6268 = !DILocalVariable(name: "ushc", arg: 1, scope: !6265, file: !3, line: 342, type: !4695)
!6269 = !DILocation(line: 342, column: 49, scope: !6265)
!6270 = !DILocalVariable(name: "bus_width", arg: 2, scope: !6265, file: !3, line: 342, type: !167)
!6271 = !DILocation(line: 342, column: 59, scope: !6265)
!6272 = !DILocation(line: 344, column: 31, scope: !6265)
!6273 = !DILocation(line: 345, column: 10, scope: !6265)
!6274 = !DILocation(line: 345, column: 20, scope: !6265)
!6275 = !DILocation(line: 344, column: 9, scope: !6265)
!6276 = !DILocation(line: 344, column: 2, scope: !6265)
!6277 = distinct !DISubprogram(name: "ushc_set_bus_freq", scope: !3, file: !3, line: 348, type: !6278, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6278 = !DISubroutineType(types: !6279)
!6279 = !{!167, !4695, !167, !473}
!6280 = !DILocalVariable(name: "ushc", arg: 1, scope: !6277, file: !3, line: 348, type: !4695)
!6281 = !DILocation(line: 348, column: 48, scope: !6277)
!6282 = !DILocalVariable(name: "clk", arg: 2, scope: !6277, file: !3, line: 348, type: !167)
!6283 = !DILocation(line: 348, column: 58, scope: !6277)
!6284 = !DILocalVariable(name: "enable_hs", arg: 3, scope: !6277, file: !3, line: 348, type: !473)
!6285 = !DILocation(line: 348, column: 68, scope: !6277)
!6286 = !DILocalVariable(name: "ret", scope: !6277, file: !3, line: 350, type: !167)
!6287 = !DILocation(line: 350, column: 6, scope: !6277)
!6288 = !DILocation(line: 353, column: 6, scope: !6289)
!6289 = distinct !DILexicalBlock(scope: !6277, file: !3, line: 353, column: 6)
!6290 = !DILocation(line: 353, column: 10, scope: !6289)
!6291 = !DILocation(line: 353, column: 6, scope: !6277)
!6292 = !DILocation(line: 354, column: 7, scope: !6289)
!6293 = !DILocation(line: 354, column: 3, scope: !6289)
!6294 = !DILocation(line: 356, column: 30, scope: !6277)
!6295 = !DILocation(line: 357, column: 9, scope: !6277)
!6296 = !DILocation(line: 356, column: 8, scope: !6277)
!6297 = !DILocation(line: 356, column: 6, scope: !6277)
!6298 = !DILocation(line: 358, column: 6, scope: !6299)
!6299 = distinct !DILexicalBlock(scope: !6277, file: !3, line: 358, column: 6)
!6300 = !DILocation(line: 358, column: 10, scope: !6299)
!6301 = !DILocation(line: 358, column: 6, scope: !6277)
!6302 = !DILocation(line: 359, column: 10, scope: !6299)
!6303 = !DILocation(line: 359, column: 3, scope: !6299)
!6304 = !DILocation(line: 361, column: 24, scope: !6277)
!6305 = !DILocation(line: 361, column: 30, scope: !6277)
!6306 = !DILocation(line: 361, column: 39, scope: !6277)
!6307 = !DILocation(line: 363, column: 10, scope: !6277)
!6308 = !DILocation(line: 363, column: 14, scope: !6277)
!6309 = !DILocation(line: 363, column: 25, scope: !6277)
!6310 = !DILocation(line: 363, column: 29, scope: !6277)
!6311 = !DILocation(line: 363, column: 36, scope: !6277)
!6312 = !DILocation(line: 363, column: 24, scope: !6277)
!6313 = !DILocation(line: 361, column: 8, scope: !6277)
!6314 = !DILocation(line: 361, column: 6, scope: !6277)
!6315 = !DILocation(line: 364, column: 6, scope: !6316)
!6316 = distinct !DILexicalBlock(scope: !6277, file: !3, line: 364, column: 6)
!6317 = !DILocation(line: 364, column: 10, scope: !6316)
!6318 = !DILocation(line: 364, column: 6, scope: !6277)
!6319 = !DILocation(line: 365, column: 10, scope: !6316)
!6320 = !DILocation(line: 365, column: 3, scope: !6316)
!6321 = !DILocation(line: 367, column: 21, scope: !6277)
!6322 = !DILocation(line: 367, column: 2, scope: !6277)
!6323 = !DILocation(line: 367, column: 8, scope: !6277)
!6324 = !DILocation(line: 367, column: 19, scope: !6277)
!6325 = !DILocation(line: 368, column: 2, scope: !6277)
!6326 = !DILocation(line: 369, column: 1, scope: !6277)
!6327 = distinct !DISubprogram(name: "ushc_hw_set_host_ctrl", scope: !3, file: !3, line: 148, type: !6328, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6328 = !DISubroutineType(types: !6329)
!6329 = !{!167, !4695, !842, !842}
!6330 = !DILocalVariable(name: "ushc", arg: 1, scope: !6327, file: !3, line: 148, type: !4695)
!6331 = !DILocation(line: 148, column: 52, scope: !6327)
!6332 = !DILocalVariable(name: "mask", arg: 2, scope: !6327, file: !3, line: 148, type: !842)
!6333 = !DILocation(line: 148, column: 62, scope: !6327)
!6334 = !DILocalVariable(name: "val", arg: 3, scope: !6327, file: !3, line: 148, type: !842)
!6335 = !DILocation(line: 148, column: 72, scope: !6327)
!6336 = !DILocalVariable(name: "host_ctrl", scope: !6327, file: !3, line: 150, type: !842)
!6337 = !DILocation(line: 150, column: 6, scope: !6327)
!6338 = !DILocalVariable(name: "ret", scope: !6327, file: !3, line: 151, type: !167)
!6339 = !DILocation(line: 151, column: 6, scope: !6327)
!6340 = !DILocation(line: 153, column: 15, scope: !6327)
!6341 = !DILocation(line: 153, column: 21, scope: !6327)
!6342 = !DILocation(line: 153, column: 34, scope: !6327)
!6343 = !DILocation(line: 153, column: 33, scope: !6327)
!6344 = !DILocation(line: 153, column: 31, scope: !6327)
!6345 = !DILocation(line: 153, column: 42, scope: !6327)
!6346 = !DILocation(line: 153, column: 40, scope: !6327)
!6347 = !DILocation(line: 153, column: 14, scope: !6327)
!6348 = !DILocation(line: 153, column: 12, scope: !6327)
!6349 = !DILocation(line: 154, column: 24, scope: !6327)
!6350 = !DILocation(line: 154, column: 30, scope: !6327)
!6351 = !DILocation(line: 154, column: 39, scope: !6327)
!6352 = !DILocation(line: 156, column: 10, scope: !6327)
!6353 = !DILocation(line: 154, column: 8, scope: !6327)
!6354 = !DILocation(line: 154, column: 6, scope: !6327)
!6355 = !DILocation(line: 157, column: 6, scope: !6356)
!6356 = distinct !DILexicalBlock(scope: !6327, file: !3, line: 157, column: 6)
!6357 = !DILocation(line: 157, column: 10, scope: !6356)
!6358 = !DILocation(line: 157, column: 6, scope: !6327)
!6359 = !DILocation(line: 158, column: 10, scope: !6356)
!6360 = !DILocation(line: 158, column: 3, scope: !6356)
!6361 = !DILocation(line: 159, column: 20, scope: !6327)
!6362 = !DILocation(line: 159, column: 2, scope: !6327)
!6363 = !DILocation(line: 159, column: 8, scope: !6327)
!6364 = !DILocation(line: 159, column: 18, scope: !6327)
!6365 = !DILocation(line: 160, column: 2, scope: !6327)
!6366 = !DILocation(line: 161, column: 1, scope: !6327)
!6367 = distinct !DISubprogram(name: "set_bit", scope: !6368, file: !6368, line: 26, type: !6369, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6368 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!6369 = !DISubroutineType(types: !6370)
!6370 = !{null, !296, !6371}
!6371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6109, size: 64)
!6372 = !DILocalVariable(name: "nr", arg: 1, scope: !6373, file: !6112, line: 52, type: !296)
!6373 = distinct !DISubprogram(name: "arch_set_bit", scope: !6112, file: !6112, line: 52, type: !6369, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6374 = !DILocation(line: 52, column: 19, scope: !6373, inlinedAt: !6375)
!6375 = distinct !DILocation(line: 29, column: 2, scope: !6367)
!6376 = !DILocalVariable(name: "addr", arg: 2, scope: !6373, file: !6112, line: 52, type: !6371)
!6377 = !DILocation(line: 52, column: 47, scope: !6373, inlinedAt: !6375)
!6378 = !DILocalVariable(name: "v", arg: 1, scope: !6379, file: !6127, line: 84, type: !6130)
!6379 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6127, file: !6127, line: 84, type: !6128, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6380 = !DILocation(line: 84, column: 74, scope: !6379, inlinedAt: !6381)
!6381 = distinct !DILocation(line: 28, column: 2, scope: !6367)
!6382 = !DILocalVariable(name: "size", arg: 2, scope: !6379, file: !6127, line: 84, type: !308)
!6383 = !DILocation(line: 84, column: 84, scope: !6379, inlinedAt: !6381)
!6384 = !DILocalVariable(name: "nr", arg: 1, scope: !6367, file: !6368, line: 26, type: !296)
!6385 = !DILocation(line: 26, column: 33, scope: !6367)
!6386 = !DILocalVariable(name: "addr", arg: 2, scope: !6367, file: !6368, line: 26, type: !6371)
!6387 = !DILocation(line: 26, column: 61, scope: !6367)
!6388 = !DILocation(line: 28, column: 26, scope: !6367)
!6389 = !DILocation(line: 28, column: 33, scope: !6367)
!6390 = !DILocation(line: 28, column: 31, scope: !6367)
!6391 = !DILocation(line: 86, column: 20, scope: !6379, inlinedAt: !6381)
!6392 = !DILocation(line: 86, column: 23, scope: !6379, inlinedAt: !6381)
!6393 = !DILocation(line: 86, column: 2, scope: !6379, inlinedAt: !6381)
!6394 = !DILocation(line: 87, column: 2, scope: !6379, inlinedAt: !6381)
!6395 = !DILocation(line: 29, column: 15, scope: !6367)
!6396 = !DILocation(line: 29, column: 19, scope: !6367)
!6397 = !DILocation(line: 54, column: 27, scope: !6398, inlinedAt: !6375)
!6398 = distinct !DILexicalBlock(scope: !6373, file: !6112, line: 54, column: 6)
!6399 = !DILocation(line: 54, column: 6, scope: !6398, inlinedAt: !6375)
!6400 = !DILocation(line: 54, column: 6, scope: !6373, inlinedAt: !6375)
!6401 = !DILocation(line: 56, column: 6, scope: !6402, inlinedAt: !6375)
!6402 = distinct !DILexicalBlock(scope: !6398, file: !6112, line: 54, column: 32)
!6403 = !DILocation(line: 57, column: 12, scope: !6402, inlinedAt: !6375)
!6404 = !DILocation(line: 55, column: 3, scope: !6402, inlinedAt: !6375)
!6405 = !{i32 -2147142136}
!6406 = !DILocation(line: 59, column: 2, scope: !6402, inlinedAt: !6375)
!6407 = !DILocation(line: 61, column: 8, scope: !6408, inlinedAt: !6375)
!6408 = distinct !DILexicalBlock(scope: !6398, file: !6112, line: 59, column: 9)
!6409 = !DILocation(line: 61, column: 32, scope: !6408, inlinedAt: !6375)
!6410 = !DILocation(line: 60, column: 3, scope: !6408, inlinedAt: !6375)
!6411 = !{i32 -2147142004}
!6412 = !DILocation(line: 30, column: 1, scope: !6367)
!6413 = distinct !DISubprogram(name: "clear_bit", scope: !6368, file: !6368, line: 39, type: !6369, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6414 = !DILocalVariable(name: "nr", arg: 1, scope: !6415, file: !6112, line: 72, type: !296)
!6415 = distinct !DISubprogram(name: "arch_clear_bit", scope: !6112, file: !6112, line: 72, type: !6369, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6416 = !DILocation(line: 72, column: 21, scope: !6415, inlinedAt: !6417)
!6417 = distinct !DILocation(line: 42, column: 2, scope: !6413)
!6418 = !DILocalVariable(name: "addr", arg: 2, scope: !6415, file: !6112, line: 72, type: !6371)
!6419 = !DILocation(line: 72, column: 49, scope: !6415, inlinedAt: !6417)
!6420 = !DILocation(line: 84, column: 74, scope: !6379, inlinedAt: !6421)
!6421 = distinct !DILocation(line: 41, column: 2, scope: !6413)
!6422 = !DILocation(line: 84, column: 84, scope: !6379, inlinedAt: !6421)
!6423 = !DILocalVariable(name: "nr", arg: 1, scope: !6413, file: !6368, line: 39, type: !296)
!6424 = !DILocation(line: 39, column: 35, scope: !6413)
!6425 = !DILocalVariable(name: "addr", arg: 2, scope: !6413, file: !6368, line: 39, type: !6371)
!6426 = !DILocation(line: 39, column: 63, scope: !6413)
!6427 = !DILocation(line: 41, column: 26, scope: !6413)
!6428 = !DILocation(line: 41, column: 33, scope: !6413)
!6429 = !DILocation(line: 41, column: 31, scope: !6413)
!6430 = !DILocation(line: 86, column: 20, scope: !6379, inlinedAt: !6421)
!6431 = !DILocation(line: 86, column: 23, scope: !6379, inlinedAt: !6421)
!6432 = !DILocation(line: 86, column: 2, scope: !6379, inlinedAt: !6421)
!6433 = !DILocation(line: 87, column: 2, scope: !6379, inlinedAt: !6421)
!6434 = !DILocation(line: 42, column: 17, scope: !6413)
!6435 = !DILocation(line: 42, column: 21, scope: !6413)
!6436 = !DILocation(line: 74, column: 27, scope: !6437, inlinedAt: !6417)
!6437 = distinct !DILexicalBlock(scope: !6415, file: !6112, line: 74, column: 6)
!6438 = !DILocation(line: 74, column: 6, scope: !6437, inlinedAt: !6417)
!6439 = !DILocation(line: 74, column: 6, scope: !6415, inlinedAt: !6417)
!6440 = !DILocation(line: 76, column: 6, scope: !6441, inlinedAt: !6417)
!6441 = distinct !DILexicalBlock(scope: !6437, file: !6112, line: 74, column: 32)
!6442 = !DILocation(line: 77, column: 13, scope: !6441, inlinedAt: !6417)
!6443 = !DILocation(line: 77, column: 12, scope: !6441, inlinedAt: !6417)
!6444 = !DILocation(line: 75, column: 3, scope: !6441, inlinedAt: !6417)
!6445 = !{i32 -2147141182}
!6446 = !DILocation(line: 78, column: 2, scope: !6441, inlinedAt: !6417)
!6447 = !DILocation(line: 80, column: 8, scope: !6448, inlinedAt: !6417)
!6448 = distinct !DILexicalBlock(scope: !6437, file: !6112, line: 78, column: 9)
!6449 = !DILocation(line: 80, column: 32, scope: !6448, inlinedAt: !6417)
!6450 = !DILocation(line: 79, column: 3, scope: !6448, inlinedAt: !6417)
!6451 = !{i32 -2147141050}
!6452 = !DILocation(line: 43, column: 1, scope: !6413)
!6453 = distinct !DISubprogram(name: "kasan_check_write", scope: !6208, file: !6208, line: 38, type: !6209, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6454 = !DILocalVariable(name: "p", arg: 1, scope: !6453, file: !6208, line: 38, type: !6130)
!6455 = !DILocation(line: 38, column: 59, scope: !6453)
!6456 = !DILocalVariable(name: "size", arg: 2, scope: !6453, file: !6208, line: 38, type: !7)
!6457 = !DILocation(line: 38, column: 75, scope: !6453)
!6458 = !DILocation(line: 40, column: 2, scope: !6453)
!6459 = distinct !DISubprogram(name: "get_order", scope: !6460, file: !6460, line: 29, type: !6461, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6460 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6461 = !DISubroutineType(types: !6462)
!6462 = !{!167, !311}
!6463 = !DILocalVariable(name: "x", arg: 1, scope: !6464, file: !6112, line: 366, type: !405)
!6464 = distinct !DISubprogram(name: "fls64", scope: !6112, file: !6112, line: 366, type: !6465, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6465 = !DISubroutineType(types: !6466)
!6466 = !{!167, !405}
!6467 = !DILocation(line: 366, column: 40, scope: !6464, inlinedAt: !6468)
!6468 = distinct !DILocation(line: 46, column: 9, scope: !6459)
!6469 = !DILocalVariable(name: "bitpos", scope: !6464, file: !6112, line: 368, type: !167)
!6470 = !DILocation(line: 368, column: 6, scope: !6464, inlinedAt: !6468)
!6471 = !DILocalVariable(name: "size", arg: 1, scope: !6459, file: !6460, line: 29, type: !311)
!6472 = !DILocation(line: 29, column: 63, scope: !6459)
!6473 = !DILocation(line: 31, column: 27, scope: !6474)
!6474 = distinct !DILexicalBlock(scope: !6459, file: !6460, line: 31, column: 6)
!6475 = !DILocation(line: 31, column: 6, scope: !6474)
!6476 = !DILocation(line: 31, column: 6, scope: !6459)
!6477 = !DILocation(line: 32, column: 8, scope: !6478)
!6478 = distinct !DILexicalBlock(scope: !6479, file: !6460, line: 32, column: 7)
!6479 = distinct !DILexicalBlock(scope: !6474, file: !6460, line: 31, column: 34)
!6480 = !DILocation(line: 32, column: 7, scope: !6479)
!6481 = !DILocation(line: 33, column: 4, scope: !6478)
!6482 = !DILocation(line: 35, column: 7, scope: !6483)
!6483 = distinct !DILexicalBlock(scope: !6479, file: !6460, line: 35, column: 7)
!6484 = !DILocation(line: 35, column: 12, scope: !6483)
!6485 = !DILocation(line: 35, column: 7, scope: !6479)
!6486 = !DILocation(line: 36, column: 4, scope: !6483)
!6487 = !DILocation(line: 38, column: 10, scope: !6479)
!6488 = !DILocation(line: 38, column: 28, scope: !6479)
!6489 = !DILocation(line: 38, column: 41, scope: !6479)
!6490 = !DILocation(line: 38, column: 3, scope: !6479)
!6491 = !DILocation(line: 41, column: 6, scope: !6459)
!6492 = !DILocation(line: 42, column: 7, scope: !6459)
!6493 = !DILocation(line: 46, column: 15, scope: !6459)
!6494 = !DILocation(line: 374, column: 2, scope: !6464, inlinedAt: !6468)
!6495 = !DILocation(line: 376, column: 14, scope: !6464, inlinedAt: !6468)
!6496 = !{i32 310085}
!6497 = !DILocation(line: 377, column: 9, scope: !6464, inlinedAt: !6468)
!6498 = !DILocation(line: 377, column: 16, scope: !6464, inlinedAt: !6468)
!6499 = !DILocation(line: 46, column: 2, scope: !6459)
!6500 = !DILocation(line: 48, column: 1, scope: !6459)
!6501 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6502, file: !6502, line: 30, type: !6503, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6502 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6503 = !DISubroutineType(types: !6504)
!6504 = !{!167, !404}
!6505 = !DILocation(line: 366, column: 40, scope: !6464, inlinedAt: !6506)
!6506 = distinct !DILocation(line: 32, column: 9, scope: !6501)
!6507 = !DILocation(line: 368, column: 6, scope: !6464, inlinedAt: !6506)
!6508 = !DILocalVariable(name: "n", arg: 1, scope: !6501, file: !6502, line: 30, type: !404)
!6509 = !DILocation(line: 30, column: 21, scope: !6501)
!6510 = !DILocation(line: 32, column: 15, scope: !6501)
!6511 = !DILocation(line: 374, column: 2, scope: !6464, inlinedAt: !6506)
!6512 = !DILocation(line: 376, column: 14, scope: !6464, inlinedAt: !6506)
!6513 = !DILocation(line: 377, column: 9, scope: !6464, inlinedAt: !6506)
!6514 = !DILocation(line: 377, column: 16, scope: !6464, inlinedAt: !6506)
!6515 = !DILocation(line: 32, column: 18, scope: !6501)
!6516 = !DILocation(line: 32, column: 2, scope: !6501)
!6517 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6518, file: !6518, line: 137, type: !6519, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6518 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6519 = !DISubroutineType(types: !6520)
!6520 = !{!160, !918, !2107, !308, !161}
!6521 = !DILocalVariable(name: "s", arg: 1, scope: !6517, file: !6518, line: 137, type: !918)
!6522 = !DILocation(line: 137, column: 54, scope: !6517)
!6523 = !DILocalVariable(name: "object", arg: 2, scope: !6517, file: !6518, line: 137, type: !2107)
!6524 = !DILocation(line: 137, column: 69, scope: !6517)
!6525 = !DILocalVariable(name: "size", arg: 3, scope: !6517, file: !6518, line: 138, type: !308)
!6526 = !DILocation(line: 138, column: 12, scope: !6517)
!6527 = !DILocalVariable(name: "flags", arg: 4, scope: !6517, file: !6518, line: 138, type: !161)
!6528 = !DILocation(line: 138, column: 24, scope: !6517)
!6529 = !DILocation(line: 140, column: 17, scope: !6517)
!6530 = !DILocation(line: 140, column: 2, scope: !6517)
!6531 = distinct !DISubprogram(name: "test_and_clear_bit", scope: !6368, file: !6368, line: 81, type: !6532, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6532 = !DISubroutineType(types: !6533)
!6533 = !{!473, !296, !6371}
!6534 = !DILocalVariable(name: "nr", arg: 1, scope: !6535, file: !6112, line: 160, type: !296)
!6535 = distinct !DISubprogram(name: "arch_test_and_clear_bit", scope: !6112, file: !6112, line: 160, type: !6532, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6536 = !DILocation(line: 160, column: 30, scope: !6535, inlinedAt: !6537)
!6537 = distinct !DILocation(line: 84, column: 9, scope: !6531)
!6538 = !DILocalVariable(name: "addr", arg: 2, scope: !6535, file: !6112, line: 160, type: !6371)
!6539 = !DILocation(line: 160, column: 58, scope: !6535, inlinedAt: !6537)
!6540 = !DILocalVariable(name: "c", scope: !6541, file: !6112, line: 162, type: !473)
!6541 = distinct !DILexicalBlock(scope: !6535, file: !6112, line: 162, column: 9)
!6542 = !DILocation(line: 162, column: 9, scope: !6541, inlinedAt: !6537)
!6543 = !DILocalVariable(name: "v", arg: 1, scope: !6544, file: !6127, line: 99, type: !6130)
!6544 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6127, file: !6127, line: 99, type: !6128, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6545 = !DILocation(line: 99, column: 79, scope: !6544, inlinedAt: !6546)
!6546 = distinct !DILocation(line: 83, column: 2, scope: !6531)
!6547 = !DILocalVariable(name: "size", arg: 2, scope: !6544, file: !6127, line: 99, type: !308)
!6548 = !DILocation(line: 99, column: 89, scope: !6544, inlinedAt: !6546)
!6549 = !DILocalVariable(name: "nr", arg: 1, scope: !6531, file: !6368, line: 81, type: !296)
!6550 = !DILocation(line: 81, column: 44, scope: !6531)
!6551 = !DILocalVariable(name: "addr", arg: 2, scope: !6531, file: !6368, line: 81, type: !6371)
!6552 = !DILocation(line: 81, column: 72, scope: !6531)
!6553 = !DILocation(line: 83, column: 31, scope: !6531)
!6554 = !DILocation(line: 83, column: 38, scope: !6531)
!6555 = !DILocation(line: 83, column: 36, scope: !6531)
!6556 = !DILocation(line: 101, column: 20, scope: !6544, inlinedAt: !6546)
!6557 = !DILocation(line: 101, column: 23, scope: !6544, inlinedAt: !6546)
!6558 = !DILocation(line: 101, column: 2, scope: !6544, inlinedAt: !6546)
!6559 = !DILocation(line: 102, column: 2, scope: !6544, inlinedAt: !6546)
!6560 = !DILocation(line: 84, column: 33, scope: !6531)
!6561 = !DILocation(line: 84, column: 37, scope: !6531)
!6562 = !{i32 -2147135738, i32 -2147135642}
!6563 = !DILocation(line: 84, column: 2, scope: !6531)
!6564 = distinct !DISubprogram(name: "mmc_signal_sdio_irq", scope: !4173, file: !4173, line: 520, type: !4589, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6565 = !DILocalVariable(name: "host", arg: 1, scope: !6564, file: !4173, line: 520, type: !4179)
!6566 = !DILocation(line: 520, column: 57, scope: !6564)
!6567 = !DILocation(line: 522, column: 2, scope: !6564)
!6568 = !DILocation(line: 522, column: 8, scope: !6564)
!6569 = !DILocation(line: 522, column: 13, scope: !6564)
!6570 = !DILocation(line: 522, column: 29, scope: !6564)
!6571 = !DILocation(line: 523, column: 2, scope: !6564)
!6572 = !DILocation(line: 523, column: 8, scope: !6564)
!6573 = !DILocation(line: 523, column: 25, scope: !6564)
!6574 = !DILocation(line: 524, column: 6, scope: !6575)
!6575 = distinct !DILexicalBlock(scope: !6564, file: !4173, line: 524, column: 6)
!6576 = !DILocation(line: 524, column: 12, scope: !6575)
!6577 = !DILocation(line: 524, column: 6, scope: !6564)
!6578 = !DILocation(line: 525, column: 19, scope: !6575)
!6579 = !DILocation(line: 525, column: 25, scope: !6575)
!6580 = !DILocation(line: 525, column: 3, scope: !6575)
!6581 = !DILocation(line: 526, column: 1, scope: !6564)
!6582 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !5530, file: !5530, line: 308, type: !5531, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6583 = !DILocalVariable(name: "m", arg: 1, scope: !6582, file: !5530, line: 308, type: !2807)
!6584 = !DILocation(line: 308, column: 66, scope: !6582)
!6585 = !DILocation(line: 310, column: 10, scope: !6582)
!6586 = !DILocation(line: 310, column: 12, scope: !6582)
!6587 = !DILocation(line: 310, column: 34, scope: !6582)
!6588 = !DILocation(line: 310, column: 39, scope: !6582)
!6589 = !DILocation(line: 310, column: 2, scope: !6582)
!6590 = distinct !DISubprogram(name: "usb_get_intfdata", scope: !6, file: !6, line: 263, type: !6591, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6591 = !DISubroutineType(types: !6592)
!6592 = !{!160, !3972}
!6593 = !DILocalVariable(name: "intf", arg: 1, scope: !6590, file: !6, line: 263, type: !3972)
!6594 = !DILocation(line: 263, column: 60, scope: !6590)
!6595 = !DILocation(line: 265, column: 26, scope: !6590)
!6596 = !DILocation(line: 265, column: 32, scope: !6590)
!6597 = !DILocation(line: 265, column: 9, scope: !6590)
!6598 = !DILocation(line: 265, column: 2, scope: !6590)
!6599 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !80, file: !80, line: 655, type: !6600, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6600 = !DISubroutineType(types: !6601)
!6601 = !{!160, !3689}
!6602 = !DILocalVariable(name: "dev", arg: 1, scope: !6599, file: !80, line: 655, type: !3689)
!6603 = !DILocation(line: 655, column: 58, scope: !6599)
!6604 = !DILocation(line: 657, column: 9, scope: !6599)
!6605 = !DILocation(line: 657, column: 14, scope: !6599)
!6606 = !DILocation(line: 657, column: 2, scope: !6599)
!6607 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !6093, file: !6093, line: 661, type: !1858, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !234)
!6608 = !DILocalVariable(name: "__edi", scope: !6609, file: !6093, line: 663, type: !311)
!6609 = distinct !DILexicalBlock(scope: !6607, file: !6093, line: 663, column: 2)
!6610 = !DILocation(line: 663, column: 2, scope: !6609)
!6611 = !DILocalVariable(name: "__esi", scope: !6609, file: !6093, line: 663, type: !311)
!6612 = !DILocalVariable(name: "__edx", scope: !6609, file: !6093, line: 663, type: !311)
!6613 = !DILocalVariable(name: "__ecx", scope: !6609, file: !6093, line: 663, type: !311)
!6614 = !DILocalVariable(name: "__eax", scope: !6609, file: !6093, line: 663, type: !311)
!6615 = !{i32 -2145768196, i32 -2145767466, i32 -2145767232, i32 -2145767181, i32 -2145767153, i32 -2145767128, i32 -2145767444, i32 -2145767431, i32 -2145766993, i32 -2145766874, i32 -2145767339, i32 -2145767312, i32 -2145767284, i32 -2145767254}
!6616 = !DILocation(line: 664, column: 1, scope: !6607)
