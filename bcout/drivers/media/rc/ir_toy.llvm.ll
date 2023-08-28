; ModuleID = '../bcout/drivers/media/rc/ir_toy.llvm.bc'
source_filename = "drivers/media/rc/ir_toy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_irtoy_driver_init6:\09\09\09"
module asm ".long\09irtoy_driver_init - .\09\09\09"
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
%struct.irtoy = type { %struct.device*, %struct.usb_device*, %struct.rc_dev*, %struct.urb*, %struct.urb*, i8*, i8*, %struct.completion, i8, i32, i8*, i32, i32, i32, i32, i32, [64 x i8] }
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

@__UNIQUE_ID___addressable_irtoy_driver_init239 = internal global i8* bitcast (i32 ()* @irtoy_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@irtoy_driver = internal global %struct.usb_driver { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @irtoy_probe, void (%struct.usb_interface*)* @irtoy_disconnect, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, %struct.usb_device_id* getelementptr inbounds ([2 x %struct.usb_device_id], [2 x %struct.usb_device_id]* @irtoy_table, i32 0, i32 0), %struct.attribute_group** null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, align 8, !dbg !4142
@__exitcall_irtoy_driver_exit = internal global void ()* @irtoy_driver_exit, section ".exitcall.exit", align 8, !dbg !4117
@__UNIQUE_ID_author240 = internal constant [41 x i8] c"ir_toy.author=Sean Young <sean@mess.org>\00", section ".modinfo", align 1, !dbg !4122
@__UNIQUE_ID_description241 = internal constant [52 x i8] c"ir_toy.description=Infrared Toy and IR Droid driver\00", section ".modinfo", align 1, !dbg !4127
@__UNIQUE_ID_file242 = internal constant [36 x i8] c"ir_toy.file=drivers/media/rc/ir_toy\00", section ".modinfo", align 1, !dbg !4132
@__UNIQUE_ID_license243 = internal constant [19 x i8] c"ir_toy.license=GPL\00", section ".modinfo", align 1, !dbg !4137
@.str = private unnamed_addr constant [7 x i8] c"ir_toy\00", align 1
@irtoy_table = internal constant [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 131, i16 1240, i16 -760, i16 0, i16 0, i8 0, i8 0, i8 0, i8 10, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !4222
@.str.1 = private unnamed_addr constant [30 x i8] c"required endpoints not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"fail to submit in urb: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"version: hardware %u, firmware %u, protocol %u\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"need firmware V%02u or higher\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Infrared Toy\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"rc-rc6-mce\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.7 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"failed to resubmit urb: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [77 x i8] c"invalid version %*phN. Please make sure you are using firmware v20 or higher\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"invalid sample mode response %*phN\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"unexpected response to command: %*phN\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"packet length expected: %*phN\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"fail to submit tx buf urb: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"unexpected response to reset: %*phN\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"out urb status: %d\0A\00", align 1
@COMMAND_RESET = internal constant [7 x i8] c"\FF\FF\00\00\00\00\00", align 1, !dbg !4208
@.str.16 = private unnamed_addr constant [35 x i8] c"could not write reset command: %d\0A\00", align 1
@COMMAND_VERSION = internal constant [1 x i8] c"v", align 1, !dbg !4214
@.str.17 = private unnamed_addr constant [37 x i8] c"could not write version command: %d\0A\00", align 1
@COMMAND_SMODE_ENTER = internal constant [1 x i8] c"s", align 1, !dbg !4217
@.str.18 = private unnamed_addr constant [36 x i8] c"could not write sample command: %d\0A\00", align 1
@__init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4203
@.str.19 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"usb-%s-%s\00", align 1
@COMMAND_TXSTART = internal constant [4 x i8] c"&$%\03", align 1, !dbg !4219
@.str.21 = private unnamed_addr constant [37 x i8] c"failed to send tx start command: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"expected %u emitted, got %u\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_irtoy_driver_init239 to i8*), i8* bitcast (void ()* @irtoy_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_irtoy_driver_exit to i8*), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__UNIQUE_ID_author240, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_description241, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__UNIQUE_ID_file242, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__UNIQUE_ID_license243, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @irtoy_driver_init() #0 section ".init.text" !dbg !4230 {
entry:
  %call = call i32 @usb_register_driver(%struct.usb_driver* @irtoy_driver, %struct.module* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #9, !dbg !4233
  ret i32 %call, !dbg !4233
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @irtoy_driver_exit() #0 section ".exit.text" !dbg !4234 {
entry:
  call void @usb_deregister(%struct.usb_driver* @irtoy_driver) #9, !dbg !4235
  ret void, !dbg !4235
}

; Function Attrs: noredzone
declare dso_local void @usb_deregister(%struct.usb_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_register_driver(%struct.usb_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @irtoy_probe(%struct.usb_interface* %intf, %struct.usb_device_id* %id) #2 !dbg !4236 {
entry:
  %s.addr.i.i95 = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i95, metadata !4237, metadata !DIExpression()), !dbg !4241
  %flags.addr.i17.i96 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i96, metadata !4249, metadata !DIExpression()), !dbg !4250
  %size.addr.i18.i97 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i97, metadata !4251, metadata !DIExpression()), !dbg !4252
  %ret.i.i98 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i98, metadata !4253, metadata !DIExpression()), !dbg !4254
  %retval.i12.i99 = alloca i32, align 4
  %flags.addr.i13.i100 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i100, metadata !4255, metadata !DIExpression()), !dbg !4259
  %retval.i.i101 = alloca i32, align 4
  %size.addr.i11.i102 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i102, metadata !4261, metadata !DIExpression()), !dbg !4265
  %size.addr.i.i.i103 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i103, metadata !4267, metadata !DIExpression()), !dbg !4271
  %flags.addr.i.i.i104 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i104, metadata !4276, metadata !DIExpression()), !dbg !4277
  %order.addr.i.i.i105 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i105, metadata !4278, metadata !DIExpression()), !dbg !4279
  %size.addr.i.i106 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i106, metadata !4280, metadata !DIExpression()), !dbg !4281
  %flags.addr.i.i107 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i107, metadata !4282, metadata !DIExpression()), !dbg !4283
  %order.i.i108 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i108, metadata !4284, metadata !DIExpression()), !dbg !4285
  %retval.i109 = alloca i8*, align 8
  %size.addr.i110 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i110, metadata !4286, metadata !DIExpression()), !dbg !4287
  %flags.addr.i111 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i111, metadata !4288, metadata !DIExpression()), !dbg !4289
  %index.i112 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i112, metadata !4290, metadata !DIExpression()), !dbg !4291
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4237, metadata !DIExpression()), !dbg !4292
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4249, metadata !DIExpression()), !dbg !4295
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4251, metadata !DIExpression()), !dbg !4296
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4253, metadata !DIExpression()), !dbg !4297
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4255, metadata !DIExpression()), !dbg !4298
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4261, metadata !DIExpression()), !dbg !4300
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4267, metadata !DIExpression()), !dbg !4302
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4276, metadata !DIExpression()), !dbg !4305
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4278, metadata !DIExpression()), !dbg !4306
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4280, metadata !DIExpression()), !dbg !4307
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4282, metadata !DIExpression()), !dbg !4308
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4284, metadata !DIExpression()), !dbg !4309
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4286, metadata !DIExpression()), !dbg !4310
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4288, metadata !DIExpression()), !dbg !4311
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4290, metadata !DIExpression()), !dbg !4312
  %retval = alloca i32, align 4
  %intf.addr = alloca %struct.usb_interface*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  %idesc = alloca %struct.usb_host_interface*, align 8
  %usbdev = alloca %struct.usb_device*, align 8
  %ep_in = alloca %struct.usb_endpoint_descriptor*, align 8
  %ep_out = alloca %struct.usb_endpoint_descriptor*, align 8
  %ep = alloca %struct.usb_endpoint_descriptor*, align 8
  %irtoy = alloca %struct.irtoy*, align 8
  %rc = alloca %struct.rc_dev*, align 8
  %urb = alloca %struct.urb*, align 8
  %i = alloca i32, align 4
  %pipe = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4313, metadata !DIExpression()), !dbg !4314
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !4315, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.declare(metadata %struct.usb_host_interface** %idesc, metadata !4317, metadata !DIExpression()), !dbg !4318
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4319
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 1, !dbg !4320
  %1 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting, align 8, !dbg !4320
  store %struct.usb_host_interface* %1, %struct.usb_host_interface** %idesc, align 8, !dbg !4318
  call void @llvm.dbg.declare(metadata %struct.usb_device** %usbdev, metadata !4321, metadata !DIExpression()), !dbg !4322
  %2 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4323
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %2) #9, !dbg !4324
  store %struct.usb_device* %call, %struct.usb_device** %usbdev, align 8, !dbg !4322
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %ep_in, metadata !4325, metadata !DIExpression()), !dbg !4327
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %ep_in, align 8, !dbg !4327
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %ep_out, metadata !4328, metadata !DIExpression()), !dbg !4329
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %ep_out, align 8, !dbg !4329
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %ep, metadata !4330, metadata !DIExpression()), !dbg !4331
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %ep, align 8, !dbg !4331
  call void @llvm.dbg.declare(metadata %struct.irtoy** %irtoy, metadata !4332, metadata !DIExpression()), !dbg !4803
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %rc, metadata !4804, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.declare(metadata %struct.urb** %urb, metadata !4806, metadata !DIExpression()), !dbg !4807
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4808, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.declare(metadata i32* %pipe, metadata !4810, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4812, metadata !DIExpression()), !dbg !4813
  store i32 -12, i32* %err, align 4, !dbg !4813
  store i32 0, i32* %i, align 4, !dbg !4814
  br label %for.cond, !dbg !4816

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !4817
  %4 = load %struct.usb_host_interface*, %struct.usb_host_interface** %idesc, align 8, !dbg !4819
  %desc = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %4, i32 0, i32 0, !dbg !4820
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc, i32 0, i32 4, !dbg !4821
  %5 = load i8, i8* %bNumEndpoints, align 4, !dbg !4821
  %conv = zext i8 %5 to i32, !dbg !4819
  %cmp = icmp slt i32 %3, %conv, !dbg !4822
  br i1 %cmp, label %for.body, label %for.end, !dbg !4823

for.body:                                         ; preds = %for.cond
  %6 = load %struct.usb_host_interface*, %struct.usb_host_interface** %idesc, align 8, !dbg !4824
  %endpoint = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %6, i32 0, i32 3, !dbg !4826
  %7 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint, align 8, !dbg !4826
  %8 = load i32, i32* %i, align 4, !dbg !4827
  %idxprom = sext i32 %8 to i64, !dbg !4824
  %arrayidx = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %7, i64 %idxprom, !dbg !4824
  %desc2 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx, i32 0, i32 0, !dbg !4828
  store %struct.usb_endpoint_descriptor* %desc2, %struct.usb_endpoint_descriptor** %ep, align 8, !dbg !4829
  %9 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_in, align 8, !dbg !4830
  %tobool = icmp ne %struct.usb_endpoint_descriptor* %9, null, !dbg !4830
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4832

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep, align 8, !dbg !4833
  %call3 = call i32 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %10) #9, !dbg !4834
  %tobool4 = icmp ne i32 %call3, 0, !dbg !4834
  br i1 %tobool4, label %land.lhs.true5, label %if.end, !dbg !4835

land.lhs.true5:                                   ; preds = %land.lhs.true
  %11 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep, align 8, !dbg !4836
  %call6 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %11) #9, !dbg !4837
  %cmp7 = icmp eq i32 %call6, 64, !dbg !4838
  br i1 %cmp7, label %if.then, label %if.end, !dbg !4839

if.then:                                          ; preds = %land.lhs.true5
  %12 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep, align 8, !dbg !4840
  store %struct.usb_endpoint_descriptor* %12, %struct.usb_endpoint_descriptor** %ep_in, align 8, !dbg !4841
  br label %if.end, !dbg !4842

if.end:                                           ; preds = %if.then, %land.lhs.true5, %land.lhs.true, %for.body
  %13 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_out, align 8, !dbg !4843
  %tobool9 = icmp ne %struct.usb_endpoint_descriptor* %13, null, !dbg !4843
  br i1 %tobool9, label %if.end18, label %land.lhs.true10, !dbg !4845

land.lhs.true10:                                  ; preds = %if.end
  %14 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep, align 8, !dbg !4846
  %call11 = call i32 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %14) #9, !dbg !4847
  %tobool12 = icmp ne i32 %call11, 0, !dbg !4847
  br i1 %tobool12, label %land.lhs.true13, label %if.end18, !dbg !4848

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %15 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep, align 8, !dbg !4849
  %call14 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %15) #9, !dbg !4850
  %cmp15 = icmp eq i32 %call14, 64, !dbg !4851
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !4852

if.then17:                                        ; preds = %land.lhs.true13
  %16 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep, align 8, !dbg !4853
  store %struct.usb_endpoint_descriptor* %16, %struct.usb_endpoint_descriptor** %ep_out, align 8, !dbg !4854
  br label %if.end18, !dbg !4855

if.end18:                                         ; preds = %if.then17, %land.lhs.true13, %land.lhs.true10, %if.end
  br label %for.inc, !dbg !4856

for.inc:                                          ; preds = %if.end18
  %17 = load i32, i32* %i, align 4, !dbg !4857
  %inc = add i32 %17, 1, !dbg !4857
  store i32 %inc, i32* %i, align 4, !dbg !4857
  br label %for.cond, !dbg !4858, !llvm.loop !4859

for.end:                                          ; preds = %for.cond
  %18 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_in, align 8, !dbg !4861
  %tobool19 = icmp ne %struct.usb_endpoint_descriptor* %18, null, !dbg !4861
  br i1 %tobool19, label %lor.lhs.false, label %if.then21, !dbg !4863

lor.lhs.false:                                    ; preds = %for.end
  %19 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_out, align 8, !dbg !4864
  %tobool20 = icmp ne %struct.usb_endpoint_descriptor* %19, null, !dbg !4864
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !4865

if.then21:                                        ; preds = %lor.lhs.false, %for.end
  %20 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4866
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %20, i32 0, i32 7, !dbg !4866
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0)) #10, !dbg !4866
  store i32 -19, i32* %retval, align 4, !dbg !4868
  br label %return, !dbg !4868

if.end22:                                         ; preds = %lor.lhs.false
  %call23 = call i8* @kzalloc(i64 184, i32 3264) #9, !dbg !4869
  %21 = bitcast i8* %call23 to %struct.irtoy*, !dbg !4869
  store %struct.irtoy* %21, %struct.irtoy** %irtoy, align 8, !dbg !4870
  %22 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !4871
  %tobool24 = icmp ne %struct.irtoy* %22, null, !dbg !4871
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !4873

if.then25:                                        ; preds = %if.end22
  store i32 -12, i32* %retval, align 4, !dbg !4874
  br label %return, !dbg !4874

if.end26:                                         ; preds = %if.end22
  store i64 64, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %23 = load i64, i64* %size.addr.i, align 8, !dbg !4875
  %24 = call i1 @llvm.is.constant.i64(i64 %23) #11, !dbg !4876
  br i1 %24, label %if.then.i, label %if.end9.i, !dbg !4877

if.then.i:                                        ; preds = %if.end26
  %25 = load i64, i64* %size.addr.i, align 8, !dbg !4878
  %cmp.i = icmp ugt i64 %25, 8192, !dbg !4879
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4880

if.then1.i:                                       ; preds = %if.then.i
  %26 = load i64, i64* %size.addr.i, align 8, !dbg !4881
  %27 = load i32, i32* %flags.addr.i, align 4, !dbg !4882
  store i64 %26, i64* %size.addr.i.i, align 8
  store i32 %27, i32* %flags.addr.i.i, align 4
  %28 = load i64, i64* %size.addr.i.i, align 8, !dbg !4883
  %call.i.i = call i32 @get_order(i64 %28) #12, !dbg !4884
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4309
  %29 = load i64, i64* %size.addr.i.i, align 8, !dbg !4885
  %30 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4886
  %31 = load i32, i32* %order.i.i, align 4, !dbg !4887
  store i64 %29, i64* %size.addr.i.i.i, align 8
  store i32 %30, i32* %flags.addr.i.i.i, align 4
  store i32 %31, i32* %order.addr.i.i.i, align 4
  %32 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4888
  %33 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4889
  %34 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4890
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %32, i32 %33, i32 %34) #13, !dbg !4891
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4891
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4891
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4891
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !4891
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4892
  br label %kmalloc.exit, !dbg !4892

if.end.i:                                         ; preds = %if.then.i
  %35 = load i64, i64* %size.addr.i, align 8, !dbg !4893
  store i64 %35, i64* %size.addr.i11.i, align 8
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4894
  %tobool.i.i = icmp ne i64 %36, 0, !dbg !4894
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4896

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4897
  br label %kmalloc_index.exit.i, !dbg !4897

if.end.i.i:                                       ; preds = %if.end.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4898
  %cmp.i.i = icmp ule i64 %37, 8, !dbg !4900
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4901

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4902
  br label %kmalloc_index.exit.i, !dbg !4902

if.end2.i.i:                                      ; preds = %if.end.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4903
  %cmp3.i.i = icmp ugt i64 %38, 64, !dbg !4905
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4906

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4907
  %cmp4.i.i = icmp ule i64 %39, 96, !dbg !4908
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4909

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4910
  br label %kmalloc_index.exit.i, !dbg !4910

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4911
  %cmp7.i.i = icmp ugt i64 %40, 128, !dbg !4913
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4914

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4915
  %cmp9.i.i = icmp ule i64 %41, 192, !dbg !4916
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4917

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4918
  br label %kmalloc_index.exit.i, !dbg !4918

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4919
  %cmp12.i.i = icmp ule i64 %42, 8, !dbg !4921
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4922

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4923
  br label %kmalloc_index.exit.i, !dbg !4923

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4924
  %cmp15.i.i = icmp ule i64 %43, 16, !dbg !4926
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4927

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4928
  br label %kmalloc_index.exit.i, !dbg !4928

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4929
  %cmp18.i.i = icmp ule i64 %44, 32, !dbg !4931
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4932

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4933
  br label %kmalloc_index.exit.i, !dbg !4933

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4934
  %cmp21.i.i = icmp ule i64 %45, 64, !dbg !4936
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4937

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4938
  br label %kmalloc_index.exit.i, !dbg !4938

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4939
  %cmp24.i.i = icmp ule i64 %46, 128, !dbg !4941
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4942

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4943
  br label %kmalloc_index.exit.i, !dbg !4943

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4944
  %cmp27.i.i = icmp ule i64 %47, 256, !dbg !4946
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4947

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4948
  br label %kmalloc_index.exit.i, !dbg !4948

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4949
  %cmp30.i.i = icmp ule i64 %48, 512, !dbg !4951
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4952

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4953
  br label %kmalloc_index.exit.i, !dbg !4953

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4954
  %cmp33.i.i = icmp ule i64 %49, 1024, !dbg !4956
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4957

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4958
  br label %kmalloc_index.exit.i, !dbg !4958

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4959
  %cmp36.i.i = icmp ule i64 %50, 2048, !dbg !4961
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4962

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4963
  br label %kmalloc_index.exit.i, !dbg !4963

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4964
  %cmp39.i.i = icmp ule i64 %51, 4096, !dbg !4966
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4967

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4968
  br label %kmalloc_index.exit.i, !dbg !4968

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4969
  %cmp42.i.i = icmp ule i64 %52, 8192, !dbg !4971
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4972

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4973
  br label %kmalloc_index.exit.i, !dbg !4973

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4974
  %cmp45.i.i = icmp ule i64 %53, 16384, !dbg !4976
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4977

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4978
  br label %kmalloc_index.exit.i, !dbg !4978

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4979
  %cmp48.i.i = icmp ule i64 %54, 32768, !dbg !4981
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4982

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4983
  br label %kmalloc_index.exit.i, !dbg !4983

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4984
  %cmp51.i.i = icmp ule i64 %55, 65536, !dbg !4986
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4987

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4988
  br label %kmalloc_index.exit.i, !dbg !4988

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4989
  %cmp54.i.i = icmp ule i64 %56, 131072, !dbg !4991
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4992

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4993
  br label %kmalloc_index.exit.i, !dbg !4993

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4994
  %cmp57.i.i = icmp ule i64 %57, 262144, !dbg !4996
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4997

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4998
  br label %kmalloc_index.exit.i, !dbg !4998

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4999
  %cmp60.i.i = icmp ule i64 %58, 524288, !dbg !5001
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5002

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5003
  br label %kmalloc_index.exit.i, !dbg !5003

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %59 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5004
  %cmp63.i.i = icmp ule i64 %59, 1048576, !dbg !5006
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5007

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5008
  br label %kmalloc_index.exit.i, !dbg !5008

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %60 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5009
  %cmp66.i.i = icmp ule i64 %60, 2097152, !dbg !5011
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5012

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5013
  br label %kmalloc_index.exit.i, !dbg !5013

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %61 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5014
  %cmp69.i.i = icmp ule i64 %61, 4194304, !dbg !5016
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5017

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5018
  br label %kmalloc_index.exit.i, !dbg !5018

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %62 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5019
  %cmp72.i.i = icmp ule i64 %62, 8388608, !dbg !5021
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5022

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5023
  br label %kmalloc_index.exit.i, !dbg !5023

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %63 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5024
  %cmp75.i.i = icmp ule i64 %63, 16777216, !dbg !5026
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5027

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5028
  br label %kmalloc_index.exit.i, !dbg !5028

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %64 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5029
  %cmp78.i.i = icmp ule i64 %64, 33554432, !dbg !5031
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5032

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5033
  br label %kmalloc_index.exit.i, !dbg !5033

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %65 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5034
  %cmp81.i.i = icmp ule i64 %65, 67108864, !dbg !5036
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5037

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5038
  br label %kmalloc_index.exit.i, !dbg !5038

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !5039, !srcloc !5042
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 210) #11, !dbg !5043, !srcloc !5046
  unreachable, !dbg !5047

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %66 = load i32, i32* %retval.i.i, align 4, !dbg !5048
  store i32 %66, i32* %index.i, align 4, !dbg !5049
  %67 = load i32, i32* %index.i, align 4, !dbg !5050
  %tobool.i = icmp ne i32 %67, 0, !dbg !5050
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5052

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5053
  br label %kmalloc.exit, !dbg !5053

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !5054
  store i32 %68, i32* %flags.addr.i13.i, align 4
  %69 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5055
  %and.i.i = and i32 %69, 17, !dbg !5055
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5055
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5055
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5055
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5055
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5057

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5058
  br label %kmalloc_type.exit.i, !dbg !5058

if.end.i16.i:                                     ; preds = %if.end4.i
  %70 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5059
  %and2.i.i = and i32 %70, 1, !dbg !5060
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5059
  %71 = zext i1 %tobool3.i.i to i64, !dbg !5059
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5059
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5061
  br label %kmalloc_type.exit.i, !dbg !5061

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %72 = load i32, i32* %retval.i12.i, align 4, !dbg !5062
  %idxprom.i = zext i32 %72 to i64, !dbg !5063
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5063
  %73 = load i32, i32* %index.i, align 4, !dbg !5064
  %idxprom6.i = zext i32 %73 to i64, !dbg !5063
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5063
  %74 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5063
  %75 = load i32, i32* %flags.addr.i, align 4, !dbg !5065
  %76 = load i64, i64* %size.addr.i, align 8, !dbg !5066
  store %struct.kmem_cache* %74, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %75, i32* %flags.addr.i17.i, align 4
  store i64 %76, i64* %size.addr.i18.i, align 8
  %77 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5067
  %78 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5068
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %77, i32 %78) #13, !dbg !5069
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5069
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5069
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5069
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !5069
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4297
  %79 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5070
  %80 = load i8*, i8** %ret.i.i, align 8, !dbg !5071
  %81 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5072
  %82 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5073
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %79, i8* %80, i64 %81, i32 %82) #13, !dbg !5074
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5075
  %83 = load i8*, i8** %ret.i.i, align 8, !dbg !5076
  store i8* %83, i8** %retval.i, align 8, !dbg !5077
  br label %kmalloc.exit, !dbg !5077

if.end9.i:                                        ; preds = %if.end26
  %84 = load i64, i64* %size.addr.i, align 8, !dbg !5078
  %85 = load i32, i32* %flags.addr.i, align 4, !dbg !5079
  %call10.i = call noalias i8* @__kmalloc(i64 %84, i32 %85) #13, !dbg !5080
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5080
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5080
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5080
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !5080
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5081
  br label %kmalloc.exit, !dbg !5081

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %86 = load i8*, i8** %retval.i, align 8, !dbg !5082
  %87 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5083
  %in = getelementptr inbounds %struct.irtoy, %struct.irtoy* %87, i32 0, i32 5, !dbg !5084
  store i8* %86, i8** %in, align 8, !dbg !5085
  %88 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5086
  %in28 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %88, i32 0, i32 5, !dbg !5088
  %89 = load i8*, i8** %in28, align 8, !dbg !5088
  %tobool29 = icmp ne i8* %89, null, !dbg !5086
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !5089

if.then30:                                        ; preds = %kmalloc.exit
  br label %free_irtoy, !dbg !5090

if.end31:                                         ; preds = %kmalloc.exit
  store i64 64, i64* %size.addr.i110, align 8
  store i32 3264, i32* %flags.addr.i111, align 4
  %90 = load i64, i64* %size.addr.i110, align 8, !dbg !5091
  %91 = call i1 @llvm.is.constant.i64(i64 %90) #11, !dbg !5092
  br i1 %91, label %if.then.i114, label %if.end9.i238, !dbg !5093

if.then.i114:                                     ; preds = %if.end31
  %92 = load i64, i64* %size.addr.i110, align 8, !dbg !5094
  %cmp.i113 = icmp ugt i64 %92, 8192, !dbg !5095
  br i1 %cmp.i113, label %if.then1.i120, label %if.end.i122, !dbg !5096

if.then1.i120:                                    ; preds = %if.then.i114
  %93 = load i64, i64* %size.addr.i110, align 8, !dbg !5097
  %94 = load i32, i32* %flags.addr.i111, align 4, !dbg !5098
  store i64 %93, i64* %size.addr.i.i106, align 8
  store i32 %94, i32* %flags.addr.i.i107, align 4
  %95 = load i64, i64* %size.addr.i.i106, align 8, !dbg !5099
  %call.i.i115 = call i32 @get_order(i64 %95) #12, !dbg !5100
  store i32 %call.i.i115, i32* %order.i.i108, align 4, !dbg !4285
  %96 = load i64, i64* %size.addr.i.i106, align 8, !dbg !5101
  %97 = load i32, i32* %flags.addr.i.i107, align 4, !dbg !5102
  %98 = load i32, i32* %order.i.i108, align 4, !dbg !5103
  store i64 %96, i64* %size.addr.i.i.i103, align 8
  store i32 %97, i32* %flags.addr.i.i.i104, align 4
  store i32 %98, i32* %order.addr.i.i.i105, align 4
  %99 = load i64, i64* %size.addr.i.i.i103, align 8, !dbg !5104
  %100 = load i32, i32* %flags.addr.i.i.i104, align 4, !dbg !5105
  %101 = load i32, i32* %order.addr.i.i.i105, align 4, !dbg !5106
  %call.i.i.i116 = call noalias i8* @kmalloc_order(i64 %99, i32 %100, i32 %101) #13, !dbg !5107
  %ptrint.i.i.i117 = ptrtoint i8* %call.i.i.i116 to i64, !dbg !5107
  %maskedptr.i.i.i118 = and i64 %ptrint.i.i.i117, 4095, !dbg !5107
  %maskcond.i.i.i119 = icmp eq i64 %maskedptr.i.i.i118, 0, !dbg !5107
  call void @llvm.assume(i1 %maskcond.i.i.i119) #11, !dbg !5107
  store i8* %call.i.i.i116, i8** %retval.i109, align 8, !dbg !5108
  br label %kmalloc.exit239, !dbg !5108

if.end.i122:                                      ; preds = %if.then.i114
  %102 = load i64, i64* %size.addr.i110, align 8, !dbg !5109
  store i64 %102, i64* %size.addr.i11.i102, align 8
  %103 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5110
  %tobool.i.i121 = icmp ne i64 %103, 0, !dbg !5110
  br i1 %tobool.i.i121, label %if.end.i.i125, label %if.then.i.i123, !dbg !5111

if.then.i.i123:                                   ; preds = %if.end.i122
  store i32 0, i32* %retval.i.i101, align 4, !dbg !5112
  br label %kmalloc_index.exit.i211, !dbg !5112

if.end.i.i125:                                    ; preds = %if.end.i122
  %104 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5113
  %cmp.i.i124 = icmp ule i64 %104, 8, !dbg !5114
  br i1 %cmp.i.i124, label %if.then1.i.i126, label %if.end2.i.i128, !dbg !5115

if.then1.i.i126:                                  ; preds = %if.end.i.i125
  store i32 3, i32* %retval.i.i101, align 4, !dbg !5116
  br label %kmalloc_index.exit.i211, !dbg !5116

if.end2.i.i128:                                   ; preds = %if.end.i.i125
  %105 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5117
  %cmp3.i.i127 = icmp ugt i64 %105, 64, !dbg !5118
  br i1 %cmp3.i.i127, label %land.lhs.true.i.i130, label %if.end6.i.i133, !dbg !5119

land.lhs.true.i.i130:                             ; preds = %if.end2.i.i128
  %106 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5120
  %cmp4.i.i129 = icmp ule i64 %106, 96, !dbg !5121
  br i1 %cmp4.i.i129, label %if.then5.i.i131, label %if.end6.i.i133, !dbg !5122

if.then5.i.i131:                                  ; preds = %land.lhs.true.i.i130
  store i32 1, i32* %retval.i.i101, align 4, !dbg !5123
  br label %kmalloc_index.exit.i211, !dbg !5123

if.end6.i.i133:                                   ; preds = %land.lhs.true.i.i130, %if.end2.i.i128
  %107 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5124
  %cmp7.i.i132 = icmp ugt i64 %107, 128, !dbg !5125
  br i1 %cmp7.i.i132, label %land.lhs.true8.i.i135, label %if.end11.i.i138, !dbg !5126

land.lhs.true8.i.i135:                            ; preds = %if.end6.i.i133
  %108 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5127
  %cmp9.i.i134 = icmp ule i64 %108, 192, !dbg !5128
  br i1 %cmp9.i.i134, label %if.then10.i.i136, label %if.end11.i.i138, !dbg !5129

if.then10.i.i136:                                 ; preds = %land.lhs.true8.i.i135
  store i32 2, i32* %retval.i.i101, align 4, !dbg !5130
  br label %kmalloc_index.exit.i211, !dbg !5130

if.end11.i.i138:                                  ; preds = %land.lhs.true8.i.i135, %if.end6.i.i133
  %109 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5131
  %cmp12.i.i137 = icmp ule i64 %109, 8, !dbg !5132
  br i1 %cmp12.i.i137, label %if.then13.i.i139, label %if.end14.i.i141, !dbg !5133

if.then13.i.i139:                                 ; preds = %if.end11.i.i138
  store i32 3, i32* %retval.i.i101, align 4, !dbg !5134
  br label %kmalloc_index.exit.i211, !dbg !5134

if.end14.i.i141:                                  ; preds = %if.end11.i.i138
  %110 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5135
  %cmp15.i.i140 = icmp ule i64 %110, 16, !dbg !5136
  br i1 %cmp15.i.i140, label %if.then16.i.i142, label %if.end17.i.i144, !dbg !5137

if.then16.i.i142:                                 ; preds = %if.end14.i.i141
  store i32 4, i32* %retval.i.i101, align 4, !dbg !5138
  br label %kmalloc_index.exit.i211, !dbg !5138

if.end17.i.i144:                                  ; preds = %if.end14.i.i141
  %111 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5139
  %cmp18.i.i143 = icmp ule i64 %111, 32, !dbg !5140
  br i1 %cmp18.i.i143, label %if.then19.i.i145, label %if.end20.i.i147, !dbg !5141

if.then19.i.i145:                                 ; preds = %if.end17.i.i144
  store i32 5, i32* %retval.i.i101, align 4, !dbg !5142
  br label %kmalloc_index.exit.i211, !dbg !5142

if.end20.i.i147:                                  ; preds = %if.end17.i.i144
  %112 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5143
  %cmp21.i.i146 = icmp ule i64 %112, 64, !dbg !5144
  br i1 %cmp21.i.i146, label %if.then22.i.i148, label %if.end23.i.i150, !dbg !5145

if.then22.i.i148:                                 ; preds = %if.end20.i.i147
  store i32 6, i32* %retval.i.i101, align 4, !dbg !5146
  br label %kmalloc_index.exit.i211, !dbg !5146

if.end23.i.i150:                                  ; preds = %if.end20.i.i147
  %113 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5147
  %cmp24.i.i149 = icmp ule i64 %113, 128, !dbg !5148
  br i1 %cmp24.i.i149, label %if.then25.i.i151, label %if.end26.i.i153, !dbg !5149

if.then25.i.i151:                                 ; preds = %if.end23.i.i150
  store i32 7, i32* %retval.i.i101, align 4, !dbg !5150
  br label %kmalloc_index.exit.i211, !dbg !5150

if.end26.i.i153:                                  ; preds = %if.end23.i.i150
  %114 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5151
  %cmp27.i.i152 = icmp ule i64 %114, 256, !dbg !5152
  br i1 %cmp27.i.i152, label %if.then28.i.i154, label %if.end29.i.i156, !dbg !5153

if.then28.i.i154:                                 ; preds = %if.end26.i.i153
  store i32 8, i32* %retval.i.i101, align 4, !dbg !5154
  br label %kmalloc_index.exit.i211, !dbg !5154

if.end29.i.i156:                                  ; preds = %if.end26.i.i153
  %115 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5155
  %cmp30.i.i155 = icmp ule i64 %115, 512, !dbg !5156
  br i1 %cmp30.i.i155, label %if.then31.i.i157, label %if.end32.i.i159, !dbg !5157

if.then31.i.i157:                                 ; preds = %if.end29.i.i156
  store i32 9, i32* %retval.i.i101, align 4, !dbg !5158
  br label %kmalloc_index.exit.i211, !dbg !5158

if.end32.i.i159:                                  ; preds = %if.end29.i.i156
  %116 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5159
  %cmp33.i.i158 = icmp ule i64 %116, 1024, !dbg !5160
  br i1 %cmp33.i.i158, label %if.then34.i.i160, label %if.end35.i.i162, !dbg !5161

if.then34.i.i160:                                 ; preds = %if.end32.i.i159
  store i32 10, i32* %retval.i.i101, align 4, !dbg !5162
  br label %kmalloc_index.exit.i211, !dbg !5162

if.end35.i.i162:                                  ; preds = %if.end32.i.i159
  %117 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5163
  %cmp36.i.i161 = icmp ule i64 %117, 2048, !dbg !5164
  br i1 %cmp36.i.i161, label %if.then37.i.i163, label %if.end38.i.i165, !dbg !5165

if.then37.i.i163:                                 ; preds = %if.end35.i.i162
  store i32 11, i32* %retval.i.i101, align 4, !dbg !5166
  br label %kmalloc_index.exit.i211, !dbg !5166

if.end38.i.i165:                                  ; preds = %if.end35.i.i162
  %118 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5167
  %cmp39.i.i164 = icmp ule i64 %118, 4096, !dbg !5168
  br i1 %cmp39.i.i164, label %if.then40.i.i166, label %if.end41.i.i168, !dbg !5169

if.then40.i.i166:                                 ; preds = %if.end38.i.i165
  store i32 12, i32* %retval.i.i101, align 4, !dbg !5170
  br label %kmalloc_index.exit.i211, !dbg !5170

if.end41.i.i168:                                  ; preds = %if.end38.i.i165
  %119 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5171
  %cmp42.i.i167 = icmp ule i64 %119, 8192, !dbg !5172
  br i1 %cmp42.i.i167, label %if.then43.i.i169, label %if.end44.i.i171, !dbg !5173

if.then43.i.i169:                                 ; preds = %if.end41.i.i168
  store i32 13, i32* %retval.i.i101, align 4, !dbg !5174
  br label %kmalloc_index.exit.i211, !dbg !5174

if.end44.i.i171:                                  ; preds = %if.end41.i.i168
  %120 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5175
  %cmp45.i.i170 = icmp ule i64 %120, 16384, !dbg !5176
  br i1 %cmp45.i.i170, label %if.then46.i.i172, label %if.end47.i.i174, !dbg !5177

if.then46.i.i172:                                 ; preds = %if.end44.i.i171
  store i32 14, i32* %retval.i.i101, align 4, !dbg !5178
  br label %kmalloc_index.exit.i211, !dbg !5178

if.end47.i.i174:                                  ; preds = %if.end44.i.i171
  %121 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5179
  %cmp48.i.i173 = icmp ule i64 %121, 32768, !dbg !5180
  br i1 %cmp48.i.i173, label %if.then49.i.i175, label %if.end50.i.i177, !dbg !5181

if.then49.i.i175:                                 ; preds = %if.end47.i.i174
  store i32 15, i32* %retval.i.i101, align 4, !dbg !5182
  br label %kmalloc_index.exit.i211, !dbg !5182

if.end50.i.i177:                                  ; preds = %if.end47.i.i174
  %122 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5183
  %cmp51.i.i176 = icmp ule i64 %122, 65536, !dbg !5184
  br i1 %cmp51.i.i176, label %if.then52.i.i178, label %if.end53.i.i180, !dbg !5185

if.then52.i.i178:                                 ; preds = %if.end50.i.i177
  store i32 16, i32* %retval.i.i101, align 4, !dbg !5186
  br label %kmalloc_index.exit.i211, !dbg !5186

if.end53.i.i180:                                  ; preds = %if.end50.i.i177
  %123 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5187
  %cmp54.i.i179 = icmp ule i64 %123, 131072, !dbg !5188
  br i1 %cmp54.i.i179, label %if.then55.i.i181, label %if.end56.i.i183, !dbg !5189

if.then55.i.i181:                                 ; preds = %if.end53.i.i180
  store i32 17, i32* %retval.i.i101, align 4, !dbg !5190
  br label %kmalloc_index.exit.i211, !dbg !5190

if.end56.i.i183:                                  ; preds = %if.end53.i.i180
  %124 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5191
  %cmp57.i.i182 = icmp ule i64 %124, 262144, !dbg !5192
  br i1 %cmp57.i.i182, label %if.then58.i.i184, label %if.end59.i.i186, !dbg !5193

if.then58.i.i184:                                 ; preds = %if.end56.i.i183
  store i32 18, i32* %retval.i.i101, align 4, !dbg !5194
  br label %kmalloc_index.exit.i211, !dbg !5194

if.end59.i.i186:                                  ; preds = %if.end56.i.i183
  %125 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5195
  %cmp60.i.i185 = icmp ule i64 %125, 524288, !dbg !5196
  br i1 %cmp60.i.i185, label %if.then61.i.i187, label %if.end62.i.i189, !dbg !5197

if.then61.i.i187:                                 ; preds = %if.end59.i.i186
  store i32 19, i32* %retval.i.i101, align 4, !dbg !5198
  br label %kmalloc_index.exit.i211, !dbg !5198

if.end62.i.i189:                                  ; preds = %if.end59.i.i186
  %126 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5199
  %cmp63.i.i188 = icmp ule i64 %126, 1048576, !dbg !5200
  br i1 %cmp63.i.i188, label %if.then64.i.i190, label %if.end65.i.i192, !dbg !5201

if.then64.i.i190:                                 ; preds = %if.end62.i.i189
  store i32 20, i32* %retval.i.i101, align 4, !dbg !5202
  br label %kmalloc_index.exit.i211, !dbg !5202

if.end65.i.i192:                                  ; preds = %if.end62.i.i189
  %127 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5203
  %cmp66.i.i191 = icmp ule i64 %127, 2097152, !dbg !5204
  br i1 %cmp66.i.i191, label %if.then67.i.i193, label %if.end68.i.i195, !dbg !5205

if.then67.i.i193:                                 ; preds = %if.end65.i.i192
  store i32 21, i32* %retval.i.i101, align 4, !dbg !5206
  br label %kmalloc_index.exit.i211, !dbg !5206

if.end68.i.i195:                                  ; preds = %if.end65.i.i192
  %128 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5207
  %cmp69.i.i194 = icmp ule i64 %128, 4194304, !dbg !5208
  br i1 %cmp69.i.i194, label %if.then70.i.i196, label %if.end71.i.i198, !dbg !5209

if.then70.i.i196:                                 ; preds = %if.end68.i.i195
  store i32 22, i32* %retval.i.i101, align 4, !dbg !5210
  br label %kmalloc_index.exit.i211, !dbg !5210

if.end71.i.i198:                                  ; preds = %if.end68.i.i195
  %129 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5211
  %cmp72.i.i197 = icmp ule i64 %129, 8388608, !dbg !5212
  br i1 %cmp72.i.i197, label %if.then73.i.i199, label %if.end74.i.i201, !dbg !5213

if.then73.i.i199:                                 ; preds = %if.end71.i.i198
  store i32 23, i32* %retval.i.i101, align 4, !dbg !5214
  br label %kmalloc_index.exit.i211, !dbg !5214

if.end74.i.i201:                                  ; preds = %if.end71.i.i198
  %130 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5215
  %cmp75.i.i200 = icmp ule i64 %130, 16777216, !dbg !5216
  br i1 %cmp75.i.i200, label %if.then76.i.i202, label %if.end77.i.i204, !dbg !5217

if.then76.i.i202:                                 ; preds = %if.end74.i.i201
  store i32 24, i32* %retval.i.i101, align 4, !dbg !5218
  br label %kmalloc_index.exit.i211, !dbg !5218

if.end77.i.i204:                                  ; preds = %if.end74.i.i201
  %131 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5219
  %cmp78.i.i203 = icmp ule i64 %131, 33554432, !dbg !5220
  br i1 %cmp78.i.i203, label %if.then79.i.i205, label %if.end80.i.i207, !dbg !5221

if.then79.i.i205:                                 ; preds = %if.end77.i.i204
  store i32 25, i32* %retval.i.i101, align 4, !dbg !5222
  br label %kmalloc_index.exit.i211, !dbg !5222

if.end80.i.i207:                                  ; preds = %if.end77.i.i204
  %132 = load i64, i64* %size.addr.i11.i102, align 8, !dbg !5223
  %cmp81.i.i206 = icmp ule i64 %132, 67108864, !dbg !5224
  br i1 %cmp81.i.i206, label %if.then82.i.i208, label %if.end83.i.i209, !dbg !5225

if.then82.i.i208:                                 ; preds = %if.end80.i.i207
  store i32 26, i32* %retval.i.i101, align 4, !dbg !5226
  br label %kmalloc_index.exit.i211, !dbg !5226

if.end83.i.i209:                                  ; preds = %if.end80.i.i207
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !5227, !srcloc !5042
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 210) #11, !dbg !5228, !srcloc !5046
  unreachable, !dbg !5229

kmalloc_index.exit.i211:                          ; preds = %if.then82.i.i208, %if.then79.i.i205, %if.then76.i.i202, %if.then73.i.i199, %if.then70.i.i196, %if.then67.i.i193, %if.then64.i.i190, %if.then61.i.i187, %if.then58.i.i184, %if.then55.i.i181, %if.then52.i.i178, %if.then49.i.i175, %if.then46.i.i172, %if.then43.i.i169, %if.then40.i.i166, %if.then37.i.i163, %if.then34.i.i160, %if.then31.i.i157, %if.then28.i.i154, %if.then25.i.i151, %if.then22.i.i148, %if.then19.i.i145, %if.then16.i.i142, %if.then13.i.i139, %if.then10.i.i136, %if.then5.i.i131, %if.then1.i.i126, %if.then.i.i123
  %133 = load i32, i32* %retval.i.i101, align 4, !dbg !5230
  store i32 %133, i32* %index.i112, align 4, !dbg !5231
  %134 = load i32, i32* %index.i112, align 4, !dbg !5232
  %tobool.i210 = icmp ne i32 %134, 0, !dbg !5232
  br i1 %tobool.i210, label %if.end4.i218, label %if.then3.i212, !dbg !5233

if.then3.i212:                                    ; preds = %kmalloc_index.exit.i211
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i109, align 8, !dbg !5234
  br label %kmalloc.exit239, !dbg !5234

if.end4.i218:                                     ; preds = %kmalloc_index.exit.i211
  %135 = load i32, i32* %flags.addr.i111, align 4, !dbg !5235
  store i32 %135, i32* %flags.addr.i13.i100, align 4
  %136 = load i32, i32* %flags.addr.i13.i100, align 4, !dbg !5236
  %and.i.i213 = and i32 %136, 17, !dbg !5236
  %cmp.i14.i214 = icmp eq i32 %and.i.i213, 0, !dbg !5236
  %lnot.i.i215 = xor i1 %cmp.i14.i214, true, !dbg !5236
  %lnot.ext.i.i216 = zext i1 %cmp.i14.i214 to i32, !dbg !5236
  %conv.i.i217 = sext i32 %lnot.ext.i.i216 to i64, !dbg !5236
  br i1 %cmp.i14.i214, label %if.then.i15.i219, label %if.end.i16.i223, !dbg !5237

if.then.i15.i219:                                 ; preds = %if.end4.i218
  store i32 0, i32* %retval.i12.i99, align 4, !dbg !5238
  br label %kmalloc_type.exit.i233, !dbg !5238

if.end.i16.i223:                                  ; preds = %if.end4.i218
  %137 = load i32, i32* %flags.addr.i13.i100, align 4, !dbg !5239
  %and2.i.i220 = and i32 %137, 1, !dbg !5240
  %tobool3.i.i221 = icmp ne i32 %and2.i.i220, 0, !dbg !5239
  %138 = zext i1 %tobool3.i.i221 to i64, !dbg !5239
  %cond.i.i222 = select i1 %tobool3.i.i221, i32 2, i32 1, !dbg !5239
  store i32 %cond.i.i222, i32* %retval.i12.i99, align 4, !dbg !5241
  br label %kmalloc_type.exit.i233, !dbg !5241

kmalloc_type.exit.i233:                           ; preds = %if.end.i16.i223, %if.then.i15.i219
  %139 = load i32, i32* %retval.i12.i99, align 4, !dbg !5242
  %idxprom.i224 = zext i32 %139 to i64, !dbg !5243
  %arrayidx.i225 = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i224, !dbg !5243
  %140 = load i32, i32* %index.i112, align 4, !dbg !5244
  %idxprom6.i226 = zext i32 %140 to i64, !dbg !5243
  %arrayidx7.i227 = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i225, i64 0, i64 %idxprom6.i226, !dbg !5243
  %141 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i227, align 8, !dbg !5243
  %142 = load i32, i32* %flags.addr.i111, align 4, !dbg !5245
  %143 = load i64, i64* %size.addr.i110, align 8, !dbg !5246
  store %struct.kmem_cache* %141, %struct.kmem_cache** %s.addr.i.i95, align 8
  store i32 %142, i32* %flags.addr.i17.i96, align 4
  store i64 %143, i64* %size.addr.i18.i97, align 8
  %144 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i95, align 8, !dbg !5247
  %145 = load i32, i32* %flags.addr.i17.i96, align 4, !dbg !5248
  %call.i19.i228 = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %144, i32 %145) #13, !dbg !5249
  %ptrint.i.i229 = ptrtoint i8* %call.i19.i228 to i64, !dbg !5249
  %maskedptr.i.i230 = and i64 %ptrint.i.i229, 7, !dbg !5249
  %maskcond.i.i231 = icmp eq i64 %maskedptr.i.i230, 0, !dbg !5249
  call void @llvm.assume(i1 %maskcond.i.i231) #11, !dbg !5249
  store i8* %call.i19.i228, i8** %ret.i.i98, align 8, !dbg !4254
  %146 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i95, align 8, !dbg !5250
  %147 = load i8*, i8** %ret.i.i98, align 8, !dbg !5251
  %148 = load i64, i64* %size.addr.i18.i97, align 8, !dbg !5252
  %149 = load i32, i32* %flags.addr.i17.i96, align 4, !dbg !5253
  %call1.i.i232 = call i8* @kasan_kmalloc(%struct.kmem_cache* %146, i8* %147, i64 %148, i32 %149) #13, !dbg !5254
  store i8* %call1.i.i232, i8** %ret.i.i98, align 8, !dbg !5255
  %150 = load i8*, i8** %ret.i.i98, align 8, !dbg !5256
  store i8* %150, i8** %retval.i109, align 8, !dbg !5257
  br label %kmalloc.exit239, !dbg !5257

if.end9.i238:                                     ; preds = %if.end31
  %151 = load i64, i64* %size.addr.i110, align 8, !dbg !5258
  %152 = load i32, i32* %flags.addr.i111, align 4, !dbg !5259
  %call10.i234 = call noalias i8* @__kmalloc(i64 %151, i32 %152) #13, !dbg !5260
  %ptrint.i235 = ptrtoint i8* %call10.i234 to i64, !dbg !5260
  %maskedptr.i236 = and i64 %ptrint.i235, 7, !dbg !5260
  %maskcond.i237 = icmp eq i64 %maskedptr.i236, 0, !dbg !5260
  call void @llvm.assume(i1 %maskcond.i237) #11, !dbg !5260
  store i8* %call10.i234, i8** %retval.i109, align 8, !dbg !5261
  br label %kmalloc.exit239, !dbg !5261

kmalloc.exit239:                                  ; preds = %if.then1.i120, %if.then3.i212, %kmalloc_type.exit.i233, %if.end9.i238
  %153 = load i8*, i8** %retval.i109, align 8, !dbg !5262
  %154 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5263
  %out = getelementptr inbounds %struct.irtoy, %struct.irtoy* %154, i32 0, i32 6, !dbg !5264
  store i8* %153, i8** %out, align 8, !dbg !5265
  %155 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5266
  %out33 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %155, i32 0, i32 6, !dbg !5268
  %156 = load i8*, i8** %out33, align 8, !dbg !5268
  %tobool34 = icmp ne i8* %156, null, !dbg !5266
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !5269

if.then35:                                        ; preds = %kmalloc.exit239
  br label %free_irtoy, !dbg !5270

if.end36:                                         ; preds = %kmalloc.exit239
  %call37 = call %struct.rc_dev* @rc_allocate_device(i32 1) #9, !dbg !5271
  store %struct.rc_dev* %call37, %struct.rc_dev** %rc, align 8, !dbg !5272
  %157 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5273
  %tobool38 = icmp ne %struct.rc_dev* %157, null, !dbg !5273
  br i1 %tobool38, label %if.end40, label %if.then39, !dbg !5275

if.then39:                                        ; preds = %if.end36
  br label %free_irtoy, !dbg !5276

if.end40:                                         ; preds = %if.end36
  %call41 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #9, !dbg !5277
  store %struct.urb* %call41, %struct.urb** %urb, align 8, !dbg !5278
  %158 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5279
  %tobool42 = icmp ne %struct.urb* %158, null, !dbg !5279
  br i1 %tobool42, label %if.end44, label %if.then43, !dbg !5281

if.then43:                                        ; preds = %if.end40
  br label %free_rcdev, !dbg !5282

if.end44:                                         ; preds = %if.end40
  %159 = load %struct.usb_device*, %struct.usb_device** %usbdev, align 8, !dbg !5283
  %160 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_in, align 8, !dbg !5283
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %160, i32 0, i32 2, !dbg !5283
  %161 = load i8, i8* %bEndpointAddress, align 1, !dbg !5283
  %conv45 = zext i8 %161 to i32, !dbg !5283
  %call46 = call i32 @__create_pipe(%struct.usb_device* %159, i32 %conv45) #9, !dbg !5283
  %or = or i32 -1073741824, %call46, !dbg !5283
  %or47 = or i32 %or, 128, !dbg !5283
  store i32 %or47, i32* %pipe, align 4, !dbg !5284
  %162 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5285
  %163 = load %struct.usb_device*, %struct.usb_device** %usbdev, align 8, !dbg !5286
  %164 = load i32, i32* %pipe, align 4, !dbg !5287
  %165 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5288
  %in48 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %165, i32 0, i32 5, !dbg !5289
  %166 = load i8*, i8** %in48, align 8, !dbg !5289
  %167 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5290
  %168 = bitcast %struct.irtoy* %167 to i8*, !dbg !5290
  call void @usb_fill_bulk_urb(%struct.urb* %162, %struct.usb_device* %163, i32 %164, i8* %166, i32 64, void (%struct.urb*)* @irtoy_in_callback, i8* %168) #9, !dbg !5291
  %169 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5292
  %170 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5293
  %urb_in = getelementptr inbounds %struct.irtoy, %struct.irtoy* %170, i32 0, i32 3, !dbg !5294
  store %struct.urb* %169, %struct.urb** %urb_in, align 8, !dbg !5295
  %call49 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #9, !dbg !5296
  store %struct.urb* %call49, %struct.urb** %urb, align 8, !dbg !5297
  %171 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5298
  %tobool50 = icmp ne %struct.urb* %171, null, !dbg !5298
  br i1 %tobool50, label %if.end52, label %if.then51, !dbg !5300

if.then51:                                        ; preds = %if.end44
  br label %free_rcdev, !dbg !5301

if.end52:                                         ; preds = %if.end44
  %172 = load %struct.usb_device*, %struct.usb_device** %usbdev, align 8, !dbg !5302
  %173 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_out, align 8, !dbg !5302
  %bEndpointAddress53 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %173, i32 0, i32 2, !dbg !5302
  %174 = load i8, i8* %bEndpointAddress53, align 1, !dbg !5302
  %conv54 = zext i8 %174 to i32, !dbg !5302
  %call55 = call i32 @__create_pipe(%struct.usb_device* %172, i32 %conv54) #9, !dbg !5302
  %or56 = or i32 -1073741824, %call55, !dbg !5302
  store i32 %or56, i32* %pipe, align 4, !dbg !5303
  %175 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5304
  %176 = load %struct.usb_device*, %struct.usb_device** %usbdev, align 8, !dbg !5305
  %177 = load i32, i32* %pipe, align 4, !dbg !5306
  %178 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5307
  %out57 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %178, i32 0, i32 6, !dbg !5308
  %179 = load i8*, i8** %out57, align 8, !dbg !5308
  %180 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5309
  %181 = bitcast %struct.irtoy* %180 to i8*, !dbg !5309
  call void @usb_fill_bulk_urb(%struct.urb* %175, %struct.usb_device* %176, i32 %177, i8* %179, i32 64, void (%struct.urb*)* @irtoy_out_callback, i8* %181) #9, !dbg !5310
  %182 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5311
  %dev58 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %182, i32 0, i32 7, !dbg !5312
  %183 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5313
  %dev59 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %183, i32 0, i32 0, !dbg !5314
  store %struct.device* %dev58, %struct.device** %dev59, align 8, !dbg !5315
  %184 = load %struct.usb_device*, %struct.usb_device** %usbdev, align 8, !dbg !5316
  %185 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5317
  %usbdev60 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %185, i32 0, i32 1, !dbg !5318
  store %struct.usb_device* %184, %struct.usb_device** %usbdev60, align 8, !dbg !5319
  %186 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5320
  %187 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5321
  %rc61 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %187, i32 0, i32 2, !dbg !5322
  store %struct.rc_dev* %186, %struct.rc_dev** %rc61, align 8, !dbg !5323
  %188 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5324
  %189 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5325
  %urb_out = getelementptr inbounds %struct.irtoy, %struct.irtoy* %189, i32 0, i32 4, !dbg !5326
  store %struct.urb* %188, %struct.urb** %urb_out, align 8, !dbg !5327
  %190 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5328
  %pulse = getelementptr inbounds %struct.irtoy, %struct.irtoy* %190, i32 0, i32 8, !dbg !5329
  store i8 1, i8* %pulse, align 8, !dbg !5330
  %191 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5331
  %urb_in62 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %191, i32 0, i32 3, !dbg !5332
  %192 = load %struct.urb*, %struct.urb** %urb_in62, align 8, !dbg !5332
  %call63 = call i32 @usb_submit_urb(%struct.urb* %192, i32 3264) #9, !dbg !5333
  store i32 %call63, i32* %err, align 4, !dbg !5334
  %193 = load i32, i32* %err, align 4, !dbg !5335
  %cmp64 = icmp ne i32 %193, 0, !dbg !5337
  br i1 %cmp64, label %if.then66, label %if.end68, !dbg !5338

if.then66:                                        ; preds = %if.end52
  %194 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5339
  %dev67 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %194, i32 0, i32 0, !dbg !5339
  %195 = load %struct.device*, %struct.device** %dev67, align 8, !dbg !5339
  %196 = load i32, i32* %err, align 4, !dbg !5339
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %195, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %196) #10, !dbg !5339
  %197 = load i32, i32* %err, align 4, !dbg !5341
  store i32 %197, i32* %retval, align 4, !dbg !5342
  br label %return, !dbg !5342

if.end68:                                         ; preds = %if.end52
  %198 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5343
  %call69 = call i32 @irtoy_setup(%struct.irtoy* %198) #9, !dbg !5344
  store i32 %call69, i32* %err, align 4, !dbg !5345
  %199 = load i32, i32* %err, align 4, !dbg !5346
  %tobool70 = icmp ne i32 %199, 0, !dbg !5346
  br i1 %tobool70, label %if.then71, label %if.end72, !dbg !5348

if.then71:                                        ; preds = %if.end68
  br label %free_rcdev, !dbg !5349

if.end72:                                         ; preds = %if.end68
  %200 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5350
  %dev73 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %200, i32 0, i32 0, !dbg !5350
  %201 = load %struct.device*, %struct.device** %dev73, align 8, !dbg !5350
  %202 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5350
  %hw_version = getelementptr inbounds %struct.irtoy, %struct.irtoy* %202, i32 0, i32 13, !dbg !5350
  %203 = load i32, i32* %hw_version, align 8, !dbg !5350
  %204 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5350
  %sw_version = getelementptr inbounds %struct.irtoy, %struct.irtoy* %204, i32 0, i32 14, !dbg !5350
  %205 = load i32, i32* %sw_version, align 4, !dbg !5350
  %206 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5350
  %proto_version = getelementptr inbounds %struct.irtoy, %struct.irtoy* %206, i32 0, i32 15, !dbg !5350
  %207 = load i32, i32* %proto_version, align 8, !dbg !5350
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %201, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %203, i32 %205, i32 %207) #10, !dbg !5350
  %208 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5351
  %sw_version74 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %208, i32 0, i32 14, !dbg !5353
  %209 = load i32, i32* %sw_version74, align 4, !dbg !5353
  %cmp75 = icmp ult i32 %209, 20, !dbg !5354
  br i1 %cmp75, label %if.then77, label %if.end79, !dbg !5355

if.then77:                                        ; preds = %if.end72
  %210 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5356
  %dev78 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %210, i32 0, i32 0, !dbg !5356
  %211 = load %struct.device*, %struct.device** %dev78, align 8, !dbg !5356
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %211, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 20) #10, !dbg !5356
  store i32 -19, i32* %err, align 4, !dbg !5358
  br label %free_rcdev, !dbg !5359

if.end79:                                         ; preds = %if.end72
  %212 = load %struct.usb_device*, %struct.usb_device** %usbdev, align 8, !dbg !5360
  %213 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5361
  %phys = getelementptr inbounds %struct.irtoy, %struct.irtoy* %213, i32 0, i32 16, !dbg !5362
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %phys, i64 0, i64 0, !dbg !5361
  %call80 = call i32 @usb_make_path(%struct.usb_device* %212, i8* %arraydecay, i64 64) #9, !dbg !5363
  %214 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5364
  %device_name = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %214, i32 0, i32 3, !dbg !5365
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %device_name, align 8, !dbg !5366
  %215 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5367
  %driver_name = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %215, i32 0, i32 6, !dbg !5368
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %driver_name, align 8, !dbg !5369
  %216 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5370
  %phys81 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %216, i32 0, i32 16, !dbg !5371
  %arraydecay82 = getelementptr inbounds [64 x i8], [64 x i8]* %phys81, i64 0, i64 0, !dbg !5370
  %217 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5372
  %input_phys = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %217, i32 0, i32 4, !dbg !5373
  store i8* %arraydecay82, i8** %input_phys, align 8, !dbg !5374
  %218 = load %struct.usb_device*, %struct.usb_device** %usbdev, align 8, !dbg !5375
  %219 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5376
  %input_id = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %219, i32 0, i32 5, !dbg !5377
  call void @usb_to_input_id(%struct.usb_device* %218, %struct.input_id* %input_id) #9, !dbg !5378
  %220 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5379
  %dev83 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %220, i32 0, i32 7, !dbg !5380
  %221 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5381
  %dev84 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %221, i32 0, i32 0, !dbg !5382
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev84, i32 0, i32 1, !dbg !5383
  store %struct.device* %dev83, %struct.device** %parent, align 8, !dbg !5384
  %222 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5385
  %223 = bitcast %struct.irtoy* %222 to i8*, !dbg !5385
  %224 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5386
  %priv = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %224, i32 0, i32 24, !dbg !5387
  store i8* %223, i8** %priv, align 8, !dbg !5388
  %225 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5389
  %tx_ir = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %225, i32 0, i32 47, !dbg !5390
  store i32 (%struct.rc_dev*, i32*, i32)* @irtoy_tx, i32 (%struct.rc_dev*, i32*, i32)** %tx_ir, align 8, !dbg !5391
  %226 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5392
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %226, i32 0, i32 16, !dbg !5393
  store i64 0, i64* %allowed_protocols, align 8, !dbg !5394
  %227 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5395
  %map_name = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %227, i32 0, i32 7, !dbg !5396
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %map_name, align 8, !dbg !5397
  %228 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5398
  %rx_resolution = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %228, i32 0, i32 37, !dbg !5399
  store i32 21, i32* %rx_resolution, align 8, !dbg !5400
  %229 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5401
  %timeout = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %229, i32 0, i32 34, !dbg !5402
  store i32 125000, i32* %timeout, align 4, !dbg !5403
  %230 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5404
  %min_timeout = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %230, i32 0, i32 35, !dbg !5405
  store i32 40000, i32* %min_timeout, align 8, !dbg !5406
  %231 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5407
  %max_timeout = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %231, i32 0, i32 36, !dbg !5408
  store i32 1376235, i32* %max_timeout, align 4, !dbg !5409
  %232 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5410
  %call85 = call i32 @rc_register_device(%struct.rc_dev* %232) #9, !dbg !5411
  store i32 %call85, i32* %err, align 4, !dbg !5412
  %233 = load i32, i32* %err, align 4, !dbg !5413
  %tobool86 = icmp ne i32 %233, 0, !dbg !5413
  br i1 %tobool86, label %if.then87, label %if.end88, !dbg !5415

if.then87:                                        ; preds = %if.end79
  br label %free_rcdev, !dbg !5416

if.end88:                                         ; preds = %if.end79
  %234 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5417
  %235 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5418
  %236 = bitcast %struct.irtoy* %235 to i8*, !dbg !5418
  call void @usb_set_intfdata(%struct.usb_interface* %234, i8* %236) #9, !dbg !5419
  store i32 0, i32* %retval, align 4, !dbg !5420
  br label %return, !dbg !5420

free_rcdev:                                       ; preds = %if.then87, %if.then77, %if.then71, %if.then51, %if.then43
  call void @llvm.dbg.label(metadata !5421), !dbg !5422
  %237 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5423
  %urb_out89 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %237, i32 0, i32 4, !dbg !5424
  %238 = load %struct.urb*, %struct.urb** %urb_out89, align 8, !dbg !5424
  call void @usb_kill_urb(%struct.urb* %238) #9, !dbg !5425
  %239 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5426
  %urb_out90 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %239, i32 0, i32 4, !dbg !5427
  %240 = load %struct.urb*, %struct.urb** %urb_out90, align 8, !dbg !5427
  call void @usb_free_urb(%struct.urb* %240) #9, !dbg !5428
  %241 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5429
  %urb_in91 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %241, i32 0, i32 3, !dbg !5430
  %242 = load %struct.urb*, %struct.urb** %urb_in91, align 8, !dbg !5430
  call void @usb_kill_urb(%struct.urb* %242) #9, !dbg !5431
  %243 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5432
  %urb_in92 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %243, i32 0, i32 3, !dbg !5433
  %244 = load %struct.urb*, %struct.urb** %urb_in92, align 8, !dbg !5433
  call void @usb_free_urb(%struct.urb* %244) #9, !dbg !5434
  %245 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5435
  call void @rc_free_device(%struct.rc_dev* %245) #9, !dbg !5436
  br label %free_irtoy, !dbg !5436

free_irtoy:                                       ; preds = %free_rcdev, %if.then39, %if.then35, %if.then30
  call void @llvm.dbg.label(metadata !5437), !dbg !5438
  %246 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5439
  %in93 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %246, i32 0, i32 5, !dbg !5440
  %247 = load i8*, i8** %in93, align 8, !dbg !5440
  call void @kfree(i8* %247) #9, !dbg !5441
  %248 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5442
  %out94 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %248, i32 0, i32 6, !dbg !5443
  %249 = load i8*, i8** %out94, align 8, !dbg !5443
  call void @kfree(i8* %249) #9, !dbg !5444
  %250 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5445
  %251 = bitcast %struct.irtoy* %250 to i8*, !dbg !5445
  call void @kfree(i8* %251) #9, !dbg !5446
  %252 = load i32, i32* %err, align 4, !dbg !5447
  store i32 %252, i32* %retval, align 4, !dbg !5448
  br label %return, !dbg !5448

return:                                           ; preds = %free_irtoy, %if.end88, %if.then66, %if.then25, %if.then21
  %253 = load i32, i32* %retval, align 4, !dbg !5449
  ret i32 %253, !dbg !5449
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @irtoy_disconnect(%struct.usb_interface* %intf) #2 !dbg !5450 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %ir = alloca %struct.irtoy*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5451, metadata !DIExpression()), !dbg !5452
  call void @llvm.dbg.declare(metadata %struct.irtoy** %ir, metadata !5453, metadata !DIExpression()), !dbg !5454
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5455
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #9, !dbg !5456
  %1 = bitcast i8* %call to %struct.irtoy*, !dbg !5456
  store %struct.irtoy* %1, %struct.irtoy** %ir, align 8, !dbg !5454
  %2 = load %struct.irtoy*, %struct.irtoy** %ir, align 8, !dbg !5457
  %rc = getelementptr inbounds %struct.irtoy, %struct.irtoy* %2, i32 0, i32 2, !dbg !5458
  %3 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5458
  call void @rc_unregister_device(%struct.rc_dev* %3) #9, !dbg !5459
  %4 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5460
  call void @usb_set_intfdata(%struct.usb_interface* %4, i8* null) #9, !dbg !5461
  %5 = load %struct.irtoy*, %struct.irtoy** %ir, align 8, !dbg !5462
  %urb_out = getelementptr inbounds %struct.irtoy, %struct.irtoy* %5, i32 0, i32 4, !dbg !5463
  %6 = load %struct.urb*, %struct.urb** %urb_out, align 8, !dbg !5463
  call void @usb_kill_urb(%struct.urb* %6) #9, !dbg !5464
  %7 = load %struct.irtoy*, %struct.irtoy** %ir, align 8, !dbg !5465
  %urb_out1 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %7, i32 0, i32 4, !dbg !5466
  %8 = load %struct.urb*, %struct.urb** %urb_out1, align 8, !dbg !5466
  call void @usb_free_urb(%struct.urb* %8) #9, !dbg !5467
  %9 = load %struct.irtoy*, %struct.irtoy** %ir, align 8, !dbg !5468
  %urb_in = getelementptr inbounds %struct.irtoy, %struct.irtoy* %9, i32 0, i32 3, !dbg !5469
  %10 = load %struct.urb*, %struct.urb** %urb_in, align 8, !dbg !5469
  call void @usb_kill_urb(%struct.urb* %10) #9, !dbg !5470
  %11 = load %struct.irtoy*, %struct.irtoy** %ir, align 8, !dbg !5471
  %urb_in2 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %11, i32 0, i32 3, !dbg !5472
  %12 = load %struct.urb*, %struct.urb** %urb_in2, align 8, !dbg !5472
  call void @usb_free_urb(%struct.urb* %12) #9, !dbg !5473
  %13 = load %struct.irtoy*, %struct.irtoy** %ir, align 8, !dbg !5474
  %in = getelementptr inbounds %struct.irtoy, %struct.irtoy* %13, i32 0, i32 5, !dbg !5475
  %14 = load i8*, i8** %in, align 8, !dbg !5475
  call void @kfree(i8* %14) #9, !dbg !5476
  %15 = load %struct.irtoy*, %struct.irtoy** %ir, align 8, !dbg !5477
  %out = getelementptr inbounds %struct.irtoy, %struct.irtoy* %15, i32 0, i32 6, !dbg !5478
  %16 = load i8*, i8** %out, align 8, !dbg !5478
  call void @kfree(i8* %16) #9, !dbg !5479
  %17 = load %struct.irtoy*, %struct.irtoy** %ir, align 8, !dbg !5480
  %18 = bitcast %struct.irtoy* %17 to i8*, !dbg !5480
  call void @kfree(i8* %18) #9, !dbg !5481
  ret void, !dbg !5482
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %intf) #2 !dbg !5483 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5486, metadata !DIExpression()), !dbg !5487
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5488, metadata !DIExpression()), !dbg !5490
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5490
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5490
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !5490
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5490
  %2 = bitcast %struct.device* %1 to i8*, !dbg !5490
  store i8* %2, i8** %__mptr, align 8, !dbg !5490
  br label %do.body, !dbg !5490

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5491

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5490
  %add.ptr = getelementptr i8, i8* %3, i64 -160, !dbg !5490
  %4 = bitcast i8* %add.ptr to %struct.usb_device*, !dbg !5490
  store %struct.usb_device* %4, %struct.usb_device** %tmp, align 8, !dbg !5491
  %5 = load %struct.usb_device*, %struct.usb_device** %tmp, align 8, !dbg !5490
  ret %struct.usb_device* %5, !dbg !5493
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5494 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5499, metadata !DIExpression()), !dbg !5500
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5501
  %call = call i32 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %0) #9, !dbg !5502
  %tobool = icmp ne i32 %call, 0, !dbg !5502
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5503

land.rhs:                                         ; preds = %entry
  %1 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5504
  %call1 = call i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %1) #9, !dbg !5505
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5503
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ], !dbg !5506
  %land.ext = zext i1 %2 to i32, !dbg !5503
  ret i32 %land.ext, !dbg !5507
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5508 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5509, metadata !DIExpression()), !dbg !5510
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5511
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 4, !dbg !5511
  %1 = load i16, i16* %wMaxPacketSize, align 1, !dbg !5511
  %conv = zext i16 %1 to i32, !dbg !5511
  %and = and i32 %conv, 2047, !dbg !5512
  ret i32 %and, !dbg !5513
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5514 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5515, metadata !DIExpression()), !dbg !5516
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5517
  %call = call i32 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %0) #9, !dbg !5518
  %tobool = icmp ne i32 %call, 0, !dbg !5518
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5519

land.rhs:                                         ; preds = %entry
  %1 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5520
  %call1 = call i32 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor* %1) #9, !dbg !5521
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5519
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ], !dbg !5522
  %land.ext = zext i1 %2 to i32, !dbg !5519
  ret i32 %land.ext, !dbg !5523
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !5524 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4237, metadata !DIExpression()), !dbg !5525
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4249, metadata !DIExpression()), !dbg !5528
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4251, metadata !DIExpression()), !dbg !5529
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4253, metadata !DIExpression()), !dbg !5530
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4255, metadata !DIExpression()), !dbg !5531
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4261, metadata !DIExpression()), !dbg !5533
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4267, metadata !DIExpression()), !dbg !5535
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4276, metadata !DIExpression()), !dbg !5538
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4278, metadata !DIExpression()), !dbg !5539
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4280, metadata !DIExpression()), !dbg !5540
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4282, metadata !DIExpression()), !dbg !5541
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4284, metadata !DIExpression()), !dbg !5542
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4286, metadata !DIExpression()), !dbg !5543
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4288, metadata !DIExpression()), !dbg !5544
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4290, metadata !DIExpression()), !dbg !5545
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5546, metadata !DIExpression()), !dbg !5547
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5548, metadata !DIExpression()), !dbg !5549
  %0 = load i64, i64* %size.addr, align 8, !dbg !5550
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5551
  %or = or i32 %1, 256, !dbg !5552
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5553
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !5554
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5555

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5556
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5557
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5558

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5559
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5560
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5561
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !5562
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5542
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5563
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5564
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5565
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5566
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5567
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5568
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !5569
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5569
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5569
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5569
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !5569
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5570
  br label %kmalloc.exit, !dbg !5570

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5571
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5572
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5572
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5573

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5574
  br label %kmalloc_index.exit.i, !dbg !5574

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5575
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5576
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5577

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5578
  br label %kmalloc_index.exit.i, !dbg !5578

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5579
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5580
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5581

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5582
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5583
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5584

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5585
  br label %kmalloc_index.exit.i, !dbg !5585

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5586
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5587
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5588

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5589
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5590
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5591

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5592
  br label %kmalloc_index.exit.i, !dbg !5592

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5593
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5594
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5595

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5596
  br label %kmalloc_index.exit.i, !dbg !5596

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5597
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5598
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5599

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5600
  br label %kmalloc_index.exit.i, !dbg !5600

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5601
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5602
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5603

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5604
  br label %kmalloc_index.exit.i, !dbg !5604

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5605
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5606
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5607

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5608
  br label %kmalloc_index.exit.i, !dbg !5608

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5609
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5610
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5611

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5612
  br label %kmalloc_index.exit.i, !dbg !5612

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5613
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5614
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5615

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5616
  br label %kmalloc_index.exit.i, !dbg !5616

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5617
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5618
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5619

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5620
  br label %kmalloc_index.exit.i, !dbg !5620

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5621
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5622
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5623

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5624
  br label %kmalloc_index.exit.i, !dbg !5624

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5625
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5626
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5627

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5628
  br label %kmalloc_index.exit.i, !dbg !5628

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5629
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5630
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5631

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5632
  br label %kmalloc_index.exit.i, !dbg !5632

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5633
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5634
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5635

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5636
  br label %kmalloc_index.exit.i, !dbg !5636

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5637
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5638
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5639

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5640
  br label %kmalloc_index.exit.i, !dbg !5640

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5641
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5642
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5643

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5644
  br label %kmalloc_index.exit.i, !dbg !5644

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5645
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5646
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5647

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5648
  br label %kmalloc_index.exit.i, !dbg !5648

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5649
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5650
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5651

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5652
  br label %kmalloc_index.exit.i, !dbg !5652

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5653
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5654
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5655

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5656
  br label %kmalloc_index.exit.i, !dbg !5656

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5657
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5658
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5659

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5660
  br label %kmalloc_index.exit.i, !dbg !5660

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5661
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5662
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5663

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5664
  br label %kmalloc_index.exit.i, !dbg !5664

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5665
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5666
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5667

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5668
  br label %kmalloc_index.exit.i, !dbg !5668

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5669
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5670
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5671

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5672
  br label %kmalloc_index.exit.i, !dbg !5672

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5673
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5674
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5675

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5676
  br label %kmalloc_index.exit.i, !dbg !5676

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5677
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5678
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5679

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5680
  br label %kmalloc_index.exit.i, !dbg !5680

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5681
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5682
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5683

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5684
  br label %kmalloc_index.exit.i, !dbg !5684

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5685
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5686
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5687

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5688
  br label %kmalloc_index.exit.i, !dbg !5688

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !5689, !srcloc !5042
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 210) #11, !dbg !5690, !srcloc !5046
  unreachable, !dbg !5691

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5692
  store i32 %45, i32* %index.i, align 4, !dbg !5693
  %46 = load i32, i32* %index.i, align 4, !dbg !5694
  %tobool.i = icmp ne i32 %46, 0, !dbg !5694
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5695

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5696
  br label %kmalloc.exit, !dbg !5696

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5697
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5698
  %and.i.i = and i32 %48, 17, !dbg !5698
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5698
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5698
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5698
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5698
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5699

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5700
  br label %kmalloc_type.exit.i, !dbg !5700

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5701
  %and2.i.i = and i32 %49, 1, !dbg !5702
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5701
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5701
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5701
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5703
  br label %kmalloc_type.exit.i, !dbg !5703

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5704
  %idxprom.i = zext i32 %51 to i64, !dbg !5705
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5705
  %52 = load i32, i32* %index.i, align 4, !dbg !5706
  %idxprom6.i = zext i32 %52 to i64, !dbg !5705
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5705
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5705
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5707
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5708
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5709
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5710
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !5711
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5711
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5711
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5711
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !5711
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5530
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5712
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5713
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5714
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5715
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !5716
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5717
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5718
  store i8* %62, i8** %retval.i, align 8, !dbg !5719
  br label %kmalloc.exit, !dbg !5719

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5720
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5721
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !5722
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5722
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5722
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5722
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !5722
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5723
  br label %kmalloc.exit, !dbg !5723

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5724
  ret i8* %65, !dbg !5725
}

; Function Attrs: noredzone
declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

; Function Attrs: noredzone
declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__create_pipe(%struct.usb_device* %dev, i32 %endpoint) #2 !dbg !5726 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5729, metadata !DIExpression()), !dbg !5730
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !5731, metadata !DIExpression()), !dbg !5732
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5733
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 0, !dbg !5734
  %1 = load i32, i32* %devnum, align 8, !dbg !5734
  %shl = shl i32 %1, 8, !dbg !5735
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !5736
  %shl1 = shl i32 %2, 15, !dbg !5737
  %or = or i32 %shl, %shl1, !dbg !5738
  ret i32 %or, !dbg !5739
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_fill_bulk_urb(%struct.urb* %urb, %struct.usb_device* %dev, i32 %pipe, i8* %transfer_buffer, i32 %buffer_length, void (%struct.urb*)* %complete_fn, i8* %context) #2 !dbg !5740 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %dev.addr = alloca %struct.usb_device*, align 8
  %pipe.addr = alloca i32, align 4
  %transfer_buffer.addr = alloca i8*, align 8
  %buffer_length.addr = alloca i32, align 4
  %complete_fn.addr = alloca void (%struct.urb*)*, align 8
  %context.addr = alloca i8*, align 8
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5743, metadata !DIExpression()), !dbg !5744
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5745, metadata !DIExpression()), !dbg !5746
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !5747, metadata !DIExpression()), !dbg !5748
  store i8* %transfer_buffer, i8** %transfer_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %transfer_buffer.addr, metadata !5749, metadata !DIExpression()), !dbg !5750
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_length.addr, metadata !5751, metadata !DIExpression()), !dbg !5752
  store void (%struct.urb*)* %complete_fn, void (%struct.urb*)** %complete_fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.urb*)** %complete_fn.addr, metadata !5753, metadata !DIExpression()), !dbg !5754
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !5755, metadata !DIExpression()), !dbg !5756
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5757
  %1 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5758
  %dev1 = getelementptr inbounds %struct.urb, %struct.urb* %1, i32 0, i32 8, !dbg !5759
  store %struct.usb_device* %0, %struct.usb_device** %dev1, align 8, !dbg !5760
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !5761
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5762
  %pipe2 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 10, !dbg !5763
  store i32 %2, i32* %pipe2, align 8, !dbg !5764
  %4 = load i8*, i8** %transfer_buffer.addr, align 8, !dbg !5765
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5766
  %transfer_buffer3 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 14, !dbg !5767
  store i8* %4, i8** %transfer_buffer3, align 8, !dbg !5768
  %6 = load i32, i32* %buffer_length.addr, align 4, !dbg !5769
  %7 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5770
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 19, !dbg !5771
  store i32 %6, i32* %transfer_buffer_length, align 8, !dbg !5772
  %8 = load void (%struct.urb*)*, void (%struct.urb*)** %complete_fn.addr, align 8, !dbg !5773
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5774
  %complete = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 28, !dbg !5775
  store void (%struct.urb*)* %8, void (%struct.urb*)** %complete, align 8, !dbg !5776
  %10 = load i8*, i8** %context.addr, align 8, !dbg !5777
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5778
  %context4 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 27, !dbg !5779
  store i8* %10, i8** %context4, align 8, !dbg !5780
  ret void, !dbg !5781
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @irtoy_in_callback(%struct.urb* %urb) #2 !dbg !5782 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %irtoy = alloca %struct.irtoy*, align 8
  %ret = alloca i32, align 4
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5783, metadata !DIExpression()), !dbg !5784
  call void @llvm.dbg.declare(metadata %struct.irtoy** %irtoy, metadata !5785, metadata !DIExpression()), !dbg !5786
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5787
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !5788
  %1 = load i8*, i8** %context, align 8, !dbg !5788
  %2 = bitcast i8* %1 to %struct.irtoy*, !dbg !5787
  store %struct.irtoy* %2, %struct.irtoy** %irtoy, align 8, !dbg !5786
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5789, metadata !DIExpression()), !dbg !5790
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5791
  %status = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 12, !dbg !5793
  %4 = load i32, i32* %status, align 8, !dbg !5793
  %cmp = icmp eq i32 %4, 0, !dbg !5794
  br i1 %cmp, label %if.then, label %if.else, !dbg !5795

if.then:                                          ; preds = %entry
  %5 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5796
  %6 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5797
  %actual_length = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 20, !dbg !5798
  %7 = load i32, i32* %actual_length, align 4, !dbg !5798
  call void @irtoy_response(%struct.irtoy* %5, i32 %7) #9, !dbg !5799
  br label %if.end, !dbg !5799

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5800
  %call = call i32 @usb_submit_urb(%struct.urb* %8, i32 2592) #9, !dbg !5801
  store i32 %call, i32* %ret, align 4, !dbg !5802
  %9 = load i32, i32* %ret, align 4, !dbg !5803
  %tobool = icmp ne i32 %9, 0, !dbg !5803
  br i1 %tobool, label %land.lhs.true, label %if.end3, !dbg !5805

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, i32* %ret, align 4, !dbg !5806
  %cmp1 = icmp ne i32 %10, -19, !dbg !5807
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !5808

if.then2:                                         ; preds = %land.lhs.true
  %11 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5809
  %dev = getelementptr inbounds %struct.irtoy, %struct.irtoy* %11, i32 0, i32 0, !dbg !5809
  %12 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5809
  %13 = load i32, i32* %ret, align 4, !dbg !5809
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %13) #10, !dbg !5809
  br label %if.end3, !dbg !5809

if.end3:                                          ; preds = %if.then2, %land.lhs.true, %if.end
  ret void, !dbg !5810
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @irtoy_out_callback(%struct.urb* %urb) #2 !dbg !5811 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %irtoy = alloca %struct.irtoy*, align 8
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5812, metadata !DIExpression()), !dbg !5813
  call void @llvm.dbg.declare(metadata %struct.irtoy** %irtoy, metadata !5814, metadata !DIExpression()), !dbg !5815
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5816
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !5817
  %1 = load i8*, i8** %context, align 8, !dbg !5817
  %2 = bitcast i8* %1 to %struct.irtoy*, !dbg !5816
  store %struct.irtoy* %2, %struct.irtoy** %irtoy, align 8, !dbg !5815
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5818
  %status = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 12, !dbg !5820
  %4 = load i32, i32* %status, align 8, !dbg !5820
  %cmp = icmp eq i32 %4, 0, !dbg !5821
  br i1 %cmp, label %if.then, label %if.else, !dbg !5822

if.then:                                          ; preds = %entry
  %5 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5823
  %state = getelementptr inbounds %struct.irtoy, %struct.irtoy* %5, i32 0, i32 9, !dbg !5826
  %6 = load i32, i32* %state, align 4, !dbg !5826
  %cmp1 = icmp eq i32 %6, 1, !dbg !5827
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !5828

if.then2:                                         ; preds = %if.then
  %7 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5829
  %command_done = getelementptr inbounds %struct.irtoy, %struct.irtoy* %7, i32 0, i32 7, !dbg !5830
  call void @complete(%struct.completion* %command_done) #9, !dbg !5831
  br label %if.end, !dbg !5831

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end4, !dbg !5832

if.else:                                          ; preds = %entry
  %8 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !5833
  %dev = getelementptr inbounds %struct.irtoy, %struct.irtoy* %8, i32 0, i32 0, !dbg !5833
  %9 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5833
  %10 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5833
  %status3 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 12, !dbg !5833
  %11 = load i32, i32* %status3, align 8, !dbg !5833
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 %11) #10, !dbg !5833
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end
  ret void, !dbg !5835
}

; Function Attrs: noredzone
declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @irtoy_setup(%struct.irtoy* %irtoy) #2 !dbg !5836 {
entry:
  %retval = alloca i32, align 4
  %irtoy.addr = alloca %struct.irtoy*, align 8
  %err = alloca i32, align 4
  store %struct.irtoy* %irtoy, %struct.irtoy** %irtoy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irtoy** %irtoy.addr, metadata !5839, metadata !DIExpression()), !dbg !5840
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5841, metadata !DIExpression()), !dbg !5842
  %0 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !5843
  %call = call i32 @irtoy_command(%struct.irtoy* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @COMMAND_RESET, i64 0, i64 0), i32 7, i32 1) #9, !dbg !5844
  store i32 %call, i32* %err, align 4, !dbg !5845
  %1 = load i32, i32* %err, align 4, !dbg !5846
  %cmp = icmp ne i32 %1, 0, !dbg !5848
  br i1 %cmp, label %if.then, label %if.end, !dbg !5849

if.then:                                          ; preds = %entry
  %2 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !5850
  %dev = getelementptr inbounds %struct.irtoy, %struct.irtoy* %2, i32 0, i32 0, !dbg !5850
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5850
  %4 = load i32, i32* %err, align 4, !dbg !5850
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), i32 %4) #10, !dbg !5850
  %5 = load i32, i32* %err, align 4, !dbg !5852
  store i32 %5, i32* %retval, align 4, !dbg !5853
  br label %return, !dbg !5853

if.end:                                           ; preds = %entry
  call void @usleep_range(i64 50, i64 50) #9, !dbg !5854
  %6 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !5855
  %call1 = call i32 @irtoy_command(%struct.irtoy* %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @COMMAND_VERSION, i64 0, i64 0), i32 1, i32 2) #9, !dbg !5856
  store i32 %call1, i32* %err, align 4, !dbg !5857
  %7 = load i32, i32* %err, align 4, !dbg !5858
  %tobool = icmp ne i32 %7, 0, !dbg !5858
  br i1 %tobool, label %if.then2, label %if.end4, !dbg !5860

if.then2:                                         ; preds = %if.end
  %8 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !5861
  %dev3 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %8, i32 0, i32 0, !dbg !5861
  %9 = load %struct.device*, %struct.device** %dev3, align 8, !dbg !5861
  %10 = load i32, i32* %err, align 4, !dbg !5861
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i32 %10) #10, !dbg !5861
  %11 = load i32, i32* %err, align 4, !dbg !5863
  store i32 %11, i32* %retval, align 4, !dbg !5864
  br label %return, !dbg !5864

if.end4:                                          ; preds = %if.end
  %12 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !5865
  %call5 = call i32 @irtoy_command(%struct.irtoy* %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @COMMAND_SMODE_ENTER, i64 0, i64 0), i32 1, i32 2) #9, !dbg !5866
  store i32 %call5, i32* %err, align 4, !dbg !5867
  %13 = load i32, i32* %err, align 4, !dbg !5868
  %tobool6 = icmp ne i32 %13, 0, !dbg !5868
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !5870

if.then7:                                         ; preds = %if.end4
  %14 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !5871
  %dev8 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %14, i32 0, i32 0, !dbg !5871
  %15 = load %struct.device*, %struct.device** %dev8, align 8, !dbg !5871
  %16 = load i32, i32* %err, align 4, !dbg !5871
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0), i32 %16) #10, !dbg !5871
  br label %if.end9, !dbg !5871

if.end9:                                          ; preds = %if.then7, %if.end4
  %17 = load i32, i32* %err, align 4, !dbg !5872
  store i32 %17, i32* %retval, align 4, !dbg !5873
  br label %return, !dbg !5873

return:                                           ; preds = %if.end9, %if.then2, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !5874
  ret i32 %18, !dbg !5874
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_make_path(%struct.usb_device* %dev, i8* %buf, i64 %size) #2 !dbg !5875 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %actual = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5878, metadata !DIExpression()), !dbg !5879
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5880, metadata !DIExpression()), !dbg !5881
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5882, metadata !DIExpression()), !dbg !5883
  call void @llvm.dbg.declare(metadata i32* %actual, metadata !5884, metadata !DIExpression()), !dbg !5885
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !5886
  %1 = load i64, i64* %size.addr, align 8, !dbg !5887
  %2 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5888
  %bus = getelementptr inbounds %struct.usb_device, %struct.usb_device* %2, i32 0, i32 12, !dbg !5889
  %3 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !5889
  %bus_name = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %3, i32 0, i32 3, !dbg !5890
  %4 = load i8*, i8** %bus_name, align 8, !dbg !5890
  %5 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5891
  %devpath = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 1, !dbg !5892
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %devpath, i64 0, i64 0, !dbg !5891
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8* %4, i8* %arraydecay) #9, !dbg !5893
  store i32 %call, i32* %actual, align 4, !dbg !5894
  %6 = load i32, i32* %actual, align 4, !dbg !5895
  %7 = load i64, i64* %size.addr, align 8, !dbg !5896
  %conv = trunc i64 %7 to i32, !dbg !5897
  %cmp = icmp sge i32 %6, %conv, !dbg !5898
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5899

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !5899

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %actual, align 4, !dbg !5900
  br label %cond.end, !dbg !5899

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %8, %cond.false ], !dbg !5899
  ret i32 %cond, !dbg !5901
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_to_input_id(%struct.usb_device* %dev, %struct.input_id* %id) #2 !dbg !5902 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %id.addr = alloca %struct.input_id*, align 8
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5909, metadata !DIExpression()), !dbg !5910
  store %struct.input_id* %id, %struct.input_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_id** %id.addr, metadata !5911, metadata !DIExpression()), !dbg !5912
  %0 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5913
  %bustype = getelementptr inbounds %struct.input_id, %struct.input_id* %0, i32 0, i32 0, !dbg !5914
  store i16 3, i16* %bustype, align 2, !dbg !5915
  %1 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5916
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %1, i32 0, i32 15, !dbg !5916
  %idVendor = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 7, !dbg !5916
  %2 = load i16, i16* %idVendor, align 8, !dbg !5916
  %3 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5917
  %vendor = getelementptr inbounds %struct.input_id, %struct.input_id* %3, i32 0, i32 1, !dbg !5918
  store i16 %2, i16* %vendor, align 2, !dbg !5919
  %4 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5920
  %descriptor1 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %4, i32 0, i32 15, !dbg !5920
  %idProduct = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor1, i32 0, i32 8, !dbg !5920
  %5 = load i16, i16* %idProduct, align 2, !dbg !5920
  %6 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5921
  %product = getelementptr inbounds %struct.input_id, %struct.input_id* %6, i32 0, i32 2, !dbg !5922
  store i16 %5, i16* %product, align 2, !dbg !5923
  %7 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5924
  %descriptor2 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 15, !dbg !5924
  %bcdDevice = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor2, i32 0, i32 9, !dbg !5924
  %8 = load i16, i16* %bcdDevice, align 4, !dbg !5924
  %9 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5925
  %version = getelementptr inbounds %struct.input_id, %struct.input_id* %9, i32 0, i32 3, !dbg !5926
  store i16 %8, i16* %version, align 2, !dbg !5927
  ret void, !dbg !5928
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @irtoy_tx(%struct.rc_dev* %rc, i32* %txbuf, i32 %count) #2 !dbg !5929 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4237, metadata !DIExpression()), !dbg !5933
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4249, metadata !DIExpression()), !dbg !5936
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4251, metadata !DIExpression()), !dbg !5937
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4253, metadata !DIExpression()), !dbg !5938
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4255, metadata !DIExpression()), !dbg !5939
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4261, metadata !DIExpression()), !dbg !5941
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4267, metadata !DIExpression()), !dbg !5943
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4276, metadata !DIExpression()), !dbg !5946
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4278, metadata !DIExpression()), !dbg !5947
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4280, metadata !DIExpression()), !dbg !5948
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4282, metadata !DIExpression()), !dbg !5949
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4284, metadata !DIExpression()), !dbg !5950
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4286, metadata !DIExpression()), !dbg !5951
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4288, metadata !DIExpression()), !dbg !5952
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4290, metadata !DIExpression()), !dbg !5953
  %retval = alloca i32, align 4
  %rc.addr = alloca %struct.rc_dev*, align 8
  %txbuf.addr = alloca i32*, align 8
  %count.addr = alloca i32, align 4
  %irtoy = alloca %struct.irtoy*, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %buf = alloca i16*, align 8
  %err = alloca i32, align 4
  %v = alloca i16, align 2
  %__x = alloca i32, align 4
  %__d = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.rc_dev* %rc, %struct.rc_dev** %rc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %rc.addr, metadata !5954, metadata !DIExpression()), !dbg !5955
  store i32* %txbuf, i32** %txbuf.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %txbuf.addr, metadata !5956, metadata !DIExpression()), !dbg !5957
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !5958, metadata !DIExpression()), !dbg !5959
  call void @llvm.dbg.declare(metadata %struct.irtoy** %irtoy, metadata !5960, metadata !DIExpression()), !dbg !5961
  %0 = load %struct.rc_dev*, %struct.rc_dev** %rc.addr, align 8, !dbg !5962
  %priv = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %0, i32 0, i32 24, !dbg !5963
  %1 = load i8*, i8** %priv, align 8, !dbg !5963
  %2 = bitcast i8* %1 to %struct.irtoy*, !dbg !5962
  store %struct.irtoy* %2, %struct.irtoy** %irtoy, align 8, !dbg !5961
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5964, metadata !DIExpression()), !dbg !5965
  call void @llvm.dbg.declare(metadata i32* %size, metadata !5966, metadata !DIExpression()), !dbg !5967
  call void @llvm.dbg.declare(metadata i16** %buf, metadata !5968, metadata !DIExpression()), !dbg !5969
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5970, metadata !DIExpression()), !dbg !5971
  %3 = load i32, i32* %count.addr, align 4, !dbg !5972
  %add = add i32 %3, 1, !dbg !5973
  %conv = zext i32 %add to i64, !dbg !5974
  %mul = mul i64 2, %conv, !dbg !5975
  %conv1 = trunc i64 %mul to i32, !dbg !5976
  store i32 %conv1, i32* %size, align 4, !dbg !5977
  %4 = load i32, i32* %size, align 4, !dbg !5978
  %conv2 = zext i32 %4 to i64, !dbg !5978
  store i64 %conv2, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5979
  %6 = call i1 @llvm.is.constant.i64(i64 %5) #11, !dbg !5980
  br i1 %6, label %if.then.i, label %if.end9.i, !dbg !5981

if.then.i:                                        ; preds = %entry
  %7 = load i64, i64* %size.addr.i, align 8, !dbg !5982
  %cmp.i = icmp ugt i64 %7, 8192, !dbg !5983
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5984

if.then1.i:                                       ; preds = %if.then.i
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !5985
  %9 = load i32, i32* %flags.addr.i, align 4, !dbg !5986
  store i64 %8, i64* %size.addr.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i, align 4
  %10 = load i64, i64* %size.addr.i.i, align 8, !dbg !5987
  %call.i.i = call i32 @get_order(i64 %10) #12, !dbg !5988
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5950
  %11 = load i64, i64* %size.addr.i.i, align 8, !dbg !5989
  %12 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5990
  %13 = load i32, i32* %order.i.i, align 4, !dbg !5991
  store i64 %11, i64* %size.addr.i.i.i, align 8
  store i32 %12, i32* %flags.addr.i.i.i, align 4
  store i32 %13, i32* %order.addr.i.i.i, align 4
  %14 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5992
  %15 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5993
  %16 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5994
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %14, i32 %15, i32 %16) #13, !dbg !5995
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5995
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5995
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5995
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !5995
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5996
  br label %kmalloc.exit, !dbg !5996

if.end.i:                                         ; preds = %if.then.i
  %17 = load i64, i64* %size.addr.i, align 8, !dbg !5997
  store i64 %17, i64* %size.addr.i11.i, align 8
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5998
  %tobool.i.i = icmp ne i64 %18, 0, !dbg !5998
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5999

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !6000
  br label %kmalloc_index.exit.i, !dbg !6000

if.end.i.i:                                       ; preds = %if.end.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6001
  %cmp.i.i = icmp ule i64 %19, 8, !dbg !6002
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !6003

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6004
  br label %kmalloc_index.exit.i, !dbg !6004

if.end2.i.i:                                      ; preds = %if.end.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6005
  %cmp3.i.i = icmp ugt i64 %20, 64, !dbg !6006
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !6007

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6008
  %cmp4.i.i = icmp ule i64 %21, 96, !dbg !6009
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !6010

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !6011
  br label %kmalloc_index.exit.i, !dbg !6011

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6012
  %cmp7.i.i = icmp ugt i64 %22, 128, !dbg !6013
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !6014

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6015
  %cmp9.i.i = icmp ule i64 %23, 192, !dbg !6016
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !6017

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !6018
  br label %kmalloc_index.exit.i, !dbg !6018

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6019
  %cmp12.i.i = icmp ule i64 %24, 8, !dbg !6020
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !6021

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6022
  br label %kmalloc_index.exit.i, !dbg !6022

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6023
  %cmp15.i.i = icmp ule i64 %25, 16, !dbg !6024
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !6025

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !6026
  br label %kmalloc_index.exit.i, !dbg !6026

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6027
  %cmp18.i.i = icmp ule i64 %26, 32, !dbg !6028
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !6029

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !6030
  br label %kmalloc_index.exit.i, !dbg !6030

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6031
  %cmp21.i.i = icmp ule i64 %27, 64, !dbg !6032
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !6033

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !6034
  br label %kmalloc_index.exit.i, !dbg !6034

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6035
  %cmp24.i.i = icmp ule i64 %28, 128, !dbg !6036
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !6037

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !6038
  br label %kmalloc_index.exit.i, !dbg !6038

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6039
  %cmp27.i.i = icmp ule i64 %29, 256, !dbg !6040
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !6041

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !6042
  br label %kmalloc_index.exit.i, !dbg !6042

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6043
  %cmp30.i.i = icmp ule i64 %30, 512, !dbg !6044
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !6045

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !6046
  br label %kmalloc_index.exit.i, !dbg !6046

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6047
  %cmp33.i.i = icmp ule i64 %31, 1024, !dbg !6048
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !6049

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !6050
  br label %kmalloc_index.exit.i, !dbg !6050

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6051
  %cmp36.i.i = icmp ule i64 %32, 2048, !dbg !6052
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !6053

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !6054
  br label %kmalloc_index.exit.i, !dbg !6054

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6055
  %cmp39.i.i = icmp ule i64 %33, 4096, !dbg !6056
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !6057

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !6058
  br label %kmalloc_index.exit.i, !dbg !6058

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6059
  %cmp42.i.i = icmp ule i64 %34, 8192, !dbg !6060
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !6061

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !6062
  br label %kmalloc_index.exit.i, !dbg !6062

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6063
  %cmp45.i.i = icmp ule i64 %35, 16384, !dbg !6064
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !6065

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !6066
  br label %kmalloc_index.exit.i, !dbg !6066

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6067
  %cmp48.i.i = icmp ule i64 %36, 32768, !dbg !6068
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !6069

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !6070
  br label %kmalloc_index.exit.i, !dbg !6070

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6071
  %cmp51.i.i = icmp ule i64 %37, 65536, !dbg !6072
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !6073

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !6074
  br label %kmalloc_index.exit.i, !dbg !6074

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6075
  %cmp54.i.i = icmp ule i64 %38, 131072, !dbg !6076
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !6077

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !6078
  br label %kmalloc_index.exit.i, !dbg !6078

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6079
  %cmp57.i.i = icmp ule i64 %39, 262144, !dbg !6080
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !6081

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !6082
  br label %kmalloc_index.exit.i, !dbg !6082

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6083
  %cmp60.i.i = icmp ule i64 %40, 524288, !dbg !6084
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !6085

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !6086
  br label %kmalloc_index.exit.i, !dbg !6086

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6087
  %cmp63.i.i = icmp ule i64 %41, 1048576, !dbg !6088
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !6089

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !6090
  br label %kmalloc_index.exit.i, !dbg !6090

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6091
  %cmp66.i.i = icmp ule i64 %42, 2097152, !dbg !6092
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !6093

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !6094
  br label %kmalloc_index.exit.i, !dbg !6094

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6095
  %cmp69.i.i = icmp ule i64 %43, 4194304, !dbg !6096
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !6097

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !6098
  br label %kmalloc_index.exit.i, !dbg !6098

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6099
  %cmp72.i.i = icmp ule i64 %44, 8388608, !dbg !6100
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !6101

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !6102
  br label %kmalloc_index.exit.i, !dbg !6102

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6103
  %cmp75.i.i = icmp ule i64 %45, 16777216, !dbg !6104
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !6105

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !6106
  br label %kmalloc_index.exit.i, !dbg !6106

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6107
  %cmp78.i.i = icmp ule i64 %46, 33554432, !dbg !6108
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !6109

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !6110
  br label %kmalloc_index.exit.i, !dbg !6110

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6111
  %cmp81.i.i = icmp ule i64 %47, 67108864, !dbg !6112
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !6113

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !6114
  br label %kmalloc_index.exit.i, !dbg !6114

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !6115, !srcloc !5042
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 210) #11, !dbg !6116, !srcloc !5046
  unreachable, !dbg !6117

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %48 = load i32, i32* %retval.i.i, align 4, !dbg !6118
  store i32 %48, i32* %index.i, align 4, !dbg !6119
  %49 = load i32, i32* %index.i, align 4, !dbg !6120
  %tobool.i = icmp ne i32 %49, 0, !dbg !6120
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !6121

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !6122
  br label %kmalloc.exit, !dbg !6122

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %50 = load i32, i32* %flags.addr.i, align 4, !dbg !6123
  store i32 %50, i32* %flags.addr.i13.i, align 4
  %51 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6124
  %and.i.i = and i32 %51, 17, !dbg !6124
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !6124
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !6124
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !6124
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6124
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !6125

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !6126
  br label %kmalloc_type.exit.i, !dbg !6126

if.end.i16.i:                                     ; preds = %if.end4.i
  %52 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6127
  %and2.i.i = and i32 %52, 1, !dbg !6128
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !6127
  %53 = zext i1 %tobool3.i.i to i64, !dbg !6127
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !6127
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6129
  br label %kmalloc_type.exit.i, !dbg !6129

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %54 = load i32, i32* %retval.i12.i, align 4, !dbg !6130
  %idxprom.i = zext i32 %54 to i64, !dbg !6131
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6131
  %55 = load i32, i32* %index.i, align 4, !dbg !6132
  %idxprom6.i = zext i32 %55 to i64, !dbg !6131
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6131
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6131
  %57 = load i32, i32* %flags.addr.i, align 4, !dbg !6133
  %58 = load i64, i64* %size.addr.i, align 8, !dbg !6134
  store %struct.kmem_cache* %56, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %57, i32* %flags.addr.i17.i, align 4
  store i64 %58, i64* %size.addr.i18.i, align 8
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6135
  %60 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6136
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %59, i32 %60) #13, !dbg !6137
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6137
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6137
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6137
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !6137
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5938
  %61 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6138
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !6139
  %63 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6140
  %64 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6141
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %61, i8* %62, i64 %63, i32 %64) #13, !dbg !6142
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6143
  %65 = load i8*, i8** %ret.i.i, align 8, !dbg !6144
  store i8* %65, i8** %retval.i, align 8, !dbg !6145
  br label %kmalloc.exit, !dbg !6145

if.end9.i:                                        ; preds = %entry
  %66 = load i64, i64* %size.addr.i, align 8, !dbg !6146
  %67 = load i32, i32* %flags.addr.i, align 4, !dbg !6147
  %call10.i = call noalias i8* @__kmalloc(i64 %66, i32 %67) #13, !dbg !6148
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6148
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6148
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6148
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !6148
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6149
  br label %kmalloc.exit, !dbg !6149

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %68 = load i8*, i8** %retval.i, align 8, !dbg !6150
  %69 = bitcast i8* %68 to i16*, !dbg !6151
  store i16* %69, i16** %buf, align 8, !dbg !6152
  %70 = load i16*, i16** %buf, align 8, !dbg !6153
  %tobool = icmp ne i16* %70, null, !dbg !6153
  br i1 %tobool, label %if.end, label %if.then, !dbg !6155

if.then:                                          ; preds = %kmalloc.exit
  store i32 -12, i32* %retval, align 4, !dbg !6156
  br label %return, !dbg !6156

if.end:                                           ; preds = %kmalloc.exit
  store i32 0, i32* %i, align 4, !dbg !6157
  br label %for.cond, !dbg !6159

for.cond:                                         ; preds = %for.inc, %if.end
  %71 = load i32, i32* %i, align 4, !dbg !6160
  %72 = load i32, i32* %count.addr, align 4, !dbg !6162
  %cmp = icmp ult i32 %71, %72, !dbg !6163
  br i1 %cmp, label %for.body, label %for.end, !dbg !6164

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i16* %v, metadata !6165, metadata !DIExpression()), !dbg !6167
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !6168, metadata !DIExpression()), !dbg !6170
  %73 = load i32*, i32** %txbuf.addr, align 8, !dbg !6170
  %74 = load i32, i32* %i, align 4, !dbg !6170
  %idxprom = zext i32 %74 to i64, !dbg !6170
  %arrayidx = getelementptr i32, i32* %73, i64 %idxprom, !dbg !6170
  %75 = load i32, i32* %arrayidx, align 4, !dbg !6170
  store i32 %75, i32* %__x, align 4, !dbg !6170
  call void @llvm.dbg.declare(metadata i32* %__d, metadata !6171, metadata !DIExpression()), !dbg !6170
  store i32 21, i32* %__d, align 4, !dbg !6170
  %76 = load i32, i32* %__x, align 4, !dbg !6170
  %77 = load i32, i32* %__d, align 4, !dbg !6170
  %div = sdiv i32 %77, 2, !dbg !6170
  %add4 = add i32 %76, %div, !dbg !6170
  %78 = load i32, i32* %__d, align 4, !dbg !6170
  %div5 = udiv i32 %add4, %78, !dbg !6170
  store i32 %div5, i32* %tmp, align 4, !dbg !6170
  %79 = load i32, i32* %tmp, align 4, !dbg !6170
  %conv6 = trunc i32 %79 to i16, !dbg !6172
  store i16 %conv6, i16* %v, align 2, !dbg !6167
  %80 = load i16, i16* %v, align 2, !dbg !6173
  %tobool7 = icmp ne i16 %80, 0, !dbg !6173
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !6175

if.then8:                                         ; preds = %for.body
  store i16 1, i16* %v, align 2, !dbg !6176
  br label %if.end9, !dbg !6177

if.end9:                                          ; preds = %if.then8, %for.body
  %81 = load i16, i16* %v, align 2, !dbg !6178
  %82 = call i1 @llvm.is.constant.i16(i16 %81), !dbg !6178
  br i1 %82, label %cond.true, label %cond.false, !dbg !6178

cond.true:                                        ; preds = %if.end9
  %83 = load i16, i16* %v, align 2, !dbg !6178
  %conv10 = zext i16 %83 to i32, !dbg !6178
  %and = and i32 %conv10, 255, !dbg !6178
  %shl = shl i32 %and, 8, !dbg !6178
  %84 = load i16, i16* %v, align 2, !dbg !6178
  %conv11 = zext i16 %84 to i32, !dbg !6178
  %and12 = and i32 %conv11, 65280, !dbg !6178
  %shr = ashr i32 %and12, 8, !dbg !6178
  %or = or i32 %shl, %shr, !dbg !6178
  %conv13 = trunc i32 %or to i16, !dbg !6178
  %conv14 = zext i16 %conv13 to i32, !dbg !6178
  br label %cond.end, !dbg !6178

cond.false:                                       ; preds = %if.end9
  %85 = load i16, i16* %v, align 2, !dbg !6178
  %call15 = call zeroext i16 @__fswab16(i16 zeroext %85) #12, !dbg !6178
  %conv16 = zext i16 %call15 to i32, !dbg !6178
  br label %cond.end, !dbg !6178

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv14, %cond.true ], [ %conv16, %cond.false ], !dbg !6178
  %conv17 = trunc i32 %cond to i16, !dbg !6178
  %86 = load i16*, i16** %buf, align 8, !dbg !6179
  %87 = load i32, i32* %i, align 4, !dbg !6180
  %idxprom18 = zext i32 %87 to i64, !dbg !6179
  %arrayidx19 = getelementptr i16, i16* %86, i64 %idxprom18, !dbg !6179
  store i16 %conv17, i16* %arrayidx19, align 2, !dbg !6181
  br label %for.inc, !dbg !6182

for.inc:                                          ; preds = %cond.end
  %88 = load i32, i32* %i, align 4, !dbg !6183
  %inc = add i32 %88, 1, !dbg !6183
  store i32 %inc, i32* %i, align 4, !dbg !6183
  br label %for.cond, !dbg !6184, !llvm.loop !6185

for.end:                                          ; preds = %for.cond
  %89 = load i16*, i16** %buf, align 8, !dbg !6187
  %90 = load i32, i32* %count.addr, align 4, !dbg !6188
  %idxprom20 = zext i32 %90 to i64, !dbg !6187
  %arrayidx21 = getelementptr i16, i16* %89, i64 %idxprom20, !dbg !6187
  store i16 -1, i16* %arrayidx21, align 2, !dbg !6189
  %91 = load i16*, i16** %buf, align 8, !dbg !6190
  %92 = bitcast i16* %91 to i8*, !dbg !6190
  %93 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !6191
  %tx_buf = getelementptr inbounds %struct.irtoy, %struct.irtoy* %93, i32 0, i32 10, !dbg !6192
  store i8* %92, i8** %tx_buf, align 8, !dbg !6193
  %94 = load i32, i32* %size, align 4, !dbg !6194
  %95 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !6195
  %tx_len = getelementptr inbounds %struct.irtoy, %struct.irtoy* %95, i32 0, i32 11, !dbg !6196
  store i32 %94, i32* %tx_len, align 8, !dbg !6197
  %96 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !6198
  %emitted = getelementptr inbounds %struct.irtoy, %struct.irtoy* %96, i32 0, i32 12, !dbg !6199
  store i32 0, i32* %emitted, align 4, !dbg !6200
  %97 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !6201
  %call22 = call i32 @irtoy_command(%struct.irtoy* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @COMMAND_TXSTART, i64 0, i64 0), i32 4, i32 3) #9, !dbg !6202
  store i32 %call22, i32* %err, align 4, !dbg !6203
  %98 = load i16*, i16** %buf, align 8, !dbg !6204
  %99 = bitcast i16* %98 to i8*, !dbg !6204
  call void @kfree(i8* %99) #9, !dbg !6205
  %100 = load i32, i32* %err, align 4, !dbg !6206
  %tobool23 = icmp ne i32 %100, 0, !dbg !6206
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !6208

if.then24:                                        ; preds = %for.end
  %101 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !6209
  %dev = getelementptr inbounds %struct.irtoy, %struct.irtoy* %101, i32 0, i32 0, !dbg !6209
  %102 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6209
  %103 = load i32, i32* %err, align 4, !dbg !6209
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0), i32 %103) #10, !dbg !6209
  %104 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !6211
  %call25 = call i32 @irtoy_setup(%struct.irtoy* %104) #9, !dbg !6212
  %105 = load i32, i32* %err, align 4, !dbg !6213
  store i32 %105, i32* %retval, align 4, !dbg !6214
  br label %return, !dbg !6214

if.end26:                                         ; preds = %for.end
  %106 = load i32, i32* %size, align 4, !dbg !6215
  %107 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !6217
  %emitted27 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %107, i32 0, i32 12, !dbg !6218
  %108 = load i32, i32* %emitted27, align 4, !dbg !6218
  %cmp28 = icmp ne i32 %106, %108, !dbg !6219
  br i1 %cmp28, label %if.then30, label %if.end34, !dbg !6220

if.then30:                                        ; preds = %if.end26
  %109 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !6221
  %dev31 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %109, i32 0, i32 0, !dbg !6221
  %110 = load %struct.device*, %struct.device** %dev31, align 8, !dbg !6221
  %111 = load i32, i32* %size, align 4, !dbg !6221
  %112 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !6221
  %emitted32 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %112, i32 0, i32 12, !dbg !6221
  %113 = load i32, i32* %emitted32, align 4, !dbg !6221
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %110, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 %111, i32 %113) #10, !dbg !6221
  %114 = load %struct.irtoy*, %struct.irtoy** %irtoy, align 8, !dbg !6223
  %call33 = call i32 @irtoy_setup(%struct.irtoy* %114) #9, !dbg !6224
  store i32 -22, i32* %retval, align 4, !dbg !6225
  br label %return, !dbg !6225

if.end34:                                         ; preds = %if.end26
  %115 = load i32, i32* %count.addr, align 4, !dbg !6226
  store i32 %115, i32* %retval, align 4, !dbg !6227
  br label %return, !dbg !6227

return:                                           ; preds = %if.end34, %if.then30, %if.then24, %if.then
  %116 = load i32, i32* %retval, align 4, !dbg !6228
  ret i32 %116, !dbg !6228
}

; Function Attrs: noredzone
declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_set_intfdata(%struct.usb_interface* %intf, i8* %data) #2 !dbg !6229 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !6232, metadata !DIExpression()), !dbg !6233
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6234, metadata !DIExpression()), !dbg !6235
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !6236
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !6237
  %1 = load i8*, i8** %data.addr, align 8, !dbg !6238
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #9, !dbg !6239
  ret void, !dbg !6240
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @usb_kill_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local void @usb_free_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local void @rc_free_device(%struct.rc_dev*) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !6241 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !6242, metadata !DIExpression()), !dbg !6243
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !6244
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 3, !dbg !6245
  %1 = load i8, i8* %bmAttributes, align 1, !dbg !6245
  %conv = zext i8 %1 to i32, !dbg !6244
  %and = and i32 %conv, 3, !dbg !6246
  %cmp = icmp eq i32 %and, 2, !dbg !6247
  %conv1 = zext i1 %cmp to i32, !dbg !6247
  ret i32 %conv1, !dbg !6248
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !6249 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !6250, metadata !DIExpression()), !dbg !6251
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !6252
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 2, !dbg !6253
  %1 = load i8, i8* %bEndpointAddress, align 1, !dbg !6253
  %conv = zext i8 %1 to i32, !dbg !6252
  %and = and i32 %conv, 128, !dbg !6254
  %cmp = icmp eq i32 %and, 128, !dbg !6255
  %conv1 = zext i1 %cmp to i32, !dbg !6255
  ret i32 %conv1, !dbg !6256
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !6257 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !6258, metadata !DIExpression()), !dbg !6259
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !6260
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 2, !dbg !6261
  %1 = load i8, i8* %bEndpointAddress, align 1, !dbg !6261
  %conv = zext i8 %1 to i32, !dbg !6260
  %and = and i32 %conv, 128, !dbg !6262
  %cmp = icmp eq i32 %and, 0, !dbg !6263
  %conv1 = zext i1 %cmp to i32, !dbg !6263
  ret i32 %conv1, !dbg !6264
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !6265 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6269, metadata !DIExpression()), !dbg !6274
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6276, metadata !DIExpression()), !dbg !6277
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6278, metadata !DIExpression()), !dbg !6279
  %0 = load i64, i64* %size.addr, align 8, !dbg !6280
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6282
  br i1 %1, label %if.then, label %if.end447, !dbg !6283

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6284
  %tobool = icmp ne i64 %2, 0, !dbg !6284
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6287

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6288
  br label %return, !dbg !6288

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6289
  %cmp = icmp ult i64 %3, 4096, !dbg !6291
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6292

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6293
  br label %return, !dbg !6293

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub = sub i64 %4, 1, !dbg !6294
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6294
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6294

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub4 = sub i64 %6, 1, !dbg !6294
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6294
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6294

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub6 = sub i64 %8, 1, !dbg !6294
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6294
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6294

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6294

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub9 = sub i64 %9, 1, !dbg !6294
  %and = and i64 %sub9, -9223372036854775808, !dbg !6294
  %tobool10 = icmp ne i64 %and, 0, !dbg !6294
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6294

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6294

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub13 = sub i64 %10, 1, !dbg !6294
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6294
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6294
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6294

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6294

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub18 = sub i64 %11, 1, !dbg !6294
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6294
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6294
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6294

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6294

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub23 = sub i64 %12, 1, !dbg !6294
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6294
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6294
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6294

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6294

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub28 = sub i64 %13, 1, !dbg !6294
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6294
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6294
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6294

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6294

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub33 = sub i64 %14, 1, !dbg !6294
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6294
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6294
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6294

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6294

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub38 = sub i64 %15, 1, !dbg !6294
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6294
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6294
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6294

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6294

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub43 = sub i64 %16, 1, !dbg !6294
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6294
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6294
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6294

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6294

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub48 = sub i64 %17, 1, !dbg !6294
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6294
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6294
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6294

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6294

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub53 = sub i64 %18, 1, !dbg !6294
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6294
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6294
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6294

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6294

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub58 = sub i64 %19, 1, !dbg !6294
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6294
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6294
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6294

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6294

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub63 = sub i64 %20, 1, !dbg !6294
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6294
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6294
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6294

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6294

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub68 = sub i64 %21, 1, !dbg !6294
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6294
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6294
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6294

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6294

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub73 = sub i64 %22, 1, !dbg !6294
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6294
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6294
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6294

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6294

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub78 = sub i64 %23, 1, !dbg !6294
  %and79 = and i64 %sub78, 562949953421312, !dbg !6294
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6294
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6294

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6294

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub83 = sub i64 %24, 1, !dbg !6294
  %and84 = and i64 %sub83, 281474976710656, !dbg !6294
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6294
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6294

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6294

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub88 = sub i64 %25, 1, !dbg !6294
  %and89 = and i64 %sub88, 140737488355328, !dbg !6294
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6294
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6294

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6294

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub93 = sub i64 %26, 1, !dbg !6294
  %and94 = and i64 %sub93, 70368744177664, !dbg !6294
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6294
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6294

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6294

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub98 = sub i64 %27, 1, !dbg !6294
  %and99 = and i64 %sub98, 35184372088832, !dbg !6294
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6294
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6294

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6294

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub103 = sub i64 %28, 1, !dbg !6294
  %and104 = and i64 %sub103, 17592186044416, !dbg !6294
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6294
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6294

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6294

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub108 = sub i64 %29, 1, !dbg !6294
  %and109 = and i64 %sub108, 8796093022208, !dbg !6294
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6294
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6294

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6294

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub113 = sub i64 %30, 1, !dbg !6294
  %and114 = and i64 %sub113, 4398046511104, !dbg !6294
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6294
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6294

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6294

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub118 = sub i64 %31, 1, !dbg !6294
  %and119 = and i64 %sub118, 2199023255552, !dbg !6294
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6294
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6294

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6294

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub123 = sub i64 %32, 1, !dbg !6294
  %and124 = and i64 %sub123, 1099511627776, !dbg !6294
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6294
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6294

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6294

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub128 = sub i64 %33, 1, !dbg !6294
  %and129 = and i64 %sub128, 549755813888, !dbg !6294
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6294
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6294

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6294

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub133 = sub i64 %34, 1, !dbg !6294
  %and134 = and i64 %sub133, 274877906944, !dbg !6294
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6294
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6294

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6294

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub138 = sub i64 %35, 1, !dbg !6294
  %and139 = and i64 %sub138, 137438953472, !dbg !6294
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6294
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6294

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6294

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub143 = sub i64 %36, 1, !dbg !6294
  %and144 = and i64 %sub143, 68719476736, !dbg !6294
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6294
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6294

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6294

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub148 = sub i64 %37, 1, !dbg !6294
  %and149 = and i64 %sub148, 34359738368, !dbg !6294
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6294
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6294

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6294

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub153 = sub i64 %38, 1, !dbg !6294
  %and154 = and i64 %sub153, 17179869184, !dbg !6294
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6294
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6294

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6294

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub158 = sub i64 %39, 1, !dbg !6294
  %and159 = and i64 %sub158, 8589934592, !dbg !6294
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6294
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6294

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6294

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub163 = sub i64 %40, 1, !dbg !6294
  %and164 = and i64 %sub163, 4294967296, !dbg !6294
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6294
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6294

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6294

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub168 = sub i64 %41, 1, !dbg !6294
  %and169 = and i64 %sub168, 2147483648, !dbg !6294
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6294
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6294

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6294

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub173 = sub i64 %42, 1, !dbg !6294
  %and174 = and i64 %sub173, 1073741824, !dbg !6294
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6294
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6294

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6294

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub178 = sub i64 %43, 1, !dbg !6294
  %and179 = and i64 %sub178, 536870912, !dbg !6294
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6294
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6294

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6294

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub183 = sub i64 %44, 1, !dbg !6294
  %and184 = and i64 %sub183, 268435456, !dbg !6294
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6294
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6294

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6294

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub188 = sub i64 %45, 1, !dbg !6294
  %and189 = and i64 %sub188, 134217728, !dbg !6294
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6294
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6294

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6294

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub193 = sub i64 %46, 1, !dbg !6294
  %and194 = and i64 %sub193, 67108864, !dbg !6294
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6294
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6294

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6294

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub198 = sub i64 %47, 1, !dbg !6294
  %and199 = and i64 %sub198, 33554432, !dbg !6294
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6294
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6294

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6294

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub203 = sub i64 %48, 1, !dbg !6294
  %and204 = and i64 %sub203, 16777216, !dbg !6294
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6294
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6294

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6294

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub208 = sub i64 %49, 1, !dbg !6294
  %and209 = and i64 %sub208, 8388608, !dbg !6294
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6294
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6294

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6294

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub213 = sub i64 %50, 1, !dbg !6294
  %and214 = and i64 %sub213, 4194304, !dbg !6294
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6294
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6294

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6294

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub218 = sub i64 %51, 1, !dbg !6294
  %and219 = and i64 %sub218, 2097152, !dbg !6294
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6294
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6294

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6294

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub223 = sub i64 %52, 1, !dbg !6294
  %and224 = and i64 %sub223, 1048576, !dbg !6294
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6294
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6294

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6294

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub228 = sub i64 %53, 1, !dbg !6294
  %and229 = and i64 %sub228, 524288, !dbg !6294
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6294
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6294

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6294

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub233 = sub i64 %54, 1, !dbg !6294
  %and234 = and i64 %sub233, 262144, !dbg !6294
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6294
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6294

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6294

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub238 = sub i64 %55, 1, !dbg !6294
  %and239 = and i64 %sub238, 131072, !dbg !6294
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6294
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6294

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6294

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub243 = sub i64 %56, 1, !dbg !6294
  %and244 = and i64 %sub243, 65536, !dbg !6294
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6294
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6294

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6294

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub248 = sub i64 %57, 1, !dbg !6294
  %and249 = and i64 %sub248, 32768, !dbg !6294
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6294
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6294

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6294

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub253 = sub i64 %58, 1, !dbg !6294
  %and254 = and i64 %sub253, 16384, !dbg !6294
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6294
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6294

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6294

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub258 = sub i64 %59, 1, !dbg !6294
  %and259 = and i64 %sub258, 8192, !dbg !6294
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6294
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6294

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6294

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub263 = sub i64 %60, 1, !dbg !6294
  %and264 = and i64 %sub263, 4096, !dbg !6294
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6294
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6294

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6294

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub268 = sub i64 %61, 1, !dbg !6294
  %and269 = and i64 %sub268, 2048, !dbg !6294
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6294
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6294

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6294

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub273 = sub i64 %62, 1, !dbg !6294
  %and274 = and i64 %sub273, 1024, !dbg !6294
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6294
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6294

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6294

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub278 = sub i64 %63, 1, !dbg !6294
  %and279 = and i64 %sub278, 512, !dbg !6294
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6294
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6294

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6294

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub283 = sub i64 %64, 1, !dbg !6294
  %and284 = and i64 %sub283, 256, !dbg !6294
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6294
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6294

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6294

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub288 = sub i64 %65, 1, !dbg !6294
  %and289 = and i64 %sub288, 128, !dbg !6294
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6294
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6294

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6294

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub293 = sub i64 %66, 1, !dbg !6294
  %and294 = and i64 %sub293, 64, !dbg !6294
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6294
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6294

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6294

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub298 = sub i64 %67, 1, !dbg !6294
  %and299 = and i64 %sub298, 32, !dbg !6294
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6294
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6294

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6294

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub303 = sub i64 %68, 1, !dbg !6294
  %and304 = and i64 %sub303, 16, !dbg !6294
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6294
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6294

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6294

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub308 = sub i64 %69, 1, !dbg !6294
  %and309 = and i64 %sub308, 8, !dbg !6294
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6294
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6294

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6294

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub313 = sub i64 %70, 1, !dbg !6294
  %and314 = and i64 %sub313, 4, !dbg !6294
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6294
  %71 = zext i1 %tobool315 to i64, !dbg !6294
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6294
  br label %cond.end, !dbg !6294

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6294
  br label %cond.end317, !dbg !6294

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6294
  br label %cond.end319, !dbg !6294

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6294
  br label %cond.end321, !dbg !6294

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6294
  br label %cond.end323, !dbg !6294

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6294
  br label %cond.end325, !dbg !6294

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6294
  br label %cond.end327, !dbg !6294

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6294
  br label %cond.end329, !dbg !6294

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6294
  br label %cond.end331, !dbg !6294

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6294
  br label %cond.end333, !dbg !6294

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6294
  br label %cond.end335, !dbg !6294

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6294
  br label %cond.end337, !dbg !6294

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6294
  br label %cond.end339, !dbg !6294

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6294
  br label %cond.end341, !dbg !6294

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6294
  br label %cond.end343, !dbg !6294

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6294
  br label %cond.end345, !dbg !6294

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6294
  br label %cond.end347, !dbg !6294

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6294
  br label %cond.end349, !dbg !6294

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6294
  br label %cond.end351, !dbg !6294

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6294
  br label %cond.end353, !dbg !6294

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6294
  br label %cond.end355, !dbg !6294

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6294
  br label %cond.end357, !dbg !6294

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6294
  br label %cond.end359, !dbg !6294

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6294
  br label %cond.end361, !dbg !6294

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6294
  br label %cond.end363, !dbg !6294

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6294
  br label %cond.end365, !dbg !6294

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6294
  br label %cond.end367, !dbg !6294

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6294
  br label %cond.end369, !dbg !6294

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6294
  br label %cond.end371, !dbg !6294

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6294
  br label %cond.end373, !dbg !6294

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6294
  br label %cond.end375, !dbg !6294

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6294
  br label %cond.end377, !dbg !6294

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6294
  br label %cond.end379, !dbg !6294

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6294
  br label %cond.end381, !dbg !6294

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6294
  br label %cond.end383, !dbg !6294

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6294
  br label %cond.end385, !dbg !6294

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6294
  br label %cond.end387, !dbg !6294

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6294
  br label %cond.end389, !dbg !6294

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6294
  br label %cond.end391, !dbg !6294

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6294
  br label %cond.end393, !dbg !6294

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6294
  br label %cond.end395, !dbg !6294

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6294
  br label %cond.end397, !dbg !6294

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6294
  br label %cond.end399, !dbg !6294

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6294
  br label %cond.end401, !dbg !6294

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6294
  br label %cond.end403, !dbg !6294

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6294
  br label %cond.end405, !dbg !6294

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6294
  br label %cond.end407, !dbg !6294

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6294
  br label %cond.end409, !dbg !6294

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6294
  br label %cond.end411, !dbg !6294

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6294
  br label %cond.end413, !dbg !6294

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6294
  br label %cond.end415, !dbg !6294

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6294
  br label %cond.end417, !dbg !6294

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6294
  br label %cond.end419, !dbg !6294

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6294
  br label %cond.end421, !dbg !6294

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6294
  br label %cond.end423, !dbg !6294

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6294
  br label %cond.end425, !dbg !6294

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6294
  br label %cond.end427, !dbg !6294

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6294
  br label %cond.end429, !dbg !6294

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6294
  br label %cond.end431, !dbg !6294

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6294
  br label %cond.end433, !dbg !6294

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6294
  br label %cond.end435, !dbg !6294

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6294
  br label %cond.end437, !dbg !6294

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6294
  br label %cond.end440, !dbg !6294

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6294

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6294
  br label %cond.end444, !dbg !6294

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6294
  %sub443 = sub i64 %72, 1, !dbg !6294
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !6294
  br label %cond.end444, !dbg !6294

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6294
  %sub446 = sub i32 %cond445, 12, !dbg !6295
  %add = add i32 %sub446, 1, !dbg !6296
  store i32 %add, i32* %retval, align 4, !dbg !6297
  br label %return, !dbg !6297

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6298
  %dec = add i64 %73, -1, !dbg !6298
  store i64 %dec, i64* %size.addr, align 8, !dbg !6298
  %74 = load i64, i64* %size.addr, align 8, !dbg !6299
  %shr = lshr i64 %74, 12, !dbg !6299
  store i64 %shr, i64* %size.addr, align 8, !dbg !6299
  %75 = load i64, i64* %size.addr, align 8, !dbg !6300
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6277
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6301
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6302
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !6301, !srcloc !6303
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6301
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6304
  %add.i = add i32 %79, 1, !dbg !6305
  store i32 %add.i, i32* %retval, align 4, !dbg !6306
  br label %return, !dbg !6306

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6307
  ret i32 %80, !dbg !6307
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !6308 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6269, metadata !DIExpression()), !dbg !6312
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6276, metadata !DIExpression()), !dbg !6314
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6315, metadata !DIExpression()), !dbg !6316
  %0 = load i64, i64* %n.addr, align 8, !dbg !6317
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6314
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6318
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6319
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !6318, !srcloc !6303
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6318
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6320
  %add.i = add i32 %4, 1, !dbg !6321
  %sub = sub i32 %add.i, 1, !dbg !6322
  ret i32 %sub, !dbg !6323
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !6324 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6328, metadata !DIExpression()), !dbg !6329
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6330, metadata !DIExpression()), !dbg !6331
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6332, metadata !DIExpression()), !dbg !6333
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6334, metadata !DIExpression()), !dbg !6335
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6336
  ret i8* %0, !dbg !6337
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @irtoy_response(%struct.irtoy* %irtoy, i32 %len) #2 !dbg !6338 {
entry:
  %p.addr.i.i.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i.i, metadata !6341, metadata !DIExpression()), !dbg !6348
  %p.addr.i.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i, metadata !6367, metadata !DIExpression()), !dbg !6368
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !6369, metadata !DIExpression()), !dbg !6370
  %irtoy.addr = alloca %struct.irtoy*, align 8
  %len.addr = alloca i32, align 4
  %version = alloca i32, align 4
  %version18 = alloca i32, align 4
  %rawir = alloca %struct.ir_raw_event, align 4
  %in46 = alloca i16*, align 8
  %i = alloca i32, align 4
  %v = alloca i16, align 2
  %emitted = alloca i16, align 2
  %space = alloca i32, align 4
  %buf_len = alloca i32, align 4
  %err = alloca i32, align 4
  %__UNIQUE_ID___x237 = alloca i32, align 4
  %__UNIQUE_ID___y238 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.irtoy* %irtoy, %struct.irtoy** %irtoy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irtoy** %irtoy.addr, metadata !6371, metadata !DIExpression()), !dbg !6372
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !6373, metadata !DIExpression()), !dbg !6374
  %0 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6375
  %state = getelementptr inbounds %struct.irtoy, %struct.irtoy* %0, i32 0, i32 9, !dbg !6376
  %1 = load i32, i32* %state, align 4, !dbg !6376
  switch i32 %1, label %sw.epilog [
    i32 2, label %sw.bb
    i32 0, label %sw.bb36
    i32 3, label %sw.bb95
    i32 1, label %sw.bb165
  ], !dbg !6377

sw.bb:                                            ; preds = %entry
  %2 = load i32, i32* %len.addr, align 4, !dbg !6378
  %cmp = icmp eq i32 %2, 4, !dbg !6380
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !6381

land.lhs.true:                                    ; preds = %sw.bb
  %3 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6382
  %in = getelementptr inbounds %struct.irtoy, %struct.irtoy* %3, i32 0, i32 5, !dbg !6383
  %4 = load i8*, i8** %in, align 8, !dbg !6383
  %arrayidx = getelementptr i8, i8* %4, i64 0, !dbg !6382
  %5 = load i8, i8* %arrayidx, align 1, !dbg !6382
  %conv = zext i8 %5 to i32, !dbg !6382
  %cmp1 = icmp eq i32 %conv, 86, !dbg !6384
  br i1 %cmp1, label %if.then, label %if.else, !dbg !6385

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i32* %version, metadata !6386, metadata !DIExpression()), !dbg !6388
  %6 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6389
  %in3 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %6, i32 0, i32 5, !dbg !6390
  %7 = load i8*, i8** %in3, align 8, !dbg !6390
  %arrayidx4 = getelementptr i8, i8* %7, i64 4, !dbg !6389
  store i8 0, i8* %arrayidx4, align 1, !dbg !6391
  %8 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6392
  %in5 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %8, i32 0, i32 5, !dbg !6394
  %9 = load i8*, i8** %in5, align 8, !dbg !6394
  %add.ptr = getelementptr i8, i8* %9, i64 1, !dbg !6395
  %call = call i32 @kstrtouint(i8* %add.ptr, i32 10, i32* %version) #9, !dbg !6396
  %tobool = icmp ne i32 %call, 0, !dbg !6396
  br i1 %tobool, label %if.then6, label %if.end, !dbg !6397

if.then6:                                         ; preds = %if.then
  %10 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6398
  %dev = getelementptr inbounds %struct.irtoy, %struct.irtoy* %10, i32 0, i32 0, !dbg !6398
  %11 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6398
  %12 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6398
  %in7 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %12, i32 0, i32 5, !dbg !6398
  %13 = load i8*, i8** %in7, align 8, !dbg !6398
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %11, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.9, i64 0, i64 0), i32 4, i8* %13) #10, !dbg !6398
  br label %sw.epilog, !dbg !6400

if.end:                                           ; preds = %if.then
  %14 = load i32, i32* %version, align 4, !dbg !6401
  %div = udiv i32 %14, 100, !dbg !6402
  %15 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6403
  %hw_version = getelementptr inbounds %struct.irtoy, %struct.irtoy* %15, i32 0, i32 13, !dbg !6404
  store i32 %div, i32* %hw_version, align 8, !dbg !6405
  %16 = load i32, i32* %version, align 4, !dbg !6406
  %rem = urem i32 %16, 100, !dbg !6407
  %17 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6408
  %sw_version = getelementptr inbounds %struct.irtoy, %struct.irtoy* %17, i32 0, i32 14, !dbg !6409
  store i32 %rem, i32* %sw_version, align 4, !dbg !6410
  %18 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6411
  %state8 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %18, i32 0, i32 9, !dbg !6412
  store i32 0, i32* %state8, align 4, !dbg !6413
  %19 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6414
  %command_done = getelementptr inbounds %struct.irtoy, %struct.irtoy* %19, i32 0, i32 7, !dbg !6415
  call void @complete(%struct.completion* %command_done) #9, !dbg !6416
  br label %if.end35, !dbg !6417

if.else:                                          ; preds = %land.lhs.true, %sw.bb
  %20 = load i32, i32* %len.addr, align 4, !dbg !6418
  %cmp9 = icmp eq i32 %20, 3, !dbg !6420
  br i1 %cmp9, label %land.lhs.true11, label %if.else31, !dbg !6421

land.lhs.true11:                                  ; preds = %if.else
  %21 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6422
  %in12 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %21, i32 0, i32 5, !dbg !6423
  %22 = load i8*, i8** %in12, align 8, !dbg !6423
  %arrayidx13 = getelementptr i8, i8* %22, i64 0, !dbg !6422
  %23 = load i8, i8* %arrayidx13, align 1, !dbg !6422
  %conv14 = zext i8 %23 to i32, !dbg !6422
  %cmp15 = icmp eq i32 %conv14, 83, !dbg !6424
  br i1 %cmp15, label %if.then17, label %if.else31, !dbg !6425

if.then17:                                        ; preds = %land.lhs.true11
  call void @llvm.dbg.declare(metadata i32* %version18, metadata !6426, metadata !DIExpression()), !dbg !6428
  %24 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6429
  %in19 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %24, i32 0, i32 5, !dbg !6430
  %25 = load i8*, i8** %in19, align 8, !dbg !6430
  %arrayidx20 = getelementptr i8, i8* %25, i64 3, !dbg !6429
  store i8 0, i8* %arrayidx20, align 1, !dbg !6431
  %26 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6432
  %in21 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %26, i32 0, i32 5, !dbg !6434
  %27 = load i8*, i8** %in21, align 8, !dbg !6434
  %add.ptr22 = getelementptr i8, i8* %27, i64 1, !dbg !6435
  %call23 = call i32 @kstrtouint(i8* %add.ptr22, i32 10, i32* %version18) #9, !dbg !6436
  %tobool24 = icmp ne i32 %call23, 0, !dbg !6436
  br i1 %tobool24, label %if.then25, label %if.end28, !dbg !6437

if.then25:                                        ; preds = %if.then17
  %28 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6438
  %dev26 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %28, i32 0, i32 0, !dbg !6438
  %29 = load %struct.device*, %struct.device** %dev26, align 8, !dbg !6438
  %30 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6438
  %in27 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %30, i32 0, i32 5, !dbg !6438
  %31 = load i8*, i8** %in27, align 8, !dbg !6438
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 3, i8* %31) #10, !dbg !6438
  br label %sw.epilog, !dbg !6440

if.end28:                                         ; preds = %if.then17
  %32 = load i32, i32* %version18, align 4, !dbg !6441
  %33 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6442
  %proto_version = getelementptr inbounds %struct.irtoy, %struct.irtoy* %33, i32 0, i32 15, !dbg !6443
  store i32 %32, i32* %proto_version, align 8, !dbg !6444
  %34 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6445
  %state29 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %34, i32 0, i32 9, !dbg !6446
  store i32 0, i32* %state29, align 4, !dbg !6447
  %35 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6448
  %command_done30 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %35, i32 0, i32 7, !dbg !6449
  call void @complete(%struct.completion* %command_done30) #9, !dbg !6450
  br label %if.end34, !dbg !6451

if.else31:                                        ; preds = %land.lhs.true11, %if.else
  %36 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6452
  %dev32 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %36, i32 0, i32 0, !dbg !6452
  %37 = load %struct.device*, %struct.device** %dev32, align 8, !dbg !6452
  %38 = load i32, i32* %len.addr, align 4, !dbg !6452
  %39 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6452
  %in33 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %39, i32 0, i32 5, !dbg !6452
  %40 = load i8*, i8** %in33, align 8, !dbg !6452
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i32 %38, i8* %40) #10, !dbg !6452
  br label %if.end34

if.end34:                                         ; preds = %if.else31, %if.end28
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end
  br label %sw.epilog, !dbg !6454

sw.bb36:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event* %rawir, metadata !6455, metadata !DIExpression()), !dbg !6469
  %41 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 0, !dbg !6470
  %42 = bitcast %union.anon.66* %41 to i8*, !dbg !6470
  call void @llvm.memset.p0i8.i64(i8* align 4 %42, i8 0, i64 4, i1 false), !dbg !6470
  %duty_cycle = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 1, !dbg !6470
  store i8 0, i8* %duty_cycle, align 4, !dbg !6470
  %pulse = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 2, !dbg !6470
  %43 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6471
  %pulse37 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %43, i32 0, i32 8, !dbg !6472
  %44 = load i8, i8* %pulse37, align 8, !dbg !6472
  %tobool38 = trunc i8 %44 to i1, !dbg !6472
  %conv39 = zext i1 %tobool38 to i32, !dbg !6471
  %45 = trunc i32 %conv39 to i8, !dbg !6470
  %bf.load = load i8, i8* %pulse, align 1, !dbg !6470
  %bf.value = and i8 %45, 1, !dbg !6470
  %bf.clear = and i8 %bf.load, -2, !dbg !6470
  %bf.set = or i8 %bf.clear, %bf.value, !dbg !6470
  store i8 %bf.set, i8* %pulse, align 1, !dbg !6470
  %reset = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 2, !dbg !6470
  %bf.load40 = load i8, i8* %reset, align 1, !dbg !6470
  %bf.clear41 = and i8 %bf.load40, -3, !dbg !6470
  store i8 %bf.clear41, i8* %reset, align 1, !dbg !6470
  %timeout = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 2, !dbg !6470
  %bf.load42 = load i8, i8* %timeout, align 1, !dbg !6470
  %bf.clear43 = and i8 %bf.load42, -5, !dbg !6470
  store i8 %bf.clear43, i8* %timeout, align 1, !dbg !6470
  %carrier_report = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 2, !dbg !6470
  %bf.load44 = load i8, i8* %carrier_report, align 1, !dbg !6470
  %bf.clear45 = and i8 %bf.load44, -9, !dbg !6470
  store i8 %bf.clear45, i8* %carrier_report, align 1, !dbg !6470
  call void @llvm.dbg.declare(metadata i16** %in46, metadata !6473, metadata !DIExpression()), !dbg !6474
  %46 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6475
  %in47 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %46, i32 0, i32 5, !dbg !6476
  %47 = load i8*, i8** %in47, align 8, !dbg !6476
  %48 = bitcast i8* %47 to i16*, !dbg !6477
  store i16* %48, i16** %in46, align 8, !dbg !6474
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6478, metadata !DIExpression()), !dbg !6479
  store i32 0, i32* %i, align 4, !dbg !6480
  br label %for.cond, !dbg !6482

for.cond:                                         ; preds = %for.inc, %sw.bb36
  %49 = load i32, i32* %i, align 4, !dbg !6483
  %conv48 = sext i32 %49 to i64, !dbg !6483
  %50 = load i32, i32* %len.addr, align 4, !dbg !6485
  %conv49 = zext i32 %50 to i64, !dbg !6485
  %div50 = udiv i64 %conv49, 2, !dbg !6486
  %cmp51 = icmp ult i64 %conv48, %div50, !dbg !6487
  br i1 %cmp51, label %for.body, label %for.end, !dbg !6488

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i16* %v, metadata !6489, metadata !DIExpression()), !dbg !6491
  %51 = load i16*, i16** %in46, align 8, !dbg !6492
  %52 = load i32, i32* %i, align 4, !dbg !6492
  %idxprom = sext i32 %52 to i64, !dbg !6492
  %arrayidx53 = getelementptr i16, i16* %51, i64 %idxprom, !dbg !6492
  %53 = load i16, i16* %arrayidx53, align 2, !dbg !6492
  %54 = call i1 @llvm.is.constant.i16(i16 %53), !dbg !6492
  br i1 %54, label %cond.true, label %cond.false, !dbg !6492

cond.true:                                        ; preds = %for.body
  %55 = load i16*, i16** %in46, align 8, !dbg !6492
  %56 = load i32, i32* %i, align 4, !dbg !6492
  %idxprom54 = sext i32 %56 to i64, !dbg !6492
  %arrayidx55 = getelementptr i16, i16* %55, i64 %idxprom54, !dbg !6492
  %57 = load i16, i16* %arrayidx55, align 2, !dbg !6492
  %conv56 = zext i16 %57 to i32, !dbg !6492
  %and = and i32 %conv56, 255, !dbg !6492
  %shl = shl i32 %and, 8, !dbg !6492
  %58 = load i16*, i16** %in46, align 8, !dbg !6492
  %59 = load i32, i32* %i, align 4, !dbg !6492
  %idxprom57 = sext i32 %59 to i64, !dbg !6492
  %arrayidx58 = getelementptr i16, i16* %58, i64 %idxprom57, !dbg !6492
  %60 = load i16, i16* %arrayidx58, align 2, !dbg !6492
  %conv59 = zext i16 %60 to i32, !dbg !6492
  %and60 = and i32 %conv59, 65280, !dbg !6492
  %shr = ashr i32 %and60, 8, !dbg !6492
  %or = or i32 %shl, %shr, !dbg !6492
  %conv61 = trunc i32 %or to i16, !dbg !6492
  %conv62 = zext i16 %conv61 to i32, !dbg !6492
  br label %cond.end, !dbg !6492

cond.false:                                       ; preds = %for.body
  %61 = load i16*, i16** %in46, align 8, !dbg !6492
  %62 = load i32, i32* %i, align 4, !dbg !6492
  %idxprom63 = sext i32 %62 to i64, !dbg !6492
  %arrayidx64 = getelementptr i16, i16* %61, i64 %idxprom63, !dbg !6492
  %63 = load i16, i16* %arrayidx64, align 2, !dbg !6492
  %call65 = call zeroext i16 @__fswab16(i16 zeroext %63) #12, !dbg !6492
  %conv66 = zext i16 %call65 to i32, !dbg !6492
  br label %cond.end, !dbg !6492

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv62, %cond.true ], [ %conv66, %cond.false ], !dbg !6492
  %conv67 = trunc i32 %cond to i16, !dbg !6492
  store i16 %conv67, i16* %v, align 2, !dbg !6491
  %64 = load i16, i16* %v, align 2, !dbg !6493
  %conv68 = zext i16 %64 to i32, !dbg !6493
  %cmp69 = icmp eq i32 %conv68, 65535, !dbg !6495
  br i1 %cmp69, label %if.then71, label %if.else75, !dbg !6496

if.then71:                                        ; preds = %cond.end
  %pulse72 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 2, !dbg !6497
  %bf.load73 = load i8, i8* %pulse72, align 1, !dbg !6499
  %bf.clear74 = and i8 %bf.load73, -2, !dbg !6499
  store i8 %bf.clear74, i8* %pulse72, align 1, !dbg !6499
  br label %if.end78, !dbg !6500

if.else75:                                        ; preds = %cond.end
  %65 = load i16, i16* %v, align 2, !dbg !6501
  %conv76 = zext i16 %65 to i32, !dbg !6501
  %mul = mul i32 %conv76, 21, !dbg !6503
  %66 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 0, !dbg !6504
  %duration = bitcast %union.anon.66* %66 to i32*, !dbg !6504
  store i32 %mul, i32* %duration, align 4, !dbg !6505
  %67 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6506
  %rc = getelementptr inbounds %struct.irtoy, %struct.irtoy* %67, i32 0, i32 2, !dbg !6507
  %68 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !6507
  %call77 = call i32 @ir_raw_event_store_with_timeout(%struct.rc_dev* %68, %struct.ir_raw_event* %rawir) #9, !dbg !6508
  br label %if.end78

if.end78:                                         ; preds = %if.else75, %if.then71
  %pulse79 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 2, !dbg !6509
  %bf.load80 = load i8, i8* %pulse79, align 1, !dbg !6509
  %bf.clear81 = and i8 %bf.load80, 1, !dbg !6509
  %bf.cast = zext i8 %bf.clear81 to i32, !dbg !6509
  %tobool82 = icmp ne i32 %bf.cast, 0, !dbg !6510
  %lnot = xor i1 %tobool82, true, !dbg !6510
  %lnot.ext = zext i1 %lnot to i32, !dbg !6510
  %pulse83 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 2, !dbg !6511
  %69 = trunc i32 %lnot.ext to i8, !dbg !6512
  %bf.load84 = load i8, i8* %pulse83, align 1, !dbg !6512
  %bf.value85 = and i8 %69, 1, !dbg !6512
  %bf.clear86 = and i8 %bf.load84, -2, !dbg !6512
  %bf.set87 = or i8 %bf.clear86, %bf.value85, !dbg !6512
  store i8 %bf.set87, i8* %pulse83, align 1, !dbg !6512
  %bf.result.cast = zext i8 %bf.value85 to i32, !dbg !6512
  br label %for.inc, !dbg !6513

for.inc:                                          ; preds = %if.end78
  %70 = load i32, i32* %i, align 4, !dbg !6514
  %inc = add i32 %70, 1, !dbg !6514
  store i32 %inc, i32* %i, align 4, !dbg !6514
  br label %for.cond, !dbg !6515, !llvm.loop !6516

for.end:                                          ; preds = %for.cond
  %pulse88 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 2, !dbg !6518
  %bf.load89 = load i8, i8* %pulse88, align 1, !dbg !6518
  %bf.clear90 = and i8 %bf.load89, 1, !dbg !6518
  %bf.cast91 = zext i8 %bf.clear90 to i32, !dbg !6518
  %tobool92 = icmp ne i32 %bf.cast91, 0, !dbg !6519
  %71 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6520
  %pulse93 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %71, i32 0, i32 8, !dbg !6521
  %frombool = zext i1 %tobool92 to i8, !dbg !6522
  store i8 %frombool, i8* %pulse93, align 8, !dbg !6522
  %72 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6523
  %rc94 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %72, i32 0, i32 2, !dbg !6524
  %73 = load %struct.rc_dev*, %struct.rc_dev** %rc94, align 8, !dbg !6524
  call void @ir_raw_event_handle(%struct.rc_dev* %73) #9, !dbg !6525
  br label %sw.epilog, !dbg !6526

sw.bb95:                                          ; preds = %entry
  %74 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6527
  %tx_len = getelementptr inbounds %struct.irtoy, %struct.irtoy* %74, i32 0, i32 11, !dbg !6528
  %75 = load i32, i32* %tx_len, align 8, !dbg !6528
  %cmp96 = icmp eq i32 %75, 0, !dbg !6529
  br i1 %cmp96, label %if.then98, label %if.else127, !dbg !6530

if.then98:                                        ; preds = %sw.bb95
  %76 = load i32, i32* %len.addr, align 4, !dbg !6531
  %cmp99 = icmp eq i32 %76, 3, !dbg !6532
  br i1 %cmp99, label %land.lhs.true101, label %if.else113, !dbg !6533

land.lhs.true101:                                 ; preds = %if.then98
  %77 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6534
  %in102 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %77, i32 0, i32 5, !dbg !6535
  %78 = load i8*, i8** %in102, align 8, !dbg !6535
  %arrayidx103 = getelementptr i8, i8* %78, i64 0, !dbg !6534
  %79 = load i8, i8* %arrayidx103, align 1, !dbg !6534
  %conv104 = zext i8 %79 to i32, !dbg !6534
  %cmp105 = icmp eq i32 %conv104, 116, !dbg !6536
  br i1 %cmp105, label %if.then107, label %if.else113, !dbg !6537

if.then107:                                       ; preds = %land.lhs.true101
  call void @llvm.dbg.declare(metadata i16* %emitted, metadata !6538, metadata !DIExpression()), !dbg !6539
  %80 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6540
  %in108 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %80, i32 0, i32 5, !dbg !6541
  %81 = load i8*, i8** %in108, align 8, !dbg !6541
  %add.ptr109 = getelementptr i8, i8* %81, i64 1, !dbg !6542
  store i8* %add.ptr109, i8** %p.addr.i, align 8
  %82 = load i8*, i8** %p.addr.i, align 8, !dbg !6543
  %83 = bitcast i8* %82 to i16*, !dbg !6544
  store i16* %83, i16** %p.addr.i.i, align 8
  %84 = load i16*, i16** %p.addr.i.i, align 8, !dbg !6545
  store i16* %84, i16** %p.addr.i.i.i, align 8
  %85 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !6546
  %86 = load i16, i16* %85, align 2, !dbg !6546
  %87 = call i1 @llvm.is.constant.i16(i16 %86) #11, !dbg !6546
  br i1 %87, label %cond.true.i.i.i, label %cond.false.i.i.i, !dbg !6546

cond.true.i.i.i:                                  ; preds = %if.then107
  %88 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !6546
  %89 = load i16, i16* %88, align 2, !dbg !6546
  %conv.i.i.i = zext i16 %89 to i32, !dbg !6546
  %and.i.i.i = and i32 %conv.i.i.i, 255, !dbg !6546
  %shl.i.i.i = shl i32 %and.i.i.i, 8, !dbg !6546
  %90 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !6546
  %91 = load i16, i16* %90, align 2, !dbg !6546
  %conv1.i.i.i = zext i16 %91 to i32, !dbg !6546
  %and2.i.i.i = and i32 %conv1.i.i.i, 65280, !dbg !6546
  %shr.i.i.i = ashr i32 %and2.i.i.i, 8, !dbg !6546
  %or.i.i.i = or i32 %shl.i.i.i, %shr.i.i.i, !dbg !6546
  %conv3.i.i.i = trunc i32 %or.i.i.i to i16, !dbg !6546
  %conv4.i.i.i = zext i16 %conv3.i.i.i to i32, !dbg !6546
  br label %get_unaligned_be16.exit, !dbg !6546

cond.false.i.i.i:                                 ; preds = %if.then107
  %92 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !6546
  %93 = load i16, i16* %92, align 2, !dbg !6546
  %call.i.i.i = call zeroext i16 @__fswab16(i16 zeroext %93) #12, !dbg !6546
  %conv5.i.i.i = zext i16 %call.i.i.i to i32, !dbg !6546
  br label %get_unaligned_be16.exit, !dbg !6546

get_unaligned_be16.exit:                          ; preds = %cond.true.i.i.i, %cond.false.i.i.i
  %cond.i.i.i = phi i32 [ %conv4.i.i.i, %cond.true.i.i.i ], [ %conv5.i.i.i, %cond.false.i.i.i ], !dbg !6546
  %conv6.i.i.i = trunc i32 %cond.i.i.i to i16, !dbg !6546
  store i16 %conv6.i.i.i, i16* %emitted, align 2, !dbg !6539
  %94 = load i16, i16* %emitted, align 2, !dbg !6547
  %conv111 = zext i16 %94 to i32, !dbg !6547
  %95 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6548
  %emitted112 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %95, i32 0, i32 12, !dbg !6549
  store i32 %conv111, i32* %emitted112, align 4, !dbg !6550
  br label %if.end126, !dbg !6551

if.else113:                                       ; preds = %land.lhs.true101, %if.then98
  %96 = load i32, i32* %len.addr, align 4, !dbg !6552
  %cmp114 = icmp eq i32 %96, 1, !dbg !6554
  br i1 %cmp114, label %land.lhs.true116, label %if.end125, !dbg !6555

land.lhs.true116:                                 ; preds = %if.else113
  %97 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6556
  %in117 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %97, i32 0, i32 5, !dbg !6557
  %98 = load i8*, i8** %in117, align 8, !dbg !6557
  %arrayidx118 = getelementptr i8, i8* %98, i64 0, !dbg !6556
  %99 = load i8, i8* %arrayidx118, align 1, !dbg !6556
  %conv119 = zext i8 %99 to i32, !dbg !6556
  %cmp120 = icmp eq i32 %conv119, 67, !dbg !6558
  br i1 %cmp120, label %if.then122, label %if.end125, !dbg !6559

if.then122:                                       ; preds = %land.lhs.true116
  %100 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6560
  %state123 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %100, i32 0, i32 9, !dbg !6562
  store i32 0, i32* %state123, align 4, !dbg !6563
  %101 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6564
  %command_done124 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %101, i32 0, i32 7, !dbg !6565
  call void @complete(%struct.completion* %command_done124) #9, !dbg !6566
  br label %if.end125, !dbg !6567

if.end125:                                        ; preds = %if.then122, %land.lhs.true116, %if.else113
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %get_unaligned_be16.exit
  br label %if.end164, !dbg !6568

if.else127:                                       ; preds = %sw.bb95
  call void @llvm.dbg.declare(metadata i32* %space, metadata !6569, metadata !DIExpression()), !dbg !6571
  %102 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6572
  %in128 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %102, i32 0, i32 5, !dbg !6573
  %103 = load i8*, i8** %in128, align 8, !dbg !6573
  %arrayidx129 = getelementptr i8, i8* %103, i64 0, !dbg !6572
  %104 = load i8, i8* %arrayidx129, align 1, !dbg !6572
  %conv130 = zext i8 %104 to i32, !dbg !6572
  store i32 %conv130, i32* %space, align 4, !dbg !6571
  call void @llvm.dbg.declare(metadata i32* %buf_len, metadata !6574, metadata !DIExpression()), !dbg !6575
  call void @llvm.dbg.declare(metadata i32* %err, metadata !6576, metadata !DIExpression()), !dbg !6577
  %105 = load i32, i32* %len.addr, align 4, !dbg !6578
  %cmp131 = icmp ne i32 %105, 1, !dbg !6580
  br i1 %cmp131, label %if.then138, label %lor.lhs.false, !dbg !6581

lor.lhs.false:                                    ; preds = %if.else127
  %106 = load i32, i32* %space, align 4, !dbg !6582
  %cmp133 = icmp ugt i32 %106, 64, !dbg !6583
  br i1 %cmp133, label %if.then138, label %lor.lhs.false135, !dbg !6584

lor.lhs.false135:                                 ; preds = %lor.lhs.false
  %107 = load i32, i32* %space, align 4, !dbg !6585
  %cmp136 = icmp eq i32 %107, 0, !dbg !6586
  br i1 %cmp136, label %if.then138, label %if.end143, !dbg !6587

if.then138:                                       ; preds = %lor.lhs.false135, %lor.lhs.false, %if.else127
  %108 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6588
  %dev139 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %108, i32 0, i32 0, !dbg !6588
  %109 = load %struct.device*, %struct.device** %dev139, align 8, !dbg !6588
  %110 = load i32, i32* %len.addr, align 4, !dbg !6588
  %111 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6588
  %in140 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %111, i32 0, i32 5, !dbg !6588
  %112 = load i8*, i8** %in140, align 8, !dbg !6588
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %110, i8* %112) #10, !dbg !6588
  %113 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6590
  %state141 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %113, i32 0, i32 9, !dbg !6591
  store i32 0, i32* %state141, align 4, !dbg !6592
  %114 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6593
  %command_done142 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %114, i32 0, i32 7, !dbg !6594
  call void @complete(%struct.completion* %command_done142) #9, !dbg !6595
  br label %sw.epilog, !dbg !6596

if.end143:                                        ; preds = %lor.lhs.false135
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x237, metadata !6597, metadata !DIExpression()), !dbg !6599
  %115 = load i32, i32* %space, align 4, !dbg !6599
  store i32 %115, i32* %__UNIQUE_ID___x237, align 4, !dbg !6599
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y238, metadata !6600, metadata !DIExpression()), !dbg !6599
  %116 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6599
  %tx_len144 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %116, i32 0, i32 11, !dbg !6599
  %117 = load i32, i32* %tx_len144, align 8, !dbg !6599
  store i32 %117, i32* %__UNIQUE_ID___y238, align 4, !dbg !6599
  %118 = load i32, i32* %__UNIQUE_ID___x237, align 4, !dbg !6599
  %119 = load i32, i32* %__UNIQUE_ID___y238, align 4, !dbg !6599
  %cmp145 = icmp ult i32 %118, %119, !dbg !6599
  br i1 %cmp145, label %cond.true147, label %cond.false148, !dbg !6599

cond.true147:                                     ; preds = %if.end143
  %120 = load i32, i32* %__UNIQUE_ID___x237, align 4, !dbg !6599
  br label %cond.end149, !dbg !6599

cond.false148:                                    ; preds = %if.end143
  %121 = load i32, i32* %__UNIQUE_ID___y238, align 4, !dbg !6599
  br label %cond.end149, !dbg !6599

cond.end149:                                      ; preds = %cond.false148, %cond.true147
  %cond150 = phi i32 [ %120, %cond.true147 ], [ %121, %cond.false148 ], !dbg !6599
  store i32 %cond150, i32* %tmp, align 4, !dbg !6599
  %122 = load i32, i32* %tmp, align 4, !dbg !6599
  store i32 %122, i32* %buf_len, align 4, !dbg !6601
  %123 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6602
  %out = getelementptr inbounds %struct.irtoy, %struct.irtoy* %123, i32 0, i32 6, !dbg !6603
  %124 = load i8*, i8** %out, align 8, !dbg !6603
  %125 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6604
  %tx_buf = getelementptr inbounds %struct.irtoy, %struct.irtoy* %125, i32 0, i32 10, !dbg !6605
  %126 = load i8*, i8** %tx_buf, align 8, !dbg !6605
  %127 = load i32, i32* %buf_len, align 4, !dbg !6606
  %conv151 = zext i32 %127 to i64, !dbg !6606
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %124, i8* align 1 %126, i64 %conv151, i1 false), !dbg !6607
  %128 = load i32, i32* %buf_len, align 4, !dbg !6608
  %129 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6609
  %urb_out = getelementptr inbounds %struct.irtoy, %struct.irtoy* %129, i32 0, i32 4, !dbg !6610
  %130 = load %struct.urb*, %struct.urb** %urb_out, align 8, !dbg !6610
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %130, i32 0, i32 19, !dbg !6611
  store i32 %128, i32* %transfer_buffer_length, align 8, !dbg !6612
  %131 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6613
  %urb_out152 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %131, i32 0, i32 4, !dbg !6614
  %132 = load %struct.urb*, %struct.urb** %urb_out152, align 8, !dbg !6614
  %call153 = call i32 @usb_submit_urb(%struct.urb* %132, i32 2592) #9, !dbg !6615
  store i32 %call153, i32* %err, align 4, !dbg !6616
  %133 = load i32, i32* %err, align 4, !dbg !6617
  %cmp154 = icmp ne i32 %133, 0, !dbg !6619
  br i1 %cmp154, label %if.then156, label %if.end160, !dbg !6620

if.then156:                                       ; preds = %cond.end149
  %134 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6621
  %dev157 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %134, i32 0, i32 0, !dbg !6621
  %135 = load %struct.device*, %struct.device** %dev157, align 8, !dbg !6621
  %136 = load i32, i32* %err, align 4, !dbg !6621
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %135, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %136) #10, !dbg !6621
  %137 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6623
  %state158 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %137, i32 0, i32 9, !dbg !6624
  store i32 0, i32* %state158, align 4, !dbg !6625
  %138 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6626
  %command_done159 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %138, i32 0, i32 7, !dbg !6627
  call void @complete(%struct.completion* %command_done159) #9, !dbg !6628
  br label %sw.epilog, !dbg !6629

if.end160:                                        ; preds = %cond.end149
  %139 = load i32, i32* %buf_len, align 4, !dbg !6630
  %140 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6631
  %tx_buf161 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %140, i32 0, i32 10, !dbg !6632
  %141 = load i8*, i8** %tx_buf161, align 8, !dbg !6633
  %idx.ext = zext i32 %139 to i64, !dbg !6633
  %add.ptr162 = getelementptr i8, i8* %141, i64 %idx.ext, !dbg !6633
  store i8* %add.ptr162, i8** %tx_buf161, align 8, !dbg !6633
  %142 = load i32, i32* %buf_len, align 4, !dbg !6634
  %143 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6635
  %tx_len163 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %143, i32 0, i32 11, !dbg !6636
  %144 = load i32, i32* %tx_len163, align 8, !dbg !6637
  %sub = sub i32 %144, %142, !dbg !6637
  store i32 %sub, i32* %tx_len163, align 8, !dbg !6637
  br label %if.end164

if.end164:                                        ; preds = %if.end160, %if.end126
  br label %sw.epilog, !dbg !6638

sw.bb165:                                         ; preds = %entry
  %145 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6639
  %dev166 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %145, i32 0, i32 0, !dbg !6639
  %146 = load %struct.device*, %struct.device** %dev166, align 8, !dbg !6639
  %147 = load i32, i32* %len.addr, align 4, !dbg !6639
  %148 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6639
  %in167 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %148, i32 0, i32 5, !dbg !6639
  %149 = load i8*, i8** %in167, align 8, !dbg !6639
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %146, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0), i32 %147, i8* %149) #10, !dbg !6639
  br label %sw.epilog, !dbg !6640

sw.epilog:                                        ; preds = %if.then25, %sw.bb165, %entry, %if.end164, %if.then156, %if.then138, %for.end, %if.end35, %if.then6
  ret void, !dbg !6641
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

; Function Attrs: noredzone
declare dso_local void @complete(%struct.completion*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i16(i16) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal zeroext i16 @__fswab16(i16 zeroext %val) #7 !dbg !6642 {
entry:
  %val.addr = alloca i16, align 2
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !6645, metadata !DIExpression()), !dbg !6646
  %0 = load i16, i16* %val.addr, align 2, !dbg !6647
  %conv = zext i16 %0 to i32, !dbg !6647
  %and = and i32 %conv, 255, !dbg !6647
  %shl = shl i32 %and, 8, !dbg !6647
  %1 = load i16, i16* %val.addr, align 2, !dbg !6647
  %conv1 = zext i16 %1 to i32, !dbg !6647
  %and2 = and i32 %conv1, 65280, !dbg !6647
  %shr = ashr i32 %and2, 8, !dbg !6647
  %or = or i32 %shl, %shr, !dbg !6647
  %conv3 = trunc i32 %or to i16, !dbg !6647
  ret i16 %conv3, !dbg !6648
}

; Function Attrs: noredzone
declare dso_local i32 @ir_raw_event_store_with_timeout(%struct.rc_dev*, %struct.ir_raw_event*) #1

; Function Attrs: noredzone
declare dso_local void @ir_raw_event_handle(%struct.rc_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @irtoy_command(%struct.irtoy* %irtoy, i8* %cmd, i32 %cmd_len, i32 %state) #2 !dbg !6649 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !6653, metadata !DIExpression()), !dbg !6658
  %retval = alloca i32, align 4
  %irtoy.addr = alloca %struct.irtoy*, align 8
  %cmd.addr = alloca i8*, align 8
  %cmd_len.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct.irtoy* %irtoy, %struct.irtoy** %irtoy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irtoy** %irtoy.addr, metadata !6661, metadata !DIExpression()), !dbg !6662
  store i8* %cmd, i8** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cmd.addr, metadata !6663, metadata !DIExpression()), !dbg !6664
  store i32 %cmd_len, i32* %cmd_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd_len.addr, metadata !6665, metadata !DIExpression()), !dbg !6666
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !6667, metadata !DIExpression()), !dbg !6668
  call void @llvm.dbg.declare(metadata i32* %err, metadata !6669, metadata !DIExpression()), !dbg !6670
  %0 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6671
  %command_done = getelementptr inbounds %struct.irtoy, %struct.irtoy* %0, i32 0, i32 7, !dbg !6671
  call void @__init_completion(%struct.completion* %command_done) #9, !dbg !6671
  %1 = load i32, i32* %state.addr, align 4, !dbg !6672
  %2 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6673
  %state1 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %2, i32 0, i32 9, !dbg !6674
  store i32 %1, i32* %state1, align 4, !dbg !6675
  %3 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6676
  %out = getelementptr inbounds %struct.irtoy, %struct.irtoy* %3, i32 0, i32 6, !dbg !6677
  %4 = load i8*, i8** %out, align 8, !dbg !6677
  %5 = load i8*, i8** %cmd.addr, align 8, !dbg !6678
  %6 = load i32, i32* %cmd_len.addr, align 4, !dbg !6679
  %conv = sext i32 %6 to i64, !dbg !6679
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %5, i64 %conv, i1 false), !dbg !6680
  %7 = load i32, i32* %cmd_len.addr, align 4, !dbg !6681
  %8 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6682
  %urb_out = getelementptr inbounds %struct.irtoy, %struct.irtoy* %8, i32 0, i32 4, !dbg !6683
  %9 = load %struct.urb*, %struct.urb** %urb_out, align 8, !dbg !6683
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 19, !dbg !6684
  store i32 %7, i32* %transfer_buffer_length, align 8, !dbg !6685
  %10 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6686
  %urb_out2 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %10, i32 0, i32 4, !dbg !6687
  %11 = load %struct.urb*, %struct.urb** %urb_out2, align 8, !dbg !6687
  %call = call i32 @usb_submit_urb(%struct.urb* %11, i32 3264) #9, !dbg !6688
  store i32 %call, i32* %err, align 4, !dbg !6689
  %12 = load i32, i32* %err, align 4, !dbg !6690
  %cmp = icmp ne i32 %12, 0, !dbg !6692
  br i1 %cmp, label %if.then, label %if.end, !dbg !6693

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %err, align 4, !dbg !6694
  store i32 %13, i32* %retval, align 4, !dbg !6695
  br label %return, !dbg !6695

if.end:                                           ; preds = %entry
  %14 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6696
  %command_done4 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %14, i32 0, i32 7, !dbg !6697
  store i32 500, i32* %m.addr.i, align 4
  %15 = load i32, i32* %m.addr.i, align 4, !dbg !6698
  %16 = call i1 @llvm.is.constant.i32(i32 %15) #11, !dbg !6700
  br i1 %16, label %if.then.i, label %if.else.i, !dbg !6701

if.then.i:                                        ; preds = %if.end
  %17 = load i32, i32* %m.addr.i, align 4, !dbg !6702
  %cmp.i = icmp slt i32 %17, 0, !dbg !6705
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6706

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !6707
  br label %msecs_to_jiffies.exit, !dbg !6707

if.end.i:                                         ; preds = %if.then.i
  %18 = load i32, i32* %m.addr.i, align 4, !dbg !6708
  %call.i = call i64 @_msecs_to_jiffies(i32 %18) #13, !dbg !6709
  store i64 %call.i, i64* %retval.i, align 8, !dbg !6710
  br label %msecs_to_jiffies.exit, !dbg !6710

if.else.i:                                        ; preds = %if.end
  %19 = load i32, i32* %m.addr.i, align 4, !dbg !6711
  %call2.i = call i64 @__msecs_to_jiffies(i32 %19) #13, !dbg !6713
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !6714
  br label %msecs_to_jiffies.exit, !dbg !6714

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %20 = load i64, i64* %retval.i, align 8, !dbg !6715
  %call6 = call i64 @wait_for_completion_timeout(%struct.completion* %command_done4, i64 %20) #9, !dbg !6716
  %tobool = icmp ne i64 %call6, 0, !dbg !6716
  br i1 %tobool, label %if.end9, label %if.then7, !dbg !6717

if.then7:                                         ; preds = %msecs_to_jiffies.exit
  %21 = load %struct.irtoy*, %struct.irtoy** %irtoy.addr, align 8, !dbg !6718
  %urb_out8 = getelementptr inbounds %struct.irtoy, %struct.irtoy* %21, i32 0, i32 4, !dbg !6720
  %22 = load %struct.urb*, %struct.urb** %urb_out8, align 8, !dbg !6720
  call void @usb_kill_urb(%struct.urb* %22) #9, !dbg !6721
  store i32 -110, i32* %retval, align 4, !dbg !6722
  br label %return, !dbg !6722

if.end9:                                          ; preds = %msecs_to_jiffies.exit
  store i32 0, i32* %retval, align 4, !dbg !6723
  br label %return, !dbg !6723

return:                                           ; preds = %if.end9, %if.then7, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !6724
  ret i32 %23, !dbg !6724
}

; Function Attrs: noredzone
declare dso_local void @usleep_range(i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_completion(%struct.completion* %x) #2 !dbg !4205 {
entry:
  %x.addr = alloca %struct.completion*, align 8
  store %struct.completion* %x, %struct.completion** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.completion** %x.addr, metadata !6725, metadata !DIExpression()), !dbg !6726
  %0 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !6727
  %done = getelementptr inbounds %struct.completion, %struct.completion* %0, i32 0, i32 0, !dbg !6728
  store i32 0, i32* %done, align 8, !dbg !6729
  br label %do.body, !dbg !6730

do.body:                                          ; preds = %entry
  %1 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !6731
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %1, i32 0, i32 1, !dbg !6731
  call void @__init_swait_queue_head(%struct.swait_queue_head* %wait, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), %struct.lock_class_key* @__init_completion.__key) #9, !dbg !6731
  br label %do.end, !dbg !6731

do.end:                                           ; preds = %do.body
  ret void, !dbg !6733
}

; Function Attrs: noredzone
declare dso_local i64 @wait_for_completion_timeout(%struct.completion*, i64) #1

; Function Attrs: noredzone
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head*, i8*, %struct.lock_class_key*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #2 !dbg !6734 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !6735, metadata !DIExpression()), !dbg !6736
  %0 = load i32, i32* %m.addr, align 4, !dbg !6737
  %conv = zext i32 %0 to i64, !dbg !6737
  %add = add i64 %conv, 4, !dbg !6738
  %sub = sub i64 %add, 1, !dbg !6739
  %div = sdiv i64 %sub, 4, !dbg !6740
  ret i64 %div, !dbg !6741
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #1

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !6742 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6745, metadata !DIExpression()), !dbg !6746
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6747, metadata !DIExpression()), !dbg !6748
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6749
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6750
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !6751
  store i8* %0, i8** %driver_data, align 8, !dbg !6752
  ret void, !dbg !6753
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_get_intfdata(%struct.usb_interface* %intf) #2 !dbg !6754 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !6757, metadata !DIExpression()), !dbg !6758
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !6759
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !6760
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #9, !dbg !6761
  ret i8* %call, !dbg !6762
}

; Function Attrs: noredzone
declare dso_local void @rc_unregister_device(%struct.rc_dev*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !6763 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6766, metadata !DIExpression()), !dbg !6767
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6768
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !6769
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6769
  ret i8* %1, !dbg !6770
}

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
attributes #11 = { nounwind }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4225, !4226, !4227, !4228}
!llvm.ident = !{!4229}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_irtoy_driver_init239", scope: !2, file: !3, line: 504, type: !192, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !181, globals: !4116, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/rc/ir_toy.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !20, !26, !31, !37, !44, !50, !59, !67, !73, !79, !86, !94, !100, !112, !121, !126, !157, !163, !169, !174}
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
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "state", file: !3, line: 46, baseType: !7, size: 32, elements: !164)
!164 = !{!165, !166, !167, !168}
!165 = !DIEnumerator(name: "STATE_IRDATA", value: 0, isUnsigned: true)
!166 = !DIEnumerator(name: "STATE_RESET", value: 1, isUnsigned: true)
!167 = !DIEnumerator(name: "STATE_COMMAND", value: 2, isUnsigned: true)
!168 = !DIEnumerator(name: "STATE_TX", value: 3, isUnsigned: true)
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
!181 = !{!182, !185, !187, !192, !193, !189, !3865, !4113, !4114, !4115, !197, !324}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !184, line: 76, flags: DIFlagFwdDecl)
!184 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !186, line: 148, baseType: !7)
!186 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !188, line: 19, baseType: !189)
!188 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !190, line: 24, baseType: !191)
!190 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!191 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !6, line: 631, size: 10624, elements: !195)
!195 = !{!196, !198, !203, !206, !207, !208, !209, !210, !213, !214, !218, !219, !3854, !3895, !3896, !3913, !3974, !4056, !4057, !4059, !4060, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4095, !4096, !4097, !4102, !4109, !4110, !4111, !4112}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !194, file: !6, line: 632, baseType: !197, size: 32)
!197 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !194, file: !6, line: 633, baseType: !199, size: 128, offset: 32)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 128, elements: !201)
!200 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!201 = !{!202}
!202 = !DISubrange(count: 16)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !194, file: !6, line: 634, baseType: !204, size: 32, offset: 160)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !188, line: 21, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !190, line: 27, baseType: !7)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !194, file: !6, line: 635, baseType: !100, size: 32, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !194, file: !6, line: 636, baseType: !112, size: 32, offset: 224)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !194, file: !6, line: 637, baseType: !7, size: 32, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !194, file: !6, line: 638, baseType: !7, size: 32, offset: 288)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !194, file: !6, line: 640, baseType: !211, size: 64, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !6, line: 474, flags: DIFlagFwdDecl)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !194, file: !6, line: 641, baseType: !197, size: 32, offset: 384)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !194, file: !6, line: 643, baseType: !215, size: 64, offset: 416)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 2)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !194, file: !6, line: 645, baseType: !193, size: 64, offset: 512)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !194, file: !6, line: 646, baseType: !220, size: 64, offset: 576)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !6, line: 424, size: 960, elements: !222)
!222 = !{!223, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3848, !3849, !3850, !3851, !3852, !3853}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !221, file: !6, line: 425, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !80, line: 461, size: 5568, elements: !226)
!226 = !{!227, !3385, !3386, !3389, !3390, !3441, !3532, !3533, !3534, !3535, !3536, !3545, !3650, !3663, !3666, !3667, !3671, !3673, !3674, !3675, !3679, !3685, !3686, !3689, !3693, !3783, !3784, !3785, !3786, !3787, !3819, !3820, !3821, !3824, !3827, !3828, !3829, !3830}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !225, file: !80, line: 462, baseType: !228, size: 512)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !229, line: 64, size: 512, elements: !230)
!229 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!230 = !{!231, !234, !240, !242, !302, !3236, !3375, !3380, !3381, !3382, !3383, !3384}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !228, file: !229, line: 65, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !228, file: !229, line: 66, baseType: !235, size: 128, offset: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !186, line: 178, size: 128, elements: !236)
!236 = !{!237, !239}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !235, file: !186, line: 179, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !235, file: !186, line: 179, baseType: !238, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !228, file: !229, line: 67, baseType: !241, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !228, file: !229, line: 68, baseType: !243, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !229, line: 192, size: 704, elements: !245)
!245 = !{!246, !247, !263, !264}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !244, file: !229, line: 193, baseType: !235, size: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !244, file: !229, line: 194, baseType: !248, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !249, line: 83, baseType: !250)
!249 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !249, line: 71, elements: !251)
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_member, scope: !250, file: !249, line: 72, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !250, file: !249, line: 72, elements: !254)
!254 = !{!255}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !253, file: !249, line: 73, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !249, line: 20, elements: !257)
!257 = !{!258}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !256, file: !249, line: 21, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !260, line: 25, baseType: !261)
!260 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !260, line: 25, elements: !262)
!262 = !{}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !244, file: !229, line: 195, baseType: !228, size: 512, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !244, file: !229, line: 196, baseType: !265, size: 64, offset: 640)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !229, line: 156, size: 192, elements: !268)
!268 = !{!269, !274, !279}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !267, file: !229, line: 157, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!197, !243, !241}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !267, file: !229, line: 158, baseType: !275, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!232, !243, !241}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !267, file: !229, line: 159, baseType: !280, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!197, !243, !241, !284}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !229, line: 148, size: 20736, elements: !286)
!286 = !{!287, !292, !296, !297, !301}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !285, file: !229, line: 149, baseType: !288, size: 192)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 192, elements: !290)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!290 = !{!291}
!291 = !DISubrange(count: 3)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !285, file: !229, line: 150, baseType: !293, size: 4096, offset: 192)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 4096, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !285, file: !229, line: 151, baseType: !197, size: 32, offset: 4288)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !285, file: !229, line: 152, baseType: !298, size: 16384, offset: 4320)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 16384, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 2048)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !285, file: !229, line: 153, baseType: !197, size: 32, offset: 20704)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !228, file: !229, line: 69, baseType: !303, size: 64, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !229, line: 138, size: 448, elements: !305)
!305 = !{!306, !310, !339, !341, !3198, !3226, !3230}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !304, file: !229, line: 139, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !241}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !304, file: !229, line: 140, baseType: !311, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !314, line: 230, size: 128, elements: !315)
!314 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!315 = !{!316, !331}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !313, file: !314, line: 231, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!320, !241, !325, !289}
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !186, line: 60, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !322, line: 73, baseType: !323)
!322 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !322, line: 15, baseType: !324)
!324 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !314, line: 30, size: 128, elements: !327)
!327 = !{!328, !329}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !326, file: !314, line: 31, baseType: !232, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !326, file: !314, line: 32, baseType: !330, size: 16, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !186, line: 19, baseType: !191)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !313, file: !314, line: 232, baseType: !332, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!320, !241, !325, !232, !335}
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !186, line: 55, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !322, line: 72, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !322, line: 16, baseType: !338)
!338 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !304, file: !229, line: 141, baseType: !340, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !304, file: !229, line: 142, baseType: !342, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !314, line: 84, size: 320, elements: !346)
!346 = !{!347, !348, !352, !3195, !3196}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !345, file: !314, line: 85, baseType: !232, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !345, file: !314, line: 86, baseType: !349, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!330, !241, !325, !197}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !345, file: !314, line: 88, baseType: !353, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!330, !241, !356, !197}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !314, line: 168, size: 448, elements: !358)
!358 = !{!359, !360, !361, !362, !3190, !3191}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !357, file: !314, line: 169, baseType: !326, size: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !357, file: !314, line: 170, baseType: !335, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !357, file: !314, line: 171, baseType: !192, size: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !357, file: !314, line: 172, baseType: !363, size: 64, offset: 256)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!320, !366, !241, !356, !289, !541, !335}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !51, line: 916, size: 1856, align: 32, elements: !368)
!368 = !{!369, !387, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3173, !3174, !3183, !3184, !3185, !3186, !3187, !3188, !3189}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !367, file: !51, line: 920, baseType: !370, size: 128)
!370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !367, file: !51, line: 917, size: 128, elements: !371)
!371 = !{!372, !378}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !370, file: !51, line: 918, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !374, line: 58, size: 64, elements: !375)
!374 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !373, file: !374, line: 59, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !370, file: !51, line: 919, baseType: !379, size: 128, align: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !186, line: 216, size: 128, align: 64, elements: !380)
!380 = !{!381, !383}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !379, file: !186, line: 217, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !379, file: !186, line: 218, baseType: !384, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !382}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !367, file: !51, line: 921, baseType: !388, size: 128, offset: 128)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !389, line: 8, size: 128, elements: !390)
!389 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!390 = !{!391, !395}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !388, file: !389, line: 9, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !394, line: 18, flags: DIFlagFwdDecl)
!394 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!395 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !388, file: !389, line: 10, baseType: !396, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !394, line: 89, size: 1536, elements: !398)
!398 = !{!399, !400, !410, !418, !419, !438, !3123, !3125, !3137, !3138, !3139, !3140, !3141, !3147, !3148, !3149}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !397, file: !394, line: 91, baseType: !7, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !397, file: !394, line: 92, baseType: !401, size: 32, offset: 32)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !402, line: 277, baseType: !403)
!402 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !402, line: 277, size: 32, elements: !404)
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !403, file: !402, line: 277, baseType: !406, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !402, line: 70, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !402, line: 65, size: 32, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !407, file: !402, line: 66, baseType: !7, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !397, file: !394, line: 93, baseType: !411, size: 128, offset: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !412, line: 38, size: 128, elements: !413)
!412 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!413 = !{!414, !416}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !411, file: !412, line: 39, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !411, file: !412, line: 39, baseType: !417, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !397, file: !394, line: 94, baseType: !396, size: 64, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !397, file: !394, line: 95, baseType: !420, size: 128, offset: 256)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !394, line: 47, size: 128, elements: !421)
!421 = !{!422, !434}
!422 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !394, line: 48, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !394, line: 48, size: 64, elements: !424)
!424 = !{!425, !430}
!425 = !DIDerivedType(tag: DW_TAG_member, scope: !423, file: !394, line: 49, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !423, file: !394, line: 49, size: 64, elements: !427)
!427 = !{!428, !429}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !426, file: !394, line: 50, baseType: !204, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !426, file: !394, line: 50, baseType: !204, size: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !423, file: !394, line: 52, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !188, line: 23, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !190, line: 31, baseType: !433)
!433 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !420, file: !394, line: 54, baseType: !435, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!437 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !397, file: !394, line: 96, baseType: !439, size: 64, offset: 384)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !51, line: 610, size: 4224, elements: !441)
!441 = !{!442, !443, !444, !452, !459, !460, !608, !2826, !2827, !2828, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !3091, !3099, !3100, !3101, !3119, !3120, !3121, !3122}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !440, file: !51, line: 611, baseType: !330, size: 16)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !440, file: !51, line: 612, baseType: !191, size: 16, offset: 16)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !440, file: !51, line: 613, baseType: !445, size: 32, offset: 32)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !446, line: 23, baseType: !447)
!446 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !446, line: 21, size: 32, elements: !448)
!448 = !{!449}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !447, file: !446, line: 22, baseType: !450, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !186, line: 32, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !322, line: 49, baseType: !7)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !440, file: !51, line: 614, baseType: !453, size: 32, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !446, line: 28, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !446, line: 26, size: 32, elements: !455)
!455 = !{!456}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !454, file: !446, line: 27, baseType: !457, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !186, line: 33, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !322, line: 50, baseType: !7)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !440, file: !51, line: 615, baseType: !7, size: 32, offset: 96)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !440, file: !51, line: 622, baseType: !461, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !51, line: 1864, size: 1536, align: 512, elements: !464)
!464 = !{!465, !469, !482, !486, !492, !496, !502, !506, !510, !514, !518, !519, !525, !529, !555, !584, !588, !594, !599, !603, !604}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !463, file: !51, line: 1865, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!396, !439, !396, !7}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !463, file: !51, line: 1866, baseType: !470, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!232, !396, !439, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !475, line: 10, size: 128, elements: !476)
!475 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!476 = !{!477, !481}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !474, file: !475, line: 11, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !192}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !474, file: !475, line: 12, baseType: !192, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !463, file: !51, line: 1867, baseType: !483, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!197, !439, !197}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !463, file: !51, line: 1868, baseType: !487, size: 64, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!490, !439, !197}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !51, line: 581, flags: DIFlagFwdDecl)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !463, file: !51, line: 1870, baseType: !493, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!197, !396, !289, !197}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !463, file: !51, line: 1872, baseType: !497, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!197, !439, !396, !330, !500}
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !186, line: 30, baseType: !501)
!501 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !463, file: !51, line: 1873, baseType: !503, size: 64, offset: 384)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!197, !396, !439, !396}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !463, file: !51, line: 1874, baseType: !507, size: 64, offset: 448)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!197, !439, !396}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !463, file: !51, line: 1875, baseType: !511, size: 64, offset: 512)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!197, !439, !396, !232}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !463, file: !51, line: 1876, baseType: !515, size: 64, offset: 576)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!197, !439, !396, !330}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !463, file: !51, line: 1877, baseType: !507, size: 64, offset: 640)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !463, file: !51, line: 1878, baseType: !520, size: 64, offset: 704)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!197, !439, !396, !330, !523}
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !186, line: 16, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !186, line: 13, baseType: !204)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !463, file: !51, line: 1879, baseType: !526, size: 64, offset: 768)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!197, !439, !396, !439, !396, !7}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !463, file: !51, line: 1881, baseType: !530, size: 64, offset: 832)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!197, !396, !533}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !51, line: 219, size: 640, elements: !535)
!535 = !{!536, !537, !538, !539, !540, !544, !552, !553, !554}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !534, file: !51, line: 220, baseType: !7, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !534, file: !51, line: 221, baseType: !330, size: 16, offset: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !534, file: !51, line: 222, baseType: !445, size: 32, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !534, file: !51, line: 223, baseType: !453, size: 32, offset: 96)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !534, file: !51, line: 224, baseType: !541, size: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !186, line: 46, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !322, line: 88, baseType: !543)
!543 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !534, file: !51, line: 225, baseType: !545, size: 128, offset: 192)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !546, line: 13, size: 128, elements: !547)
!546 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!547 = !{!548, !551}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !545, file: !546, line: 14, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !546, line: 8, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !190, line: 30, baseType: !543)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !545, file: !546, line: 15, baseType: !324, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !534, file: !51, line: 226, baseType: !545, size: 128, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !534, file: !51, line: 227, baseType: !545, size: 128, offset: 448)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !534, file: !51, line: 234, baseType: !366, size: 64, offset: 576)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !463, file: !51, line: 1882, baseType: !556, size: 64, offset: 896)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!197, !559, !561, !204, !7}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !563, line: 22, size: 1152, elements: !564)
!563 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!564 = !{!565, !566, !567, !568, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !562, file: !563, line: 23, baseType: !204, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !562, file: !563, line: 24, baseType: !330, size: 16, offset: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !562, file: !563, line: 25, baseType: !7, size: 32, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !562, file: !563, line: 26, baseType: !569, size: 32, offset: 96)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !186, line: 104, baseType: !204)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !562, file: !563, line: 27, baseType: !431, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !562, file: !563, line: 28, baseType: !431, size: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !562, file: !563, line: 37, baseType: !431, size: 64, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !562, file: !563, line: 38, baseType: !523, size: 32, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !562, file: !563, line: 39, baseType: !523, size: 32, offset: 352)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !562, file: !563, line: 40, baseType: !445, size: 32, offset: 384)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !562, file: !563, line: 41, baseType: !453, size: 32, offset: 416)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !562, file: !563, line: 42, baseType: !541, size: 64, offset: 448)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !562, file: !563, line: 43, baseType: !545, size: 128, offset: 512)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !562, file: !563, line: 44, baseType: !545, size: 128, offset: 640)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !562, file: !563, line: 45, baseType: !545, size: 128, offset: 768)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !562, file: !563, line: 46, baseType: !545, size: 128, offset: 896)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !562, file: !563, line: 47, baseType: !431, size: 64, offset: 1024)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !562, file: !563, line: 48, baseType: !431, size: 64, offset: 1088)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !463, file: !51, line: 1883, baseType: !585, size: 64, offset: 960)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!320, !396, !289, !335}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !463, file: !51, line: 1884, baseType: !589, size: 64, offset: 1024)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!197, !439, !592, !431, !431}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !51, line: 50, flags: DIFlagFwdDecl)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !463, file: !51, line: 1886, baseType: !595, size: 64, offset: 1088)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!197, !439, !598, !197}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !463, file: !51, line: 1887, baseType: !600, size: 64, offset: 1152)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!197, !439, !396, !366, !7, !330}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !463, file: !51, line: 1890, baseType: !515, size: 64, offset: 1216)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !463, file: !51, line: 1891, baseType: !605, size: 64, offset: 1280)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!197, !439, !490, !197}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !440, file: !51, line: 623, baseType: !609, size: 64, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !51, line: 1416, size: 9472, elements: !611)
!611 = !{!612, !613, !614, !615, !616, !617, !664, !2433, !2515, !2598, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2614, !2618, !2619, !2622, !2623, !2626, !2627, !2628, !2669, !2696, !2697, !2698, !2699, !2700, !2701, !2704, !2706, !2713, !2714, !2716, !2717, !2718, !2777, !2778, !2793, !2794, !2795, !2796, !2797, !2800, !2801, !2802, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !610, file: !51, line: 1417, baseType: !235, size: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !610, file: !51, line: 1418, baseType: !523, size: 32, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !610, file: !51, line: 1419, baseType: !437, size: 8, offset: 160)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !610, file: !51, line: 1420, baseType: !338, size: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !610, file: !51, line: 1421, baseType: !541, size: 64, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !610, file: !51, line: 1422, baseType: !618, size: 64, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !51, line: 2228, size: 576, elements: !620)
!620 = !{!621, !622, !623, !630, !634, !638, !642, !643, !644, !654, !657, !658, !659, !661, !662, !663}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !619, file: !51, line: 2229, baseType: !232, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !619, file: !51, line: 2230, baseType: !197, size: 32, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !619, file: !51, line: 2238, baseType: !624, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!197, !627}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !629, line: 28, flags: DIFlagFwdDecl)
!629 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!630 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !619, file: !51, line: 2239, baseType: !631, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !633)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !51, line: 70, flags: DIFlagFwdDecl)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !619, file: !51, line: 2240, baseType: !635, size: 64, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!396, !618, !197, !232, !192}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !619, file: !51, line: 2242, baseType: !639, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !609}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !619, file: !51, line: 2243, baseType: !182, size: 64, offset: 384)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !619, file: !51, line: 2244, baseType: !618, size: 64, offset: 448)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !619, file: !51, line: 2245, baseType: !645, size: 64, offset: 512)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !186, line: 182, size: 64, elements: !646)
!646 = !{!647}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !645, file: !186, line: 183, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !186, line: 186, size: 128, elements: !650)
!650 = !{!651, !652}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !649, file: !186, line: 187, baseType: !648, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !649, file: !186, line: 187, baseType: !653, size: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !619, file: !51, line: 2247, baseType: !655, offset: 576)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !656, line: 187, elements: !262)
!656 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!657 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !619, file: !51, line: 2248, baseType: !655, offset: 576)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !619, file: !51, line: 2249, baseType: !655, offset: 576)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !619, file: !51, line: 2250, baseType: !660, offset: 576)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, elements: !290)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !619, file: !51, line: 2252, baseType: !655, offset: 576)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !619, file: !51, line: 2253, baseType: !655, offset: 576)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !619, file: !51, line: 2254, baseType: !655, offset: 576)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !610, file: !51, line: 1423, baseType: !665, size: 64, offset: 384)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !667)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !51, line: 1935, size: 1472, elements: !668)
!668 = !{!669, !673, !677, !678, !682, !688, !692, !693, !694, !698, !702, !703, !704, !705, !711, !716, !717, !724, !725, !726, !727, !2417, !2432}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !667, file: !51, line: 1936, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!439, !609}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !667, file: !51, line: 1937, baseType: !674, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{null, !439}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !667, file: !51, line: 1938, baseType: !674, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !667, file: !51, line: 1940, baseType: !679, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !439, !197}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !667, file: !51, line: 1941, baseType: !683, size: 64, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!197, !439, !686}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !51, line: 289, flags: DIFlagFwdDecl)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !667, file: !51, line: 1942, baseType: !689, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!197, !439}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !667, file: !51, line: 1943, baseType: !674, size: 64, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !667, file: !51, line: 1944, baseType: !639, size: 64, offset: 448)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !667, file: !51, line: 1945, baseType: !695, size: 64, offset: 512)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!197, !609, !197}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !667, file: !51, line: 1946, baseType: !699, size: 64, offset: 576)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!197, !609}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !667, file: !51, line: 1947, baseType: !699, size: 64, offset: 640)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !667, file: !51, line: 1948, baseType: !699, size: 64, offset: 704)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !667, file: !51, line: 1949, baseType: !699, size: 64, offset: 768)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !667, file: !51, line: 1950, baseType: !706, size: 64, offset: 832)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!197, !396, !709}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !51, line: 57, flags: DIFlagFwdDecl)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !667, file: !51, line: 1951, baseType: !712, size: 64, offset: 896)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!197, !609, !715, !289}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !667, file: !51, line: 1952, baseType: !639, size: 64, offset: 960)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !667, file: !51, line: 1954, baseType: !718, size: 64, offset: 1024)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!197, !721, !396}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !723, line: 539, flags: DIFlagFwdDecl)
!723 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!724 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !667, file: !51, line: 1955, baseType: !718, size: 64, offset: 1088)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !667, file: !51, line: 1956, baseType: !718, size: 64, offset: 1152)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !667, file: !51, line: 1957, baseType: !718, size: 64, offset: 1216)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !667, file: !51, line: 1963, baseType: !728, size: 64, offset: 1280)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!197, !609, !731, !185}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !733, line: 68, size: 512, align: 128, elements: !734)
!733 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!734 = !{!735, !736, !2409, !2416}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !733, line: 69, baseType: !338, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, scope: !732, file: !733, line: 77, baseType: !737, size: 320, offset: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !732, file: !733, line: 77, size: 320, elements: !738)
!738 = !{!739, !924, !929, !957, !965, !971, !2340, !2408}
!739 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !733, line: 78, baseType: !740, size: 320)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !737, file: !733, line: 78, size: 320, elements: !741)
!741 = !{!742, !743, !922, !923}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !740, file: !733, line: 84, baseType: !235, size: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !740, file: !733, line: 86, baseType: !744, size: 64, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !51, line: 451, size: 1216, align: 64, elements: !746)
!746 = !{!747, !748, !755, !756, !761, !776, !792, !793, !794, !795, !915, !916, !919, !920, !921}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !745, file: !51, line: 452, baseType: !439, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !745, file: !51, line: 453, baseType: !749, size: 128, offset: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !750, line: 292, size: 128, elements: !751)
!750 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!751 = !{!752, !753, !754}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !749, file: !750, line: 293, baseType: !248)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !749, file: !750, line: 295, baseType: !185, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !749, file: !750, line: 296, baseType: !192, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !745, file: !51, line: 454, baseType: !185, size: 32, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !745, file: !51, line: 455, baseType: !757, size: 32, offset: 224)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !186, line: 168, baseType: !758)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !186, line: 166, size: 32, elements: !759)
!759 = !{!760}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !758, file: !186, line: 167, baseType: !197, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !745, file: !51, line: 460, baseType: !762, size: 128, offset: 256)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !763, line: 125, size: 128, elements: !764)
!763 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!764 = !{!765, !775}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !762, file: !763, line: 126, baseType: !766, size: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !763, line: 31, size: 64, elements: !767)
!767 = !{!768}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !766, file: !763, line: 32, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !763, line: 24, size: 192, align: 64, elements: !771)
!771 = !{!772, !773, !774}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !770, file: !763, line: 25, baseType: !338, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !770, file: !763, line: 26, baseType: !769, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !770, file: !763, line: 27, baseType: !769, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !762, file: !763, line: 127, baseType: !769, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !745, file: !51, line: 461, baseType: !777, size: 256, offset: 384)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !778, line: 35, size: 256, elements: !779)
!778 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!779 = !{!780, !788, !789, !791}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !777, file: !778, line: 36, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !782, line: 13, baseType: !783)
!782 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !186, line: 175, baseType: !784)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !186, line: 173, size: 64, elements: !785)
!785 = !{!786}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !784, file: !186, line: 174, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !188, line: 22, baseType: !550)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !777, file: !778, line: 42, baseType: !781, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !777, file: !778, line: 46, baseType: !790, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !249, line: 29, baseType: !256)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !777, file: !778, line: 47, baseType: !235, size: 128, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !745, file: !51, line: 462, baseType: !338, size: 64, offset: 640)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !745, file: !51, line: 463, baseType: !338, size: 64, offset: 704)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !745, file: !51, line: 464, baseType: !338, size: 64, offset: 768)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !745, file: !51, line: 465, baseType: !796, size: 64, offset: 832)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !51, line: 367, size: 1408, elements: !799)
!799 = !{!800, !804, !808, !812, !816, !820, !826, !832, !836, !841, !845, !849, !853, !879, !883, !889, !890, !891, !895, !900, !904, !911}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !798, file: !51, line: 368, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!197, !731, !686}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !798, file: !51, line: 369, baseType: !805, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!197, !366, !731}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !798, file: !51, line: 372, baseType: !809, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!197, !744, !686}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !798, file: !51, line: 375, baseType: !813, size: 64, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!197, !731}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !798, file: !51, line: 381, baseType: !817, size: 64, offset: 256)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!197, !366, !744, !238, !7}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !798, file: !51, line: 383, baseType: !821, size: 64, offset: 320)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{null, !824}
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !51, line: 290, flags: DIFlagFwdDecl)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !798, file: !51, line: 385, baseType: !827, size: 64, offset: 384)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!197, !366, !744, !541, !7, !7, !830, !831}
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !798, file: !51, line: 388, baseType: !833, size: 64, offset: 448)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!197, !366, !744, !541, !7, !7, !731, !192}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !798, file: !51, line: 393, baseType: !837, size: 64, offset: 512)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!840, !744, !840}
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !186, line: 125, baseType: !431)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !798, file: !51, line: 394, baseType: !842, size: 64, offset: 576)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{null, !731, !7, !7}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !798, file: !51, line: 395, baseType: !846, size: 64, offset: 640)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!197, !731, !185}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !798, file: !51, line: 396, baseType: !850, size: 64, offset: 704)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !731}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !798, file: !51, line: 397, baseType: !854, size: 64, offset: 768)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!320, !857, !877}
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !51, line: 320, size: 384, elements: !859)
!859 = !{!860, !861, !862, !866, !867, !868, !869, !870}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !858, file: !51, line: 321, baseType: !366, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !858, file: !51, line: 326, baseType: !541, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !858, file: !51, line: 327, baseType: !863, size: 64, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{null, !857, !324, !324}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !858, file: !51, line: 328, baseType: !192, size: 64, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !858, file: !51, line: 329, baseType: !197, size: 32, offset: 256)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !858, file: !51, line: 330, baseType: !187, size: 16, offset: 288)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !858, file: !51, line: 331, baseType: !187, size: 16, offset: 304)
!870 = !DIDerivedType(tag: DW_TAG_member, scope: !858, file: !51, line: 332, baseType: !871, size: 64, offset: 320)
!871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !858, file: !51, line: 332, size: 64, elements: !872)
!872 = !{!873, !874}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !871, file: !51, line: 333, baseType: !7, size: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !871, file: !51, line: 334, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !51, line: 334, flags: DIFlagFwdDecl)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !51, line: 64, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !798, file: !51, line: 402, baseType: !880, size: 64, offset: 832)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!197, !744, !731, !731, !13}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !798, file: !51, line: 404, baseType: !884, size: 64, offset: 896)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{!500, !731, !887}
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !888, line: 305, baseType: !7)
!888 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!889 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !798, file: !51, line: 405, baseType: !850, size: 64, offset: 960)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !798, file: !51, line: 406, baseType: !813, size: 64, offset: 1024)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !798, file: !51, line: 407, baseType: !892, size: 64, offset: 1088)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!197, !731, !338, !338}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !798, file: !51, line: 409, baseType: !896, size: 64, offset: 1152)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{null, !731, !899, !899}
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !798, file: !51, line: 410, baseType: !901, size: 64, offset: 1216)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{!197, !744, !731}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !798, file: !51, line: 413, baseType: !905, size: 64, offset: 1280)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{!197, !908, !366, !910}
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !51, line: 61, flags: DIFlagFwdDecl)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !798, file: !51, line: 415, baseType: !912, size: 64, offset: 1344)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{null, !366}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !745, file: !51, line: 466, baseType: !338, size: 64, offset: 896)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !745, file: !51, line: 467, baseType: !917, size: 32, offset: 960)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !918, line: 8, baseType: !204)
!918 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!919 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !745, file: !51, line: 468, baseType: !248, offset: 992)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !745, file: !51, line: 469, baseType: !235, size: 128, offset: 1024)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !745, file: !51, line: 470, baseType: !192, size: 64, offset: 1152)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !740, file: !733, line: 87, baseType: !338, size: 64, offset: 192)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !740, file: !733, line: 94, baseType: !338, size: 64, offset: 256)
!924 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !733, line: 96, baseType: !925, size: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !737, file: !733, line: 96, size: 64, elements: !926)
!926 = !{!927}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !925, file: !733, line: 101, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !186, line: 143, baseType: !431)
!929 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !733, line: 103, baseType: !930, size: 320)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !737, file: !733, line: 103, size: 320, elements: !931)
!931 = !{!932, !942, !945, !946}
!932 = !DIDerivedType(tag: DW_TAG_member, scope: !930, file: !733, line: 104, baseType: !933, size: 128)
!933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !930, file: !733, line: 104, size: 128, elements: !934)
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !933, file: !733, line: 105, baseType: !235, size: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, scope: !933, file: !733, line: 106, baseType: !937, size: 128)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !933, file: !733, line: 106, size: 128, elements: !938)
!938 = !{!939, !940, !941}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !937, file: !733, line: 107, baseType: !731, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !937, file: !733, line: 109, baseType: !197, size: 32, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !937, file: !733, line: 110, baseType: !197, size: 32, offset: 96)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !930, file: !733, line: 117, baseType: !943, size: 64, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !733, line: 117, flags: DIFlagFwdDecl)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !930, file: !733, line: 119, baseType: !192, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !930, file: !733, line: 120, baseType: !947, size: 64, offset: 256)
!947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !930, file: !733, line: 120, size: 64, elements: !948)
!948 = !{!949, !950, !951}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !947, file: !733, line: 121, baseType: !192, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !947, file: !733, line: 122, baseType: !338, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !947, file: !733, line: 123, baseType: !952, size: 32)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !947, file: !733, line: 123, size: 32, elements: !953)
!953 = !{!954, !955, !956}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !952, file: !733, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !952, file: !733, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !952, file: !733, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!957 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !733, line: 130, baseType: !958, size: 192)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !737, file: !733, line: 130, size: 192, elements: !959)
!959 = !{!960, !961, !962, !963, !964}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !958, file: !733, line: 131, baseType: !338, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !958, file: !733, line: 134, baseType: !437, size: 8, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !958, file: !733, line: 135, baseType: !437, size: 8, offset: 72)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !958, file: !733, line: 136, baseType: !757, size: 32, offset: 96)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !958, file: !733, line: 137, baseType: !7, size: 32, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !733, line: 139, baseType: !966, size: 256)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !737, file: !733, line: 139, size: 256, elements: !967)
!967 = !{!968, !969, !970}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !966, file: !733, line: 140, baseType: !338, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !966, file: !733, line: 141, baseType: !757, size: 32, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !966, file: !733, line: 143, baseType: !235, size: 128, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !733, line: 145, baseType: !972, size: 256)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !737, file: !733, line: 145, size: 256, elements: !973)
!973 = !{!974, !975, !977, !978, !2339}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !972, file: !733, line: 146, baseType: !338, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !972, file: !733, line: 147, baseType: !976, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !723, line: 509, baseType: !731)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !972, file: !733, line: 148, baseType: !338, size: 64, offset: 128)
!978 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !733, line: 149, baseType: !979, size: 64, offset: 192)
!979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !972, file: !733, line: 149, size: 64, elements: !980)
!980 = !{!981, !2338}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !979, file: !733, line: 150, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !733, line: 388, size: 7296, elements: !984)
!984 = !{!985, !2334}
!985 = !DIDerivedType(tag: DW_TAG_member, scope: !983, file: !733, line: 389, baseType: !986, size: 7296)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !983, file: !733, line: 389, size: 7296, elements: !987)
!987 = !{!988, !1106, !1107, !1108, !1112, !1113, !1114, !1115, !1116, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1157, !1165, !1168, !1214, !1215, !2318, !2319, !2322, !2323, !2324, !2327, !2328, !2329, !2332, !2333}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !986, file: !733, line: 390, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !733, line: 305, size: 1472, elements: !991)
!991 = !{!992, !993, !994, !995, !996, !997, !998, !999, !1006, !1007, !1012, !1013, !1016, !1100, !1101, !1102, !1103, !1104}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !990, file: !733, line: 308, baseType: !338, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !990, file: !733, line: 309, baseType: !338, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !990, file: !733, line: 313, baseType: !989, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !990, file: !733, line: 313, baseType: !989, size: 64, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !990, file: !733, line: 315, baseType: !770, size: 192, align: 64, offset: 256)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !990, file: !733, line: 323, baseType: !338, size: 64, offset: 448)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !990, file: !733, line: 327, baseType: !982, size: 64, offset: 512)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !990, file: !733, line: 333, baseType: !1000, size: 64, offset: 576)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !723, line: 284, baseType: !1001)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !723, line: 284, size: 64, elements: !1002)
!1002 = !{!1003}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1001, file: !723, line: 284, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1005, line: 19, baseType: !338)
!1005 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !990, file: !733, line: 334, baseType: !338, size: 64, offset: 640)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !990, file: !733, line: 343, baseType: !1008, size: 256, offset: 704)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !733, line: 340, size: 256, elements: !1009)
!1009 = !{!1010, !1011}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1008, file: !733, line: 341, baseType: !770, size: 192, align: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1008, file: !733, line: 342, baseType: !338, size: 64, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !990, file: !733, line: 351, baseType: !235, size: 128, offset: 960)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !990, file: !733, line: 353, baseType: !1014, size: 64, offset: 1088)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !733, line: 353, flags: DIFlagFwdDecl)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !990, file: !733, line: 356, baseType: !1017, size: 64, offset: 1152)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1019)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !21, line: 557, size: 832, elements: !1020)
!1020 = !{!1021, !1025, !1026, !1030, !1034, !1074, !1078, !1082, !1086, !1087, !1088, !1092, !1096}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1019, file: !21, line: 558, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{null, !989}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1019, file: !21, line: 559, baseType: !1022, size: 64, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1019, file: !21, line: 560, baseType: !1027, size: 64, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!197, !989, !338}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1019, file: !21, line: 561, baseType: !1031, size: 64, offset: 192)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!197, !989}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1019, file: !21, line: 562, baseType: !1035, size: 64, offset: 256)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!1038, !1039}
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !733, line: 682, baseType: !7)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !21, line: 508, size: 768, elements: !1041)
!1041 = !{!1042, !1043, !1044, !1045, !1046, !1047, !1054, !1061, !1067, !1068, !1069, !1071, !1073}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1040, file: !21, line: 509, baseType: !989, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1040, file: !21, line: 510, baseType: !7, size: 32, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1040, file: !21, line: 511, baseType: !185, size: 32, offset: 96)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1040, file: !21, line: 512, baseType: !338, size: 64, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1040, file: !21, line: 513, baseType: !338, size: 64, offset: 192)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1040, file: !21, line: 514, baseType: !1048, size: 64, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !723, line: 385, baseType: !1050)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !723, line: 385, size: 64, elements: !1051)
!1051 = !{!1052}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1050, file: !723, line: 385, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1005, line: 15, baseType: !338)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1040, file: !21, line: 516, baseType: !1055, size: 64, offset: 320)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !723, line: 359, baseType: !1057)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !723, line: 359, size: 64, elements: !1058)
!1058 = !{!1059}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1057, file: !723, line: 359, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1005, line: 16, baseType: !338)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1040, file: !21, line: 519, baseType: !1062, size: 64, offset: 384)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1005, line: 21, baseType: !1063)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1005, line: 21, size: 64, elements: !1064)
!1064 = !{!1065}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1063, file: !1005, line: 21, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1005, line: 14, baseType: !338)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1040, file: !21, line: 521, baseType: !731, size: 64, offset: 448)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1040, file: !21, line: 522, baseType: !731, size: 64, offset: 512)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1040, file: !21, line: 528, baseType: !1070, size: 64, offset: 576)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1040, file: !21, line: 532, baseType: !1072, size: 64, offset: 640)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1040, file: !21, line: 536, baseType: !976, size: 64, offset: 704)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1019, file: !21, line: 563, baseType: !1075, size: 64, offset: 320)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!1038, !1039, !20}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1019, file: !21, line: 565, baseType: !1079, size: 64, offset: 384)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{null, !1039, !338, !338}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1019, file: !21, line: 567, baseType: !1083, size: 64, offset: 448)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!338, !989}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1019, file: !21, line: 571, baseType: !1035, size: 64, offset: 512)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1019, file: !21, line: 574, baseType: !1035, size: 64, offset: 576)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1019, file: !21, line: 579, baseType: !1089, size: 64, offset: 640)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!197, !989, !338, !192, !197, !197}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1019, file: !21, line: 585, baseType: !1093, size: 64, offset: 704)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!232, !989}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1019, file: !21, line: 615, baseType: !1097, size: 64, offset: 768)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!731, !989, !338}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !990, file: !733, line: 359, baseType: !338, size: 64, offset: 1216)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !990, file: !733, line: 361, baseType: !366, size: 64, offset: 1280)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !990, file: !733, line: 362, baseType: !192, size: 64, offset: 1344)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !990, file: !733, line: 365, baseType: !781, size: 64, offset: 1408)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !990, file: !733, line: 373, baseType: !1105, offset: 1472)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !733, line: 296, elements: !262)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !986, file: !733, line: 391, baseType: !766, size: 64, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !986, file: !733, line: 392, baseType: !431, size: 64, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !986, file: !733, line: 394, baseType: !1109, size: 64, offset: 192)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!338, !366, !338, !338, !338, !338}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !986, file: !733, line: 398, baseType: !338, size: 64, offset: 256)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !986, file: !733, line: 399, baseType: !338, size: 64, offset: 320)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !986, file: !733, line: 405, baseType: !338, size: 64, offset: 384)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !986, file: !733, line: 406, baseType: !338, size: 64, offset: 448)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !986, file: !733, line: 407, baseType: !1117, size: 64, offset: 512)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !723, line: 286, baseType: !1119)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !723, line: 286, size: 64, elements: !1120)
!1120 = !{!1121}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1119, file: !723, line: 286, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1005, line: 18, baseType: !338)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !986, file: !733, line: 416, baseType: !757, size: 32, offset: 576)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !986, file: !733, line: 428, baseType: !757, size: 32, offset: 608)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !986, file: !733, line: 437, baseType: !757, size: 32, offset: 640)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !986, file: !733, line: 447, baseType: !757, size: 32, offset: 672)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !986, file: !733, line: 450, baseType: !781, size: 64, offset: 704)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !986, file: !733, line: 452, baseType: !197, size: 32, offset: 768)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !986, file: !733, line: 454, baseType: !248, offset: 800)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !986, file: !733, line: 457, baseType: !777, size: 256, offset: 832)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !986, file: !733, line: 459, baseType: !235, size: 128, offset: 1088)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !986, file: !733, line: 466, baseType: !338, size: 64, offset: 1216)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !986, file: !733, line: 467, baseType: !338, size: 64, offset: 1280)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !986, file: !733, line: 469, baseType: !338, size: 64, offset: 1344)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !986, file: !733, line: 470, baseType: !338, size: 64, offset: 1408)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !986, file: !733, line: 471, baseType: !783, size: 64, offset: 1472)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !986, file: !733, line: 472, baseType: !338, size: 64, offset: 1536)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !986, file: !733, line: 473, baseType: !338, size: 64, offset: 1600)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !986, file: !733, line: 474, baseType: !338, size: 64, offset: 1664)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !986, file: !733, line: 475, baseType: !338, size: 64, offset: 1728)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !986, file: !733, line: 477, baseType: !248, offset: 1792)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !986, file: !733, line: 478, baseType: !338, size: 64, offset: 1792)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !986, file: !733, line: 478, baseType: !338, size: 64, offset: 1856)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !986, file: !733, line: 478, baseType: !338, size: 64, offset: 1920)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !986, file: !733, line: 478, baseType: !338, size: 64, offset: 1984)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !986, file: !733, line: 479, baseType: !338, size: 64, offset: 2048)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !986, file: !733, line: 479, baseType: !338, size: 64, offset: 2112)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !986, file: !733, line: 479, baseType: !338, size: 64, offset: 2176)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !986, file: !733, line: 480, baseType: !338, size: 64, offset: 2240)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !986, file: !733, line: 480, baseType: !338, size: 64, offset: 2304)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !986, file: !733, line: 480, baseType: !338, size: 64, offset: 2368)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !986, file: !733, line: 480, baseType: !338, size: 64, offset: 2432)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !986, file: !733, line: 482, baseType: !1154, size: 2816, offset: 2496)
!1154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 2816, elements: !1155)
!1155 = !{!1156}
!1156 = !DISubrange(count: 44)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !986, file: !733, line: 488, baseType: !1158, size: 256, offset: 5312)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1159, line: 60, size: 256, elements: !1160)
!1159 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1160 = !{!1161}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1158, file: !1159, line: 61, baseType: !1162, size: 256)
!1162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !781, size: 256, elements: !1163)
!1163 = !{!1164}
!1164 = !DISubrange(count: 4)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !986, file: !733, line: 490, baseType: !1166, size: 64, offset: 5568)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !733, line: 490, flags: DIFlagFwdDecl)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !986, file: !733, line: 493, baseType: !1169, size: 896, offset: 5632)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1170, line: 53, baseType: !1171)
!1170 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1170, line: 13, size: 896, elements: !1172)
!1172 = !{!1173, !1174, !1175, !1176, !1179, !1180, !1187, !1188, !1208, !1209, !1210}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1171, file: !1170, line: 18, baseType: !431, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1171, file: !1170, line: 28, baseType: !783, size: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1171, file: !1170, line: 31, baseType: !777, size: 256, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1171, file: !1170, line: 32, baseType: !1177, size: 64, offset: 384)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1170, line: 32, flags: DIFlagFwdDecl)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1171, file: !1170, line: 37, baseType: !191, size: 16, offset: 448)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1171, file: !1170, line: 40, baseType: !1181, size: 192, offset: 512)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1182, line: 53, size: 192, elements: !1183)
!1182 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1183 = !{!1184, !1185, !1186}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1181, file: !1182, line: 54, baseType: !781, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1181, file: !1182, line: 55, baseType: !248, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1181, file: !1182, line: 59, baseType: !235, size: 128, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1171, file: !1170, line: 41, baseType: !192, size: 64, offset: 704)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1171, file: !1170, line: 42, baseType: !1189, size: 64, offset: 768)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1191)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1192, line: 13, size: 896, elements: !1193)
!1192 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1193 = !{!1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1191, file: !1192, line: 14, baseType: !192, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1191, file: !1192, line: 15, baseType: !338, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1191, file: !1192, line: 17, baseType: !338, size: 64, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1191, file: !1192, line: 17, baseType: !338, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1191, file: !1192, line: 19, baseType: !324, size: 64, offset: 256)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1191, file: !1192, line: 21, baseType: !324, size: 64, offset: 320)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1191, file: !1192, line: 22, baseType: !324, size: 64, offset: 384)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1191, file: !1192, line: 23, baseType: !324, size: 64, offset: 448)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1191, file: !1192, line: 24, baseType: !324, size: 64, offset: 512)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1191, file: !1192, line: 25, baseType: !324, size: 64, offset: 576)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1191, file: !1192, line: 26, baseType: !324, size: 64, offset: 640)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1191, file: !1192, line: 27, baseType: !324, size: 64, offset: 704)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1191, file: !1192, line: 28, baseType: !324, size: 64, offset: 768)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1191, file: !1192, line: 29, baseType: !324, size: 64, offset: 832)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1171, file: !1170, line: 44, baseType: !757, size: 32, offset: 832)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1171, file: !1170, line: 50, baseType: !187, size: 16, offset: 864)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1171, file: !1170, line: 51, baseType: !1211, size: 16, offset: 880)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !188, line: 18, baseType: !1212)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !190, line: 23, baseType: !1213)
!1213 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !986, file: !733, line: 495, baseType: !338, size: 64, offset: 6528)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !986, file: !733, line: 497, baseType: !1216, size: 64, offset: 6592)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !733, line: 381, size: 384, elements: !1218)
!1218 = !{!1219, !1220, !2317}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1217, file: !733, line: 382, baseType: !757, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1217, file: !733, line: 383, baseType: !1221, size: 128, offset: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !733, line: 376, size: 128, elements: !1222)
!1222 = !{!1223, !2315}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1221, file: !733, line: 377, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1226, line: 640, size: 48640, elements: !1227)
!1226 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1227 = !{!1228, !1234, !1236, !1237, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1254, !1272, !1283, !1368, !1369, !1370, !1381, !1382, !1384, !1385, !1386, !1387, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1466, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1504, !1506, !1507, !1508, !1520, !1521, !1522, !1523, !1524, !1525, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1549, !1554, !1736, !1737, !1738, !1739, !1740, !1743, !1746, !1749, !1752, !1756, !1857, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1903, !1904, !1905, !1906, !1907, !1912, !1913, !1914, !1917, !1918, !1921, !1924, !1927, !1930, !1973, !1976, !1977, !2056, !2057, !2060, !2061, !2064, !2065, !2066, !2070, !2071, !2072, !2085, !2086, !2087, !2097, !2102, !2105, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1225, file: !1226, line: 646, baseType: !1229, size: 128)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1230, line: 56, size: 128, elements: !1231)
!1230 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1231 = !{!1232, !1233}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1229, file: !1230, line: 57, baseType: !338, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1229, file: !1230, line: 58, baseType: !204, size: 32, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1225, file: !1226, line: 649, baseType: !1235, size: 64, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !324)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1225, file: !1226, line: 657, baseType: !192, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1225, file: !1226, line: 658, baseType: !1238, size: 32, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1239, line: 113, baseType: !1240)
!1239 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1239, line: 111, size: 32, elements: !1241)
!1241 = !{!1242}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1240, file: !1239, line: 112, baseType: !757, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1225, file: !1226, line: 660, baseType: !7, size: 32, offset: 288)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1225, file: !1226, line: 661, baseType: !7, size: 32, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1225, file: !1226, line: 684, baseType: !197, size: 32, offset: 352)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1225, file: !1226, line: 686, baseType: !197, size: 32, offset: 384)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1225, file: !1226, line: 687, baseType: !197, size: 32, offset: 416)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1225, file: !1226, line: 688, baseType: !197, size: 32, offset: 448)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1225, file: !1226, line: 689, baseType: !7, size: 32, offset: 480)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1225, file: !1226, line: 691, baseType: !1251, size: 64, offset: 512)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1253)
!1253 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1226, line: 691, flags: DIFlagFwdDecl)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1225, file: !1226, line: 692, baseType: !1255, size: 832, offset: 576)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1226, line: 451, size: 832, elements: !1256)
!1256 = !{!1257, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1255, file: !1226, line: 453, baseType: !1258, size: 128)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1226, line: 325, size: 128, elements: !1259)
!1259 = !{!1260, !1261}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1258, file: !1226, line: 326, baseType: !338, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1258, file: !1226, line: 327, baseType: !204, size: 32, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1255, file: !1226, line: 454, baseType: !770, size: 192, align: 64, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1255, file: !1226, line: 455, baseType: !235, size: 128, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1255, file: !1226, line: 456, baseType: !7, size: 32, offset: 448)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1255, file: !1226, line: 458, baseType: !431, size: 64, offset: 512)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1255, file: !1226, line: 459, baseType: !431, size: 64, offset: 576)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1255, file: !1226, line: 460, baseType: !431, size: 64, offset: 640)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1255, file: !1226, line: 461, baseType: !431, size: 64, offset: 704)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1255, file: !1226, line: 463, baseType: !431, size: 64, offset: 768)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1255, file: !1226, line: 465, baseType: !1271, offset: 832)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1226, line: 415, elements: !262)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1225, file: !1226, line: 693, baseType: !1273, size: 384, offset: 1408)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1226, line: 489, size: 384, elements: !1274)
!1274 = !{!1275, !1276, !1277, !1278, !1279, !1280, !1281}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1273, file: !1226, line: 490, baseType: !235, size: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1273, file: !1226, line: 491, baseType: !338, size: 64, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1273, file: !1226, line: 492, baseType: !338, size: 64, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1273, file: !1226, line: 493, baseType: !7, size: 32, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1273, file: !1226, line: 494, baseType: !191, size: 16, offset: 288)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1273, file: !1226, line: 495, baseType: !191, size: 16, offset: 304)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1273, file: !1226, line: 497, baseType: !1282, size: 64, offset: 320)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1225, file: !1226, line: 697, baseType: !1284, size: 1792, offset: 1792)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1226, line: 507, size: 1792, elements: !1285)
!1285 = !{!1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1365, !1366}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1284, file: !1226, line: 508, baseType: !770, size: 192, align: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1284, file: !1226, line: 515, baseType: !431, size: 64, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1284, file: !1226, line: 516, baseType: !431, size: 64, offset: 256)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1284, file: !1226, line: 517, baseType: !431, size: 64, offset: 320)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1284, file: !1226, line: 518, baseType: !431, size: 64, offset: 384)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1284, file: !1226, line: 519, baseType: !431, size: 64, offset: 448)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1284, file: !1226, line: 526, baseType: !787, size: 64, offset: 512)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1284, file: !1226, line: 527, baseType: !431, size: 64, offset: 576)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1284, file: !1226, line: 528, baseType: !7, size: 32, offset: 640)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1284, file: !1226, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1284, file: !1226, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1284, file: !1226, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1284, file: !1226, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1284, file: !1226, line: 563, baseType: !1300, size: 512, offset: 704)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !27, line: 118, size: 512, elements: !1301)
!1301 = !{!1302, !1310, !1311, !1316, !1359, !1362, !1363, !1364}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1300, file: !27, line: 119, baseType: !1303, size: 256)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1304, line: 9, size: 256, elements: !1305)
!1304 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1305 = !{!1306, !1307}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1303, file: !1304, line: 10, baseType: !770, size: 192, align: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1303, file: !1304, line: 11, baseType: !1308, size: 64, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1309, line: 29, baseType: !787)
!1309 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1300, file: !27, line: 120, baseType: !1308, size: 64, offset: 256)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1300, file: !27, line: 121, baseType: !1312, size: 64, offset: 320)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!26, !1315}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1300, file: !27, line: 122, baseType: !1317, size: 64, offset: 384)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !27, line: 159, size: 512, align: 512, elements: !1319)
!1319 = !{!1320, !1340, !1341, !1344, !1349, !1350, !1354, !1358}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1318, file: !27, line: 160, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !27, line: 214, size: 4608, align: 512, elements: !1323)
!1323 = !{!1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1322, file: !27, line: 215, baseType: !790)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1322, file: !27, line: 216, baseType: !7, size: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1322, file: !27, line: 217, baseType: !7, size: 32, offset: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1322, file: !27, line: 218, baseType: !7, size: 32, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1322, file: !27, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1322, file: !27, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1322, file: !27, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1322, file: !27, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1322, file: !27, line: 233, baseType: !1308, size: 64, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1322, file: !27, line: 234, baseType: !1315, size: 64, offset: 192)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1322, file: !27, line: 235, baseType: !1308, size: 64, offset: 256)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1322, file: !27, line: 236, baseType: !1315, size: 64, offset: 320)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1322, file: !27, line: 237, baseType: !1337, size: 4096, offset: 512)
!1337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1318, size: 4096, elements: !1338)
!1338 = !{!1339}
!1339 = !DISubrange(count: 8)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1318, file: !27, line: 161, baseType: !7, size: 32, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1318, file: !27, line: 162, baseType: !1342, size: 32, offset: 96)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !186, line: 27, baseType: !1343)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !322, line: 96, baseType: !197)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1318, file: !27, line: 163, baseType: !1345, size: 32, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !402, line: 276, baseType: !1346)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !402, line: 276, size: 32, elements: !1347)
!1347 = !{!1348}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1346, file: !402, line: 276, baseType: !406, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1318, file: !27, line: 164, baseType: !1315, size: 64, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1318, file: !27, line: 165, baseType: !1351, size: 128, offset: 256)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1304, line: 14, size: 128, elements: !1352)
!1352 = !{!1353}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1351, file: !1304, line: 15, baseType: !762, size: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1318, file: !27, line: 166, baseType: !1355, size: 64, offset: 384)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!1308}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1318, file: !27, line: 167, baseType: !1308, size: 64, offset: 448)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1300, file: !27, line: 123, baseType: !1360, size: 8, offset: 448)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !188, line: 17, baseType: !1361)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !190, line: 21, baseType: !437)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1300, file: !27, line: 124, baseType: !1360, size: 8, offset: 456)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1300, file: !27, line: 125, baseType: !1360, size: 8, offset: 464)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1300, file: !27, line: 126, baseType: !1360, size: 8, offset: 472)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1284, file: !1226, line: 572, baseType: !1300, size: 512, offset: 1216)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1284, file: !1226, line: 580, baseType: !1367, size: 64, offset: 1728)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1225, file: !1226, line: 721, baseType: !7, size: 32, offset: 3584)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1225, file: !1226, line: 722, baseType: !197, size: 32, offset: 3616)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1225, file: !1226, line: 723, baseType: !1371, size: 64, offset: 3648)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1373)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1374, line: 17, baseType: !1375)
!1374 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1374, line: 17, size: 64, elements: !1376)
!1376 = !{!1377}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1375, file: !1374, line: 17, baseType: !1378, size: 64)
!1378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 64, elements: !1379)
!1379 = !{!1380}
!1380 = !DISubrange(count: 1)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1225, file: !1226, line: 724, baseType: !1373, size: 64, offset: 3712)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1225, file: !1226, line: 749, baseType: !1383, offset: 3776)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1226, line: 290, elements: !262)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1225, file: !1226, line: 751, baseType: !235, size: 128, offset: 3776)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1225, file: !1226, line: 757, baseType: !982, size: 64, offset: 3904)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1225, file: !1226, line: 758, baseType: !982, size: 64, offset: 3968)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1225, file: !1226, line: 761, baseType: !1388, size: 320, offset: 4032)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1159, line: 34, size: 320, elements: !1389)
!1389 = !{!1390, !1391}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1388, file: !1159, line: 35, baseType: !431, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1388, file: !1159, line: 36, baseType: !1392, size: 256, offset: 64)
!1392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !989, size: 256, elements: !1163)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1225, file: !1226, line: 766, baseType: !197, size: 32, offset: 4352)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1225, file: !1226, line: 767, baseType: !197, size: 32, offset: 4384)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1225, file: !1226, line: 768, baseType: !197, size: 32, offset: 4416)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1225, file: !1226, line: 770, baseType: !197, size: 32, offset: 4448)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1225, file: !1226, line: 772, baseType: !338, size: 64, offset: 4480)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1225, file: !1226, line: 775, baseType: !7, size: 32, offset: 4544)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1225, file: !1226, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1225, file: !1226, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1225, file: !1226, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1225, file: !1226, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1225, file: !1226, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1225, file: !1226, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1225, file: !1226, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1225, file: !1226, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1225, file: !1226, line: 831, baseType: !338, size: 64, offset: 4672)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1225, file: !1226, line: 833, baseType: !1409, size: 384, offset: 4736)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !32, line: 25, size: 384, elements: !1410)
!1410 = !{!1411, !1416}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1409, file: !32, line: 26, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!324, !1415}
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, scope: !1409, file: !32, line: 27, baseType: !1417, size: 320, offset: 64)
!1417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1409, file: !32, line: 27, size: 320, elements: !1418)
!1418 = !{!1419, !1429, !1456}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1417, file: !32, line: 36, baseType: !1420, size: 320)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1417, file: !32, line: 29, size: 320, elements: !1421)
!1421 = !{!1422, !1424, !1425, !1426, !1427, !1428}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1420, file: !32, line: 30, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1420, file: !32, line: 31, baseType: !204, size: 32, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1420, file: !32, line: 32, baseType: !204, size: 32, offset: 96)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1420, file: !32, line: 33, baseType: !204, size: 32, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1420, file: !32, line: 34, baseType: !431, size: 64, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1420, file: !32, line: 35, baseType: !1423, size: 64, offset: 256)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1417, file: !32, line: 46, baseType: !1430, size: 192)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1417, file: !32, line: 38, size: 192, elements: !1431)
!1431 = !{!1432, !1433, !1434, !1455}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1430, file: !32, line: 39, baseType: !1342, size: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1430, file: !32, line: 40, baseType: !31, size: 32, offset: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, scope: !1430, file: !32, line: 41, baseType: !1435, size: 64, offset: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1430, file: !32, line: 41, size: 64, elements: !1436)
!1436 = !{!1437, !1445}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1435, file: !32, line: 42, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1440, line: 7, size: 128, elements: !1441)
!1440 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1441 = !{!1442, !1444}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1439, file: !1440, line: 8, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !322, line: 93, baseType: !543)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1439, file: !1440, line: 9, baseType: !543, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1435, file: !32, line: 43, baseType: !1446, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1448, line: 7, size: 64, elements: !1449)
!1448 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1449 = !{!1450, !1454}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1447, file: !1448, line: 8, baseType: !1451, size: 32)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1448, line: 5, baseType: !1452)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !188, line: 20, baseType: !1453)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !190, line: 26, baseType: !197)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1447, file: !1448, line: 9, baseType: !1452, size: 32, offset: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1430, file: !32, line: 45, baseType: !431, size: 64, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1417, file: !32, line: 54, baseType: !1457, size: 256)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1417, file: !32, line: 48, size: 256, elements: !1458)
!1458 = !{!1459, !1462, !1463, !1464, !1465}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1457, file: !32, line: 49, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !32, line: 14, flags: DIFlagFwdDecl)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1457, file: !32, line: 50, baseType: !197, size: 32, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1457, file: !32, line: 51, baseType: !197, size: 32, offset: 96)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1457, file: !32, line: 52, baseType: !338, size: 64, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1457, file: !32, line: 53, baseType: !338, size: 64, offset: 192)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1225, file: !1226, line: 835, baseType: !1467, size: 32, offset: 5120)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !186, line: 22, baseType: !1468)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !322, line: 28, baseType: !197)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1225, file: !1226, line: 836, baseType: !1467, size: 32, offset: 5152)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1225, file: !1226, line: 840, baseType: !338, size: 64, offset: 5184)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1225, file: !1226, line: 849, baseType: !1224, size: 64, offset: 5248)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1225, file: !1226, line: 852, baseType: !1224, size: 64, offset: 5312)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1225, file: !1226, line: 857, baseType: !235, size: 128, offset: 5376)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1225, file: !1226, line: 858, baseType: !235, size: 128, offset: 5504)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1225, file: !1226, line: 859, baseType: !1224, size: 64, offset: 5632)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1225, file: !1226, line: 867, baseType: !235, size: 128, offset: 5696)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1225, file: !1226, line: 868, baseType: !235, size: 128, offset: 5824)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1225, file: !1226, line: 871, baseType: !1479, size: 64, offset: 5952)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !60, line: 59, size: 768, elements: !1481)
!1481 = !{!1482, !1483, !1484, !1485, !1487, !1488, !1495, !1496}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1480, file: !60, line: 61, baseType: !1238, size: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1480, file: !60, line: 62, baseType: !7, size: 32, offset: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1480, file: !60, line: 63, baseType: !248, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1480, file: !60, line: 65, baseType: !1486, size: 256, offset: 64)
!1486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 256, elements: !1163)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1480, file: !60, line: 66, baseType: !645, size: 64, offset: 320)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1480, file: !60, line: 68, baseType: !1489, size: 128, offset: 384)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1490, line: 40, baseType: !1491)
!1490 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1490, line: 36, size: 128, elements: !1492)
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1491, file: !1490, line: 37, baseType: !248)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1491, file: !1490, line: 38, baseType: !235, size: 128)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1480, file: !60, line: 69, baseType: !379, size: 128, align: 64, offset: 512)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1480, file: !60, line: 70, baseType: !1497, size: 128, offset: 640)
!1497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1498, size: 128, elements: !1379)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !60, line: 54, size: 128, elements: !1499)
!1499 = !{!1500, !1501}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1498, file: !60, line: 55, baseType: !197, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1498, file: !60, line: 56, baseType: !1502, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !60, line: 56, flags: DIFlagFwdDecl)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1225, file: !1226, line: 872, baseType: !1505, size: 512, offset: 6016)
!1505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !649, size: 512, elements: !1163)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1225, file: !1226, line: 873, baseType: !235, size: 128, offset: 6528)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1225, file: !1226, line: 874, baseType: !235, size: 128, offset: 6656)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1225, file: !1226, line: 876, baseType: !1509, size: 64, offset: 6784)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1511, line: 26, size: 192, elements: !1512)
!1511 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1510, file: !1511, line: 27, baseType: !7, size: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1510, file: !1511, line: 28, baseType: !1515, size: 128, offset: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1516, line: 43, size: 128, elements: !1517)
!1516 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1515, file: !1516, line: 44, baseType: !790)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1515, file: !1516, line: 45, baseType: !235, size: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1225, file: !1226, line: 879, baseType: !715, size: 64, offset: 6848)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1225, file: !1226, line: 882, baseType: !715, size: 64, offset: 6912)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1225, file: !1226, line: 884, baseType: !431, size: 64, offset: 6976)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1225, file: !1226, line: 885, baseType: !431, size: 64, offset: 7040)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1225, file: !1226, line: 890, baseType: !431, size: 64, offset: 7104)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1225, file: !1226, line: 891, baseType: !1526, size: 128, offset: 7168)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1226, line: 242, size: 128, elements: !1527)
!1527 = !{!1528, !1529, !1530}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1526, file: !1226, line: 244, baseType: !431, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1526, file: !1226, line: 245, baseType: !431, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1526, file: !1226, line: 246, baseType: !790, offset: 128)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1225, file: !1226, line: 900, baseType: !338, size: 64, offset: 7296)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1225, file: !1226, line: 901, baseType: !338, size: 64, offset: 7360)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1225, file: !1226, line: 904, baseType: !431, size: 64, offset: 7424)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1225, file: !1226, line: 907, baseType: !431, size: 64, offset: 7488)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1225, file: !1226, line: 910, baseType: !338, size: 64, offset: 7552)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1225, file: !1226, line: 911, baseType: !338, size: 64, offset: 7616)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1225, file: !1226, line: 914, baseType: !1538, size: 640, offset: 7680)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1539, line: 123, size: 640, elements: !1540)
!1539 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1540 = !{!1541, !1547, !1548}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1538, file: !1539, line: 124, baseType: !1542, size: 576)
!1542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1543, size: 576, elements: !290)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1539, line: 108, size: 192, elements: !1544)
!1544 = !{!1545, !1546}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1543, file: !1539, line: 109, baseType: !431, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1543, file: !1539, line: 110, baseType: !1351, size: 128, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1538, file: !1539, line: 125, baseType: !7, size: 32, offset: 576)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1538, file: !1539, line: 126, baseType: !7, size: 32, offset: 608)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1225, file: !1226, line: 917, baseType: !1550, size: 192, offset: 8320)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1539, line: 134, size: 192, elements: !1551)
!1551 = !{!1552, !1553}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1550, file: !1539, line: 135, baseType: !379, size: 128, align: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1550, file: !1539, line: 136, baseType: !7, size: 32, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1225, file: !1226, line: 923, baseType: !1555, size: 64, offset: 8512)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1557)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1558, line: 111, size: 1280, elements: !1559)
!1558 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1559 = !{!1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1577, !1578, !1579, !1580, !1581, !1582, !1689, !1690, !1691, !1692, !1718, !1721, !1731}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1557, file: !1558, line: 112, baseType: !757, size: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1557, file: !1558, line: 120, baseType: !445, size: 32, offset: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1557, file: !1558, line: 121, baseType: !453, size: 32, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1557, file: !1558, line: 122, baseType: !445, size: 32, offset: 96)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1557, file: !1558, line: 123, baseType: !453, size: 32, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1557, file: !1558, line: 124, baseType: !445, size: 32, offset: 160)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1557, file: !1558, line: 125, baseType: !453, size: 32, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1557, file: !1558, line: 126, baseType: !445, size: 32, offset: 224)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1557, file: !1558, line: 127, baseType: !453, size: 32, offset: 256)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1557, file: !1558, line: 128, baseType: !7, size: 32, offset: 288)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1557, file: !1558, line: 129, baseType: !1571, size: 64, offset: 320)
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1572, line: 26, baseType: !1573)
!1572 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1572, line: 24, size: 64, elements: !1574)
!1574 = !{!1575}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1573, file: !1572, line: 25, baseType: !1576, size: 64)
!1576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 64, elements: !216)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1557, file: !1558, line: 130, baseType: !1571, size: 64, offset: 384)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1557, file: !1558, line: 131, baseType: !1571, size: 64, offset: 448)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1557, file: !1558, line: 132, baseType: !1571, size: 64, offset: 512)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1557, file: !1558, line: 133, baseType: !1571, size: 64, offset: 576)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1557, file: !1558, line: 135, baseType: !437, size: 8, offset: 640)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1557, file: !1558, line: 137, baseType: !1583, size: 64, offset: 704)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1585, line: 189, size: 1664, elements: !1586)
!1585 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1586 = !{!1587, !1588, !1591, !1596, !1597, !1600, !1601, !1606, !1607, !1608, !1609, !1611, !1612, !1613, !1614, !1615, !1653, !1674}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1584, file: !1585, line: 190, baseType: !1238, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1584, file: !1585, line: 191, baseType: !1589, size: 32, offset: 32)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1585, line: 28, baseType: !1590)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !186, line: 98, baseType: !1452)
!1591 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !1585, line: 192, baseType: !1592, size: 192, offset: 64)
!1592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1584, file: !1585, line: 192, size: 192, elements: !1593)
!1593 = !{!1594, !1595}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1592, file: !1585, line: 193, baseType: !235, size: 128)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1592, file: !1585, line: 194, baseType: !770, size: 192, align: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1584, file: !1585, line: 199, baseType: !777, size: 256, offset: 256)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1584, file: !1585, line: 200, baseType: !1598, size: 64, offset: 512)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1585, line: 200, flags: DIFlagFwdDecl)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1584, file: !1585, line: 201, baseType: !192, size: 64, offset: 576)
!1601 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !1585, line: 202, baseType: !1602, size: 64, offset: 640)
!1602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1584, file: !1585, line: 202, size: 64, elements: !1603)
!1603 = !{!1604, !1605}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1602, file: !1585, line: 203, baseType: !549, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1602, file: !1585, line: 204, baseType: !549, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1584, file: !1585, line: 206, baseType: !549, size: 64, offset: 704)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1584, file: !1585, line: 207, baseType: !445, size: 32, offset: 768)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1584, file: !1585, line: 208, baseType: !453, size: 32, offset: 800)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1584, file: !1585, line: 209, baseType: !1610, size: 32, offset: 832)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1585, line: 31, baseType: !569)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1584, file: !1585, line: 210, baseType: !191, size: 16, offset: 864)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1584, file: !1585, line: 211, baseType: !191, size: 16, offset: 880)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1584, file: !1585, line: 215, baseType: !1213, size: 16, offset: 896)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1584, file: !1585, line: 222, baseType: !338, size: 64, offset: 960)
!1615 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !1585, line: 239, baseType: !1616, size: 320, offset: 1024)
!1616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1584, file: !1585, line: 239, size: 320, elements: !1617)
!1617 = !{!1618, !1645}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1616, file: !1585, line: 240, baseType: !1619, size: 320)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1585, line: 108, size: 320, elements: !1620)
!1620 = !{!1621, !1622, !1634, !1637, !1644}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1619, file: !1585, line: 110, baseType: !338, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !1585, line: 111, baseType: !1623, size: 64, offset: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1619, file: !1585, line: 111, size: 64, elements: !1624)
!1624 = !{!1625, !1633}
!1625 = !DIDerivedType(tag: DW_TAG_member, scope: !1623, file: !1585, line: 112, baseType: !1626, size: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1623, file: !1585, line: 112, size: 64, elements: !1627)
!1627 = !{!1628, !1629}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1626, file: !1585, line: 114, baseType: !187, size: 16)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1626, file: !1585, line: 115, baseType: !1630, size: 48, offset: 16)
!1630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 48, elements: !1631)
!1631 = !{!1632}
!1632 = !DISubrange(count: 6)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1623, file: !1585, line: 121, baseType: !338, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1619, file: !1585, line: 123, baseType: !1635, size: 64, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1585, line: 96, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1619, file: !1585, line: 124, baseType: !1638, size: 64, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1585, line: 102, size: 192, elements: !1640)
!1640 = !{!1641, !1642, !1643}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1639, file: !1585, line: 103, baseType: !379, size: 128, align: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1639, file: !1585, line: 104, baseType: !1238, size: 32, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1639, file: !1585, line: 105, baseType: !500, size: 8, offset: 160)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1619, file: !1585, line: 125, baseType: !232, size: 64, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_member, scope: !1616, file: !1585, line: 241, baseType: !1646, size: 320)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1616, file: !1585, line: 241, size: 320, elements: !1647)
!1647 = !{!1648, !1649, !1650, !1651, !1652}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1646, file: !1585, line: 242, baseType: !338, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1646, file: !1585, line: 243, baseType: !338, size: 64, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1646, file: !1585, line: 244, baseType: !1635, size: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1646, file: !1585, line: 245, baseType: !1638, size: 64, offset: 192)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1646, file: !1585, line: 246, baseType: !289, size: 64, offset: 256)
!1653 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !1585, line: 254, baseType: !1654, size: 256, offset: 1344)
!1654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1584, file: !1585, line: 254, size: 256, elements: !1655)
!1655 = !{!1656, !1662}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1654, file: !1585, line: 255, baseType: !1657, size: 256)
!1657 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1585, line: 128, size: 256, elements: !1658)
!1658 = !{!1659, !1660}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1657, file: !1585, line: 129, baseType: !192, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1657, file: !1585, line: 130, baseType: !1661, size: 256)
!1661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 256, elements: !1163)
!1662 = !DIDerivedType(tag: DW_TAG_member, scope: !1654, file: !1585, line: 256, baseType: !1663, size: 256)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1654, file: !1585, line: 256, size: 256, elements: !1664)
!1664 = !{!1665, !1666}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1663, file: !1585, line: 258, baseType: !235, size: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1663, file: !1585, line: 259, baseType: !1667, size: 128, offset: 128)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1668, line: 22, size: 128, elements: !1669)
!1668 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1669 = !{!1670, !1673}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1667, file: !1668, line: 23, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1668, line: 23, flags: DIFlagFwdDecl)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1667, file: !1668, line: 24, baseType: !338, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1584, file: !1585, line: 274, baseType: !1675, size: 64, offset: 1600)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1585, line: 170, size: 192, elements: !1677)
!1677 = !{!1678, !1687, !1688}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1676, file: !1585, line: 171, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1585, line: 165, baseType: !1680)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!197, !1583, !1683, !1685, !1583}
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1636)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1657)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1676, file: !1585, line: 172, baseType: !1583, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1676, file: !1585, line: 173, baseType: !1635, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1557, file: !1558, line: 138, baseType: !1583, size: 64, offset: 768)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1557, file: !1558, line: 139, baseType: !1583, size: 64, offset: 832)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1557, file: !1558, line: 140, baseType: !1583, size: 64, offset: 896)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1557, file: !1558, line: 145, baseType: !1693, size: 64, offset: 960)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1695, line: 13, size: 896, elements: !1696)
!1695 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1696 = !{!1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1694, file: !1695, line: 14, baseType: !1238, size: 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1694, file: !1695, line: 15, baseType: !757, size: 32, offset: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1694, file: !1695, line: 16, baseType: !757, size: 32, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1694, file: !1695, line: 21, baseType: !781, size: 64, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1694, file: !1695, line: 27, baseType: !338, size: 64, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1694, file: !1695, line: 28, baseType: !338, size: 64, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1694, file: !1695, line: 29, baseType: !781, size: 64, offset: 320)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1694, file: !1695, line: 32, baseType: !649, size: 128, offset: 384)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1694, file: !1695, line: 33, baseType: !445, size: 32, offset: 512)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1694, file: !1695, line: 37, baseType: !781, size: 64, offset: 576)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1694, file: !1695, line: 44, baseType: !1708, size: 256, offset: 640)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1709, line: 15, size: 256, elements: !1710)
!1709 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1710 = !{!1711, !1712, !1713, !1714, !1715, !1716, !1717}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1708, file: !1709, line: 16, baseType: !790)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1708, file: !1709, line: 18, baseType: !197, size: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1708, file: !1709, line: 19, baseType: !197, size: 32, offset: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1708, file: !1709, line: 20, baseType: !197, size: 32, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1708, file: !1709, line: 21, baseType: !197, size: 32, offset: 96)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1708, file: !1709, line: 22, baseType: !338, size: 64, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1708, file: !1709, line: 23, baseType: !338, size: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1557, file: !1558, line: 146, baseType: !1719, size: 64, offset: 1024)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !446, line: 18, flags: DIFlagFwdDecl)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1557, file: !1558, line: 147, baseType: !1722, size: 64, offset: 1088)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1558, line: 25, size: 64, elements: !1724)
!1724 = !{!1725, !1726, !1727}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1723, file: !1558, line: 26, baseType: !757, size: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1723, file: !1558, line: 27, baseType: !197, size: 32, offset: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1723, file: !1558, line: 28, baseType: !1728, offset: 64)
!1728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, elements: !1729)
!1729 = !{!1730}
!1730 = !DISubrange(count: 0)
!1731 = !DIDerivedType(tag: DW_TAG_member, scope: !1557, file: !1558, line: 149, baseType: !1732, size: 128, offset: 1152)
!1732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1557, file: !1558, line: 149, size: 128, elements: !1733)
!1733 = !{!1734, !1735}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1732, file: !1558, line: 150, baseType: !197, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1732, file: !1558, line: 151, baseType: !379, size: 128, align: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1225, file: !1226, line: 926, baseType: !1555, size: 64, offset: 8576)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1225, file: !1226, line: 929, baseType: !1555, size: 64, offset: 8640)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1225, file: !1226, line: 933, baseType: !1583, size: 64, offset: 8704)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1225, file: !1226, line: 943, baseType: !199, size: 128, offset: 8768)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1225, file: !1226, line: 945, baseType: !1741, size: 64, offset: 8896)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1226, line: 49, flags: DIFlagFwdDecl)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1225, file: !1226, line: 956, baseType: !1744, size: 64, offset: 8960)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1226, line: 45, flags: DIFlagFwdDecl)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1225, file: !1226, line: 959, baseType: !1747, size: 64, offset: 9024)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1226, line: 959, flags: DIFlagFwdDecl)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1225, file: !1226, line: 962, baseType: !1750, size: 64, offset: 9088)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1226, line: 66, flags: DIFlagFwdDecl)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1225, file: !1226, line: 966, baseType: !1753, size: 64, offset: 9152)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1755, line: 35, flags: DIFlagFwdDecl)
!1755 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1225, file: !1226, line: 969, baseType: !1757, size: 64, offset: 9216)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1759, line: 82, size: 7296, elements: !1760)
!1759 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1760 = !{!1761, !1762, !1763, !1764, !1765, !1766, !1767, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1796, !1805, !1806, !1808, !1809, !1810, !1813, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1843, !1844, !1851, !1852, !1853, !1854, !1855, !1856}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1758, file: !1759, line: 83, baseType: !1238, size: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1758, file: !1759, line: 84, baseType: !757, size: 32, offset: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1758, file: !1759, line: 85, baseType: !197, size: 32, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1758, file: !1759, line: 86, baseType: !235, size: 128, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1758, file: !1759, line: 88, baseType: !1489, size: 128, offset: 256)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1758, file: !1759, line: 91, baseType: !1224, size: 64, offset: 384)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1758, file: !1759, line: 94, baseType: !1768, size: 192, offset: 448)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1769, line: 30, size: 192, elements: !1770)
!1769 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1770 = !{!1771, !1772}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1768, file: !1769, line: 31, baseType: !235, size: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1768, file: !1769, line: 32, baseType: !1773, size: 64, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1774, line: 25, baseType: !1775)
!1774 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1774, line: 23, size: 64, elements: !1776)
!1776 = !{!1777}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1775, file: !1774, line: 24, baseType: !1378, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1758, file: !1759, line: 97, baseType: !645, size: 64, offset: 640)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1758, file: !1759, line: 100, baseType: !197, size: 32, offset: 704)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1758, file: !1759, line: 106, baseType: !197, size: 32, offset: 736)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1758, file: !1759, line: 107, baseType: !1224, size: 64, offset: 768)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1758, file: !1759, line: 110, baseType: !197, size: 32, offset: 832)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1758, file: !1759, line: 111, baseType: !7, size: 32, offset: 864)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1758, file: !1759, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1758, file: !1759, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1758, file: !1759, line: 128, baseType: !197, size: 32, offset: 928)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1758, file: !1759, line: 129, baseType: !235, size: 128, offset: 960)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1758, file: !1759, line: 132, baseType: !1300, size: 512, offset: 1088)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1758, file: !1759, line: 133, baseType: !1308, size: 64, offset: 1600)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1758, file: !1759, line: 140, baseType: !1791, size: 256, offset: 1664)
!1791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1792, size: 256, elements: !216)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1759, line: 38, size: 128, elements: !1793)
!1793 = !{!1794, !1795}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1792, file: !1759, line: 39, baseType: !431, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1792, file: !1759, line: 40, baseType: !431, size: 64, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1758, file: !1759, line: 146, baseType: !1797, size: 192, offset: 1920)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1759, line: 66, size: 192, elements: !1798)
!1798 = !{!1799}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1797, file: !1759, line: 67, baseType: !1800, size: 192)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1759, line: 47, size: 192, elements: !1801)
!1801 = !{!1802, !1803, !1804}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1800, file: !1759, line: 48, baseType: !783, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1800, file: !1759, line: 49, baseType: !783, size: 64, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1800, file: !1759, line: 50, baseType: !783, size: 64, offset: 128)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1758, file: !1759, line: 150, baseType: !1538, size: 640, offset: 2112)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1758, file: !1759, line: 153, baseType: !1807, size: 256, offset: 2752)
!1807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1479, size: 256, elements: !1163)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1758, file: !1759, line: 159, baseType: !1479, size: 64, offset: 3008)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1758, file: !1759, line: 162, baseType: !197, size: 32, offset: 3072)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1758, file: !1759, line: 164, baseType: !1811, size: 64, offset: 3136)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1759, line: 164, flags: DIFlagFwdDecl)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1758, file: !1759, line: 175, baseType: !1814, size: 32, offset: 3200)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !402, line: 805, baseType: !1815)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !402, line: 798, size: 32, elements: !1816)
!1816 = !{!1817, !1818}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1815, file: !402, line: 803, baseType: !401, size: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1815, file: !402, line: 804, baseType: !248, offset: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1758, file: !1759, line: 176, baseType: !431, size: 64, offset: 3264)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1758, file: !1759, line: 176, baseType: !431, size: 64, offset: 3328)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1758, file: !1759, line: 176, baseType: !431, size: 64, offset: 3392)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1758, file: !1759, line: 176, baseType: !431, size: 64, offset: 3456)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1758, file: !1759, line: 177, baseType: !431, size: 64, offset: 3520)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1758, file: !1759, line: 178, baseType: !431, size: 64, offset: 3584)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1758, file: !1759, line: 179, baseType: !1526, size: 128, offset: 3648)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1758, file: !1759, line: 180, baseType: !338, size: 64, offset: 3776)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1758, file: !1759, line: 180, baseType: !338, size: 64, offset: 3840)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1758, file: !1759, line: 180, baseType: !338, size: 64, offset: 3904)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1758, file: !1759, line: 180, baseType: !338, size: 64, offset: 3968)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1758, file: !1759, line: 181, baseType: !338, size: 64, offset: 4032)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1758, file: !1759, line: 181, baseType: !338, size: 64, offset: 4096)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1758, file: !1759, line: 181, baseType: !338, size: 64, offset: 4160)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1758, file: !1759, line: 181, baseType: !338, size: 64, offset: 4224)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1758, file: !1759, line: 182, baseType: !338, size: 64, offset: 4288)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1758, file: !1759, line: 182, baseType: !338, size: 64, offset: 4352)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1758, file: !1759, line: 182, baseType: !338, size: 64, offset: 4416)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1758, file: !1759, line: 182, baseType: !338, size: 64, offset: 4480)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1758, file: !1759, line: 183, baseType: !338, size: 64, offset: 4544)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1758, file: !1759, line: 183, baseType: !338, size: 64, offset: 4608)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1758, file: !1759, line: 184, baseType: !1841, offset: 4672)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1842, line: 12, elements: !262)
!1842 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1758, file: !1759, line: 192, baseType: !433, size: 64, offset: 4672)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1758, file: !1759, line: 203, baseType: !1845, size: 2048, offset: 4736)
!1845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1846, size: 2048, elements: !201)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1847, line: 43, size: 128, elements: !1848)
!1847 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1848 = !{!1849, !1850}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1846, file: !1847, line: 44, baseType: !337, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1846, file: !1847, line: 45, baseType: !337, size: 64, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1758, file: !1759, line: 220, baseType: !500, size: 8, offset: 6784)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1758, file: !1759, line: 221, baseType: !1213, size: 16, offset: 6800)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1758, file: !1759, line: 222, baseType: !1213, size: 16, offset: 6816)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1758, file: !1759, line: 224, baseType: !982, size: 64, offset: 6848)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1758, file: !1759, line: 227, baseType: !1181, size: 192, offset: 6912)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1758, file: !1759, line: 233, baseType: !1181, size: 192, offset: 7104)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1225, file: !1226, line: 970, baseType: !1858, size: 64, offset: 9280)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1759, line: 20, size: 16576, elements: !1860)
!1860 = !{!1861, !1862, !1863, !1864}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1859, file: !1759, line: 21, baseType: !248)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1859, file: !1759, line: 22, baseType: !1238, size: 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1859, file: !1759, line: 23, baseType: !1489, size: 128, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1859, file: !1759, line: 24, baseType: !1865, size: 16384, offset: 192)
!1865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1866, size: 16384, elements: !294)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1769, line: 49, size: 256, elements: !1867)
!1867 = !{!1868}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1866, file: !1769, line: 50, baseType: !1869, size: 256)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1769, line: 35, size: 256, elements: !1870)
!1870 = !{!1871, !1878, !1879, !1885}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1869, file: !1769, line: 37, baseType: !1872, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1873, line: 19, baseType: !1874)
!1873 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1873, line: 18, baseType: !1876)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{null, !197}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1869, file: !1769, line: 38, baseType: !338, size: 64, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1869, file: !1769, line: 44, baseType: !1880, size: 64, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1873, line: 22, baseType: !1881)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1873, line: 21, baseType: !1883)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{null}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1869, file: !1769, line: 46, baseType: !1773, size: 64, offset: 192)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1225, file: !1226, line: 971, baseType: !1773, size: 64, offset: 9344)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1225, file: !1226, line: 972, baseType: !1773, size: 64, offset: 9408)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1225, file: !1226, line: 974, baseType: !1773, size: 64, offset: 9472)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1225, file: !1226, line: 975, baseType: !1768, size: 192, offset: 9536)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1225, file: !1226, line: 976, baseType: !338, size: 64, offset: 9728)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1225, file: !1226, line: 977, baseType: !335, size: 64, offset: 9792)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1225, file: !1226, line: 978, baseType: !7, size: 32, offset: 9856)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1225, file: !1226, line: 980, baseType: !382, size: 64, offset: 9920)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1225, file: !1226, line: 989, baseType: !1895, size: 128, offset: 9984)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1896, line: 35, size: 128, elements: !1897)
!1896 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1897 = !{!1898, !1899, !1900}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1895, file: !1896, line: 36, baseType: !197, size: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1895, file: !1896, line: 37, baseType: !757, size: 32, offset: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1895, file: !1896, line: 38, baseType: !1901, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1896, line: 23, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1225, file: !1226, line: 992, baseType: !431, size: 64, offset: 10112)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1225, file: !1226, line: 993, baseType: !431, size: 64, offset: 10176)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1225, file: !1226, line: 996, baseType: !248, offset: 10240)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1225, file: !1226, line: 999, baseType: !790, offset: 10240)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1225, file: !1226, line: 1001, baseType: !1908, size: 64, offset: 10240)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1226, line: 636, size: 64, elements: !1909)
!1909 = !{!1910}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1908, file: !1226, line: 637, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1225, file: !1226, line: 1005, baseType: !762, size: 128, offset: 10304)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1225, file: !1226, line: 1007, baseType: !1224, size: 64, offset: 10432)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1225, file: !1226, line: 1009, baseType: !1915, size: 64, offset: 10496)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1226, line: 1009, flags: DIFlagFwdDecl)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1225, file: !1226, line: 1043, baseType: !192, size: 64, offset: 10560)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1225, file: !1226, line: 1046, baseType: !1919, size: 64, offset: 10624)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1226, line: 41, flags: DIFlagFwdDecl)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1225, file: !1226, line: 1050, baseType: !1922, size: 64, offset: 10688)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1226, line: 42, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1225, file: !1226, line: 1054, baseType: !1925, size: 64, offset: 10752)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1226, line: 55, flags: DIFlagFwdDecl)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1225, file: !1226, line: 1056, baseType: !1928, size: 64, offset: 10816)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1226, line: 40, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1225, file: !1226, line: 1058, baseType: !1931, size: 64, offset: 10880)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1933, line: 99, size: 704, elements: !1934)
!1933 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1934 = !{!1935, !1936, !1937, !1938, !1939, !1940, !1941, !1960, !1961}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1932, file: !1933, line: 100, baseType: !781, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1932, file: !1933, line: 101, baseType: !757, size: 32, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1932, file: !1933, line: 102, baseType: !757, size: 32, offset: 96)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1932, file: !1933, line: 105, baseType: !248, offset: 128)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1932, file: !1933, line: 107, baseType: !191, size: 16, offset: 128)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1932, file: !1933, line: 109, baseType: !749, size: 128, offset: 192)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1932, file: !1933, line: 110, baseType: !1942, size: 64, offset: 320)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1933, line: 73, size: 448, elements: !1944)
!1944 = !{!1945, !1948, !1949, !1954, !1959}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1943, file: !1933, line: 74, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1933, line: 74, flags: DIFlagFwdDecl)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1943, file: !1933, line: 75, baseType: !1931, size: 64, offset: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, scope: !1943, file: !1933, line: 83, baseType: !1950, size: 128, offset: 128)
!1950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1943, file: !1933, line: 83, size: 128, elements: !1951)
!1951 = !{!1952, !1953}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1950, file: !1933, line: 84, baseType: !235, size: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1950, file: !1933, line: 85, baseType: !943, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, scope: !1943, file: !1933, line: 87, baseType: !1955, size: 128, offset: 256)
!1955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1943, file: !1933, line: 87, size: 128, elements: !1956)
!1956 = !{!1957, !1958}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1955, file: !1933, line: 88, baseType: !649, size: 128)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1955, file: !1933, line: 89, baseType: !379, size: 128, align: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1943, file: !1933, line: 92, baseType: !7, size: 32, offset: 384)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1932, file: !1933, line: 111, baseType: !645, size: 64, offset: 384)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1932, file: !1933, line: 113, baseType: !1962, size: 256, offset: 448)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1963, line: 102, size: 256, elements: !1964)
!1963 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1964 = !{!1965, !1966, !1967}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1962, file: !1963, line: 103, baseType: !781, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1962, file: !1963, line: 104, baseType: !235, size: 128, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1962, file: !1963, line: 105, baseType: !1968, size: 64, offset: 192)
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1963, line: 21, baseType: !1969)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{null, !1972}
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1225, file: !1226, line: 1061, baseType: !1974, size: 64, offset: 10944)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1226, line: 43, flags: DIFlagFwdDecl)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1225, file: !1226, line: 1064, baseType: !338, size: 64, offset: 11008)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1225, file: !1226, line: 1065, baseType: !1978, size: 64, offset: 11072)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1769, line: 14, baseType: !1980)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1769, line: 12, size: 384, elements: !1981)
!1981 = !{!1982}
!1982 = !DIDerivedType(tag: DW_TAG_member, scope: !1980, file: !1769, line: 13, baseType: !1983, size: 384)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1980, file: !1769, line: 13, size: 384, elements: !1984)
!1984 = !{!1985, !1986, !1987, !1988}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1983, file: !1769, line: 13, baseType: !197, size: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1983, file: !1769, line: 13, baseType: !197, size: 32, offset: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1983, file: !1769, line: 13, baseType: !197, size: 32, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1983, file: !1769, line: 13, baseType: !1989, size: 256, offset: 128)
!1989 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1990, line: 32, size: 256, elements: !1991)
!1990 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1991 = !{!1992, !1997, !2010, !2016, !2025, !2045, !2050}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1989, file: !1990, line: 37, baseType: !1993, size: 64)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1989, file: !1990, line: 34, size: 64, elements: !1994)
!1994 = !{!1995, !1996}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1993, file: !1990, line: 35, baseType: !1468, size: 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1993, file: !1990, line: 36, baseType: !451, size: 32, offset: 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1989, file: !1990, line: 45, baseType: !1998, size: 192)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1989, file: !1990, line: 40, size: 192, elements: !1999)
!1999 = !{!2000, !2002, !2003, !2009}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1998, file: !1990, line: 41, baseType: !2001, size: 32)
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !322, line: 95, baseType: !197)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1998, file: !1990, line: 42, baseType: !197, size: 32, offset: 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1998, file: !1990, line: 43, baseType: !2004, size: 64, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1990, line: 11, baseType: !2005)
!2005 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1990, line: 8, size: 64, elements: !2006)
!2006 = !{!2007, !2008}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2005, file: !1990, line: 9, baseType: !197, size: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2005, file: !1990, line: 10, baseType: !192, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1998, file: !1990, line: 44, baseType: !197, size: 32, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1989, file: !1990, line: 52, baseType: !2011, size: 128)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1989, file: !1990, line: 48, size: 128, elements: !2012)
!2012 = !{!2013, !2014, !2015}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2011, file: !1990, line: 49, baseType: !1468, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2011, file: !1990, line: 50, baseType: !451, size: 32, offset: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2011, file: !1990, line: 51, baseType: !2004, size: 64, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1989, file: !1990, line: 61, baseType: !2017, size: 256)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1989, file: !1990, line: 55, size: 256, elements: !2018)
!2018 = !{!2019, !2020, !2021, !2022, !2024}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2017, file: !1990, line: 56, baseType: !1468, size: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2017, file: !1990, line: 57, baseType: !451, size: 32, offset: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2017, file: !1990, line: 58, baseType: !197, size: 32, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2017, file: !1990, line: 59, baseType: !2023, size: 64, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !322, line: 94, baseType: !323)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2017, file: !1990, line: 60, baseType: !2023, size: 64, offset: 192)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1989, file: !1990, line: 95, baseType: !2026, size: 256)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1989, file: !1990, line: 64, size: 256, elements: !2027)
!2027 = !{!2028, !2029}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2026, file: !1990, line: 65, baseType: !192, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, scope: !2026, file: !1990, line: 77, baseType: !2030, size: 192, offset: 64)
!2030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2026, file: !1990, line: 77, size: 192, elements: !2031)
!2031 = !{!2032, !2033, !2040}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2030, file: !1990, line: 82, baseType: !1213, size: 16)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2030, file: !1990, line: 88, baseType: !2034, size: 192)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2030, file: !1990, line: 84, size: 192, elements: !2035)
!2035 = !{!2036, !2038, !2039}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2034, file: !1990, line: 85, baseType: !2037, size: 64)
!2037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 64, elements: !1338)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2034, file: !1990, line: 86, baseType: !192, size: 64, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2034, file: !1990, line: 87, baseType: !192, size: 64, offset: 128)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2030, file: !1990, line: 93, baseType: !2041, size: 96)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2030, file: !1990, line: 90, size: 96, elements: !2042)
!2042 = !{!2043, !2044}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2041, file: !1990, line: 91, baseType: !2037, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2041, file: !1990, line: 92, baseType: !205, size: 32, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1989, file: !1990, line: 101, baseType: !2046, size: 128)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1989, file: !1990, line: 98, size: 128, elements: !2047)
!2047 = !{!2048, !2049}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2046, file: !1990, line: 99, baseType: !324, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2046, file: !1990, line: 100, baseType: !197, size: 32, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1989, file: !1990, line: 108, baseType: !2051, size: 128)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1989, file: !1990, line: 104, size: 128, elements: !2052)
!2052 = !{!2053, !2054, !2055}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2051, file: !1990, line: 105, baseType: !192, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2051, file: !1990, line: 106, baseType: !197, size: 32, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2051, file: !1990, line: 107, baseType: !7, size: 32, offset: 96)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1225, file: !1226, line: 1067, baseType: !1841, offset: 11136)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1225, file: !1226, line: 1099, baseType: !2058, size: 64, offset: 11136)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1226, line: 56, flags: DIFlagFwdDecl)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1225, file: !1226, line: 1103, baseType: !235, size: 128, offset: 11200)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1225, file: !1226, line: 1104, baseType: !2062, size: 64, offset: 11328)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1226, line: 46, flags: DIFlagFwdDecl)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1225, file: !1226, line: 1105, baseType: !1181, size: 192, offset: 11392)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1225, file: !1226, line: 1106, baseType: !7, size: 32, offset: 11584)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1225, file: !1226, line: 1109, baseType: !2067, size: 128, offset: 11648)
!2067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2068, size: 128, elements: !216)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1226, line: 51, flags: DIFlagFwdDecl)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1225, file: !1226, line: 1110, baseType: !1181, size: 192, offset: 11776)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1225, file: !1226, line: 1111, baseType: !235, size: 128, offset: 11968)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1225, file: !1226, line: 1173, baseType: !2073, size: 64, offset: 12096)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2075, line: 62, size: 256, align: 256, elements: !2076)
!2075 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2076 = !{!2077, !2078, !2079, !2084}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2074, file: !2075, line: 75, baseType: !205, size: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2074, file: !2075, line: 90, baseType: !205, size: 32, offset: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2074, file: !2075, line: 124, baseType: !2080, size: 64, offset: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2074, file: !2075, line: 109, size: 64, elements: !2081)
!2081 = !{!2082, !2083}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2080, file: !2075, line: 110, baseType: !432, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2080, file: !2075, line: 112, baseType: !432, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2074, file: !2075, line: 144, baseType: !205, size: 32, offset: 128)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1225, file: !1226, line: 1174, baseType: !204, size: 32, offset: 12160)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1225, file: !1226, line: 1179, baseType: !338, size: 64, offset: 12224)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1225, file: !1226, line: 1182, baseType: !2088, size: 128, offset: 12288)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1159, line: 76, size: 128, elements: !2089)
!2089 = !{!2090, !2095, !2096}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2088, file: !1159, line: 85, baseType: !2091, size: 64)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2092, line: 7, size: 64, elements: !2093)
!2092 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2093 = !{!2094}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2091, file: !2092, line: 12, baseType: !1375, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2088, file: !1159, line: 88, baseType: !500, size: 8, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2088, file: !1159, line: 95, baseType: !500, size: 8, offset: 72)
!2097 = !DIDerivedType(tag: DW_TAG_member, scope: !1225, file: !1226, line: 1184, baseType: !2098, size: 128, offset: 12416)
!2098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1225, file: !1226, line: 1184, size: 128, elements: !2099)
!2099 = !{!2100, !2101}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2098, file: !1226, line: 1185, baseType: !1238, size: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2098, file: !1226, line: 1186, baseType: !379, size: 128, align: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1225, file: !1226, line: 1190, baseType: !2103, size: 64, offset: 12544)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1226, line: 53, flags: DIFlagFwdDecl)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1225, file: !1226, line: 1192, baseType: !2106, size: 128, offset: 12608)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1159, line: 64, size: 128, elements: !2107)
!2107 = !{!2108, !2109, !2110}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2106, file: !1159, line: 65, baseType: !731, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2106, file: !1159, line: 67, baseType: !205, size: 32, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2106, file: !1159, line: 68, baseType: !205, size: 32, offset: 96)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1225, file: !1226, line: 1206, baseType: !197, size: 32, offset: 12736)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1225, file: !1226, line: 1207, baseType: !197, size: 32, offset: 12768)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1225, file: !1226, line: 1209, baseType: !338, size: 64, offset: 12800)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1225, file: !1226, line: 1219, baseType: !431, size: 64, offset: 12864)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1225, file: !1226, line: 1220, baseType: !431, size: 64, offset: 12928)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1225, file: !1226, line: 1317, baseType: !197, size: 32, offset: 12992)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1225, file: !1226, line: 1319, baseType: !1224, size: 64, offset: 13056)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1225, file: !1226, line: 1322, baseType: !2119, size: 64, offset: 13120)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2121, line: 56, size: 512, elements: !2122)
!2121 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2122 = !{!2123, !2124, !2125, !2126, !2127, !2128, !2129, !2131}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2120, file: !2121, line: 57, baseType: !2119, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2120, file: !2121, line: 58, baseType: !192, size: 64, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2120, file: !2121, line: 59, baseType: !338, size: 64, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2120, file: !2121, line: 60, baseType: !338, size: 64, offset: 192)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2120, file: !2121, line: 61, baseType: !830, size: 64, offset: 256)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2120, file: !2121, line: 62, baseType: !7, size: 32, offset: 320)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2120, file: !2121, line: 63, baseType: !2130, size: 64, offset: 384)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !186, line: 153, baseType: !431)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2120, file: !2121, line: 64, baseType: !2132, size: 64, offset: 448)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1225, file: !1226, line: 1326, baseType: !1238, size: 32, offset: 13184)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1225, file: !1226, line: 1342, baseType: !192, size: 64, offset: 13248)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1225, file: !1226, line: 1343, baseType: !432, size: 64, offset: 13312)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1225, file: !1226, line: 1344, baseType: !431, size: 64, offset: 13376)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1225, file: !1226, line: 1345, baseType: !432, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1225, file: !1226, line: 1346, baseType: !432, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1225, file: !1226, line: 1347, baseType: !432, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1225, file: !1226, line: 1348, baseType: !379, size: 128, align: 64, offset: 13504)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1225, file: !1226, line: 1358, baseType: !2143, size: 34816, offset: 13824)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2144, line: 485, size: 34816, elements: !2145)
!2144 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2145 = !{!2146, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2175, !2176, !2177, !2178, !2179, !2180, !2183, !2184, !2185}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2143, file: !2144, line: 487, baseType: !2147, size: 192)
!2147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2148, size: 192, elements: !290)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2149, line: 16, size: 64, elements: !2150)
!2149 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2150 = !{!2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2148, file: !2149, line: 17, baseType: !187, size: 16)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2148, file: !2149, line: 18, baseType: !187, size: 16, offset: 16)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2148, file: !2149, line: 19, baseType: !187, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2148, file: !2149, line: 19, baseType: !187, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2148, file: !2149, line: 19, baseType: !187, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2148, file: !2149, line: 19, baseType: !187, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2148, file: !2149, line: 19, baseType: !187, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2148, file: !2149, line: 20, baseType: !187, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2148, file: !2149, line: 20, baseType: !187, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2148, file: !2149, line: 20, baseType: !187, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2148, file: !2149, line: 20, baseType: !187, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2148, file: !2149, line: 20, baseType: !187, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2148, file: !2149, line: 20, baseType: !187, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2143, file: !2144, line: 491, baseType: !338, size: 64, offset: 192)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2143, file: !2144, line: 495, baseType: !191, size: 16, offset: 256)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2143, file: !2144, line: 496, baseType: !191, size: 16, offset: 272)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2143, file: !2144, line: 497, baseType: !191, size: 16, offset: 288)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2143, file: !2144, line: 498, baseType: !191, size: 16, offset: 304)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2143, file: !2144, line: 502, baseType: !338, size: 64, offset: 320)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2143, file: !2144, line: 503, baseType: !338, size: 64, offset: 384)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2143, file: !2144, line: 514, baseType: !2172, size: 256, offset: 448)
!2172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2173, size: 256, elements: !1163)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2144, line: 483, flags: DIFlagFwdDecl)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2143, file: !2144, line: 516, baseType: !338, size: 64, offset: 704)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2143, file: !2144, line: 518, baseType: !338, size: 64, offset: 768)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2143, file: !2144, line: 520, baseType: !338, size: 64, offset: 832)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2143, file: !2144, line: 521, baseType: !338, size: 64, offset: 896)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2143, file: !2144, line: 522, baseType: !338, size: 64, offset: 960)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2143, file: !2144, line: 528, baseType: !2181, size: 64, offset: 1024)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2144, line: 10, flags: DIFlagFwdDecl)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2143, file: !2144, line: 535, baseType: !338, size: 64, offset: 1088)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2143, file: !2144, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2143, file: !2144, line: 540, baseType: !2186, size: 33280, offset: 1536)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2187, line: 317, size: 33280, elements: !2188)
!2187 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2188 = !{!2189, !2190, !2191}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2186, file: !2187, line: 330, baseType: !7, size: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2186, file: !2187, line: 337, baseType: !338, size: 64, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2186, file: !2187, line: 348, baseType: !2192, size: 32768, offset: 512)
!2192 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2187, line: 304, size: 32768, elements: !2193)
!2193 = !{!2194, !2209, !2248, !2298, !2311}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2192, file: !2187, line: 305, baseType: !2195, size: 896)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2187, line: 12, size: 896, elements: !2196)
!2196 = !{!2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2208}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2195, file: !2187, line: 13, baseType: !204, size: 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2195, file: !2187, line: 14, baseType: !204, size: 32, offset: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2195, file: !2187, line: 15, baseType: !204, size: 32, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2195, file: !2187, line: 16, baseType: !204, size: 32, offset: 96)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2195, file: !2187, line: 17, baseType: !204, size: 32, offset: 128)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2195, file: !2187, line: 18, baseType: !204, size: 32, offset: 160)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2195, file: !2187, line: 19, baseType: !204, size: 32, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2195, file: !2187, line: 22, baseType: !2205, size: 640, offset: 224)
!2205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 640, elements: !2206)
!2206 = !{!2207}
!2207 = !DISubrange(count: 20)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2195, file: !2187, line: 25, baseType: !204, size: 32, offset: 864)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2192, file: !2187, line: 306, baseType: !2210, size: 4096, align: 128)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2187, line: 34, size: 4096, align: 128, elements: !2211)
!2211 = !{!2212, !2213, !2214, !2215, !2216, !2231, !2232, !2233, !2237, !2239, !2243}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2210, file: !2187, line: 35, baseType: !187, size: 16)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2210, file: !2187, line: 36, baseType: !187, size: 16, offset: 16)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2210, file: !2187, line: 37, baseType: !187, size: 16, offset: 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2210, file: !2187, line: 38, baseType: !187, size: 16, offset: 48)
!2216 = !DIDerivedType(tag: DW_TAG_member, scope: !2210, file: !2187, line: 39, baseType: !2217, size: 128, offset: 64)
!2217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2210, file: !2187, line: 39, size: 128, elements: !2218)
!2218 = !{!2219, !2224}
!2219 = !DIDerivedType(tag: DW_TAG_member, scope: !2217, file: !2187, line: 40, baseType: !2220, size: 128)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2217, file: !2187, line: 40, size: 128, elements: !2221)
!2221 = !{!2222, !2223}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2220, file: !2187, line: 41, baseType: !431, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2220, file: !2187, line: 42, baseType: !431, size: 64, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, scope: !2217, file: !2187, line: 44, baseType: !2225, size: 128)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2217, file: !2187, line: 44, size: 128, elements: !2226)
!2226 = !{!2227, !2228, !2229, !2230}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2225, file: !2187, line: 45, baseType: !204, size: 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2225, file: !2187, line: 46, baseType: !204, size: 32, offset: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2225, file: !2187, line: 47, baseType: !204, size: 32, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2225, file: !2187, line: 48, baseType: !204, size: 32, offset: 96)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2210, file: !2187, line: 51, baseType: !204, size: 32, offset: 192)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2210, file: !2187, line: 52, baseType: !204, size: 32, offset: 224)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2210, file: !2187, line: 55, baseType: !2234, size: 1024, offset: 256)
!2234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 1024, elements: !2235)
!2235 = !{!2236}
!2236 = !DISubrange(count: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2210, file: !2187, line: 58, baseType: !2238, size: 2048, offset: 1280)
!2238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 2048, elements: !294)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2210, file: !2187, line: 60, baseType: !2240, size: 384, offset: 3328)
!2240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 384, elements: !2241)
!2241 = !{!2242}
!2242 = !DISubrange(count: 12)
!2243 = !DIDerivedType(tag: DW_TAG_member, scope: !2210, file: !2187, line: 62, baseType: !2244, size: 384, offset: 3712)
!2244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2210, file: !2187, line: 62, size: 384, elements: !2245)
!2245 = !{!2246, !2247}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2244, file: !2187, line: 63, baseType: !2240, size: 384)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2244, file: !2187, line: 64, baseType: !2240, size: 384)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2192, file: !2187, line: 307, baseType: !2249, size: 1088)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2187, line: 79, size: 1088, elements: !2250)
!2250 = !{!2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2297}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2249, file: !2187, line: 80, baseType: !204, size: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2249, file: !2187, line: 81, baseType: !204, size: 32, offset: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2249, file: !2187, line: 82, baseType: !204, size: 32, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2249, file: !2187, line: 83, baseType: !204, size: 32, offset: 96)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2249, file: !2187, line: 84, baseType: !204, size: 32, offset: 128)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2249, file: !2187, line: 85, baseType: !204, size: 32, offset: 160)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2249, file: !2187, line: 86, baseType: !204, size: 32, offset: 192)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2249, file: !2187, line: 88, baseType: !2205, size: 640, offset: 224)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2249, file: !2187, line: 89, baseType: !1360, size: 8, offset: 864)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2249, file: !2187, line: 90, baseType: !1360, size: 8, offset: 872)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2249, file: !2187, line: 91, baseType: !1360, size: 8, offset: 880)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2249, file: !2187, line: 92, baseType: !1360, size: 8, offset: 888)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2249, file: !2187, line: 93, baseType: !1360, size: 8, offset: 896)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2249, file: !2187, line: 94, baseType: !1360, size: 8, offset: 904)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2249, file: !2187, line: 95, baseType: !2266, size: 64, offset: 960)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2268, line: 11, size: 128, elements: !2269)
!2268 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2269 = !{!2270, !2271}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2267, file: !2268, line: 12, baseType: !324, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2267, file: !2268, line: 13, baseType: !2272, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2274, line: 56, size: 1344, elements: !2275)
!2274 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2275 = !{!2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2273, file: !2274, line: 61, baseType: !338, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2273, file: !2274, line: 62, baseType: !338, size: 64, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2273, file: !2274, line: 63, baseType: !338, size: 64, offset: 128)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2273, file: !2274, line: 64, baseType: !338, size: 64, offset: 192)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2273, file: !2274, line: 65, baseType: !338, size: 64, offset: 256)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2273, file: !2274, line: 66, baseType: !338, size: 64, offset: 320)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2273, file: !2274, line: 68, baseType: !338, size: 64, offset: 384)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2273, file: !2274, line: 69, baseType: !338, size: 64, offset: 448)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2273, file: !2274, line: 70, baseType: !338, size: 64, offset: 512)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2273, file: !2274, line: 71, baseType: !338, size: 64, offset: 576)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2273, file: !2274, line: 72, baseType: !338, size: 64, offset: 640)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2273, file: !2274, line: 73, baseType: !338, size: 64, offset: 704)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2273, file: !2274, line: 74, baseType: !338, size: 64, offset: 768)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2273, file: !2274, line: 75, baseType: !338, size: 64, offset: 832)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2273, file: !2274, line: 76, baseType: !338, size: 64, offset: 896)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2273, file: !2274, line: 81, baseType: !338, size: 64, offset: 960)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2273, file: !2274, line: 83, baseType: !338, size: 64, offset: 1024)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2273, file: !2274, line: 84, baseType: !338, size: 64, offset: 1088)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2273, file: !2274, line: 85, baseType: !338, size: 64, offset: 1152)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2273, file: !2274, line: 86, baseType: !338, size: 64, offset: 1216)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2273, file: !2274, line: 87, baseType: !338, size: 64, offset: 1280)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2249, file: !2187, line: 96, baseType: !204, size: 32, offset: 1024)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2192, file: !2187, line: 308, baseType: !2299, size: 4608, align: 512)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2187, line: 289, size: 4608, align: 512, elements: !2300)
!2300 = !{!2301, !2302, !2309}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2299, file: !2187, line: 290, baseType: !2210, size: 4096, align: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2299, file: !2187, line: 291, baseType: !2303, size: 512, offset: 4096)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2187, line: 268, size: 512, elements: !2304)
!2304 = !{!2305, !2306, !2307}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2303, file: !2187, line: 269, baseType: !431, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2303, file: !2187, line: 270, baseType: !431, size: 64, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2303, file: !2187, line: 271, baseType: !2308, size: 384, offset: 128)
!2308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 384, elements: !1631)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2299, file: !2187, line: 292, baseType: !2310, offset: 4608)
!2310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1360, elements: !1729)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2192, file: !2187, line: 309, baseType: !2312, size: 32768)
!2312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1360, size: 32768, elements: !2313)
!2313 = !{!2314}
!2314 = !DISubrange(count: 4096)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1221, file: !733, line: 378, baseType: !2316, size: 64, offset: 64)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1217, file: !733, line: 384, baseType: !1510, size: 192, offset: 192)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !986, file: !733, line: 500, baseType: !248, offset: 6656)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !986, file: !733, line: 501, baseType: !2320, size: 64, offset: 6656)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !733, line: 387, flags: DIFlagFwdDecl)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !986, file: !733, line: 516, baseType: !1719, size: 64, offset: 6720)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !986, file: !733, line: 519, baseType: !366, size: 64, offset: 6784)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !986, file: !733, line: 521, baseType: !2325, size: 64, offset: 6848)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !733, line: 521, flags: DIFlagFwdDecl)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !986, file: !733, line: 545, baseType: !757, size: 32, offset: 6912)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !986, file: !733, line: 548, baseType: !500, size: 8, offset: 6944)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !986, file: !733, line: 550, baseType: !2330, offset: 6952)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2331, line: 142, elements: !262)
!2331 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !986, file: !733, line: 554, baseType: !1962, size: 256, offset: 6976)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !986, file: !733, line: 557, baseType: !204, size: 32, offset: 7232)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !983, file: !733, line: 565, baseType: !2335, offset: 7296)
!2335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, elements: !2336)
!2336 = !{!2337}
!2337 = !DISubrange(count: -1)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !979, file: !733, line: 151, baseType: !757, size: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !972, file: !733, line: 156, baseType: !248, offset: 256)
!2340 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !733, line: 159, baseType: !2341, size: 128)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !737, file: !733, line: 159, size: 128, elements: !2342)
!2342 = !{!2343, !2407}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2341, file: !733, line: 161, baseType: !2344, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !38, line: 110, size: 1152, elements: !2346)
!2346 = !{!2347, !2357, !2378, !2379, !2380, !2381, !2382, !2394, !2395, !2396}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2345, file: !38, line: 111, baseType: !2348, size: 384)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !38, line: 19, size: 384, elements: !2349)
!2349 = !{!2350, !2352, !2353, !2354, !2355, !2356}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2348, file: !38, line: 20, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2348, file: !38, line: 21, baseType: !2351, size: 64, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2348, file: !38, line: 22, baseType: !2351, size: 64, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2348, file: !38, line: 23, baseType: !338, size: 64, offset: 192)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2348, file: !38, line: 24, baseType: !338, size: 64, offset: 256)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2348, file: !38, line: 25, baseType: !338, size: 64, offset: 320)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2345, file: !38, line: 112, baseType: !2358, size: 64, offset: 384)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2360, line: 105, size: 128, elements: !2361)
!2360 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2361 = !{!2362, !2363}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2359, file: !2360, line: 110, baseType: !338, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2359, file: !2360, line: 118, baseType: !2364, size: 64, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2360, line: 95, size: 448, elements: !2366)
!2366 = !{!2367, !2368, !2373, !2374, !2375, !2376, !2377}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2365, file: !2360, line: 96, baseType: !781, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2365, file: !2360, line: 97, baseType: !2369, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2360, line: 60, baseType: !2371)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{null, !2358}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2365, file: !2360, line: 98, baseType: !2369, size: 64, offset: 128)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2365, file: !2360, line: 99, baseType: !500, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2365, file: !2360, line: 100, baseType: !500, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2365, file: !2360, line: 101, baseType: !379, size: 128, align: 64, offset: 256)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2365, file: !2360, line: 102, baseType: !2358, size: 64, offset: 384)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2345, file: !38, line: 113, baseType: !2359, size: 128, offset: 448)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2345, file: !38, line: 114, baseType: !1510, size: 192, offset: 576)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2345, file: !38, line: 115, baseType: !37, size: 32, offset: 768)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2345, file: !38, line: 116, baseType: !7, size: 32, offset: 800)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2345, file: !38, line: 117, baseType: !2383, size: 64, offset: 832)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2385)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !38, line: 67, size: 256, elements: !2386)
!2386 = !{!2387, !2388, !2392, !2393}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2385, file: !38, line: 73, baseType: !850, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2385, file: !38, line: 78, baseType: !2389, size: 64, offset: 64)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{null, !2344}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2385, file: !38, line: 83, baseType: !2389, size: 64, offset: 128)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2385, file: !38, line: 89, baseType: !1035, size: 64, offset: 192)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2345, file: !38, line: 118, baseType: !192, size: 64, offset: 896)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2345, file: !38, line: 119, baseType: !197, size: 32, offset: 960)
!2396 = !DIDerivedType(tag: DW_TAG_member, scope: !2345, file: !38, line: 120, baseType: !2397, size: 128, offset: 1024)
!2397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2345, file: !38, line: 120, size: 128, elements: !2398)
!2398 = !{!2399, !2405}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2397, file: !38, line: 121, baseType: !2400, size: 128)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2401, line: 6, size: 128, elements: !2402)
!2401 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2402 = !{!2403, !2404}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2400, file: !2401, line: 7, baseType: !431, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2400, file: !2401, line: 8, baseType: !431, size: 64, offset: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2397, file: !38, line: 122, baseType: !2406)
!2406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2400, elements: !1729)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2341, file: !733, line: 162, baseType: !192, size: 64, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !737, file: !733, line: 176, baseType: !379, size: 128, align: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, scope: !732, file: !733, line: 179, baseType: !2410, size: 32, offset: 384)
!2410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !732, file: !733, line: 179, size: 32, elements: !2411)
!2411 = !{!2412, !2413, !2414, !2415}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2410, file: !733, line: 184, baseType: !757, size: 32)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2410, file: !733, line: 192, baseType: !7, size: 32)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2410, file: !733, line: 194, baseType: !7, size: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2410, file: !733, line: 195, baseType: !197, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !732, file: !733, line: 199, baseType: !757, size: 32, offset: 416)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !667, file: !51, line: 1964, baseType: !2418, size: 64, offset: 1344)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!324, !609, !2421}
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2423, line: 12, size: 256, elements: !2424)
!2423 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2424 = !{!2425, !2426, !2427, !2428, !2429}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2422, file: !2423, line: 13, baseType: !185, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2422, file: !2423, line: 16, baseType: !197, size: 32, offset: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2422, file: !2423, line: 23, baseType: !338, size: 64, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2422, file: !2423, line: 30, baseType: !338, size: 64, offset: 128)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2422, file: !2423, line: 33, baseType: !2430, size: 64, offset: 192)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !733, line: 27, flags: DIFlagFwdDecl)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !667, file: !51, line: 1966, baseType: !2418, size: 64, offset: 1408)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !610, file: !51, line: 1424, baseType: !2434, size: 64, offset: 448)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2436)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !45, line: 322, size: 704, elements: !2437)
!2437 = !{!2438, !2484, !2488, !2492, !2493, !2494, !2495, !2496, !2501, !2506, !2510}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2436, file: !45, line: 323, baseType: !2439, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!197, !2442}
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !45, line: 294, size: 1600, elements: !2444)
!2444 = !{!2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2469, !2470, !2471}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2443, file: !45, line: 295, baseType: !649, size: 128)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2443, file: !45, line: 296, baseType: !235, size: 128, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2443, file: !45, line: 297, baseType: !235, size: 128, offset: 256)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2443, file: !45, line: 298, baseType: !235, size: 128, offset: 384)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2443, file: !45, line: 299, baseType: !1181, size: 192, offset: 512)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2443, file: !45, line: 300, baseType: !248, offset: 704)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2443, file: !45, line: 301, baseType: !757, size: 32, offset: 704)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2443, file: !45, line: 302, baseType: !609, size: 64, offset: 768)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2443, file: !45, line: 303, baseType: !2454, size: 64, offset: 832)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !45, line: 68, size: 64, elements: !2455)
!2455 = !{!2456, !2468}
!2456 = !DIDerivedType(tag: DW_TAG_member, scope: !2454, file: !45, line: 69, baseType: !2457, size: 32)
!2457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2454, file: !45, line: 69, size: 32, elements: !2458)
!2458 = !{!2459, !2460, !2461}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2457, file: !45, line: 70, baseType: !445, size: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2457, file: !45, line: 71, baseType: !453, size: 32)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2457, file: !45, line: 72, baseType: !2462, size: 32)
!2462 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2463, line: 24, baseType: !2464)
!2463 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2463, line: 22, size: 32, elements: !2465)
!2465 = !{!2466}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2464, file: !2463, line: 23, baseType: !2467, size: 32)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2463, line: 20, baseType: !451)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2454, file: !45, line: 74, baseType: !44, size: 32, offset: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2443, file: !45, line: 304, baseType: !541, size: 64, offset: 896)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2443, file: !45, line: 305, baseType: !338, size: 64, offset: 960)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2443, file: !45, line: 306, baseType: !2472, size: 576, offset: 1024)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !45, line: 205, size: 576, elements: !2473)
!2473 = !{!2474, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2472, file: !45, line: 206, baseType: !2475, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !45, line: 66, baseType: !543)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2472, file: !45, line: 207, baseType: !2475, size: 64, offset: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2472, file: !45, line: 208, baseType: !2475, size: 64, offset: 128)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2472, file: !45, line: 209, baseType: !2475, size: 64, offset: 192)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2472, file: !45, line: 210, baseType: !2475, size: 64, offset: 256)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2472, file: !45, line: 211, baseType: !2475, size: 64, offset: 320)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2472, file: !45, line: 212, baseType: !2475, size: 64, offset: 384)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2472, file: !45, line: 213, baseType: !549, size: 64, offset: 448)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2472, file: !45, line: 214, baseType: !549, size: 64, offset: 512)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2436, file: !45, line: 324, baseType: !2485, size: 64, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!2442, !609, !197}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2436, file: !45, line: 325, baseType: !2489, size: 64, offset: 128)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{null, !2442}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2436, file: !45, line: 326, baseType: !2439, size: 64, offset: 192)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2436, file: !45, line: 327, baseType: !2439, size: 64, offset: 256)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2436, file: !45, line: 328, baseType: !2439, size: 64, offset: 320)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2436, file: !45, line: 329, baseType: !695, size: 64, offset: 384)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2436, file: !45, line: 332, baseType: !2497, size: 64, offset: 448)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!2500, !439}
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2436, file: !45, line: 333, baseType: !2502, size: 64, offset: 512)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!197, !439, !2505}
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2436, file: !45, line: 335, baseType: !2507, size: 64, offset: 576)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!197, !439, !2500}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2436, file: !45, line: 337, baseType: !2511, size: 64, offset: 640)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!197, !609, !2514}
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !610, file: !51, line: 1425, baseType: !2516, size: 64, offset: 512)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2518)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !45, line: 428, size: 704, elements: !2519)
!2519 = !{!2520, !2524, !2525, !2529, !2530, !2531, !2546, !2569, !2573, !2574, !2597}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2518, file: !45, line: 429, baseType: !2521, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!197, !609, !197, !197, !559}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2518, file: !45, line: 430, baseType: !695, size: 64, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2518, file: !45, line: 431, baseType: !2526, size: 64, offset: 128)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!197, !609, !7}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2518, file: !45, line: 432, baseType: !2526, size: 64, offset: 192)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2518, file: !45, line: 433, baseType: !695, size: 64, offset: 256)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2518, file: !45, line: 434, baseType: !2532, size: 64, offset: 320)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!197, !609, !197, !2535}
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !45, line: 415, size: 256, elements: !2537)
!2537 = !{!2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2536, file: !45, line: 416, baseType: !197, size: 32)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2536, file: !45, line: 417, baseType: !7, size: 32, offset: 32)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2536, file: !45, line: 418, baseType: !7, size: 32, offset: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2536, file: !45, line: 420, baseType: !7, size: 32, offset: 96)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2536, file: !45, line: 421, baseType: !7, size: 32, offset: 128)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2536, file: !45, line: 422, baseType: !7, size: 32, offset: 160)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2536, file: !45, line: 423, baseType: !7, size: 32, offset: 192)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2536, file: !45, line: 424, baseType: !7, size: 32, offset: 224)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2518, file: !45, line: 435, baseType: !2547, size: 64, offset: 384)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!197, !609, !2454, !2550}
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !45, line: 343, size: 960, elements: !2552)
!2552 = !{!2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2551, file: !45, line: 344, baseType: !197, size: 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2551, file: !45, line: 345, baseType: !431, size: 64, offset: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2551, file: !45, line: 346, baseType: !431, size: 64, offset: 128)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2551, file: !45, line: 347, baseType: !431, size: 64, offset: 192)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2551, file: !45, line: 348, baseType: !431, size: 64, offset: 256)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2551, file: !45, line: 349, baseType: !431, size: 64, offset: 320)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2551, file: !45, line: 350, baseType: !431, size: 64, offset: 384)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2551, file: !45, line: 351, baseType: !787, size: 64, offset: 448)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2551, file: !45, line: 353, baseType: !787, size: 64, offset: 512)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2551, file: !45, line: 354, baseType: !197, size: 32, offset: 576)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2551, file: !45, line: 355, baseType: !197, size: 32, offset: 608)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2551, file: !45, line: 356, baseType: !431, size: 64, offset: 640)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2551, file: !45, line: 357, baseType: !431, size: 64, offset: 704)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2551, file: !45, line: 358, baseType: !431, size: 64, offset: 768)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2551, file: !45, line: 359, baseType: !787, size: 64, offset: 832)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2551, file: !45, line: 360, baseType: !197, size: 32, offset: 896)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2518, file: !45, line: 436, baseType: !2570, size: 64, offset: 448)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!197, !609, !2514, !2550}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2518, file: !45, line: 438, baseType: !2547, size: 64, offset: 512)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2518, file: !45, line: 439, baseType: !2575, size: 64, offset: 576)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!197, !609, !2578}
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !45, line: 409, size: 1408, elements: !2580)
!2580 = !{!2581, !2582}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2579, file: !45, line: 410, baseType: !7, size: 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2579, file: !45, line: 411, baseType: !2583, size: 1344, offset: 64)
!2583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2584, size: 1344, elements: !290)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !45, line: 395, size: 448, elements: !2585)
!2585 = !{!2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2596}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2584, file: !45, line: 396, baseType: !7, size: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2584, file: !45, line: 397, baseType: !7, size: 32, offset: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2584, file: !45, line: 399, baseType: !7, size: 32, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2584, file: !45, line: 400, baseType: !7, size: 32, offset: 96)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2584, file: !45, line: 401, baseType: !7, size: 32, offset: 128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2584, file: !45, line: 402, baseType: !7, size: 32, offset: 160)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2584, file: !45, line: 403, baseType: !7, size: 32, offset: 192)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2584, file: !45, line: 404, baseType: !433, size: 64, offset: 256)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2584, file: !45, line: 405, baseType: !2595, size: 64, offset: 320)
!2595 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !186, line: 126, baseType: !431)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2584, file: !45, line: 406, baseType: !2595, size: 64, offset: 384)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2518, file: !45, line: 440, baseType: !2526, size: 64, offset: 640)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !610, file: !51, line: 1426, baseType: !2599, size: 64, offset: 576)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2601)
!2601 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !51, line: 49, flags: DIFlagFwdDecl)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !610, file: !51, line: 1427, baseType: !338, size: 64, offset: 640)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !610, file: !51, line: 1428, baseType: !338, size: 64, offset: 704)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !610, file: !51, line: 1429, baseType: !338, size: 64, offset: 768)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !610, file: !51, line: 1430, baseType: !396, size: 64, offset: 832)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !610, file: !51, line: 1431, baseType: !777, size: 256, offset: 896)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !610, file: !51, line: 1432, baseType: !197, size: 32, offset: 1152)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !610, file: !51, line: 1433, baseType: !757, size: 32, offset: 1184)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !610, file: !51, line: 1437, baseType: !2610, size: 64, offset: 1216)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2613)
!2613 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !51, line: 1437, flags: DIFlagFwdDecl)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !610, file: !51, line: 1449, baseType: !2615, size: 64, offset: 1280)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !412, line: 34, size: 64, elements: !2616)
!2616 = !{!2617}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2615, file: !412, line: 35, baseType: !415, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !610, file: !51, line: 1450, baseType: !235, size: 128, offset: 1344)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !610, file: !51, line: 1451, baseType: !2620, size: 64, offset: 1472)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !51, line: 699, flags: DIFlagFwdDecl)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !610, file: !51, line: 1452, baseType: !1928, size: 64, offset: 1536)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !610, file: !51, line: 1453, baseType: !2624, size: 64, offset: 1600)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !51, line: 1453, flags: DIFlagFwdDecl)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !610, file: !51, line: 1454, baseType: !649, size: 128, offset: 1664)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !610, file: !51, line: 1455, baseType: !7, size: 32, offset: 1792)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !610, file: !51, line: 1456, baseType: !2629, size: 2432, offset: 1856)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !45, line: 518, size: 2432, elements: !2630)
!2630 = !{!2631, !2632, !2633, !2635, !2667}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2629, file: !45, line: 519, baseType: !7, size: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2629, file: !45, line: 520, baseType: !777, size: 256, offset: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2629, file: !45, line: 521, baseType: !2634, size: 192, offset: 320)
!2634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 192, elements: !290)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2629, file: !45, line: 522, baseType: !2636, size: 1728, offset: 512)
!2636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2637, size: 1728, elements: !290)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !45, line: 222, size: 576, elements: !2638)
!2638 = !{!2639, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2637, file: !45, line: 223, baseType: !2640, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !45, line: 443, size: 256, elements: !2642)
!2642 = !{!2643, !2644, !2657, !2658}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2641, file: !45, line: 444, baseType: !197, size: 32)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2641, file: !45, line: 445, baseType: !2645, size: 64, offset: 64)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2647)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !45, line: 310, size: 512, elements: !2648)
!2648 = !{!2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2647, file: !45, line: 311, baseType: !695, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2647, file: !45, line: 312, baseType: !695, size: 64, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2647, file: !45, line: 313, baseType: !695, size: 64, offset: 128)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2647, file: !45, line: 314, baseType: !695, size: 64, offset: 192)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2647, file: !45, line: 315, baseType: !2439, size: 64, offset: 256)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2647, file: !45, line: 316, baseType: !2439, size: 64, offset: 320)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2647, file: !45, line: 317, baseType: !2439, size: 64, offset: 384)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2647, file: !45, line: 318, baseType: !2511, size: 64, offset: 448)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2641, file: !45, line: 446, baseType: !182, size: 64, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2641, file: !45, line: 447, baseType: !2640, size: 64, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2637, file: !45, line: 224, baseType: !197, size: 32, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2637, file: !45, line: 226, baseType: !235, size: 128, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2637, file: !45, line: 227, baseType: !338, size: 64, offset: 256)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2637, file: !45, line: 228, baseType: !7, size: 32, offset: 320)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2637, file: !45, line: 229, baseType: !7, size: 32, offset: 352)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2637, file: !45, line: 230, baseType: !2475, size: 64, offset: 384)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2637, file: !45, line: 231, baseType: !2475, size: 64, offset: 448)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2637, file: !45, line: 232, baseType: !192, size: 64, offset: 512)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2629, file: !45, line: 523, baseType: !2668, size: 192, offset: 2240)
!2668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2645, size: 192, elements: !290)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !610, file: !51, line: 1458, baseType: !2670, size: 2112, offset: 4288)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !51, line: 1410, size: 2112, elements: !2671)
!2671 = !{!2672, !2673, !2674}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2670, file: !51, line: 1411, baseType: !197, size: 32)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2670, file: !51, line: 1412, baseType: !1489, size: 128, offset: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2670, file: !51, line: 1413, baseType: !2675, size: 1920, offset: 192)
!2675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2676, size: 1920, elements: !290)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2677, line: 12, size: 640, elements: !2678)
!2677 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2678 = !{!2679, !2687, !2689, !2694, !2695}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2676, file: !2677, line: 13, baseType: !2680, size: 320)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2681, line: 17, size: 320, elements: !2682)
!2681 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2682 = !{!2683, !2684, !2685, !2686}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2680, file: !2681, line: 18, baseType: !197, size: 32)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2680, file: !2681, line: 19, baseType: !197, size: 32, offset: 32)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2680, file: !2681, line: 20, baseType: !1489, size: 128, offset: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2680, file: !2681, line: 22, baseType: !379, size: 128, align: 64, offset: 192)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2676, file: !2677, line: 14, baseType: !2688, size: 64, offset: 320)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2676, file: !2677, line: 15, baseType: !2690, size: 64, offset: 384)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2691, line: 16, size: 64, elements: !2692)
!2691 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2692 = !{!2693}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2690, file: !2691, line: 17, baseType: !1224, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2676, file: !2677, line: 16, baseType: !1489, size: 128, offset: 448)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2676, file: !2677, line: 17, baseType: !757, size: 32, offset: 576)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !610, file: !51, line: 1465, baseType: !192, size: 64, offset: 6400)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !610, file: !51, line: 1468, baseType: !204, size: 32, offset: 6464)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !610, file: !51, line: 1470, baseType: !549, size: 64, offset: 6528)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !610, file: !51, line: 1471, baseType: !549, size: 64, offset: 6592)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !610, file: !51, line: 1473, baseType: !205, size: 32, offset: 6656)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !610, file: !51, line: 1474, baseType: !2702, size: 64, offset: 6720)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !51, line: 603, flags: DIFlagFwdDecl)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !610, file: !51, line: 1477, baseType: !2705, size: 256, offset: 6784)
!2705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 256, elements: !2235)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !610, file: !51, line: 1478, baseType: !2707, size: 128, offset: 7040)
!2707 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2708, line: 18, baseType: !2709)
!2708 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2708, line: 16, size: 128, elements: !2710)
!2710 = !{!2711}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2709, file: !2708, line: 17, baseType: !2712, size: 128)
!2712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1361, size: 128, elements: !201)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !610, file: !51, line: 1480, baseType: !7, size: 32, offset: 7168)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !610, file: !51, line: 1481, baseType: !2715, size: 32, offset: 7200)
!2715 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !186, line: 150, baseType: !7)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !610, file: !51, line: 1487, baseType: !1181, size: 192, offset: 7232)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !610, file: !51, line: 1493, baseType: !232, size: 64, offset: 7424)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !610, file: !51, line: 1495, baseType: !2719, size: 64, offset: 7488)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2721)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !394, line: 135, size: 1024, align: 512, elements: !2722)
!2722 = !{!2723, !2727, !2728, !2735, !2741, !2745, !2749, !2753, !2754, !2758, !2762, !2767, !2771}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2721, file: !394, line: 136, baseType: !2724, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!197, !396, !7}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2721, file: !394, line: 137, baseType: !2724, size: 64, offset: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2721, file: !394, line: 138, baseType: !2729, size: 64, offset: 128)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!197, !2732, !2734}
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2721, file: !394, line: 139, baseType: !2736, size: 64, offset: 192)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!197, !2732, !7, !232, !2739}
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2721, file: !394, line: 141, baseType: !2742, size: 64, offset: 256)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!197, !2732}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2721, file: !394, line: 142, baseType: !2746, size: 64, offset: 320)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!197, !396}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2721, file: !394, line: 143, baseType: !2750, size: 64, offset: 384)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{null, !396}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2721, file: !394, line: 144, baseType: !2750, size: 64, offset: 448)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2721, file: !394, line: 145, baseType: !2755, size: 64, offset: 512)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{null, !396, !439}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2721, file: !394, line: 146, baseType: !2759, size: 64, offset: 576)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!289, !396, !289, !197}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2721, file: !394, line: 147, baseType: !2763, size: 64, offset: 640)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!392, !2766}
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2721, file: !394, line: 148, baseType: !2768, size: 64, offset: 704)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!197, !559, !500}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2721, file: !394, line: 149, baseType: !2772, size: 64, offset: 768)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!396, !396, !2775}
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !440)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !610, file: !51, line: 1500, baseType: !197, size: 32, offset: 7552)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !610, file: !51, line: 1502, baseType: !2779, size: 448, offset: 7616)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2423, line: 60, size: 448, elements: !2780)
!2780 = !{!2781, !2786, !2787, !2788, !2789, !2790, !2791}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2779, file: !2423, line: 61, baseType: !2782, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!338, !2785, !2421}
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2779, file: !2423, line: 63, baseType: !2782, size: 64, offset: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2779, file: !2423, line: 66, baseType: !324, size: 64, offset: 128)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2779, file: !2423, line: 67, baseType: !197, size: 32, offset: 192)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2779, file: !2423, line: 68, baseType: !7, size: 32, offset: 224)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2779, file: !2423, line: 71, baseType: !235, size: 128, offset: 256)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2779, file: !2423, line: 77, baseType: !2792, size: 64, offset: 384)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !610, file: !51, line: 1505, baseType: !781, size: 64, offset: 8064)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !610, file: !51, line: 1508, baseType: !781, size: 64, offset: 8128)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !610, file: !51, line: 1511, baseType: !197, size: 32, offset: 8192)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !610, file: !51, line: 1514, baseType: !917, size: 32, offset: 8224)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !610, file: !51, line: 1517, baseType: !2798, size: 64, offset: 8256)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1963, line: 18, flags: DIFlagFwdDecl)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !610, file: !51, line: 1518, baseType: !645, size: 64, offset: 8320)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !610, file: !51, line: 1525, baseType: !1719, size: 64, offset: 8384)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !610, file: !51, line: 1532, baseType: !2803, size: 64, offset: 8448)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2804, line: 52, size: 64, elements: !2805)
!2804 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2805 = !{!2806}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2803, file: !2804, line: 53, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2804, line: 40, size: 256, elements: !2809)
!2809 = !{!2810, !2811, !2816}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2808, file: !2804, line: 42, baseType: !248)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2808, file: !2804, line: 44, baseType: !2812, size: 192)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2804, line: 28, size: 192, elements: !2813)
!2813 = !{!2814, !2815}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2812, file: !2804, line: 29, baseType: !235, size: 128)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2812, file: !2804, line: 31, baseType: !324, size: 64, offset: 128)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2808, file: !2804, line: 49, baseType: !324, size: 64, offset: 192)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !610, file: !51, line: 1533, baseType: !2803, size: 64, offset: 8512)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !610, file: !51, line: 1534, baseType: !379, size: 128, align: 64, offset: 8576)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !610, file: !51, line: 1535, baseType: !1962, size: 256, offset: 8704)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !610, file: !51, line: 1537, baseType: !1181, size: 192, offset: 8960)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !610, file: !51, line: 1542, baseType: !197, size: 32, offset: 9152)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !610, file: !51, line: 1545, baseType: !248, offset: 9184)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !610, file: !51, line: 1546, baseType: !235, size: 128, offset: 9216)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !610, file: !51, line: 1548, baseType: !248, offset: 9344)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !610, file: !51, line: 1549, baseType: !235, size: 128, offset: 9344)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !440, file: !51, line: 624, baseType: !744, size: 64, offset: 256)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !440, file: !51, line: 631, baseType: !338, size: 64, offset: 320)
!2828 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !51, line: 639, baseType: !2829, size: 32, offset: 384)
!2829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !51, line: 639, size: 32, elements: !2830)
!2830 = !{!2831, !2833}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2829, file: !51, line: 640, baseType: !2832, size: 32)
!2832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2829, file: !51, line: 641, baseType: !7, size: 32)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !440, file: !51, line: 643, baseType: !523, size: 32, offset: 416)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !440, file: !51, line: 644, baseType: !541, size: 64, offset: 448)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !440, file: !51, line: 645, baseType: !545, size: 128, offset: 512)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !440, file: !51, line: 646, baseType: !545, size: 128, offset: 640)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !440, file: !51, line: 647, baseType: !545, size: 128, offset: 768)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !440, file: !51, line: 648, baseType: !248, offset: 896)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !440, file: !51, line: 649, baseType: !191, size: 16, offset: 896)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !440, file: !51, line: 650, baseType: !1360, size: 8, offset: 912)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !440, file: !51, line: 651, baseType: !1360, size: 8, offset: 920)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !440, file: !51, line: 652, baseType: !2595, size: 64, offset: 960)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !440, file: !51, line: 659, baseType: !338, size: 64, offset: 1024)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !440, file: !51, line: 660, baseType: !777, size: 256, offset: 1088)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !440, file: !51, line: 662, baseType: !338, size: 64, offset: 1344)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !440, file: !51, line: 663, baseType: !338, size: 64, offset: 1408)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !440, file: !51, line: 665, baseType: !649, size: 128, offset: 1472)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !440, file: !51, line: 666, baseType: !235, size: 128, offset: 1600)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !440, file: !51, line: 675, baseType: !235, size: 128, offset: 1728)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !440, file: !51, line: 676, baseType: !235, size: 128, offset: 1856)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !440, file: !51, line: 677, baseType: !235, size: 128, offset: 1984)
!2853 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !51, line: 678, baseType: !2854, size: 128, offset: 2112)
!2854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !51, line: 678, size: 128, elements: !2855)
!2855 = !{!2856, !2857}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2854, file: !51, line: 679, baseType: !645, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2854, file: !51, line: 680, baseType: !379, size: 128, align: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !440, file: !51, line: 682, baseType: !783, size: 64, offset: 2240)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !440, file: !51, line: 683, baseType: !783, size: 64, offset: 2304)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !440, file: !51, line: 684, baseType: !757, size: 32, offset: 2368)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !440, file: !51, line: 685, baseType: !757, size: 32, offset: 2400)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !440, file: !51, line: 686, baseType: !757, size: 32, offset: 2432)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !440, file: !51, line: 688, baseType: !757, size: 32, offset: 2464)
!2864 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !51, line: 690, baseType: !2865, size: 64, offset: 2496)
!2865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !51, line: 690, size: 64, elements: !2866)
!2866 = !{!2867, !3090}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2865, file: !51, line: 691, baseType: !2868, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2870)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !51, line: 1822, size: 2048, elements: !2871)
!2871 = !{!2872, !2873, !2877, !2882, !2886, !2887, !2888, !2892, !2905, !2906, !2914, !2918, !2919, !2923, !2924, !2928, !2933, !2934, !2938, !2942, !3050, !3054, !3055, !3059, !3060, !3064, !3068, !3073, !3077, !3081, !3085, !3089}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2870, file: !51, line: 1823, baseType: !182, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2870, file: !51, line: 1824, baseType: !2874, size: 64, offset: 64)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!541, !366, !541, !197}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2870, file: !51, line: 1825, baseType: !2878, size: 64, offset: 128)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!320, !366, !289, !335, !2881}
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2870, file: !51, line: 1826, baseType: !2883, size: 64, offset: 192)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!320, !366, !232, !335, !2881}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2870, file: !51, line: 1827, baseType: !854, size: 64, offset: 256)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2870, file: !51, line: 1828, baseType: !854, size: 64, offset: 320)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2870, file: !51, line: 1829, baseType: !2889, size: 64, offset: 384)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!197, !857, !500}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2870, file: !51, line: 1830, baseType: !2893, size: 64, offset: 448)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!197, !366, !2896}
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !51, line: 1776, size: 128, elements: !2898)
!2898 = !{!2899, !2904}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2897, file: !51, line: 1777, baseType: !2900, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !51, line: 1773, baseType: !2901)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!197, !2896, !232, !197, !541, !431, !7}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2897, file: !51, line: 1778, baseType: !541, size: 64, offset: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2870, file: !51, line: 1831, baseType: !2893, size: 64, offset: 512)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2870, file: !51, line: 1832, baseType: !2907, size: 64, offset: 576)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!2910, !366, !2912}
!2910 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2911, line: 52, baseType: !7)
!2911 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !629, line: 27, flags: DIFlagFwdDecl)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2870, file: !51, line: 1833, baseType: !2915, size: 64, offset: 640)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!324, !366, !7, !338}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2870, file: !51, line: 1834, baseType: !2915, size: 64, offset: 704)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2870, file: !51, line: 1835, baseType: !2920, size: 64, offset: 768)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!197, !366, !989}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2870, file: !51, line: 1836, baseType: !338, size: 64, offset: 832)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2870, file: !51, line: 1837, baseType: !2925, size: 64, offset: 896)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!197, !439, !366}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2870, file: !51, line: 1838, baseType: !2929, size: 64, offset: 960)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!197, !366, !2932}
!2932 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !51, line: 1007, baseType: !192)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2870, file: !51, line: 1839, baseType: !2925, size: 64, offset: 1024)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2870, file: !51, line: 1840, baseType: !2935, size: 64, offset: 1088)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!197, !366, !541, !541, !197}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2870, file: !51, line: 1841, baseType: !2939, size: 64, offset: 1152)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!197, !197, !366, !197}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2870, file: !51, line: 1842, baseType: !2943, size: 64, offset: 1216)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!197, !366, !197, !2946}
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !51, line: 1062, size: 1664, elements: !2948)
!2948 = !{!2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2980, !2981, !2982, !2995, !3026}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2947, file: !51, line: 1063, baseType: !2946, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2947, file: !51, line: 1064, baseType: !235, size: 128, offset: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2947, file: !51, line: 1065, baseType: !649, size: 128, offset: 192)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2947, file: !51, line: 1066, baseType: !235, size: 128, offset: 320)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2947, file: !51, line: 1069, baseType: !235, size: 128, offset: 448)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2947, file: !51, line: 1072, baseType: !2932, size: 64, offset: 576)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2947, file: !51, line: 1073, baseType: !7, size: 32, offset: 640)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2947, file: !51, line: 1074, baseType: !437, size: 8, offset: 672)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2947, file: !51, line: 1075, baseType: !7, size: 32, offset: 704)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2947, file: !51, line: 1076, baseType: !197, size: 32, offset: 736)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2947, file: !51, line: 1077, baseType: !1489, size: 128, offset: 768)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2947, file: !51, line: 1078, baseType: !366, size: 64, offset: 896)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2947, file: !51, line: 1079, baseType: !541, size: 64, offset: 960)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2947, file: !51, line: 1080, baseType: !541, size: 64, offset: 1024)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2947, file: !51, line: 1082, baseType: !2964, size: 64, offset: 1088)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !51, line: 1314, size: 320, elements: !2966)
!2966 = !{!2967, !2975, !2976, !2977, !2978, !2979}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2965, file: !51, line: 1315, baseType: !2968)
!2968 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2969, line: 20, baseType: !2970)
!2969 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2969, line: 11, elements: !2971)
!2971 = !{!2972}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2970, file: !2969, line: 12, baseType: !2973)
!2973 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !260, line: 33, baseType: !2974)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !260, line: 31, elements: !262)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2965, file: !51, line: 1316, baseType: !197, size: 32)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2965, file: !51, line: 1317, baseType: !197, size: 32, offset: 32)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2965, file: !51, line: 1318, baseType: !2964, size: 64, offset: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2965, file: !51, line: 1319, baseType: !366, size: 64, offset: 128)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2965, file: !51, line: 1320, baseType: !379, size: 128, align: 64, offset: 192)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2947, file: !51, line: 1084, baseType: !338, size: 64, offset: 1152)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2947, file: !51, line: 1085, baseType: !338, size: 64, offset: 1216)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2947, file: !51, line: 1087, baseType: !2983, size: 64, offset: 1280)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2985)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !51, line: 1011, size: 128, elements: !2986)
!2986 = !{!2987, !2991}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2985, file: !51, line: 1012, baseType: !2988, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{null, !2946, !2946}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2985, file: !51, line: 1013, baseType: !2992, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{null, !2946}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2947, file: !51, line: 1088, baseType: !2996, size: 64, offset: 1344)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2998)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !51, line: 1016, size: 512, elements: !2999)
!2999 = !{!3000, !3004, !3008, !3009, !3013, !3017, !3021, !3025}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2998, file: !51, line: 1017, baseType: !3001, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!2932, !2932}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2998, file: !51, line: 1018, baseType: !3005, size: 64, offset: 64)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{null, !2932}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2998, file: !51, line: 1019, baseType: !2992, size: 64, offset: 128)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2998, file: !51, line: 1020, baseType: !3010, size: 64, offset: 192)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!197, !2946, !197}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2998, file: !51, line: 1021, baseType: !3014, size: 64, offset: 256)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!500, !2946}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2998, file: !51, line: 1022, baseType: !3018, size: 64, offset: 320)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!197, !2946, !197, !238}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2998, file: !51, line: 1023, baseType: !3022, size: 64, offset: 384)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{null, !2946, !831}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2998, file: !51, line: 1024, baseType: !3014, size: 64, offset: 448)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2947, file: !51, line: 1097, baseType: !3027, size: 256, offset: 1408)
!3027 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2947, file: !51, line: 1089, size: 256, elements: !3028)
!3028 = !{!3029, !3038, !3044}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3027, file: !51, line: 1090, baseType: !3030, size: 256)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3031, line: 10, size: 256, elements: !3032)
!3031 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3032 = !{!3033, !3034, !3037}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3030, file: !3031, line: 11, baseType: !204, size: 32)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3030, file: !3031, line: 12, baseType: !3035, size: 64, offset: 64)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3031, line: 5, flags: DIFlagFwdDecl)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3030, file: !3031, line: 13, baseType: !235, size: 128, offset: 128)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3027, file: !51, line: 1091, baseType: !3039, size: 64)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3031, line: 17, size: 64, elements: !3040)
!3040 = !{!3041}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3039, file: !3031, line: 18, baseType: !3042, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3031, line: 16, flags: DIFlagFwdDecl)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3027, file: !51, line: 1096, baseType: !3045, size: 192)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3027, file: !51, line: 1092, size: 192, elements: !3046)
!3046 = !{!3047, !3048, !3049}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3045, file: !51, line: 1093, baseType: !235, size: 128)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3045, file: !51, line: 1094, baseType: !197, size: 32, offset: 128)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3045, file: !51, line: 1095, baseType: !7, size: 32, offset: 160)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2870, file: !51, line: 1843, baseType: !3051, size: 64, offset: 1280)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!320, !366, !731, !197, !335, !2881, !197}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2870, file: !51, line: 1844, baseType: !1109, size: 64, offset: 1344)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2870, file: !51, line: 1845, baseType: !3056, size: 64, offset: 1408)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!197, !197}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2870, file: !51, line: 1846, baseType: !2943, size: 64, offset: 1472)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2870, file: !51, line: 1847, baseType: !3061, size: 64, offset: 1536)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!320, !2103, !366, !2881, !335, !7}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2870, file: !51, line: 1848, baseType: !3065, size: 64, offset: 1600)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!320, !366, !2881, !2103, !335, !7}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2870, file: !51, line: 1849, baseType: !3069, size: 64, offset: 1664)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!197, !366, !324, !3072, !831}
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2870, file: !51, line: 1850, baseType: !3074, size: 64, offset: 1728)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!324, !366, !197, !541, !541}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2870, file: !51, line: 1852, baseType: !3078, size: 64, offset: 1792)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{null, !721, !366}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2870, file: !51, line: 1856, baseType: !3082, size: 64, offset: 1856)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!320, !366, !541, !366, !541, !335, !7}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2870, file: !51, line: 1858, baseType: !3086, size: 64, offset: 1920)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!541, !366, !541, !366, !541, !541, !7}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2870, file: !51, line: 1861, baseType: !2935, size: 64, offset: 1984)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2865, file: !51, line: 692, baseType: !674, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !440, file: !51, line: 694, baseType: !3092, size: 64, offset: 2560)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !51, line: 1100, size: 384, elements: !3094)
!3094 = !{!3095, !3096, !3097, !3098}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3093, file: !51, line: 1101, baseType: !248)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3093, file: !51, line: 1102, baseType: !235, size: 128)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3093, file: !51, line: 1103, baseType: !235, size: 128, offset: 128)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3093, file: !51, line: 1104, baseType: !235, size: 128, offset: 256)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !440, file: !51, line: 695, baseType: !745, size: 1216, align: 64, offset: 2624)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !440, file: !51, line: 696, baseType: !235, size: 128, offset: 3840)
!3101 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !51, line: 697, baseType: !3102, size: 64, offset: 3968)
!3102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !51, line: 697, size: 64, elements: !3103)
!3103 = !{!3104, !3105, !3106, !3117, !3118}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3102, file: !51, line: 698, baseType: !2103, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3102, file: !51, line: 699, baseType: !2620, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3102, file: !51, line: 700, baseType: !3107, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3109, line: 14, size: 832, elements: !3110)
!3109 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3110 = !{!3111, !3112, !3113, !3114, !3115, !3116}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3108, file: !3109, line: 15, baseType: !228, size: 512)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3108, file: !3109, line: 16, baseType: !182, size: 64, offset: 512)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3108, file: !3109, line: 17, baseType: !2868, size: 64, offset: 576)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3108, file: !3109, line: 18, baseType: !235, size: 128, offset: 640)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3108, file: !3109, line: 19, baseType: !523, size: 32, offset: 768)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3108, file: !3109, line: 20, baseType: !7, size: 32, offset: 800)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3102, file: !51, line: 701, baseType: !289, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3102, file: !51, line: 702, baseType: !7, size: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !440, file: !51, line: 705, baseType: !205, size: 32, offset: 4032)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !440, file: !51, line: 708, baseType: !205, size: 32, offset: 4064)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !440, file: !51, line: 709, baseType: !2702, size: 64, offset: 4096)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !440, file: !51, line: 720, baseType: !192, size: 64, offset: 4160)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !397, file: !394, line: 98, baseType: !3124, size: 256, offset: 448)
!3124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 256, elements: !2235)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !397, file: !394, line: 101, baseType: !3126, size: 32, offset: 704)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3127, line: 25, size: 32, elements: !3128)
!3127 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3128 = !{!3129}
!3129 = !DIDerivedType(tag: DW_TAG_member, scope: !3126, file: !3127, line: 26, baseType: !3130, size: 32)
!3130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3126, file: !3127, line: 26, size: 32, elements: !3131)
!3131 = !{!3132}
!3132 = !DIDerivedType(tag: DW_TAG_member, scope: !3130, file: !3127, line: 30, baseType: !3133, size: 32)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3130, file: !3127, line: 30, size: 32, elements: !3134)
!3134 = !{!3135, !3136}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3133, file: !3127, line: 31, baseType: !248)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3133, file: !3127, line: 32, baseType: !197, size: 32)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !397, file: !394, line: 102, baseType: !2719, size: 64, offset: 768)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !397, file: !394, line: 103, baseType: !609, size: 64, offset: 832)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !397, file: !394, line: 104, baseType: !338, size: 64, offset: 896)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !397, file: !394, line: 105, baseType: !192, size: 64, offset: 960)
!3141 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !394, line: 107, baseType: !3142, size: 128, offset: 1024)
!3142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !394, line: 107, size: 128, elements: !3143)
!3143 = !{!3144, !3145}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3142, file: !394, line: 108, baseType: !235, size: 128)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3142, file: !394, line: 109, baseType: !3146, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !397, file: !394, line: 111, baseType: !235, size: 128, offset: 1152)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !397, file: !394, line: 112, baseType: !235, size: 128, offset: 1280)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !397, file: !394, line: 120, baseType: !3150, size: 128, offset: 1408)
!3150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !394, line: 116, size: 128, elements: !3151)
!3151 = !{!3152, !3153, !3154}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3150, file: !394, line: 117, baseType: !649, size: 128)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3150, file: !394, line: 118, baseType: !411, size: 128)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3150, file: !394, line: 119, baseType: !379, size: 128, align: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !367, file: !51, line: 922, baseType: !439, size: 64, offset: 256)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !367, file: !51, line: 923, baseType: !2868, size: 64, offset: 320)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !367, file: !51, line: 929, baseType: !248, offset: 384)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !367, file: !51, line: 930, baseType: !50, size: 32, offset: 384)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !367, file: !51, line: 931, baseType: !781, size: 64, offset: 448)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !367, file: !51, line: 932, baseType: !7, size: 32, offset: 512)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !367, file: !51, line: 933, baseType: !2715, size: 32, offset: 544)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !367, file: !51, line: 934, baseType: !1181, size: 192, offset: 576)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !367, file: !51, line: 935, baseType: !541, size: 64, offset: 768)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !367, file: !51, line: 936, baseType: !3165, size: 192, offset: 832)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !51, line: 885, size: 192, elements: !3166)
!3166 = !{!3167, !3168, !3169, !3170, !3171, !3172}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3165, file: !51, line: 886, baseType: !2968)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3165, file: !51, line: 887, baseType: !1479, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3165, file: !51, line: 888, baseType: !59, size: 32, offset: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3165, file: !51, line: 889, baseType: !445, size: 32, offset: 96)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3165, file: !51, line: 889, baseType: !445, size: 32, offset: 128)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3165, file: !51, line: 890, baseType: !197, size: 32, offset: 160)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !367, file: !51, line: 937, baseType: !1555, size: 64, offset: 1024)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !367, file: !51, line: 938, baseType: !3175, size: 256, offset: 1088)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !51, line: 896, size: 256, elements: !3176)
!3176 = !{!3177, !3178, !3179, !3180, !3181, !3182}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3175, file: !51, line: 897, baseType: !338, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3175, file: !51, line: 898, baseType: !7, size: 32, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3175, file: !51, line: 899, baseType: !7, size: 32, offset: 96)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3175, file: !51, line: 902, baseType: !7, size: 32, offset: 128)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3175, file: !51, line: 903, baseType: !7, size: 32, offset: 160)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3175, file: !51, line: 904, baseType: !541, size: 64, offset: 192)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !367, file: !51, line: 940, baseType: !431, size: 64, offset: 1344)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !367, file: !51, line: 945, baseType: !192, size: 64, offset: 1408)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !367, file: !51, line: 949, baseType: !235, size: 128, offset: 1472)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !367, file: !51, line: 950, baseType: !235, size: 128, offset: 1600)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !367, file: !51, line: 952, baseType: !744, size: 64, offset: 1728)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !367, file: !51, line: 953, baseType: !917, size: 32, offset: 1792)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !367, file: !51, line: 954, baseType: !917, size: 32, offset: 1824)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !357, file: !314, line: 174, baseType: !363, size: 64, offset: 320)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !357, file: !314, line: 176, baseType: !3192, size: 64, offset: 384)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!197, !366, !241, !356, !989}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !345, file: !314, line: 90, baseType: !340, size: 64, offset: 192)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !345, file: !314, line: 91, baseType: !3197, size: 64, offset: 256)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !304, file: !229, line: 143, baseType: !3199, size: 64, offset: 256)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!3202, !241}
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3204)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !68, line: 39, size: 384, elements: !3205)
!3205 = !{!3206, !3207, !3211, !3215, !3221, !3225}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3204, file: !68, line: 40, baseType: !67, size: 32)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3204, file: !68, line: 41, baseType: !3208, size: 64, offset: 64)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!500}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3204, file: !68, line: 42, baseType: !3212, size: 64, offset: 128)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!192}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3204, file: !68, line: 43, baseType: !3216, size: 64, offset: 192)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!2132, !3219}
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !68, line: 19, flags: DIFlagFwdDecl)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3204, file: !68, line: 44, baseType: !3222, size: 64, offset: 256)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!2132}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3204, file: !68, line: 45, baseType: !478, size: 64, offset: 320)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !304, file: !229, line: 144, baseType: !3227, size: 64, offset: 320)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!2132, !241}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !304, file: !229, line: 145, baseType: !3231, size: 64, offset: 384)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{null, !241, !3234, !3235}
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !228, file: !229, line: 70, baseType: !3237, size: 64, offset: 384)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !629, line: 123, size: 1024, elements: !3239)
!3239 = !{!3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3368, !3369, !3370, !3371, !3372}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3238, file: !629, line: 124, baseType: !757, size: 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3238, file: !629, line: 125, baseType: !757, size: 32, offset: 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3238, file: !629, line: 135, baseType: !3237, size: 64, offset: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3238, file: !629, line: 136, baseType: !232, size: 64, offset: 128)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3238, file: !629, line: 138, baseType: !770, size: 192, align: 64, offset: 192)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3238, file: !629, line: 140, baseType: !2132, size: 64, offset: 384)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3238, file: !629, line: 141, baseType: !7, size: 32, offset: 448)
!3247 = !DIDerivedType(tag: DW_TAG_member, scope: !3238, file: !629, line: 142, baseType: !3248, size: 256, offset: 512)
!3248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3238, file: !629, line: 142, size: 256, elements: !3249)
!3249 = !{!3250, !3296, !3300}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3248, file: !629, line: 143, baseType: !3251, size: 192)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !629, line: 91, size: 192, elements: !3252)
!3252 = !{!3253, !3254, !3255}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3251, file: !629, line: 92, baseType: !338, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3251, file: !629, line: 94, baseType: !766, size: 64, offset: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3251, file: !629, line: 100, baseType: !3256, size: 64, offset: 128)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !629, line: 180, size: 704, elements: !3258)
!3258 = !{!3259, !3260, !3261, !3268, !3269, !3270, !3294, !3295}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3257, file: !629, line: 182, baseType: !3237, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3257, file: !629, line: 183, baseType: !7, size: 32, offset: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3257, file: !629, line: 186, baseType: !3262, size: 192, offset: 128)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3263, line: 19, size: 192, elements: !3264)
!3263 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3264 = !{!3265, !3266, !3267}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3262, file: !3263, line: 20, baseType: !749, size: 128)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3262, file: !3263, line: 21, baseType: !7, size: 32, offset: 128)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3262, file: !3263, line: 22, baseType: !7, size: 32, offset: 160)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3257, file: !629, line: 187, baseType: !204, size: 32, offset: 320)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3257, file: !629, line: 188, baseType: !204, size: 32, offset: 352)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3257, file: !629, line: 189, baseType: !3271, size: 64, offset: 384)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !629, line: 168, size: 320, elements: !3273)
!3273 = !{!3274, !3278, !3282, !3286, !3290}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3272, file: !629, line: 169, baseType: !3275, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!197, !721, !3256}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3272, file: !629, line: 171, baseType: !3279, size: 64, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!197, !3237, !232, !330}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3272, file: !629, line: 173, baseType: !3283, size: 64, offset: 128)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!197, !3237}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3272, file: !629, line: 174, baseType: !3287, size: 64, offset: 192)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!197, !3237, !3237, !232}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3272, file: !629, line: 176, baseType: !3291, size: 64, offset: 256)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!197, !721, !3237, !3256}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3257, file: !629, line: 192, baseType: !235, size: 128, offset: 448)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3257, file: !629, line: 194, baseType: !1489, size: 128, offset: 576)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3248, file: !629, line: 144, baseType: !3297, size: 64)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !629, line: 103, size: 64, elements: !3298)
!3298 = !{!3299}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3297, file: !629, line: 104, baseType: !3237, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3248, file: !629, line: 145, baseType: !3301, size: 256)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !629, line: 107, size: 256, elements: !3302)
!3302 = !{!3303, !3363, !3366, !3367}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3301, file: !629, line: 108, baseType: !3304, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3306)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !629, line: 217, size: 768, elements: !3307)
!3307 = !{!3308, !3328, !3332, !3336, !3340, !3344, !3348, !3352, !3353, !3354, !3355, !3359}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3306, file: !629, line: 222, baseType: !3309, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!197, !3312}
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !629, line: 197, size: 1088, elements: !3314)
!3314 = !{!3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3313, file: !629, line: 199, baseType: !3237, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3313, file: !629, line: 200, baseType: !366, size: 64, offset: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3313, file: !629, line: 201, baseType: !721, size: 64, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3313, file: !629, line: 202, baseType: !192, size: 64, offset: 192)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3313, file: !629, line: 205, baseType: !1181, size: 192, offset: 256)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3313, file: !629, line: 206, baseType: !1181, size: 192, offset: 448)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3313, file: !629, line: 207, baseType: !197, size: 32, offset: 640)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3313, file: !629, line: 208, baseType: !235, size: 128, offset: 704)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3313, file: !629, line: 209, baseType: !289, size: 64, offset: 832)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3313, file: !629, line: 211, baseType: !335, size: 64, offset: 896)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3313, file: !629, line: 212, baseType: !500, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3313, file: !629, line: 213, baseType: !500, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3313, file: !629, line: 214, baseType: !1017, size: 64, offset: 1024)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3306, file: !629, line: 223, baseType: !3329, size: 64, offset: 64)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{null, !3312}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3306, file: !629, line: 236, baseType: !3333, size: 64, offset: 128)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!197, !721, !192}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3306, file: !629, line: 238, baseType: !3337, size: 64, offset: 192)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!192, !721, !2881}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3306, file: !629, line: 239, baseType: !3341, size: 64, offset: 256)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!192, !721, !192, !2881}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3306, file: !629, line: 240, baseType: !3345, size: 64, offset: 320)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{null, !721, !192}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3306, file: !629, line: 242, baseType: !3349, size: 64, offset: 384)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!320, !3312, !289, !335, !541}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3306, file: !629, line: 252, baseType: !335, size: 64, offset: 448)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3306, file: !629, line: 259, baseType: !500, size: 8, offset: 512)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3306, file: !629, line: 260, baseType: !3349, size: 64, offset: 576)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3306, file: !629, line: 263, baseType: !3356, size: 64, offset: 640)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!2910, !3312, !2912}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3306, file: !629, line: 266, baseType: !3360, size: 64, offset: 704)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!197, !3312, !989}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3301, file: !629, line: 109, baseType: !3364, size: 64, offset: 64)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !629, line: 31, flags: DIFlagFwdDecl)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3301, file: !629, line: 110, baseType: !541, size: 64, offset: 128)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3301, file: !629, line: 111, baseType: !3237, size: 64, offset: 192)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3238, file: !629, line: 148, baseType: !192, size: 64, offset: 768)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3238, file: !629, line: 154, baseType: !431, size: 64, offset: 832)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3238, file: !629, line: 156, baseType: !191, size: 16, offset: 896)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3238, file: !629, line: 157, baseType: !330, size: 16, offset: 912)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3238, file: !629, line: 158, baseType: !3373, size: 64, offset: 960)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !629, line: 32, flags: DIFlagFwdDecl)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !228, file: !229, line: 71, baseType: !3376, size: 32, offset: 448)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3377, line: 19, size: 32, elements: !3378)
!3377 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3378 = !{!3379}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3376, file: !3377, line: 20, baseType: !1238, size: 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !228, file: !229, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !228, file: !229, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !228, file: !229, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !228, file: !229, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !228, file: !229, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !225, file: !80, line: 463, baseType: !224, size: 64, offset: 512)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !225, file: !80, line: 465, baseType: !3387, size: 64, offset: 576)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !80, line: 36, flags: DIFlagFwdDecl)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !225, file: !80, line: 467, baseType: !232, size: 64, offset: 640)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !225, file: !80, line: 468, baseType: !3391, size: 64, offset: 704)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3393)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !80, line: 87, size: 384, elements: !3394)
!3394 = !{!3395, !3396, !3397, !3401, !3406, !3410}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3393, file: !80, line: 88, baseType: !232, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3393, file: !80, line: 89, baseType: !342, size: 64, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3393, file: !80, line: 90, baseType: !3398, size: 64, offset: 128)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!197, !224, !284}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3393, file: !80, line: 91, baseType: !3402, size: 64, offset: 192)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!289, !224, !3405, !3234, !3235}
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3393, file: !80, line: 93, baseType: !3407, size: 64, offset: 256)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{null, !224}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3393, file: !80, line: 95, baseType: !3411, size: 64, offset: 320)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3413)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !87, line: 278, size: 1472, elements: !3414)
!3414 = !{!3415, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3413, file: !87, line: 279, baseType: !3416, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!197, !224}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3413, file: !87, line: 280, baseType: !3407, size: 64, offset: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3413, file: !87, line: 281, baseType: !3416, size: 64, offset: 128)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3413, file: !87, line: 282, baseType: !3416, size: 64, offset: 192)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3413, file: !87, line: 283, baseType: !3416, size: 64, offset: 256)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3413, file: !87, line: 284, baseType: !3416, size: 64, offset: 320)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3413, file: !87, line: 285, baseType: !3416, size: 64, offset: 384)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3413, file: !87, line: 286, baseType: !3416, size: 64, offset: 448)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3413, file: !87, line: 287, baseType: !3416, size: 64, offset: 512)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3413, file: !87, line: 288, baseType: !3416, size: 64, offset: 576)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3413, file: !87, line: 289, baseType: !3416, size: 64, offset: 640)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3413, file: !87, line: 290, baseType: !3416, size: 64, offset: 704)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3413, file: !87, line: 291, baseType: !3416, size: 64, offset: 768)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3413, file: !87, line: 292, baseType: !3416, size: 64, offset: 832)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3413, file: !87, line: 293, baseType: !3416, size: 64, offset: 896)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3413, file: !87, line: 294, baseType: !3416, size: 64, offset: 960)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3413, file: !87, line: 295, baseType: !3416, size: 64, offset: 1024)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3413, file: !87, line: 296, baseType: !3416, size: 64, offset: 1088)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3413, file: !87, line: 297, baseType: !3416, size: 64, offset: 1152)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3413, file: !87, line: 298, baseType: !3416, size: 64, offset: 1216)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3413, file: !87, line: 299, baseType: !3416, size: 64, offset: 1280)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3413, file: !87, line: 300, baseType: !3416, size: 64, offset: 1344)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3413, file: !87, line: 301, baseType: !3416, size: 64, offset: 1408)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !225, file: !80, line: 470, baseType: !3442, size: 64, offset: 768)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3444, line: 82, size: 1408, elements: !3445)
!3444 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3445 = !{!3446, !3447, !3448, !3449, !3450, !3451, !3452, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3527, !3530, !3531}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3443, file: !3444, line: 83, baseType: !232, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3443, file: !3444, line: 84, baseType: !232, size: 64, offset: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3443, file: !3444, line: 85, baseType: !224, size: 64, offset: 128)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3443, file: !3444, line: 86, baseType: !342, size: 64, offset: 192)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3443, file: !3444, line: 87, baseType: !342, size: 64, offset: 256)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3443, file: !3444, line: 88, baseType: !342, size: 64, offset: 320)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3443, file: !3444, line: 90, baseType: !3453, size: 64, offset: 384)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!197, !224, !3456}
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !74, line: 95, size: 1152, elements: !3458)
!3458 = !{!3459, !3460, !3461, !3462, !3463, !3464, !3465, !3478, !3491, !3492, !3493, !3494, !3495, !3503, !3504, !3505, !3506, !3507, !3508}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3457, file: !74, line: 96, baseType: !232, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3457, file: !74, line: 97, baseType: !3442, size: 64, offset: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3457, file: !74, line: 99, baseType: !182, size: 64, offset: 128)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3457, file: !74, line: 100, baseType: !232, size: 64, offset: 192)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3457, file: !74, line: 102, baseType: !500, size: 8, offset: 256)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3457, file: !74, line: 103, baseType: !73, size: 32, offset: 288)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3457, file: !74, line: 105, baseType: !3466, size: 64, offset: 320)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3468)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3469, line: 262, size: 1600, elements: !3470)
!3469 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3470 = !{!3471, !3472, !3473, !3477}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3468, file: !3469, line: 263, baseType: !2705, size: 256)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3468, file: !3469, line: 264, baseType: !2705, size: 256, offset: 256)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3468, file: !3469, line: 265, baseType: !3474, size: 1024, offset: 512)
!3474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 1024, elements: !3475)
!3475 = !{!3476}
!3476 = !DISubrange(count: 128)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3468, file: !3469, line: 266, baseType: !2132, size: 64, offset: 1536)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3457, file: !74, line: 106, baseType: !3479, size: 64, offset: 384)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3481)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3469, line: 210, size: 256, elements: !3482)
!3482 = !{!3483, !3487, !3489, !3490}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3481, file: !3469, line: 211, baseType: !3484, size: 72)
!3484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1361, size: 72, elements: !3485)
!3485 = !{!3486}
!3486 = !DISubrange(count: 9)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3481, file: !3469, line: 212, baseType: !3488, size: 64, offset: 128)
!3488 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3469, line: 14, baseType: !338)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3481, file: !3469, line: 213, baseType: !205, size: 32, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3481, file: !3469, line: 214, baseType: !205, size: 32, offset: 224)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3457, file: !74, line: 108, baseType: !3416, size: 64, offset: 448)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3457, file: !74, line: 109, baseType: !3407, size: 64, offset: 512)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3457, file: !74, line: 110, baseType: !3416, size: 64, offset: 576)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3457, file: !74, line: 111, baseType: !3407, size: 64, offset: 640)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3457, file: !74, line: 112, baseType: !3496, size: 64, offset: 704)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!197, !224, !3499}
!3499 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !87, line: 52, baseType: !3500)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !87, line: 50, size: 32, elements: !3501)
!3501 = !{!3502}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3500, file: !87, line: 51, baseType: !197, size: 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3457, file: !74, line: 113, baseType: !3416, size: 64, offset: 768)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3457, file: !74, line: 114, baseType: !342, size: 64, offset: 832)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3457, file: !74, line: 115, baseType: !342, size: 64, offset: 896)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3457, file: !74, line: 117, baseType: !3411, size: 64, offset: 960)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3457, file: !74, line: 118, baseType: !3407, size: 64, offset: 1024)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3457, file: !74, line: 120, baseType: !3509, size: 64, offset: 1088)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !74, line: 120, flags: DIFlagFwdDecl)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3443, file: !3444, line: 91, baseType: !3398, size: 64, offset: 448)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3443, file: !3444, line: 92, baseType: !3416, size: 64, offset: 512)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3443, file: !3444, line: 93, baseType: !3407, size: 64, offset: 576)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3443, file: !3444, line: 94, baseType: !3416, size: 64, offset: 640)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3443, file: !3444, line: 95, baseType: !3407, size: 64, offset: 704)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3443, file: !3444, line: 97, baseType: !3416, size: 64, offset: 768)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3443, file: !3444, line: 98, baseType: !3416, size: 64, offset: 832)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3443, file: !3444, line: 100, baseType: !3496, size: 64, offset: 896)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3443, file: !3444, line: 101, baseType: !3416, size: 64, offset: 960)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3443, file: !3444, line: 103, baseType: !3416, size: 64, offset: 1024)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3443, file: !3444, line: 105, baseType: !3416, size: 64, offset: 1088)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3443, file: !3444, line: 107, baseType: !3411, size: 64, offset: 1152)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3443, file: !3444, line: 109, baseType: !3524, size: 64, offset: 1216)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3526)
!3526 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3444, line: 109, flags: DIFlagFwdDecl)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3443, file: !3444, line: 111, baseType: !3528, size: 64, offset: 1280)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3444, line: 111, flags: DIFlagFwdDecl)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3443, file: !3444, line: 112, baseType: !655, offset: 1344)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3443, file: !3444, line: 114, baseType: !500, size: 8, offset: 1344)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !225, file: !80, line: 471, baseType: !3456, size: 64, offset: 832)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !225, file: !80, line: 473, baseType: !192, size: 64, offset: 896)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !225, file: !80, line: 475, baseType: !192, size: 64, offset: 960)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !225, file: !80, line: 480, baseType: !1181, size: 192, offset: 1024)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !225, file: !80, line: 484, baseType: !3537, size: 576, offset: 1216)
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !80, line: 361, size: 576, elements: !3538)
!3538 = !{!3539, !3540, !3541, !3542, !3543, !3544}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3537, file: !80, line: 362, baseType: !235, size: 128)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3537, file: !80, line: 363, baseType: !235, size: 128, offset: 128)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3537, file: !80, line: 364, baseType: !235, size: 128, offset: 256)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3537, file: !80, line: 365, baseType: !235, size: 128, offset: 384)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3537, file: !80, line: 366, baseType: !500, size: 8, offset: 512)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3537, file: !80, line: 367, baseType: !79, size: 32, offset: 544)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !225, file: !80, line: 485, baseType: !3546, size: 2304, offset: 1792)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !87, line: 565, size: 2304, elements: !3547)
!3547 = !{!3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3643, !3647}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3546, file: !87, line: 566, baseType: !3499, size: 32)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3546, file: !87, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3546, file: !87, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3546, file: !87, line: 569, baseType: !500, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3546, file: !87, line: 570, baseType: !500, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3546, file: !87, line: 571, baseType: !500, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3546, file: !87, line: 572, baseType: !500, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3546, file: !87, line: 573, baseType: !500, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3546, file: !87, line: 574, baseType: !500, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3546, file: !87, line: 575, baseType: !500, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3546, file: !87, line: 576, baseType: !500, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3546, file: !87, line: 577, baseType: !204, size: 32, offset: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3546, file: !87, line: 578, baseType: !248, offset: 96)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3546, file: !87, line: 580, baseType: !235, size: 128, offset: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3546, file: !87, line: 581, baseType: !1510, size: 192, offset: 256)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3546, file: !87, line: 582, baseType: !3564, size: 64, offset: 448)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3566, line: 43, size: 1472, elements: !3567)
!3566 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3567 = !{!3568, !3569, !3570, !3571, !3572, !3575, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3565, file: !3566, line: 44, baseType: !232, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3565, file: !3566, line: 45, baseType: !197, size: 32, offset: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3565, file: !3566, line: 46, baseType: !235, size: 128, offset: 128)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3565, file: !3566, line: 47, baseType: !248, offset: 256)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3565, file: !3566, line: 48, baseType: !3573, size: 64, offset: 256)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !87, line: 533, flags: DIFlagFwdDecl)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3565, file: !3566, line: 49, baseType: !3576, size: 320, offset: 320)
!3576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3577, line: 11, size: 320, elements: !3578)
!3577 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3578 = !{!3579, !3580, !3581, !3586}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3576, file: !3577, line: 16, baseType: !649, size: 128)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3576, file: !3577, line: 17, baseType: !338, size: 64, offset: 128)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3576, file: !3577, line: 18, baseType: !3582, size: 64, offset: 192)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{null, !3585}
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3576, file: !3577, line: 19, baseType: !204, size: 32, offset: 256)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3565, file: !3566, line: 50, baseType: !338, size: 64, offset: 640)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3565, file: !3566, line: 51, baseType: !1308, size: 64, offset: 704)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3565, file: !3566, line: 52, baseType: !1308, size: 64, offset: 768)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3565, file: !3566, line: 53, baseType: !1308, size: 64, offset: 832)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3565, file: !3566, line: 54, baseType: !1308, size: 64, offset: 896)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3565, file: !3566, line: 55, baseType: !1308, size: 64, offset: 960)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3565, file: !3566, line: 56, baseType: !338, size: 64, offset: 1024)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3565, file: !3566, line: 57, baseType: !338, size: 64, offset: 1088)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3565, file: !3566, line: 58, baseType: !338, size: 64, offset: 1152)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3565, file: !3566, line: 59, baseType: !338, size: 64, offset: 1216)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3565, file: !3566, line: 60, baseType: !338, size: 64, offset: 1280)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3565, file: !3566, line: 61, baseType: !224, size: 64, offset: 1344)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3565, file: !3566, line: 62, baseType: !500, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3565, file: !3566, line: 63, baseType: !500, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3546, file: !87, line: 583, baseType: !500, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3546, file: !87, line: 584, baseType: !500, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3546, file: !87, line: 585, baseType: !500, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3546, file: !87, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3546, file: !87, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3546, file: !87, line: 592, baseType: !1300, size: 512, offset: 576)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3546, file: !87, line: 593, baseType: !431, size: 64, offset: 1088)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3546, file: !87, line: 594, baseType: !1962, size: 256, offset: 1152)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3546, file: !87, line: 595, baseType: !1489, size: 128, offset: 1408)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3546, file: !87, line: 596, baseType: !3573, size: 64, offset: 1536)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3546, file: !87, line: 597, baseType: !757, size: 32, offset: 1600)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3546, file: !87, line: 598, baseType: !757, size: 32, offset: 1632)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3546, file: !87, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3546, file: !87, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3546, file: !87, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3546, file: !87, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3546, file: !87, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3546, file: !87, line: 604, baseType: !500, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3546, file: !87, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3546, file: !87, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3546, file: !87, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3546, file: !87, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3546, file: !87, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3546, file: !87, line: 610, baseType: !7, size: 32, offset: 1696)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3546, file: !87, line: 611, baseType: !86, size: 32, offset: 1728)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3546, file: !87, line: 612, baseType: !94, size: 32, offset: 1760)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3546, file: !87, line: 613, baseType: !197, size: 32, offset: 1792)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3546, file: !87, line: 614, baseType: !197, size: 32, offset: 1824)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3546, file: !87, line: 615, baseType: !431, size: 64, offset: 1856)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3546, file: !87, line: 616, baseType: !431, size: 64, offset: 1920)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3546, file: !87, line: 617, baseType: !431, size: 64, offset: 1984)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3546, file: !87, line: 618, baseType: !431, size: 64, offset: 2048)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3546, file: !87, line: 620, baseType: !3634, size: 64, offset: 2112)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !87, line: 536, size: 256, elements: !3636)
!3636 = !{!3637, !3638, !3639, !3640}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3635, file: !87, line: 537, baseType: !248)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3635, file: !87, line: 538, baseType: !7, size: 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3635, file: !87, line: 540, baseType: !235, size: 128, offset: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3635, file: !87, line: 543, baseType: !3641, size: 64, offset: 192)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !87, line: 534, flags: DIFlagFwdDecl)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3546, file: !87, line: 621, baseType: !3644, size: 64, offset: 2176)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{null, !224, !1452}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3546, file: !87, line: 622, baseType: !3648, size: 64, offset: 2240)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !87, line: 622, flags: DIFlagFwdDecl)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !225, file: !80, line: 486, baseType: !3651, size: 64, offset: 4096)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !87, line: 642, size: 1792, elements: !3653)
!3653 = !{!3654, !3655, !3656, !3660, !3661, !3662}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3652, file: !87, line: 643, baseType: !3413, size: 1472)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3652, file: !87, line: 644, baseType: !3416, size: 64, offset: 1472)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3652, file: !87, line: 645, baseType: !3657, size: 64, offset: 1536)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{null, !224, !500}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3652, file: !87, line: 646, baseType: !3416, size: 64, offset: 1600)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3652, file: !87, line: 647, baseType: !3407, size: 64, offset: 1664)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3652, file: !87, line: 648, baseType: !3407, size: 64, offset: 1728)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !225, file: !80, line: 493, baseType: !3664, size: 64, offset: 4160)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !80, line: 493, flags: DIFlagFwdDecl)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !225, file: !80, line: 499, baseType: !235, size: 128, offset: 4224)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !225, file: !80, line: 502, baseType: !3668, size: 64, offset: 4352)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3670)
!3670 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !80, line: 502, flags: DIFlagFwdDecl)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !225, file: !80, line: 504, baseType: !3672, size: 64, offset: 4416)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !225, file: !80, line: 505, baseType: !431, size: 64, offset: 4480)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !225, file: !80, line: 510, baseType: !431, size: 64, offset: 4544)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !225, file: !80, line: 511, baseType: !3676, size: 64, offset: 4608)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3678)
!3678 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !80, line: 511, flags: DIFlagFwdDecl)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !225, file: !80, line: 513, baseType: !3680, size: 64, offset: 4672)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !80, line: 288, size: 128, elements: !3682)
!3682 = !{!3683, !3684}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3681, file: !80, line: 293, baseType: !7, size: 32)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3681, file: !80, line: 294, baseType: !338, size: 64, offset: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !225, file: !80, line: 515, baseType: !235, size: 128, offset: 4736)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !225, file: !80, line: 526, baseType: !3687, offset: 4864)
!3687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3688, line: 5, elements: !262)
!3688 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !225, file: !80, line: 528, baseType: !3690, size: 64, offset: 4864)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3692, line: 14, flags: DIFlagFwdDecl)
!3692 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !225, file: !80, line: 529, baseType: !3694, size: 64, offset: 4928)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3696, line: 17, size: 192, elements: !3697)
!3696 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3697 = !{!3698, !3699, !3782}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3695, file: !3696, line: 18, baseType: !3694, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3695, file: !3696, line: 19, baseType: !3700, size: 64, offset: 64)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3702)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3696, line: 110, size: 1152, elements: !3703)
!3703 = !{!3704, !3708, !3712, !3718, !3724, !3728, !3732, !3737, !3741, !3742, !3746, !3750, !3754, !3765, !3766, !3767, !3768, !3778}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3702, file: !3696, line: 111, baseType: !3705, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!3694, !3694}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3702, file: !3696, line: 112, baseType: !3709, size: 64, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{null, !3694}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3702, file: !3696, line: 113, baseType: !3713, size: 64, offset: 128)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!500, !3716}
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3695)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3702, file: !3696, line: 114, baseType: !3719, size: 64, offset: 192)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!2132, !3716, !3722}
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3702, file: !3696, line: 116, baseType: !3725, size: 64, offset: 256)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!500, !3716, !232}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3702, file: !3696, line: 118, baseType: !3729, size: 64, offset: 320)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!197, !3716, !232, !7, !192, !335}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3702, file: !3696, line: 123, baseType: !3733, size: 64, offset: 384)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!197, !3716, !232, !3736, !335}
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3702, file: !3696, line: 126, baseType: !3738, size: 64, offset: 448)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!232, !3716}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3702, file: !3696, line: 127, baseType: !3738, size: 64, offset: 512)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3702, file: !3696, line: 128, baseType: !3743, size: 64, offset: 576)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!3694, !3716}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3702, file: !3696, line: 130, baseType: !3747, size: 64, offset: 640)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!3694, !3716, !3694}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3702, file: !3696, line: 133, baseType: !3751, size: 64, offset: 704)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!3694, !3716, !232}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3702, file: !3696, line: 135, baseType: !3755, size: 64, offset: 768)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!197, !3716, !232, !232, !7, !7, !3758}
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3696, line: 43, size: 640, elements: !3760)
!3760 = !{!3761, !3762, !3763}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3759, file: !3696, line: 44, baseType: !3694, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3759, file: !3696, line: 45, baseType: !7, size: 32, offset: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3759, file: !3696, line: 46, baseType: !3764, size: 512, offset: 128)
!3764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 512, elements: !1338)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3702, file: !3696, line: 140, baseType: !3747, size: 64, offset: 832)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3702, file: !3696, line: 143, baseType: !3743, size: 64, offset: 896)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3702, file: !3696, line: 145, baseType: !3705, size: 64, offset: 960)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3702, file: !3696, line: 146, baseType: !3769, size: 64, offset: 1024)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!197, !3716, !3772}
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3696, line: 29, size: 128, elements: !3774)
!3774 = !{!3775, !3776, !3777}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3773, file: !3696, line: 30, baseType: !7, size: 32)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3773, file: !3696, line: 31, baseType: !7, size: 32, offset: 32)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3773, file: !3696, line: 32, baseType: !3716, size: 64, offset: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3702, file: !3696, line: 148, baseType: !3779, size: 64, offset: 1088)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!197, !3716, !224}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3695, file: !3696, line: 20, baseType: !224, size: 64, offset: 128)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !225, file: !80, line: 534, baseType: !523, size: 32, offset: 4992)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !225, file: !80, line: 535, baseType: !204, size: 32, offset: 5024)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !225, file: !80, line: 537, baseType: !248, offset: 5056)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !225, file: !80, line: 538, baseType: !235, size: 128, offset: 5056)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !225, file: !80, line: 540, baseType: !3788, size: 64, offset: 5184)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3790, line: 54, size: 960, elements: !3791)
!3790 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3791 = !{!3792, !3793, !3794, !3795, !3796, !3797, !3798, !3802, !3806, !3807, !3808, !3809, !3813, !3817, !3818}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3789, file: !3790, line: 55, baseType: !232, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3789, file: !3790, line: 56, baseType: !182, size: 64, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3789, file: !3790, line: 58, baseType: !342, size: 64, offset: 128)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3789, file: !3790, line: 59, baseType: !342, size: 64, offset: 192)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3789, file: !3790, line: 60, baseType: !241, size: 64, offset: 256)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3789, file: !3790, line: 62, baseType: !3398, size: 64, offset: 320)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3789, file: !3790, line: 63, baseType: !3799, size: 64, offset: 384)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!289, !224, !3405}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3789, file: !3790, line: 65, baseType: !3803, size: 64, offset: 448)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{null, !3788}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3789, file: !3790, line: 66, baseType: !3407, size: 64, offset: 512)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3789, file: !3790, line: 68, baseType: !3416, size: 64, offset: 576)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3789, file: !3790, line: 70, baseType: !3202, size: 64, offset: 640)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3789, file: !3790, line: 71, baseType: !3810, size: 64, offset: 704)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!2132, !224}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3789, file: !3790, line: 73, baseType: !3814, size: 64, offset: 768)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{null, !224, !3234, !3235}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3789, file: !3790, line: 75, baseType: !3411, size: 64, offset: 832)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3789, file: !3790, line: 77, baseType: !3528, size: 64, offset: 896)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !225, file: !80, line: 541, baseType: !342, size: 64, offset: 5248)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !225, file: !80, line: 543, baseType: !3407, size: 64, offset: 5312)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !225, file: !80, line: 544, baseType: !3822, size: 64, offset: 5376)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !80, line: 45, flags: DIFlagFwdDecl)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !225, file: !80, line: 545, baseType: !3825, size: 64, offset: 5440)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !80, line: 47, flags: DIFlagFwdDecl)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !225, file: !80, line: 547, baseType: !500, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !225, file: !80, line: 548, baseType: !500, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !225, file: !80, line: 549, baseType: !500, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !225, file: !80, line: 550, baseType: !500, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !221, file: !6, line: 426, baseType: !224, size: 64, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !221, file: !6, line: 427, baseType: !197, size: 32, offset: 128)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !221, file: !6, line: 428, baseType: !232, size: 64, offset: 192)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !221, file: !6, line: 429, baseType: !1360, size: 8, offset: 256)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !221, file: !6, line: 433, baseType: !1360, size: 8, offset: 264)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !221, file: !6, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !221, file: !6, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !221, file: !6, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !221, file: !6, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !221, file: !6, line: 442, baseType: !7, size: 32, offset: 288)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !221, file: !6, line: 444, baseType: !197, size: 32, offset: 320)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !221, file: !6, line: 446, baseType: !1181, size: 192, offset: 384)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !221, file: !6, line: 448, baseType: !3844, size: 128, offset: 576)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !6, line: 417, size: 128, elements: !3845)
!3845 = !{!3846}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !3844, file: !6, line: 418, baseType: !3847, size: 128)
!3847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 128, elements: !216)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !221, file: !6, line: 449, baseType: !193, size: 64, offset: 704)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !221, file: !6, line: 450, baseType: !220, size: 64, offset: 768)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !221, file: !6, line: 452, baseType: !197, size: 32, offset: 832)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !221, file: !6, line: 459, baseType: !197, size: 32, offset: 864)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !221, file: !6, line: 460, baseType: !197, size: 32, offset: 896)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !221, file: !6, line: 462, baseType: !7, size: 32, offset: 928)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !194, file: !6, line: 647, baseType: !3855, size: 640, offset: 640)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !6, line: 67, size: 640, elements: !3856)
!3856 = !{!3857, !3869, !3877, !3885, !3886, !3887, !3890, !3892, !3893, !3894}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3855, file: !6, line: 68, baseType: !3858, size: 72)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !101, line: 407, size: 72, elements: !3859)
!3859 = !{!3860, !3861, !3862, !3863, !3864, !3866, !3867, !3868}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3858, file: !101, line: 408, baseType: !1361, size: 8)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3858, file: !101, line: 409, baseType: !1361, size: 8, offset: 8)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !3858, file: !101, line: 411, baseType: !1361, size: 8, offset: 16)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3858, file: !101, line: 412, baseType: !1361, size: 8, offset: 24)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !3858, file: !101, line: 413, baseType: !3865, size: 16, offset: 32)
!3865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !2911, line: 29, baseType: !189)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !3858, file: !101, line: 414, baseType: !1361, size: 8, offset: 48)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !3858, file: !101, line: 418, baseType: !1361, size: 8, offset: 56)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !3858, file: !101, line: 419, baseType: !1361, size: 8, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !3855, file: !6, line: 69, baseType: !3870, size: 48, offset: 72)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !101, line: 689, size: 48, elements: !3871)
!3871 = !{!3872, !3873, !3874, !3875, !3876}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3870, file: !101, line: 690, baseType: !1361, size: 8)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3870, file: !101, line: 691, baseType: !1361, size: 8, offset: 8)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !3870, file: !101, line: 693, baseType: !1361, size: 8, offset: 16)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3870, file: !101, line: 694, baseType: !1361, size: 8, offset: 24)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !3870, file: !101, line: 695, baseType: !3865, size: 16, offset: 32)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !3855, file: !6, line: 70, baseType: !3878, size: 64, offset: 120)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !101, line: 677, size: 64, elements: !3879)
!3879 = !{!3880, !3881, !3882, !3883}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3878, file: !101, line: 678, baseType: !1361, size: 8)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3878, file: !101, line: 679, baseType: !1361, size: 8, offset: 8)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !3878, file: !101, line: 680, baseType: !3865, size: 16, offset: 16)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !3878, file: !101, line: 681, baseType: !3884, size: 32, offset: 32)
!3884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2911, line: 31, baseType: !205)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3855, file: !6, line: 71, baseType: !235, size: 128, offset: 192)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3855, file: !6, line: 72, baseType: !192, size: 64, offset: 320)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !3855, file: !6, line: 73, baseType: !3888, size: 64, offset: 384)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !6, line: 48, flags: DIFlagFwdDecl)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3855, file: !6, line: 75, baseType: !3891, size: 64, offset: 448)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3855, file: !6, line: 76, baseType: !197, size: 32, offset: 512)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3855, file: !6, line: 77, baseType: !197, size: 32, offset: 544)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3855, file: !6, line: 78, baseType: !197, size: 32, offset: 576)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !194, file: !6, line: 649, baseType: !225, size: 5568, offset: 1280)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !194, file: !6, line: 651, baseType: !3897, size: 144, offset: 6848)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !101, line: 289, size: 144, elements: !3898)
!3898 = !{!3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3897, file: !101, line: 290, baseType: !1361, size: 8)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3897, file: !101, line: 291, baseType: !1361, size: 8, offset: 8)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !3897, file: !101, line: 293, baseType: !3865, size: 16, offset: 16)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3897, file: !101, line: 294, baseType: !1361, size: 8, offset: 32)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3897, file: !101, line: 295, baseType: !1361, size: 8, offset: 40)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3897, file: !101, line: 296, baseType: !1361, size: 8, offset: 48)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !3897, file: !101, line: 297, baseType: !1361, size: 8, offset: 56)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3897, file: !101, line: 298, baseType: !3865, size: 16, offset: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3897, file: !101, line: 299, baseType: !3865, size: 16, offset: 80)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !3897, file: !101, line: 300, baseType: !3865, size: 16, offset: 96)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !3897, file: !101, line: 301, baseType: !1361, size: 8, offset: 112)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !3897, file: !101, line: 302, baseType: !1361, size: 8, offset: 120)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !3897, file: !101, line: 303, baseType: !1361, size: 8, offset: 128)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !3897, file: !101, line: 304, baseType: !1361, size: 8, offset: 136)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !194, file: !6, line: 652, baseType: !3914, size: 64, offset: 7040)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !6, line: 396, size: 384, elements: !3916)
!3916 = !{!3917, !3925, !3933, !3945, !3958, !3967}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3915, file: !6, line: 397, baseType: !3918, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !101, line: 844, size: 40, elements: !3920)
!3920 = !{!3921, !3922, !3923, !3924}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3919, file: !101, line: 845, baseType: !1361, size: 8)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3919, file: !101, line: 846, baseType: !1361, size: 8, offset: 8)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3919, file: !101, line: 848, baseType: !3865, size: 16, offset: 16)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !3919, file: !101, line: 849, baseType: !1361, size: 8, offset: 32)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !3915, file: !6, line: 400, baseType: !3926, size: 64, offset: 64)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !101, line: 895, size: 56, elements: !3928)
!3928 = !{!3929, !3930, !3931, !3932}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3927, file: !101, line: 896, baseType: !1361, size: 8)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3927, file: !101, line: 897, baseType: !1361, size: 8, offset: 8)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3927, file: !101, line: 898, baseType: !1361, size: 8, offset: 16)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3927, file: !101, line: 899, baseType: !3884, size: 32, offset: 24)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !3915, file: !6, line: 401, baseType: !3934, size: 64, offset: 128)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !101, line: 917, size: 80, elements: !3936)
!3936 = !{!3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3935, file: !101, line: 918, baseType: !1361, size: 8)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3935, file: !101, line: 919, baseType: !1361, size: 8, offset: 8)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3935, file: !101, line: 920, baseType: !1361, size: 8, offset: 16)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3935, file: !101, line: 921, baseType: !1361, size: 8, offset: 24)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !3935, file: !101, line: 923, baseType: !3865, size: 16, offset: 32)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !3935, file: !101, line: 928, baseType: !1361, size: 8, offset: 48)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !3935, file: !101, line: 929, baseType: !1361, size: 8, offset: 56)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !3935, file: !101, line: 930, baseType: !3865, size: 16, offset: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !3915, file: !6, line: 402, baseType: !3946, size: 64, offset: 192)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !101, line: 955, size: 128, elements: !3948)
!3948 = !{!3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3947, file: !101, line: 956, baseType: !1361, size: 8)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3947, file: !101, line: 957, baseType: !1361, size: 8, offset: 8)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3947, file: !101, line: 958, baseType: !1361, size: 8, offset: 16)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3947, file: !101, line: 959, baseType: !1361, size: 8, offset: 24)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3947, file: !101, line: 960, baseType: !3884, size: 32, offset: 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !3947, file: !101, line: 963, baseType: !3865, size: 16, offset: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !3947, file: !101, line: 967, baseType: !3865, size: 16, offset: 80)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !3947, file: !101, line: 968, baseType: !3957, size: 32, offset: 96)
!3957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3884, size: 32, elements: !1379)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !3915, file: !6, line: 403, baseType: !3959, size: 64, offset: 256)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !101, line: 940, size: 160, elements: !3961)
!3961 = !{!3962, !3963, !3964, !3965, !3966}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3960, file: !101, line: 941, baseType: !1361, size: 8)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3960, file: !101, line: 942, baseType: !1361, size: 8, offset: 8)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3960, file: !101, line: 943, baseType: !1361, size: 8, offset: 16)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3960, file: !101, line: 944, baseType: !1361, size: 8, offset: 24)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !3960, file: !101, line: 945, baseType: !2712, size: 128, offset: 32)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !3915, file: !6, line: 404, baseType: !3968, size: 64, offset: 320)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !101, line: 1080, size: 24, elements: !3970)
!3970 = !{!3971, !3972, !3973}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3969, file: !101, line: 1081, baseType: !1361, size: 8)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3969, file: !101, line: 1082, baseType: !1361, size: 8, offset: 8)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3969, file: !101, line: 1083, baseType: !1361, size: 8, offset: 16)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !194, file: !6, line: 653, baseType: !3975, size: 64, offset: 7104)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !6, line: 374, size: 5440, elements: !3977)
!3977 = !{!3978, !3989, !3990, !4003, !4045, !4054, !4055}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3976, file: !6, line: 375, baseType: !3979, size: 72)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !101, line: 349, size: 72, elements: !3980)
!3980 = !{!3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3979, file: !101, line: 350, baseType: !1361, size: 8)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3979, file: !101, line: 351, baseType: !1361, size: 8, offset: 8)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3979, file: !101, line: 353, baseType: !3865, size: 16, offset: 16)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !3979, file: !101, line: 354, baseType: !1361, size: 8, offset: 32)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !3979, file: !101, line: 355, baseType: !1361, size: 8, offset: 40)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !3979, file: !101, line: 356, baseType: !1361, size: 8, offset: 48)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3979, file: !101, line: 357, baseType: !1361, size: 8, offset: 56)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !3979, file: !101, line: 358, baseType: !1361, size: 8, offset: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3976, file: !6, line: 377, baseType: !289, size: 64, offset: 128)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3976, file: !6, line: 381, baseType: !3991, size: 1024, offset: 192)
!3991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3992, size: 1024, elements: !201)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !101, line: 783, size: 64, elements: !3994)
!3994 = !{!3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3993, file: !101, line: 784, baseType: !1361, size: 8)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3993, file: !101, line: 785, baseType: !1361, size: 8, offset: 8)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !3993, file: !101, line: 787, baseType: !1361, size: 8, offset: 16)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !3993, file: !101, line: 788, baseType: !1361, size: 8, offset: 24)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !3993, file: !101, line: 789, baseType: !1361, size: 8, offset: 32)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !3993, file: !101, line: 790, baseType: !1361, size: 8, offset: 40)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !3993, file: !101, line: 791, baseType: !1361, size: 8, offset: 48)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !3993, file: !101, line: 792, baseType: !1361, size: 8, offset: 56)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !3976, file: !6, line: 385, baseType: !4004, size: 2048, offset: 1216)
!4004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4005, size: 2048, elements: !2235)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !6, line: 232, size: 6272, elements: !4007)
!4007 = !{!4008, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4006, file: !6, line: 235, baseType: !4009, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !6, line: 82, size: 320, elements: !4011)
!4011 = !{!4012, !4024, !4025, !4026, !4028}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4010, file: !6, line: 83, baseType: !4013, size: 72)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !101, line: 389, size: 72, elements: !4014)
!4014 = !{!4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4013, file: !101, line: 390, baseType: !1361, size: 8)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4013, file: !101, line: 391, baseType: !1361, size: 8, offset: 8)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4013, file: !101, line: 393, baseType: !1361, size: 8, offset: 16)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !4013, file: !101, line: 394, baseType: !1361, size: 8, offset: 24)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !4013, file: !101, line: 395, baseType: !1361, size: 8, offset: 32)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4013, file: !101, line: 396, baseType: !1361, size: 8, offset: 40)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4013, file: !101, line: 397, baseType: !1361, size: 8, offset: 48)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4013, file: !101, line: 398, baseType: !1361, size: 8, offset: 56)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !4013, file: !101, line: 399, baseType: !1361, size: 8, offset: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4010, file: !6, line: 85, baseType: !197, size: 32, offset: 96)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4010, file: !6, line: 86, baseType: !3891, size: 64, offset: 128)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !4010, file: !6, line: 91, baseType: !4027, size: 64, offset: 192)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4010, file: !6, line: 93, baseType: !289, size: 64, offset: 256)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !4006, file: !6, line: 237, baseType: !4009, size: 64, offset: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4006, file: !6, line: 239, baseType: !7, size: 32, offset: 128)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4006, file: !6, line: 243, baseType: !3992, size: 64, offset: 192)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4006, file: !6, line: 245, baseType: !197, size: 32, offset: 256)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4006, file: !6, line: 247, baseType: !5, size: 32, offset: 288)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !4006, file: !6, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !4006, file: !6, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !4006, file: !6, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !4006, file: !6, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !4006, file: !6, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !4006, file: !6, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !4006, file: !6, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !4006, file: !6, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4006, file: !6, line: 257, baseType: !225, size: 5568, offset: 384)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !4006, file: !6, line: 258, baseType: !224, size: 64, offset: 5952)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !4006, file: !6, line: 259, baseType: !1962, size: 256, offset: 6016)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !3976, file: !6, line: 389, baseType: !4046, size: 2048, offset: 3264)
!4046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4047, size: 2048, elements: !2235)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !6, line: 322, size: 64, elements: !4049)
!4049 = !{!4050, !4051, !4052}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4048, file: !6, line: 323, baseType: !7, size: 32)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4048, file: !6, line: 324, baseType: !3376, size: 32, offset: 32)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4048, file: !6, line: 328, baseType: !4053, offset: 64)
!4053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4010, elements: !2336)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3976, file: !6, line: 391, baseType: !3891, size: 64, offset: 5312)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3976, file: !6, line: 392, baseType: !197, size: 32, offset: 5376)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !194, file: !6, line: 655, baseType: !3975, size: 64, offset: 7168)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !194, file: !6, line: 656, baseType: !4058, size: 1024, offset: 7232)
!4058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4027, size: 1024, elements: !201)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !194, file: !6, line: 657, baseType: !4058, size: 1024, offset: 8256)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !194, file: !6, line: 659, baseType: !4061, size: 64, offset: 9280)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !194, file: !6, line: 661, baseType: !191, size: 16, offset: 9344)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !194, file: !6, line: 662, baseType: !1360, size: 8, offset: 9360)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !194, file: !6, line: 663, baseType: !1360, size: 8, offset: 9368)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !194, file: !6, line: 664, baseType: !1360, size: 8, offset: 9376)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !194, file: !6, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !194, file: !6, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !194, file: !6, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !194, file: !6, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !194, file: !6, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !194, file: !6, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !194, file: !6, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !194, file: !6, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !194, file: !6, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !194, file: !6, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !194, file: !6, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !194, file: !6, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !194, file: !6, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !194, file: !6, line: 679, baseType: !197, size: 32, offset: 9408)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !194, file: !6, line: 682, baseType: !289, size: 64, offset: 9472)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !194, file: !6, line: 683, baseType: !289, size: 64, offset: 9536)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !194, file: !6, line: 684, baseType: !289, size: 64, offset: 9600)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !194, file: !6, line: 686, baseType: !235, size: 128, offset: 9664)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !194, file: !6, line: 688, baseType: !197, size: 32, offset: 9792)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !194, file: !6, line: 690, baseType: !204, size: 32, offset: 9824)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !194, file: !6, line: 691, baseType: !757, size: 32, offset: 9856)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !194, file: !6, line: 693, baseType: !338, size: 64, offset: 9920)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !194, file: !6, line: 696, baseType: !338, size: 64, offset: 9984)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !194, file: !6, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !194, file: !6, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !194, file: !6, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !194, file: !6, line: 702, baseType: !4093, size: 64, offset: 10112)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !6, line: 28, flags: DIFlagFwdDecl)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !194, file: !6, line: 703, baseType: !197, size: 32, offset: 10176)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !194, file: !6, line: 704, baseType: !121, size: 32, offset: 10208)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !194, file: !6, line: 705, baseType: !4098, size: 64, offset: 10240)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !6, line: 502, size: 64, elements: !4099)
!4099 = !{!4100, !4101}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !4098, file: !6, line: 506, baseType: !7, size: 32)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4098, file: !6, line: 512, baseType: !197, size: 32, offset: 32)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !194, file: !6, line: 706, baseType: !4103, size: 128, offset: 10304)
!4103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !6, line: 522, size: 128, elements: !4104)
!4104 = !{!4105, !4106, !4107, !4108}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !4103, file: !6, line: 529, baseType: !7, size: 32)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !4103, file: !6, line: 535, baseType: !7, size: 32, offset: 32)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !4103, file: !6, line: 545, baseType: !7, size: 32, offset: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4103, file: !6, line: 551, baseType: !197, size: 32, offset: 96)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !194, file: !6, line: 707, baseType: !4103, size: 128, offset: 10432)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !194, file: !6, line: 708, baseType: !7, size: 32, offset: 10560)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !194, file: !6, line: 710, baseType: !187, size: 16, offset: 10592)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !194, file: !6, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !2911, line: 30, baseType: !189)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!4116 = !{!0, !4117, !4122, !4127, !4132, !4137, !4142, !4203, !4208, !4214, !4217, !4219, !4222}
!4117 = !DIGlobalVariableExpression(var: !4118, expr: !DIExpression())
!4118 = distinct !DIGlobalVariable(name: "__exitcall_irtoy_driver_exit", scope: !2, file: !3, line: 504, type: !4119, isLocal: true, isDefinition: true)
!4119 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4120, line: 117, baseType: !4121)
!4120 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!4122 = !DIGlobalVariableExpression(var: !4123, expr: !DIExpression())
!4123 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author240", scope: !2, file: !3, line: 506, type: !4124, isLocal: true, isDefinition: true, align: 8)
!4124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 328, elements: !4125)
!4125 = !{!4126}
!4126 = !DISubrange(count: 41)
!4127 = !DIGlobalVariableExpression(var: !4128, expr: !DIExpression())
!4128 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description241", scope: !2, file: !3, line: 507, type: !4129, isLocal: true, isDefinition: true, align: 8)
!4129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 416, elements: !4130)
!4130 = !{!4131}
!4131 = !DISubrange(count: 52)
!4132 = !DIGlobalVariableExpression(var: !4133, expr: !DIExpression())
!4133 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file242", scope: !2, file: !3, line: 508, type: !4134, isLocal: true, isDefinition: true, align: 8)
!4134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 288, elements: !4135)
!4135 = !{!4136}
!4136 = !DISubrange(count: 36)
!4137 = !DIGlobalVariableExpression(var: !4138, expr: !DIExpression())
!4138 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license243", scope: !2, file: !3, line: 508, type: !4139, isLocal: true, isDefinition: true, align: 8)
!4139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 152, elements: !4140)
!4140 = !{!4141}
!4141 = !DISubrange(count: 19)
!4142 = !DIGlobalVariableExpression(var: !4143, expr: !DIExpression())
!4143 = distinct !DIGlobalVariable(name: "irtoy_driver", scope: !2, file: !3, line: 497, type: !4144, isLocal: true, isDefinition: true)
!4144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !6, line: 1184, size: 2112, elements: !4145)
!4145 = !{!4146, !4147, !4168, !4172, !4176, !4180, !4184, !4185, !4186, !4187, !4188, !4189, !4194, !4199, !4200, !4201, !4202}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4144, file: !6, line: 1185, baseType: !232, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4144, file: !6, line: 1187, baseType: !4148, size: 64, offset: 64)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!197, !4005, !4151}
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4153)
!4153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3469, line: 121, size: 256, elements: !4154)
!4154 = !{!4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !4153, file: !3469, line: 123, baseType: !189, size: 16)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !4153, file: !3469, line: 126, baseType: !189, size: 16, offset: 16)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !4153, file: !3469, line: 127, baseType: !189, size: 16, offset: 32)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !4153, file: !3469, line: 128, baseType: !189, size: 16, offset: 48)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !4153, file: !3469, line: 129, baseType: !189, size: 16, offset: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !4153, file: !3469, line: 132, baseType: !1361, size: 8, offset: 80)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !4153, file: !3469, line: 133, baseType: !1361, size: 8, offset: 88)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !4153, file: !3469, line: 134, baseType: !1361, size: 8, offset: 96)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4153, file: !3469, line: 137, baseType: !1361, size: 8, offset: 104)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4153, file: !3469, line: 138, baseType: !1361, size: 8, offset: 112)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4153, file: !3469, line: 139, baseType: !1361, size: 8, offset: 120)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4153, file: !3469, line: 142, baseType: !1361, size: 8, offset: 128)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4153, file: !3469, line: 145, baseType: !3488, size: 64, align: 64, offset: 192)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4144, file: !6, line: 1190, baseType: !4169, size: 64, offset: 128)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{null, !4005}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4144, file: !6, line: 1192, baseType: !4173, size: 64, offset: 192)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!197, !4005, !7, !192}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4144, file: !6, line: 1195, baseType: !4177, size: 64, offset: 256)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!197, !4005, !3499}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4144, file: !6, line: 1196, baseType: !4181, size: 64, offset: 320)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!197, !4005}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !4144, file: !6, line: 1197, baseType: !4181, size: 64, offset: 384)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !4144, file: !6, line: 1199, baseType: !4181, size: 64, offset: 448)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !4144, file: !6, line: 1200, baseType: !4181, size: 64, offset: 512)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4144, file: !6, line: 1202, baseType: !4151, size: 64, offset: 576)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4144, file: !6, line: 1203, baseType: !342, size: 64, offset: 640)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4144, file: !6, line: 1205, baseType: !4190, size: 128, offset: 704)
!4190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !6, line: 1091, size: 128, elements: !4191)
!4191 = !{!4192, !4193}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4190, file: !6, line: 1092, baseType: !248)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4190, file: !6, line: 1093, baseType: !235, size: 128)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !4144, file: !6, line: 1206, baseType: !4195, size: 1216, offset: 832)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !6, line: 1113, size: 1216, elements: !4196)
!4196 = !{!4197, !4198}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4195, file: !6, line: 1114, baseType: !3457, size: 1152)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !4195, file: !6, line: 1115, baseType: !197, size: 32, offset: 1152)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !4144, file: !6, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !4144, file: !6, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !4144, file: !6, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !4144, file: !6, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!4203 = !DIGlobalVariableExpression(var: !4204, expr: !DIExpression())
!4204 = distinct !DIGlobalVariable(name: "__key", scope: !4205, file: !1511, line: 88, type: !655, isLocal: true, isDefinition: true)
!4205 = distinct !DISubprogram(name: "__init_completion", scope: !1511, file: !1511, line: 85, type: !4206, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{null, !1509}
!4208 = !DIGlobalVariableExpression(var: !4209, expr: !DIExpression())
!4209 = distinct !DIGlobalVariable(name: "COMMAND_RESET", scope: !2, file: !3, line: 25, type: !4210, isLocal: true, isDefinition: true)
!4210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4211, size: 56, elements: !4212)
!4211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1360)
!4212 = !{!4213}
!4213 = !DISubrange(count: 7)
!4214 = !DIGlobalVariableExpression(var: !4215, expr: !DIExpression())
!4215 = distinct !DIGlobalVariable(name: "COMMAND_VERSION", scope: !2, file: !3, line: 23, type: !4216, isLocal: true, isDefinition: true)
!4216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4211, size: 8, elements: !1379)
!4217 = !DIGlobalVariableExpression(var: !4218, expr: !DIExpression())
!4218 = distinct !DIGlobalVariable(name: "COMMAND_SMODE_ENTER", scope: !2, file: !3, line: 26, type: !4216, isLocal: true, isDefinition: true)
!4219 = !DIGlobalVariableExpression(var: !4220, expr: !DIExpression())
!4220 = distinct !DIGlobalVariable(name: "COMMAND_TXSTART", scope: !2, file: !3, line: 27, type: !4221, isLocal: true, isDefinition: true)
!4221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4211, size: 32, elements: !1163)
!4222 = !DIGlobalVariableExpression(var: !4223, expr: !DIExpression())
!4223 = distinct !DIGlobalVariable(name: "irtoy_table", scope: !2, file: !3, line: 492, type: !4224, isLocal: true, isDefinition: true)
!4224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4152, size: 512, elements: !216)
!4225 = !{i32 7, !"Dwarf Version", i32 4}
!4226 = !{i32 2, !"Debug Info Version", i32 3}
!4227 = !{i32 1, !"wchar_size", i32 2}
!4228 = !{i32 1, !"Code Model", i32 2}
!4229 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4230 = distinct !DISubprogram(name: "irtoy_driver_init", scope: !3, file: !3, line: 504, type: !4231, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!197}
!4233 = !DILocation(line: 504, column: 1, scope: !4230)
!4234 = distinct !DISubprogram(name: "irtoy_driver_exit", scope: !3, file: !3, line: 504, type: !1883, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!4235 = !DILocation(line: 504, column: 1, scope: !4234)
!4236 = distinct !DISubprogram(name: "irtoy_probe", scope: !3, file: !3, line: 341, type: !4149, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!4237 = !DILocalVariable(name: "s", arg: 1, scope: !4238, file: !175, line: 445, type: !943)
!4238 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !175, file: !175, line: 445, type: !4239, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!192, !943, !185, !335}
!4241 = !DILocation(line: 445, column: 72, scope: !4238, inlinedAt: !4242)
!4242 = distinct !DILocation(line: 552, column: 10, scope: !4243, inlinedAt: !4248)
!4243 = distinct !DILexicalBlock(scope: !4244, file: !175, line: 540, column: 34)
!4244 = distinct !DILexicalBlock(scope: !4245, file: !175, line: 540, column: 6)
!4245 = distinct !DISubprogram(name: "kmalloc", scope: !175, file: !175, line: 538, type: !4246, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!192, !335, !185}
!4248 = distinct !DILocation(line: 379, column: 15, scope: !4236)
!4249 = !DILocalVariable(name: "flags", arg: 2, scope: !4238, file: !175, line: 446, type: !185)
!4250 = !DILocation(line: 446, column: 9, scope: !4238, inlinedAt: !4242)
!4251 = !DILocalVariable(name: "size", arg: 3, scope: !4238, file: !175, line: 446, type: !335)
!4252 = !DILocation(line: 446, column: 23, scope: !4238, inlinedAt: !4242)
!4253 = !DILocalVariable(name: "ret", scope: !4238, file: !175, line: 448, type: !192)
!4254 = !DILocation(line: 448, column: 8, scope: !4238, inlinedAt: !4242)
!4255 = !DILocalVariable(name: "flags", arg: 1, scope: !4256, file: !175, line: 318, type: !185)
!4256 = distinct !DISubprogram(name: "kmalloc_type", scope: !175, file: !175, line: 318, type: !4257, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!174, !185}
!4259 = !DILocation(line: 318, column: 67, scope: !4256, inlinedAt: !4260)
!4260 = distinct !DILocation(line: 553, column: 20, scope: !4243, inlinedAt: !4248)
!4261 = !DILocalVariable(name: "size", arg: 1, scope: !4262, file: !175, line: 346, type: !335)
!4262 = distinct !DISubprogram(name: "kmalloc_index", scope: !175, file: !175, line: 346, type: !4263, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!7, !335}
!4265 = !DILocation(line: 346, column: 58, scope: !4262, inlinedAt: !4266)
!4266 = distinct !DILocation(line: 547, column: 11, scope: !4243, inlinedAt: !4248)
!4267 = !DILocalVariable(name: "size", arg: 1, scope: !4268, file: !175, line: 472, type: !335)
!4268 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !175, file: !175, line: 472, type: !4269, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!192, !335, !185, !7}
!4271 = !DILocation(line: 472, column: 28, scope: !4268, inlinedAt: !4272)
!4272 = distinct !DILocation(line: 481, column: 9, scope: !4273, inlinedAt: !4274)
!4273 = distinct !DISubprogram(name: "kmalloc_large", scope: !175, file: !175, line: 478, type: !4246, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!4274 = distinct !DILocation(line: 545, column: 11, scope: !4275, inlinedAt: !4248)
!4275 = distinct !DILexicalBlock(scope: !4243, file: !175, line: 544, column: 7)
!4276 = !DILocalVariable(name: "flags", arg: 2, scope: !4268, file: !175, line: 472, type: !185)
!4277 = !DILocation(line: 472, column: 40, scope: !4268, inlinedAt: !4272)
!4278 = !DILocalVariable(name: "order", arg: 3, scope: !4268, file: !175, line: 472, type: !7)
!4279 = !DILocation(line: 472, column: 60, scope: !4268, inlinedAt: !4272)
!4280 = !DILocalVariable(name: "size", arg: 1, scope: !4273, file: !175, line: 478, type: !335)
!4281 = !DILocation(line: 478, column: 51, scope: !4273, inlinedAt: !4274)
!4282 = !DILocalVariable(name: "flags", arg: 2, scope: !4273, file: !175, line: 478, type: !185)
!4283 = !DILocation(line: 478, column: 63, scope: !4273, inlinedAt: !4274)
!4284 = !DILocalVariable(name: "order", scope: !4273, file: !175, line: 480, type: !7)
!4285 = !DILocation(line: 480, column: 15, scope: !4273, inlinedAt: !4274)
!4286 = !DILocalVariable(name: "size", arg: 1, scope: !4245, file: !175, line: 538, type: !335)
!4287 = !DILocation(line: 538, column: 45, scope: !4245, inlinedAt: !4248)
!4288 = !DILocalVariable(name: "flags", arg: 2, scope: !4245, file: !175, line: 538, type: !185)
!4289 = !DILocation(line: 538, column: 57, scope: !4245, inlinedAt: !4248)
!4290 = !DILocalVariable(name: "index", scope: !4243, file: !175, line: 542, type: !7)
!4291 = !DILocation(line: 542, column: 16, scope: !4243, inlinedAt: !4248)
!4292 = !DILocation(line: 445, column: 72, scope: !4238, inlinedAt: !4293)
!4293 = distinct !DILocation(line: 552, column: 10, scope: !4243, inlinedAt: !4294)
!4294 = distinct !DILocation(line: 375, column: 14, scope: !4236)
!4295 = !DILocation(line: 446, column: 9, scope: !4238, inlinedAt: !4293)
!4296 = !DILocation(line: 446, column: 23, scope: !4238, inlinedAt: !4293)
!4297 = !DILocation(line: 448, column: 8, scope: !4238, inlinedAt: !4293)
!4298 = !DILocation(line: 318, column: 67, scope: !4256, inlinedAt: !4299)
!4299 = distinct !DILocation(line: 553, column: 20, scope: !4243, inlinedAt: !4294)
!4300 = !DILocation(line: 346, column: 58, scope: !4262, inlinedAt: !4301)
!4301 = distinct !DILocation(line: 547, column: 11, scope: !4243, inlinedAt: !4294)
!4302 = !DILocation(line: 472, column: 28, scope: !4268, inlinedAt: !4303)
!4303 = distinct !DILocation(line: 481, column: 9, scope: !4273, inlinedAt: !4304)
!4304 = distinct !DILocation(line: 545, column: 11, scope: !4275, inlinedAt: !4294)
!4305 = !DILocation(line: 472, column: 40, scope: !4268, inlinedAt: !4303)
!4306 = !DILocation(line: 472, column: 60, scope: !4268, inlinedAt: !4303)
!4307 = !DILocation(line: 478, column: 51, scope: !4273, inlinedAt: !4304)
!4308 = !DILocation(line: 478, column: 63, scope: !4273, inlinedAt: !4304)
!4309 = !DILocation(line: 480, column: 15, scope: !4273, inlinedAt: !4304)
!4310 = !DILocation(line: 538, column: 45, scope: !4245, inlinedAt: !4294)
!4311 = !DILocation(line: 538, column: 57, scope: !4245, inlinedAt: !4294)
!4312 = !DILocation(line: 542, column: 16, scope: !4243, inlinedAt: !4294)
!4313 = !DILocalVariable(name: "intf", arg: 1, scope: !4236, file: !3, line: 341, type: !4005)
!4314 = !DILocation(line: 341, column: 46, scope: !4236)
!4315 = !DILocalVariable(name: "id", arg: 2, scope: !4236, file: !3, line: 342, type: !4151)
!4316 = !DILocation(line: 342, column: 38, scope: !4236)
!4317 = !DILocalVariable(name: "idesc", scope: !4236, file: !3, line: 344, type: !4009)
!4318 = !DILocation(line: 344, column: 29, scope: !4236)
!4319 = !DILocation(line: 344, column: 37, scope: !4236)
!4320 = !DILocation(line: 344, column: 43, scope: !4236)
!4321 = !DILocalVariable(name: "usbdev", scope: !4236, file: !3, line: 345, type: !193)
!4322 = !DILocation(line: 345, column: 21, scope: !4236)
!4323 = !DILocation(line: 345, column: 50, scope: !4236)
!4324 = !DILocation(line: 345, column: 30, scope: !4236)
!4325 = !DILocalVariable(name: "ep_in", scope: !4236, file: !3, line: 346, type: !4326)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!4327 = !DILocation(line: 346, column: 34, scope: !4236)
!4328 = !DILocalVariable(name: "ep_out", scope: !4236, file: !3, line: 347, type: !4326)
!4329 = !DILocation(line: 347, column: 34, scope: !4236)
!4330 = !DILocalVariable(name: "ep", scope: !4236, file: !3, line: 348, type: !4326)
!4331 = !DILocation(line: 348, column: 34, scope: !4236)
!4332 = !DILocalVariable(name: "irtoy", scope: !4236, file: !3, line: 349, type: !4333)
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irtoy", file: !3, line: 53, size: 1472, elements: !4335)
!4335 = !{!4336, !4337, !4338, !4725, !4787, !4788, !4790, !4791, !4792, !4793, !4794, !4795, !4797, !4798, !4799, !4800, !4801}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4334, file: !3, line: 54, baseType: !224, size: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "usbdev", scope: !4334, file: !3, line: 55, baseType: !193, size: 64, offset: 64)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !4334, file: !3, line: 57, baseType: !4339, size: 64, offset: 128)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_dev", file: !158, line: 162, size: 9536, elements: !4341)
!4341 = !{!4342, !4343, !4344, !4348, !4349, !4350, !4358, !4359, !4360, !4376, !4377, !4378, !4381, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4684, !4688, !4692, !4696, !4697, !4698, !4702, !4706, !4710, !4714, !4715, !4720, !4721}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4340, file: !158, line: 163, baseType: !225, size: 5568)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "managed_alloc", scope: !4340, file: !158, line: 164, baseType: !500, size: 8, offset: 5568)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_groups", scope: !4340, file: !158, line: 165, baseType: !4345, size: 320, offset: 5632)
!4345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 320, elements: !4346)
!4346 = !{!4347}
!4347 = !DISubrange(count: 5)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !4340, file: !158, line: 166, baseType: !232, size: 64, offset: 5952)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "input_phys", scope: !4340, file: !158, line: 167, baseType: !232, size: 64, offset: 6016)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "input_id", scope: !4340, file: !158, line: 168, baseType: !4351, size: 64, offset: 6080)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !4352, line: 59, size: 64, elements: !4353)
!4352 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!4353 = !{!4354, !4355, !4356, !4357}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4351, file: !4352, line: 60, baseType: !189, size: 16)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4351, file: !4352, line: 61, baseType: !189, size: 16, offset: 16)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4351, file: !4352, line: 62, baseType: !189, size: 16, offset: 32)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4351, file: !4352, line: 63, baseType: !189, size: 16, offset: 48)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !4340, file: !158, line: 169, baseType: !232, size: 64, offset: 6144)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "map_name", scope: !4340, file: !158, line: 170, baseType: !232, size: 64, offset: 6208)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "rc_map", scope: !4340, file: !158, line: 171, baseType: !4361, size: 256, offset: 6272)
!4361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map", file: !4362, line: 157, size: 256, elements: !4363)
!4362 = !DIFile(filename: "./include/media/rc-map.h", directory: "/home/lizy2001/genbc/linux")
!4363 = !{!4364, !4370, !4371, !4372, !4373, !4374, !4375}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "scan", scope: !4361, file: !4362, line: 158, baseType: !4365, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map_table", file: !4362, line: 140, size: 128, elements: !4367)
!4367 = !{!4368, !4369}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !4366, file: !4362, line: 141, baseType: !431, size: 64)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4366, file: !4362, line: 142, baseType: !204, size: 32, offset: 64)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4361, file: !4362, line: 159, baseType: !7, size: 32, offset: 64)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4361, file: !4362, line: 160, baseType: !7, size: 32, offset: 96)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4361, file: !4362, line: 161, baseType: !7, size: 32, offset: 128)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "rc_proto", scope: !4361, file: !4362, line: 162, baseType: !126, size: 32, offset: 160)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4361, file: !4362, line: 163, baseType: !232, size: 64, offset: 192)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4361, file: !4362, line: 164, baseType: !248, offset: 256)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4340, file: !158, line: 172, baseType: !1181, size: 192, offset: 6528)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4340, file: !158, line: 173, baseType: !7, size: 32, offset: 6720)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4340, file: !158, line: 174, baseType: !4379, size: 64, offset: 6784)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DICompositeType(tag: DW_TAG_structure_type, name: "ir_raw_event_ctrl", file: !158, line: 174, flags: DIFlagFwdDecl)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "input_dev", scope: !4340, file: !158, line: 175, baseType: !4382, size: 64, offset: 6848)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !4384, line: 131, size: 10432, elements: !4385)
!4384 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!4385 = !{!4386, !4387, !4388, !4389, !4390, !4391, !4392, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4419, !4424, !4519, !4522, !4523, !4524, !4526, !4529, !4539, !4540, !4541, !4542, !4543, !4547, !4551, !4555, !4559, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4646, !4647}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4383, file: !4384, line: 132, baseType: !232, size: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4383, file: !4384, line: 133, baseType: !232, size: 64, offset: 64)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !4383, file: !4384, line: 134, baseType: !232, size: 64, offset: 128)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4383, file: !4384, line: 135, baseType: !4351, size: 64, offset: 192)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4383, file: !4384, line: 137, baseType: !1378, size: 64, offset: 256)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4383, file: !4384, line: 139, baseType: !1378, size: 64, offset: 320)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4383, file: !4384, line: 140, baseType: !4393, size: 768, offset: 384)
!4393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 768, elements: !2241)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4383, file: !4384, line: 141, baseType: !1378, size: 64, offset: 1152)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4383, file: !4384, line: 142, baseType: !1378, size: 64, offset: 1216)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4383, file: !4384, line: 143, baseType: !1378, size: 64, offset: 1280)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4383, file: !4384, line: 144, baseType: !1378, size: 64, offset: 1344)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4383, file: !4384, line: 145, baseType: !1378, size: 64, offset: 1408)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4383, file: !4384, line: 146, baseType: !3847, size: 128, offset: 1472)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4383, file: !4384, line: 147, baseType: !1378, size: 64, offset: 1600)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !4383, file: !4384, line: 149, baseType: !7, size: 32, offset: 1664)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !4383, file: !4384, line: 151, baseType: !7, size: 32, offset: 1696)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !4383, file: !4384, line: 152, baseType: !7, size: 32, offset: 1728)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4383, file: !4384, line: 153, baseType: !192, size: 64, offset: 1792)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !4383, file: !4384, line: 155, baseType: !4406, size: 64, offset: 1856)
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{!197, !4382, !4409, !2688}
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4411)
!4411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !4352, line: 114, size: 320, elements: !4412)
!4412 = !{!4413, !4414, !4415, !4416, !4417}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4411, file: !4352, line: 116, baseType: !1361, size: 8)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4411, file: !4352, line: 117, baseType: !1361, size: 8, offset: 8)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4411, file: !4352, line: 118, baseType: !189, size: 16, offset: 16)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4411, file: !4352, line: 119, baseType: !205, size: 32, offset: 32)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !4411, file: !4352, line: 120, baseType: !4418, size: 256, offset: 64)
!4418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1361, size: 256, elements: !2235)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !4383, file: !4384, line: 158, baseType: !4420, size: 64, offset: 1920)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!197, !4382, !4423}
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !4383, file: !4384, line: 161, baseType: !4425, size: 64, offset: 1984)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !4384, line: 534, size: 896, elements: !4427)
!4427 = !{!4428, !4495, !4499, !4503, !4507, !4508, !4512, !4513, !4514, !4515, !4516, !4517}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !4426, file: !4384, line: 535, baseType: !4429, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!197, !4382, !4432, !4432}
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !4352, line: 450, size: 384, elements: !4434)
!4434 = !{!4435, !4436, !4437, !4438, !4443, !4448}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4433, file: !4352, line: 451, baseType: !189, size: 16)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4433, file: !4352, line: 452, baseType: !1212, size: 16, offset: 16)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !4433, file: !4352, line: 453, baseType: !189, size: 16, offset: 32)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !4433, file: !4352, line: 454, baseType: !4439, size: 32, offset: 48)
!4439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !4352, line: 316, size: 32, elements: !4440)
!4440 = !{!4441, !4442}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !4439, file: !4352, line: 317, baseType: !189, size: 16)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4439, file: !4352, line: 318, baseType: !189, size: 16, offset: 16)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !4433, file: !4352, line: 455, baseType: !4444, size: 32, offset: 80)
!4444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !4352, line: 306, size: 32, elements: !4445)
!4445 = !{!4446, !4447}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4444, file: !4352, line: 307, baseType: !189, size: 16)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4444, file: !4352, line: 308, baseType: !189, size: 16, offset: 16)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !4433, file: !4352, line: 463, baseType: !4449, size: 256, offset: 128)
!4449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4433, file: !4352, line: 457, size: 256, elements: !4450)
!4450 = !{!4451, !4462, !4468, !4480, !4490}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !4449, file: !4352, line: 458, baseType: !4452, size: 80)
!4452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !4352, line: 345, size: 80, elements: !4453)
!4453 = !{!4454, !4455}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4452, file: !4352, line: 346, baseType: !1212, size: 16)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4452, file: !4352, line: 347, baseType: !4456, size: 64, offset: 16)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !4352, line: 333, size: 64, elements: !4457)
!4457 = !{!4458, !4459, !4460, !4461}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !4456, file: !4352, line: 334, baseType: !189, size: 16)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !4456, file: !4352, line: 335, baseType: !189, size: 16, offset: 16)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !4456, file: !4352, line: 336, baseType: !189, size: 16, offset: 32)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !4456, file: !4352, line: 337, baseType: !189, size: 16, offset: 48)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !4449, file: !4352, line: 459, baseType: !4463, size: 96)
!4463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !4352, line: 356, size: 96, elements: !4464)
!4464 = !{!4465, !4466, !4467}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !4463, file: !4352, line: 357, baseType: !1212, size: 16)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !4463, file: !4352, line: 358, baseType: !1212, size: 16, offset: 16)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4463, file: !4352, line: 359, baseType: !4456, size: 64, offset: 32)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !4449, file: !4352, line: 460, baseType: !4469, size: 256)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !4352, line: 401, size: 256, elements: !4470)
!4470 = !{!4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !4469, file: !4352, line: 402, baseType: !189, size: 16)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4469, file: !4352, line: 403, baseType: !189, size: 16, offset: 16)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !4469, file: !4352, line: 404, baseType: !1212, size: 16, offset: 32)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4469, file: !4352, line: 405, baseType: !1212, size: 16, offset: 48)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !4469, file: !4352, line: 406, baseType: !189, size: 16, offset: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4469, file: !4352, line: 408, baseType: !4456, size: 64, offset: 80)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !4469, file: !4352, line: 410, baseType: !205, size: 32, offset: 160)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !4469, file: !4352, line: 411, baseType: !4479, size: 64, offset: 192)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4449, file: !4352, line: 461, baseType: !4481, size: 192)
!4481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4482, size: 192, elements: !216)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !4352, line: 372, size: 96, elements: !4483)
!4483 = !{!4484, !4485, !4486, !4487, !4488, !4489}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !4482, file: !4352, line: 373, baseType: !189, size: 16)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !4482, file: !4352, line: 374, baseType: !189, size: 16, offset: 16)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !4482, file: !4352, line: 376, baseType: !1212, size: 16, offset: 32)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !4482, file: !4352, line: 377, baseType: !1212, size: 16, offset: 48)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !4482, file: !4352, line: 379, baseType: !189, size: 16, offset: 64)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !4482, file: !4352, line: 380, baseType: !1212, size: 16, offset: 80)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !4449, file: !4352, line: 462, baseType: !4491, size: 32)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !4352, line: 422, size: 32, elements: !4492)
!4492 = !{!4493, !4494}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !4491, file: !4352, line: 423, baseType: !189, size: 16)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !4491, file: !4352, line: 424, baseType: !189, size: 16, offset: 16)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !4426, file: !4384, line: 537, baseType: !4496, size: 64, offset: 64)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!197, !4382, !197}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !4426, file: !4384, line: 539, baseType: !4500, size: 64, offset: 128)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DISubroutineType(types: !4502)
!4502 = !{!197, !4382, !197, !197}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !4426, file: !4384, line: 540, baseType: !4504, size: 64, offset: 192)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{null, !4382, !187}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !4426, file: !4384, line: 541, baseType: !4504, size: 64, offset: 256)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4426, file: !4384, line: 543, baseType: !4509, size: 64, offset: 320)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DISubroutineType(types: !4511)
!4511 = !{null, !4425}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4426, file: !4384, line: 545, baseType: !192, size: 64, offset: 384)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4426, file: !4384, line: 547, baseType: !3847, size: 128, offset: 448)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4426, file: !4384, line: 549, baseType: !1181, size: 192, offset: 576)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !4426, file: !4384, line: 551, baseType: !197, size: 32, offset: 768)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !4426, file: !4384, line: 552, baseType: !4432, size: 64, offset: 832)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !4426, file: !4384, line: 553, baseType: !4518, offset: 896)
!4518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, elements: !2336)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !4383, file: !4384, line: 163, baseType: !4520, size: 64, offset: 2048)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !4384, line: 24, flags: DIFlagFwdDecl)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !4383, file: !4384, line: 165, baseType: !7, size: 32, offset: 2112)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4383, file: !4384, line: 166, baseType: !3576, size: 320, offset: 2176)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !4383, file: !4384, line: 168, baseType: !4525, size: 64, offset: 2496)
!4525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 64, elements: !216)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !4383, file: !4384, line: 170, baseType: !4527, size: 64, offset: 2560)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !4384, line: 170, flags: DIFlagFwdDecl)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !4383, file: !4384, line: 172, baseType: !4530, size: 64, offset: 2624)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !4352, line: 90, size: 192, elements: !4532)
!4532 = !{!4533, !4534, !4535, !4536, !4537, !4538}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4531, file: !4352, line: 91, baseType: !1453, size: 32)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4531, file: !4352, line: 92, baseType: !1453, size: 32, offset: 32)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4531, file: !4352, line: 93, baseType: !1453, size: 32, offset: 64)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4531, file: !4352, line: 94, baseType: !1453, size: 32, offset: 96)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4531, file: !4352, line: 95, baseType: !1453, size: 32, offset: 128)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4531, file: !4352, line: 96, baseType: !1453, size: 32, offset: 160)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4383, file: !4384, line: 174, baseType: !4393, size: 768, offset: 2688)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !4383, file: !4384, line: 175, baseType: !1378, size: 64, offset: 3456)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !4383, file: !4384, line: 176, baseType: !1378, size: 64, offset: 3520)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !4383, file: !4384, line: 177, baseType: !1378, size: 64, offset: 3584)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4383, file: !4384, line: 179, baseType: !4544, size: 64, offset: 3648)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DISubroutineType(types: !4546)
!4546 = !{!197, !4382}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4383, file: !4384, line: 180, baseType: !4548, size: 64, offset: 3712)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{null, !4382}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4383, file: !4384, line: 181, baseType: !4552, size: 64, offset: 3776)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!197, !4382, !366}
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4383, file: !4384, line: 182, baseType: !4556, size: 64, offset: 3840)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = !DISubroutineType(types: !4558)
!4558 = !{!197, !4382, !7, !7, !197}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !4383, file: !4384, line: 184, baseType: !4560, size: 64, offset: 3904)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !4384, line: 337, size: 576, elements: !4562)
!4562 = !{!4563, !4564, !4565, !4566, !4567, !4633, !4634}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4561, file: !4384, line: 339, baseType: !192, size: 64)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4561, file: !4384, line: 341, baseType: !197, size: 32, offset: 64)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4561, file: !4384, line: 342, baseType: !232, size: 64, offset: 128)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4561, file: !4384, line: 344, baseType: !4382, size: 64, offset: 192)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4561, file: !4384, line: 345, baseType: !4568, size: 64, offset: 256)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !4384, line: 302, size: 960, elements: !4570)
!4570 = !{!4571, !4572, !4576, !4587, !4591, !4595, !4622, !4626, !4627, !4628, !4629, !4630, !4631, !4632}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4569, file: !4384, line: 304, baseType: !192, size: 64)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4569, file: !4384, line: 306, baseType: !4573, size: 64, offset: 64)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DISubroutineType(types: !4575)
!4575 = !{null, !4560, !7, !7, !197}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4569, file: !4384, line: 307, baseType: !4577, size: 64, offset: 128)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{null, !4560, !4580, !7}
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4582)
!4582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !4384, line: 32, size: 64, elements: !4583)
!4583 = !{!4584, !4585, !4586}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4582, file: !4384, line: 33, baseType: !189, size: 16)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4582, file: !4384, line: 34, baseType: !189, size: 16, offset: 16)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4582, file: !4384, line: 35, baseType: !1453, size: 32, offset: 32)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4569, file: !4384, line: 309, baseType: !4588, size: 64, offset: 192)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!500, !4560, !7, !7, !197}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4569, file: !4384, line: 310, baseType: !4592, size: 64, offset: 256)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!500, !4568, !4382}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4569, file: !4384, line: 311, baseType: !4596, size: 64, offset: 320)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!197, !4568, !4382, !4599}
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4601)
!4601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3469, line: 342, size: 1600, elements: !4602)
!4602 = !{!4603, !4604, !4605, !4606, !4607, !4608, !4610, !4612, !4613, !4614, !4615, !4616, !4617, !4619, !4620, !4621}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4601, file: !3469, line: 344, baseType: !3488, size: 64)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4601, file: !3469, line: 346, baseType: !189, size: 16, offset: 64)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4601, file: !3469, line: 347, baseType: !189, size: 16, offset: 80)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4601, file: !3469, line: 348, baseType: !189, size: 16, offset: 96)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4601, file: !3469, line: 349, baseType: !189, size: 16, offset: 112)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4601, file: !3469, line: 351, baseType: !4609, size: 64, offset: 128)
!4609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3488, size: 64, elements: !1379)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4601, file: !3469, line: 352, baseType: !4611, size: 768, offset: 192)
!4611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3488, size: 768, elements: !2241)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4601, file: !3469, line: 353, baseType: !4609, size: 64, offset: 960)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4601, file: !3469, line: 354, baseType: !4609, size: 64, offset: 1024)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4601, file: !3469, line: 355, baseType: !4609, size: 64, offset: 1088)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4601, file: !3469, line: 356, baseType: !4609, size: 64, offset: 1152)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4601, file: !3469, line: 357, baseType: !4609, size: 64, offset: 1216)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4601, file: !3469, line: 358, baseType: !4618, size: 128, offset: 1280)
!4618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3488, size: 128, elements: !216)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4601, file: !3469, line: 359, baseType: !4609, size: 64, offset: 1408)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4601, file: !3469, line: 360, baseType: !4609, size: 64, offset: 1472)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4601, file: !3469, line: 362, baseType: !3488, size: 64, offset: 1536)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4569, file: !4384, line: 312, baseType: !4623, size: 64, offset: 384)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{null, !4560}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4569, file: !4384, line: 313, baseType: !4623, size: 64, offset: 448)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4569, file: !4384, line: 315, baseType: !500, size: 8, offset: 512)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4569, file: !4384, line: 316, baseType: !197, size: 32, offset: 544)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4569, file: !4384, line: 317, baseType: !232, size: 64, offset: 576)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4569, file: !4384, line: 319, baseType: !4599, size: 64, offset: 640)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4569, file: !4384, line: 321, baseType: !235, size: 128, offset: 704)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4569, file: !4384, line: 322, baseType: !235, size: 128, offset: 832)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4561, file: !4384, line: 347, baseType: !235, size: 128, offset: 320)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4561, file: !4384, line: 348, baseType: !235, size: 128, offset: 448)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !4383, file: !4384, line: 186, baseType: !248, offset: 3968)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4383, file: !4384, line: 187, baseType: !1181, size: 192, offset: 3968)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4383, file: !4384, line: 189, baseType: !7, size: 32, offset: 4160)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !4383, file: !4384, line: 190, baseType: !500, size: 8, offset: 4192)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4383, file: !4384, line: 192, baseType: !225, size: 5568, offset: 4224)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4383, file: !4384, line: 194, baseType: !235, size: 128, offset: 9792)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4383, file: !4384, line: 195, baseType: !235, size: 128, offset: 9920)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !4383, file: !4384, line: 197, baseType: !7, size: 32, offset: 10048)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !4383, file: !4384, line: 198, baseType: !7, size: 32, offset: 10080)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !4383, file: !4384, line: 199, baseType: !4645, size: 64, offset: 10112)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !4383, file: !4384, line: 201, baseType: !500, size: 8, offset: 10176)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4383, file: !4384, line: 203, baseType: !4648, size: 192, offset: 10240)
!4648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1308, size: 192, elements: !290)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "driver_type", scope: !4340, file: !158, line: 176, baseType: !157, size: 32, offset: 6912)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !4340, file: !158, line: 177, baseType: !500, size: 8, offset: 6944)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "encode_wakeup", scope: !4340, file: !158, line: 178, baseType: !500, size: 8, offset: 6952)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_protocols", scope: !4340, file: !158, line: 179, baseType: !431, size: 64, offset: 6976)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "enabled_protocols", scope: !4340, file: !158, line: 180, baseType: !431, size: 64, offset: 7040)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_wakeup_protocols", scope: !4340, file: !158, line: 181, baseType: !431, size: 64, offset: 7104)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_protocol", scope: !4340, file: !158, line: 182, baseType: !126, size: 32, offset: 7168)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "scancode_filter", scope: !4340, file: !158, line: 183, baseType: !4657, size: 64, offset: 7200)
!4657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_scancode_filter", file: !158, line: 38, size: 64, elements: !4658)
!4658 = !{!4659, !4660}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4657, file: !158, line: 39, baseType: !204, size: 32)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4657, file: !158, line: 40, baseType: !204, size: 32, offset: 32)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "scancode_wakeup_filter", scope: !4340, file: !158, line: 184, baseType: !4657, size: 64, offset: 7264)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "scancode_mask", scope: !4340, file: !158, line: 185, baseType: !204, size: 32, offset: 7328)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4340, file: !158, line: 186, baseType: !204, size: 32, offset: 7360)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4340, file: !158, line: 187, baseType: !192, size: 64, offset: 7424)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "keylock", scope: !4340, file: !158, line: 188, baseType: !248, offset: 7488)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "keypressed", scope: !4340, file: !158, line: 189, baseType: !500, size: 8, offset: 7488)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "keyup_jiffies", scope: !4340, file: !158, line: 190, baseType: !338, size: 64, offset: 7552)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "timer_keyup", scope: !4340, file: !158, line: 191, baseType: !3576, size: 320, offset: 7616)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "timer_repeat", scope: !4340, file: !158, line: 192, baseType: !3576, size: 320, offset: 7936)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "last_keycode", scope: !4340, file: !158, line: 193, baseType: !204, size: 32, offset: 8256)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "last_protocol", scope: !4340, file: !158, line: 194, baseType: !126, size: 32, offset: 8288)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "last_scancode", scope: !4340, file: !158, line: 195, baseType: !431, size: 64, offset: 8320)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "last_toggle", scope: !4340, file: !158, line: 196, baseType: !1360, size: 8, offset: 8384)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4340, file: !158, line: 197, baseType: !204, size: 32, offset: 8416)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "min_timeout", scope: !4340, file: !158, line: 198, baseType: !204, size: 32, offset: 8448)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "max_timeout", scope: !4340, file: !158, line: 199, baseType: !204, size: 32, offset: 8480)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "rx_resolution", scope: !4340, file: !158, line: 200, baseType: !204, size: 32, offset: 8512)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "tx_resolution", scope: !4340, file: !158, line: 201, baseType: !204, size: 32, offset: 8544)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4340, file: !158, line: 211, baseType: !500, size: 8, offset: 8576)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "change_protocol", scope: !4340, file: !158, line: 212, baseType: !4681, size: 64, offset: 8640)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = !DISubroutineType(types: !4683)
!4683 = !{!197, !4339, !3672}
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4340, file: !158, line: 213, baseType: !4685, size: 64, offset: 8704)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!197, !4339}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4340, file: !158, line: 214, baseType: !4689, size: 64, offset: 8768)
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{null, !4339}
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "s_tx_mask", scope: !4340, file: !158, line: 215, baseType: !4693, size: 64, offset: 8832)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DISubroutineType(types: !4695)
!4695 = !{!197, !4339, !204}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "s_tx_carrier", scope: !4340, file: !158, line: 216, baseType: !4693, size: 64, offset: 8896)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "s_tx_duty_cycle", scope: !4340, file: !158, line: 217, baseType: !4693, size: 64, offset: 8960)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "s_rx_carrier_range", scope: !4340, file: !158, line: 218, baseType: !4699, size: 64, offset: 9024)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DISubroutineType(types: !4701)
!4701 = !{!197, !4339, !204, !204}
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "tx_ir", scope: !4340, file: !158, line: 219, baseType: !4703, size: 64, offset: 9088)
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{!197, !4339, !2688, !7}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "s_idle", scope: !4340, file: !158, line: 220, baseType: !4707, size: 64, offset: 9152)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = !DISubroutineType(types: !4709)
!4709 = !{null, !4339, !500}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "s_learning_mode", scope: !4340, file: !158, line: 221, baseType: !4711, size: 64, offset: 9216)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DISubroutineType(types: !4713)
!4713 = !{!197, !4339, !197}
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "s_carrier_report", scope: !4340, file: !158, line: 222, baseType: !4711, size: 64, offset: 9280)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "s_filter", scope: !4340, file: !158, line: 223, baseType: !4716, size: 64, offset: 9344)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = !DISubroutineType(types: !4718)
!4718 = !{!197, !4339, !4719}
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "s_wakeup_filter", scope: !4340, file: !158, line: 225, baseType: !4716, size: 64, offset: 9408)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "s_timeout", scope: !4340, file: !158, line: 227, baseType: !4722, size: 64, offset: 9472)
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = !DISubroutineType(types: !4724)
!4724 = !{!197, !4339, !7}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "urb_in", scope: !4334, file: !3, line: 58, baseType: !4726, size: 64, offset: 192)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !6, line: 1561, size: 1472, elements: !4728)
!4728 = !{!4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4779}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4727, file: !6, line: 1563, baseType: !3376, size: 32)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !4727, file: !6, line: 1564, baseType: !197, size: 32, offset: 32)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4727, file: !6, line: 1565, baseType: !192, size: 64, offset: 64)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4727, file: !6, line: 1566, baseType: !757, size: 32, offset: 128)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !4727, file: !6, line: 1567, baseType: !757, size: 32, offset: 160)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4727, file: !6, line: 1570, baseType: !235, size: 128, offset: 192)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !4727, file: !6, line: 1572, baseType: !235, size: 128, offset: 320)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !4727, file: !6, line: 1573, baseType: !4737, size: 64, offset: 448)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !6, line: 1360, size: 320, elements: !4739)
!4739 = !{!4740, !4741, !4742, !4743, !4744}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4738, file: !6, line: 1361, baseType: !235, size: 128)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4738, file: !6, line: 1362, baseType: !1489, size: 128, offset: 128)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4738, file: !6, line: 1363, baseType: !248, offset: 256)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !4738, file: !6, line: 1364, baseType: !757, size: 32, offset: 256)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !4738, file: !6, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4727, file: !6, line: 1574, baseType: !193, size: 64, offset: 512)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !4727, file: !6, line: 1575, baseType: !4027, size: 64, offset: 576)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4727, file: !6, line: 1576, baseType: !7, size: 32, offset: 640)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4727, file: !6, line: 1577, baseType: !7, size: 32, offset: 672)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4727, file: !6, line: 1578, baseType: !197, size: 32, offset: 704)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !4727, file: !6, line: 1579, baseType: !7, size: 32, offset: 736)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !4727, file: !6, line: 1580, baseType: !192, size: 64, offset: 768)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !4727, file: !6, line: 1581, baseType: !928, size: 64, offset: 832)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !4727, file: !6, line: 1582, baseType: !4754, size: 64, offset: 896)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4756, line: 11, size: 256, elements: !4757)
!4756 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!4757 = !{!4758, !4759, !4760, !4761, !4762}
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4755, file: !4756, line: 12, baseType: !338, size: 64)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4755, file: !4756, line: 13, baseType: !7, size: 32, offset: 64)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4755, file: !4756, line: 14, baseType: !7, size: 32, offset: 96)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4755, file: !4756, line: 15, baseType: !928, size: 64, offset: 128)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4755, file: !4756, line: 17, baseType: !7, size: 32, offset: 192)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !4727, file: !6, line: 1583, baseType: !197, size: 32, offset: 960)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !4727, file: !6, line: 1584, baseType: !197, size: 32, offset: 992)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !4727, file: !6, line: 1585, baseType: !204, size: 32, offset: 1024)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4727, file: !6, line: 1586, baseType: !204, size: 32, offset: 1056)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !4727, file: !6, line: 1587, baseType: !3891, size: 64, offset: 1088)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !4727, file: !6, line: 1588, baseType: !928, size: 64, offset: 1152)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !4727, file: !6, line: 1589, baseType: !197, size: 32, offset: 1216)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !4727, file: !6, line: 1590, baseType: !197, size: 32, offset: 1248)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4727, file: !6, line: 1591, baseType: !197, size: 32, offset: 1280)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !4727, file: !6, line: 1593, baseType: !197, size: 32, offset: 1312)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4727, file: !6, line: 1594, baseType: !192, size: 64, offset: 1344)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4727, file: !6, line: 1595, baseType: !4775, size: 64, offset: 1408)
!4775 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !6, line: 1376, baseType: !4776)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{null, !4726}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !4727, file: !6, line: 1596, baseType: !4780, offset: 1472)
!4780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4781, elements: !2336)
!4781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !6, line: 1351, size: 128, elements: !4782)
!4782 = !{!4783, !4784, !4785, !4786}
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4781, file: !6, line: 1352, baseType: !7, size: 32)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4781, file: !6, line: 1353, baseType: !7, size: 32, offset: 32)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4781, file: !6, line: 1354, baseType: !7, size: 32, offset: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4781, file: !6, line: 1355, baseType: !197, size: 32, offset: 96)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "urb_out", scope: !4334, file: !3, line: 58, baseType: !4726, size: 64, offset: 256)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !4334, file: !3, line: 60, baseType: !4789, size: 64, offset: 320)
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !4334, file: !3, line: 61, baseType: !4789, size: 64, offset: 384)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "command_done", scope: !4334, file: !3, line: 62, baseType: !1510, size: 192, offset: 448)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "pulse", scope: !4334, file: !3, line: 64, baseType: !500, size: 8, offset: 640)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4334, file: !3, line: 65, baseType: !163, size: 32, offset: 672)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "tx_buf", scope: !4334, file: !3, line: 67, baseType: !192, size: 64, offset: 704)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "tx_len", scope: !4334, file: !3, line: 68, baseType: !4796, size: 32, offset: 768)
!4796 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint", file: !186, line: 87, baseType: !7)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "emitted", scope: !4334, file: !3, line: 70, baseType: !4796, size: 32, offset: 800)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "hw_version", scope: !4334, file: !3, line: 71, baseType: !4796, size: 32, offset: 832)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "sw_version", scope: !4334, file: !3, line: 72, baseType: !4796, size: 32, offset: 864)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "proto_version", scope: !4334, file: !3, line: 73, baseType: !4796, size: 32, offset: 896)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4334, file: !3, line: 75, baseType: !4802, size: 512, offset: 928)
!4802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 512, elements: !294)
!4803 = !DILocation(line: 349, column: 16, scope: !4236)
!4804 = !DILocalVariable(name: "rc", scope: !4236, file: !3, line: 350, type: !4339)
!4805 = !DILocation(line: 350, column: 17, scope: !4236)
!4806 = !DILocalVariable(name: "urb", scope: !4236, file: !3, line: 351, type: !4726)
!4807 = !DILocation(line: 351, column: 14, scope: !4236)
!4808 = !DILocalVariable(name: "i", scope: !4236, file: !3, line: 352, type: !197)
!4809 = !DILocation(line: 352, column: 6, scope: !4236)
!4810 = !DILocalVariable(name: "pipe", scope: !4236, file: !3, line: 352, type: !197)
!4811 = !DILocation(line: 352, column: 9, scope: !4236)
!4812 = !DILocalVariable(name: "err", scope: !4236, file: !3, line: 352, type: !197)
!4813 = !DILocation(line: 352, column: 15, scope: !4236)
!4814 = !DILocation(line: 354, column: 9, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 354, column: 2)
!4816 = !DILocation(line: 354, column: 7, scope: !4815)
!4817 = !DILocation(line: 354, column: 14, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4815, file: !3, line: 354, column: 2)
!4819 = !DILocation(line: 354, column: 18, scope: !4818)
!4820 = !DILocation(line: 354, column: 25, scope: !4818)
!4821 = !DILocation(line: 354, column: 30, scope: !4818)
!4822 = !DILocation(line: 354, column: 16, scope: !4818)
!4823 = !DILocation(line: 354, column: 2, scope: !4815)
!4824 = !DILocation(line: 355, column: 9, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 354, column: 50)
!4826 = !DILocation(line: 355, column: 16, scope: !4825)
!4827 = !DILocation(line: 355, column: 25, scope: !4825)
!4828 = !DILocation(line: 355, column: 28, scope: !4825)
!4829 = !DILocation(line: 355, column: 6, scope: !4825)
!4830 = !DILocation(line: 357, column: 8, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4825, file: !3, line: 357, column: 7)
!4832 = !DILocation(line: 357, column: 14, scope: !4831)
!4833 = !DILocation(line: 357, column: 41, scope: !4831)
!4834 = !DILocation(line: 357, column: 17, scope: !4831)
!4835 = !DILocation(line: 357, column: 45, scope: !4831)
!4836 = !DILocation(line: 358, column: 25, scope: !4831)
!4837 = !DILocation(line: 358, column: 7, scope: !4831)
!4838 = !DILocation(line: 358, column: 29, scope: !4831)
!4839 = !DILocation(line: 357, column: 7, scope: !4825)
!4840 = !DILocation(line: 359, column: 12, scope: !4831)
!4841 = !DILocation(line: 359, column: 10, scope: !4831)
!4842 = !DILocation(line: 359, column: 4, scope: !4831)
!4843 = !DILocation(line: 361, column: 8, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4825, file: !3, line: 361, column: 7)
!4845 = !DILocation(line: 361, column: 15, scope: !4844)
!4846 = !DILocation(line: 361, column: 43, scope: !4844)
!4847 = !DILocation(line: 361, column: 18, scope: !4844)
!4848 = !DILocation(line: 361, column: 47, scope: !4844)
!4849 = !DILocation(line: 362, column: 25, scope: !4844)
!4850 = !DILocation(line: 362, column: 7, scope: !4844)
!4851 = !DILocation(line: 362, column: 29, scope: !4844)
!4852 = !DILocation(line: 361, column: 7, scope: !4825)
!4853 = !DILocation(line: 363, column: 13, scope: !4844)
!4854 = !DILocation(line: 363, column: 11, scope: !4844)
!4855 = !DILocation(line: 363, column: 4, scope: !4844)
!4856 = !DILocation(line: 364, column: 2, scope: !4825)
!4857 = !DILocation(line: 354, column: 46, scope: !4818)
!4858 = !DILocation(line: 354, column: 2, scope: !4818)
!4859 = distinct !{!4859, !4823, !4860}
!4860 = !DILocation(line: 364, column: 2, scope: !4815)
!4861 = !DILocation(line: 366, column: 7, scope: !4862)
!4862 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 366, column: 6)
!4863 = !DILocation(line: 366, column: 13, scope: !4862)
!4864 = !DILocation(line: 366, column: 17, scope: !4862)
!4865 = !DILocation(line: 366, column: 6, scope: !4236)
!4866 = !DILocation(line: 367, column: 3, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4862, file: !3, line: 366, column: 25)
!4868 = !DILocation(line: 368, column: 3, scope: !4867)
!4869 = !DILocation(line: 371, column: 10, scope: !4236)
!4870 = !DILocation(line: 371, column: 8, scope: !4236)
!4871 = !DILocation(line: 372, column: 7, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 372, column: 6)
!4873 = !DILocation(line: 372, column: 6, scope: !4236)
!4874 = !DILocation(line: 373, column: 3, scope: !4872)
!4875 = !DILocation(line: 540, column: 27, scope: !4244, inlinedAt: !4294)
!4876 = !DILocation(line: 540, column: 6, scope: !4244, inlinedAt: !4294)
!4877 = !DILocation(line: 540, column: 6, scope: !4245, inlinedAt: !4294)
!4878 = !DILocation(line: 544, column: 7, scope: !4275, inlinedAt: !4294)
!4879 = !DILocation(line: 544, column: 12, scope: !4275, inlinedAt: !4294)
!4880 = !DILocation(line: 544, column: 7, scope: !4243, inlinedAt: !4294)
!4881 = !DILocation(line: 545, column: 25, scope: !4275, inlinedAt: !4294)
!4882 = !DILocation(line: 545, column: 31, scope: !4275, inlinedAt: !4294)
!4883 = !DILocation(line: 480, column: 33, scope: !4273, inlinedAt: !4304)
!4884 = !DILocation(line: 480, column: 23, scope: !4273, inlinedAt: !4304)
!4885 = !DILocation(line: 481, column: 29, scope: !4273, inlinedAt: !4304)
!4886 = !DILocation(line: 481, column: 35, scope: !4273, inlinedAt: !4304)
!4887 = !DILocation(line: 481, column: 42, scope: !4273, inlinedAt: !4304)
!4888 = !DILocation(line: 474, column: 23, scope: !4268, inlinedAt: !4303)
!4889 = !DILocation(line: 474, column: 29, scope: !4268, inlinedAt: !4303)
!4890 = !DILocation(line: 474, column: 36, scope: !4268, inlinedAt: !4303)
!4891 = !DILocation(line: 474, column: 9, scope: !4268, inlinedAt: !4303)
!4892 = !DILocation(line: 545, column: 4, scope: !4275, inlinedAt: !4294)
!4893 = !DILocation(line: 547, column: 25, scope: !4243, inlinedAt: !4294)
!4894 = !DILocation(line: 348, column: 7, scope: !4895, inlinedAt: !4301)
!4895 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 348, column: 6)
!4896 = !DILocation(line: 348, column: 6, scope: !4262, inlinedAt: !4301)
!4897 = !DILocation(line: 349, column: 3, scope: !4895, inlinedAt: !4301)
!4898 = !DILocation(line: 351, column: 6, scope: !4899, inlinedAt: !4301)
!4899 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 351, column: 6)
!4900 = !DILocation(line: 351, column: 11, scope: !4899, inlinedAt: !4301)
!4901 = !DILocation(line: 351, column: 6, scope: !4262, inlinedAt: !4301)
!4902 = !DILocation(line: 352, column: 3, scope: !4899, inlinedAt: !4301)
!4903 = !DILocation(line: 354, column: 32, scope: !4904, inlinedAt: !4301)
!4904 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 354, column: 6)
!4905 = !DILocation(line: 354, column: 37, scope: !4904, inlinedAt: !4301)
!4906 = !DILocation(line: 354, column: 42, scope: !4904, inlinedAt: !4301)
!4907 = !DILocation(line: 354, column: 45, scope: !4904, inlinedAt: !4301)
!4908 = !DILocation(line: 354, column: 50, scope: !4904, inlinedAt: !4301)
!4909 = !DILocation(line: 354, column: 6, scope: !4262, inlinedAt: !4301)
!4910 = !DILocation(line: 355, column: 3, scope: !4904, inlinedAt: !4301)
!4911 = !DILocation(line: 356, column: 32, scope: !4912, inlinedAt: !4301)
!4912 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 356, column: 6)
!4913 = !DILocation(line: 356, column: 37, scope: !4912, inlinedAt: !4301)
!4914 = !DILocation(line: 356, column: 43, scope: !4912, inlinedAt: !4301)
!4915 = !DILocation(line: 356, column: 46, scope: !4912, inlinedAt: !4301)
!4916 = !DILocation(line: 356, column: 51, scope: !4912, inlinedAt: !4301)
!4917 = !DILocation(line: 356, column: 6, scope: !4262, inlinedAt: !4301)
!4918 = !DILocation(line: 357, column: 3, scope: !4912, inlinedAt: !4301)
!4919 = !DILocation(line: 358, column: 6, scope: !4920, inlinedAt: !4301)
!4920 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 358, column: 6)
!4921 = !DILocation(line: 358, column: 11, scope: !4920, inlinedAt: !4301)
!4922 = !DILocation(line: 358, column: 6, scope: !4262, inlinedAt: !4301)
!4923 = !DILocation(line: 358, column: 26, scope: !4920, inlinedAt: !4301)
!4924 = !DILocation(line: 359, column: 6, scope: !4925, inlinedAt: !4301)
!4925 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 359, column: 6)
!4926 = !DILocation(line: 359, column: 11, scope: !4925, inlinedAt: !4301)
!4927 = !DILocation(line: 359, column: 6, scope: !4262, inlinedAt: !4301)
!4928 = !DILocation(line: 359, column: 26, scope: !4925, inlinedAt: !4301)
!4929 = !DILocation(line: 360, column: 6, scope: !4930, inlinedAt: !4301)
!4930 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 360, column: 6)
!4931 = !DILocation(line: 360, column: 11, scope: !4930, inlinedAt: !4301)
!4932 = !DILocation(line: 360, column: 6, scope: !4262, inlinedAt: !4301)
!4933 = !DILocation(line: 360, column: 26, scope: !4930, inlinedAt: !4301)
!4934 = !DILocation(line: 361, column: 6, scope: !4935, inlinedAt: !4301)
!4935 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 361, column: 6)
!4936 = !DILocation(line: 361, column: 11, scope: !4935, inlinedAt: !4301)
!4937 = !DILocation(line: 361, column: 6, scope: !4262, inlinedAt: !4301)
!4938 = !DILocation(line: 361, column: 26, scope: !4935, inlinedAt: !4301)
!4939 = !DILocation(line: 362, column: 6, scope: !4940, inlinedAt: !4301)
!4940 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 362, column: 6)
!4941 = !DILocation(line: 362, column: 11, scope: !4940, inlinedAt: !4301)
!4942 = !DILocation(line: 362, column: 6, scope: !4262, inlinedAt: !4301)
!4943 = !DILocation(line: 362, column: 26, scope: !4940, inlinedAt: !4301)
!4944 = !DILocation(line: 363, column: 6, scope: !4945, inlinedAt: !4301)
!4945 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 363, column: 6)
!4946 = !DILocation(line: 363, column: 11, scope: !4945, inlinedAt: !4301)
!4947 = !DILocation(line: 363, column: 6, scope: !4262, inlinedAt: !4301)
!4948 = !DILocation(line: 363, column: 26, scope: !4945, inlinedAt: !4301)
!4949 = !DILocation(line: 364, column: 6, scope: !4950, inlinedAt: !4301)
!4950 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 364, column: 6)
!4951 = !DILocation(line: 364, column: 11, scope: !4950, inlinedAt: !4301)
!4952 = !DILocation(line: 364, column: 6, scope: !4262, inlinedAt: !4301)
!4953 = !DILocation(line: 364, column: 26, scope: !4950, inlinedAt: !4301)
!4954 = !DILocation(line: 365, column: 6, scope: !4955, inlinedAt: !4301)
!4955 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 365, column: 6)
!4956 = !DILocation(line: 365, column: 11, scope: !4955, inlinedAt: !4301)
!4957 = !DILocation(line: 365, column: 6, scope: !4262, inlinedAt: !4301)
!4958 = !DILocation(line: 365, column: 26, scope: !4955, inlinedAt: !4301)
!4959 = !DILocation(line: 366, column: 6, scope: !4960, inlinedAt: !4301)
!4960 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 366, column: 6)
!4961 = !DILocation(line: 366, column: 11, scope: !4960, inlinedAt: !4301)
!4962 = !DILocation(line: 366, column: 6, scope: !4262, inlinedAt: !4301)
!4963 = !DILocation(line: 366, column: 26, scope: !4960, inlinedAt: !4301)
!4964 = !DILocation(line: 367, column: 6, scope: !4965, inlinedAt: !4301)
!4965 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 367, column: 6)
!4966 = !DILocation(line: 367, column: 11, scope: !4965, inlinedAt: !4301)
!4967 = !DILocation(line: 367, column: 6, scope: !4262, inlinedAt: !4301)
!4968 = !DILocation(line: 367, column: 26, scope: !4965, inlinedAt: !4301)
!4969 = !DILocation(line: 368, column: 6, scope: !4970, inlinedAt: !4301)
!4970 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 368, column: 6)
!4971 = !DILocation(line: 368, column: 11, scope: !4970, inlinedAt: !4301)
!4972 = !DILocation(line: 368, column: 6, scope: !4262, inlinedAt: !4301)
!4973 = !DILocation(line: 368, column: 26, scope: !4970, inlinedAt: !4301)
!4974 = !DILocation(line: 369, column: 6, scope: !4975, inlinedAt: !4301)
!4975 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 369, column: 6)
!4976 = !DILocation(line: 369, column: 11, scope: !4975, inlinedAt: !4301)
!4977 = !DILocation(line: 369, column: 6, scope: !4262, inlinedAt: !4301)
!4978 = !DILocation(line: 369, column: 26, scope: !4975, inlinedAt: !4301)
!4979 = !DILocation(line: 370, column: 6, scope: !4980, inlinedAt: !4301)
!4980 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 370, column: 6)
!4981 = !DILocation(line: 370, column: 11, scope: !4980, inlinedAt: !4301)
!4982 = !DILocation(line: 370, column: 6, scope: !4262, inlinedAt: !4301)
!4983 = !DILocation(line: 370, column: 26, scope: !4980, inlinedAt: !4301)
!4984 = !DILocation(line: 371, column: 6, scope: !4985, inlinedAt: !4301)
!4985 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 371, column: 6)
!4986 = !DILocation(line: 371, column: 11, scope: !4985, inlinedAt: !4301)
!4987 = !DILocation(line: 371, column: 6, scope: !4262, inlinedAt: !4301)
!4988 = !DILocation(line: 371, column: 26, scope: !4985, inlinedAt: !4301)
!4989 = !DILocation(line: 372, column: 6, scope: !4990, inlinedAt: !4301)
!4990 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 372, column: 6)
!4991 = !DILocation(line: 372, column: 11, scope: !4990, inlinedAt: !4301)
!4992 = !DILocation(line: 372, column: 6, scope: !4262, inlinedAt: !4301)
!4993 = !DILocation(line: 372, column: 26, scope: !4990, inlinedAt: !4301)
!4994 = !DILocation(line: 373, column: 6, scope: !4995, inlinedAt: !4301)
!4995 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 373, column: 6)
!4996 = !DILocation(line: 373, column: 11, scope: !4995, inlinedAt: !4301)
!4997 = !DILocation(line: 373, column: 6, scope: !4262, inlinedAt: !4301)
!4998 = !DILocation(line: 373, column: 26, scope: !4995, inlinedAt: !4301)
!4999 = !DILocation(line: 374, column: 6, scope: !5000, inlinedAt: !4301)
!5000 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 374, column: 6)
!5001 = !DILocation(line: 374, column: 11, scope: !5000, inlinedAt: !4301)
!5002 = !DILocation(line: 374, column: 6, scope: !4262, inlinedAt: !4301)
!5003 = !DILocation(line: 374, column: 26, scope: !5000, inlinedAt: !4301)
!5004 = !DILocation(line: 375, column: 6, scope: !5005, inlinedAt: !4301)
!5005 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 375, column: 6)
!5006 = !DILocation(line: 375, column: 11, scope: !5005, inlinedAt: !4301)
!5007 = !DILocation(line: 375, column: 6, scope: !4262, inlinedAt: !4301)
!5008 = !DILocation(line: 375, column: 27, scope: !5005, inlinedAt: !4301)
!5009 = !DILocation(line: 376, column: 6, scope: !5010, inlinedAt: !4301)
!5010 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 376, column: 6)
!5011 = !DILocation(line: 376, column: 11, scope: !5010, inlinedAt: !4301)
!5012 = !DILocation(line: 376, column: 6, scope: !4262, inlinedAt: !4301)
!5013 = !DILocation(line: 376, column: 32, scope: !5010, inlinedAt: !4301)
!5014 = !DILocation(line: 377, column: 6, scope: !5015, inlinedAt: !4301)
!5015 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 377, column: 6)
!5016 = !DILocation(line: 377, column: 11, scope: !5015, inlinedAt: !4301)
!5017 = !DILocation(line: 377, column: 6, scope: !4262, inlinedAt: !4301)
!5018 = !DILocation(line: 377, column: 32, scope: !5015, inlinedAt: !4301)
!5019 = !DILocation(line: 378, column: 6, scope: !5020, inlinedAt: !4301)
!5020 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 378, column: 6)
!5021 = !DILocation(line: 378, column: 11, scope: !5020, inlinedAt: !4301)
!5022 = !DILocation(line: 378, column: 6, scope: !4262, inlinedAt: !4301)
!5023 = !DILocation(line: 378, column: 32, scope: !5020, inlinedAt: !4301)
!5024 = !DILocation(line: 379, column: 6, scope: !5025, inlinedAt: !4301)
!5025 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 379, column: 6)
!5026 = !DILocation(line: 379, column: 11, scope: !5025, inlinedAt: !4301)
!5027 = !DILocation(line: 379, column: 6, scope: !4262, inlinedAt: !4301)
!5028 = !DILocation(line: 379, column: 33, scope: !5025, inlinedAt: !4301)
!5029 = !DILocation(line: 380, column: 6, scope: !5030, inlinedAt: !4301)
!5030 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 380, column: 6)
!5031 = !DILocation(line: 380, column: 11, scope: !5030, inlinedAt: !4301)
!5032 = !DILocation(line: 380, column: 6, scope: !4262, inlinedAt: !4301)
!5033 = !DILocation(line: 380, column: 33, scope: !5030, inlinedAt: !4301)
!5034 = !DILocation(line: 381, column: 6, scope: !5035, inlinedAt: !4301)
!5035 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 381, column: 6)
!5036 = !DILocation(line: 381, column: 11, scope: !5035, inlinedAt: !4301)
!5037 = !DILocation(line: 381, column: 6, scope: !4262, inlinedAt: !4301)
!5038 = !DILocation(line: 381, column: 33, scope: !5035, inlinedAt: !4301)
!5039 = !DILocation(line: 382, column: 2, scope: !5040, inlinedAt: !4301)
!5040 = distinct !DILexicalBlock(scope: !5041, file: !175, line: 382, column: 2)
!5041 = distinct !DILexicalBlock(scope: !4262, file: !175, line: 382, column: 2)
!5042 = !{i32 -2142618190, i32 -2142618161, i32 -2142618115, i32 -2142618057, i32 -2142618003, i32 -2142617949, i32 -2142617894, i32 -2142617863}
!5043 = !DILocation(line: 382, column: 2, scope: !5044, inlinedAt: !4301)
!5044 = distinct !DILexicalBlock(scope: !5045, file: !175, line: 382, column: 2)
!5045 = distinct !DILexicalBlock(scope: !5041, file: !175, line: 382, column: 2)
!5046 = !{i32 -2142617420, i32 -2142617413, i32 -2142617359, i32 -2142617328, i32 -2142617298}
!5047 = !DILocation(line: 382, column: 2, scope: !5045, inlinedAt: !4301)
!5048 = !DILocation(line: 386, column: 1, scope: !4262, inlinedAt: !4301)
!5049 = !DILocation(line: 547, column: 9, scope: !4243, inlinedAt: !4294)
!5050 = !DILocation(line: 549, column: 8, scope: !5051, inlinedAt: !4294)
!5051 = distinct !DILexicalBlock(scope: !4243, file: !175, line: 549, column: 7)
!5052 = !DILocation(line: 549, column: 7, scope: !4243, inlinedAt: !4294)
!5053 = !DILocation(line: 550, column: 4, scope: !5051, inlinedAt: !4294)
!5054 = !DILocation(line: 553, column: 33, scope: !4243, inlinedAt: !4294)
!5055 = !DILocation(line: 325, column: 6, scope: !5056, inlinedAt: !4299)
!5056 = distinct !DILexicalBlock(scope: !4256, file: !175, line: 325, column: 6)
!5057 = !DILocation(line: 325, column: 6, scope: !4256, inlinedAt: !4299)
!5058 = !DILocation(line: 326, column: 3, scope: !5056, inlinedAt: !4299)
!5059 = !DILocation(line: 332, column: 9, scope: !4256, inlinedAt: !4299)
!5060 = !DILocation(line: 332, column: 15, scope: !4256, inlinedAt: !4299)
!5061 = !DILocation(line: 332, column: 2, scope: !4256, inlinedAt: !4299)
!5062 = !DILocation(line: 336, column: 1, scope: !4256, inlinedAt: !4299)
!5063 = !DILocation(line: 553, column: 5, scope: !4243, inlinedAt: !4294)
!5064 = !DILocation(line: 553, column: 41, scope: !4243, inlinedAt: !4294)
!5065 = !DILocation(line: 554, column: 5, scope: !4243, inlinedAt: !4294)
!5066 = !DILocation(line: 554, column: 12, scope: !4243, inlinedAt: !4294)
!5067 = !DILocation(line: 448, column: 31, scope: !4238, inlinedAt: !4293)
!5068 = !DILocation(line: 448, column: 34, scope: !4238, inlinedAt: !4293)
!5069 = !DILocation(line: 448, column: 14, scope: !4238, inlinedAt: !4293)
!5070 = !DILocation(line: 450, column: 22, scope: !4238, inlinedAt: !4293)
!5071 = !DILocation(line: 450, column: 25, scope: !4238, inlinedAt: !4293)
!5072 = !DILocation(line: 450, column: 30, scope: !4238, inlinedAt: !4293)
!5073 = !DILocation(line: 450, column: 36, scope: !4238, inlinedAt: !4293)
!5074 = !DILocation(line: 450, column: 8, scope: !4238, inlinedAt: !4293)
!5075 = !DILocation(line: 450, column: 6, scope: !4238, inlinedAt: !4293)
!5076 = !DILocation(line: 451, column: 9, scope: !4238, inlinedAt: !4293)
!5077 = !DILocation(line: 552, column: 3, scope: !4243, inlinedAt: !4294)
!5078 = !DILocation(line: 557, column: 19, scope: !4245, inlinedAt: !4294)
!5079 = !DILocation(line: 557, column: 25, scope: !4245, inlinedAt: !4294)
!5080 = !DILocation(line: 557, column: 9, scope: !4245, inlinedAt: !4294)
!5081 = !DILocation(line: 557, column: 2, scope: !4245, inlinedAt: !4294)
!5082 = !DILocation(line: 558, column: 1, scope: !4245, inlinedAt: !4294)
!5083 = !DILocation(line: 375, column: 2, scope: !4236)
!5084 = !DILocation(line: 375, column: 9, scope: !4236)
!5085 = !DILocation(line: 375, column: 12, scope: !4236)
!5086 = !DILocation(line: 376, column: 7, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 376, column: 6)
!5088 = !DILocation(line: 376, column: 14, scope: !5087)
!5089 = !DILocation(line: 376, column: 6, scope: !4236)
!5090 = !DILocation(line: 377, column: 3, scope: !5087)
!5091 = !DILocation(line: 540, column: 27, scope: !4244, inlinedAt: !4248)
!5092 = !DILocation(line: 540, column: 6, scope: !4244, inlinedAt: !4248)
!5093 = !DILocation(line: 540, column: 6, scope: !4245, inlinedAt: !4248)
!5094 = !DILocation(line: 544, column: 7, scope: !4275, inlinedAt: !4248)
!5095 = !DILocation(line: 544, column: 12, scope: !4275, inlinedAt: !4248)
!5096 = !DILocation(line: 544, column: 7, scope: !4243, inlinedAt: !4248)
!5097 = !DILocation(line: 545, column: 25, scope: !4275, inlinedAt: !4248)
!5098 = !DILocation(line: 545, column: 31, scope: !4275, inlinedAt: !4248)
!5099 = !DILocation(line: 480, column: 33, scope: !4273, inlinedAt: !4274)
!5100 = !DILocation(line: 480, column: 23, scope: !4273, inlinedAt: !4274)
!5101 = !DILocation(line: 481, column: 29, scope: !4273, inlinedAt: !4274)
!5102 = !DILocation(line: 481, column: 35, scope: !4273, inlinedAt: !4274)
!5103 = !DILocation(line: 481, column: 42, scope: !4273, inlinedAt: !4274)
!5104 = !DILocation(line: 474, column: 23, scope: !4268, inlinedAt: !4272)
!5105 = !DILocation(line: 474, column: 29, scope: !4268, inlinedAt: !4272)
!5106 = !DILocation(line: 474, column: 36, scope: !4268, inlinedAt: !4272)
!5107 = !DILocation(line: 474, column: 9, scope: !4268, inlinedAt: !4272)
!5108 = !DILocation(line: 545, column: 4, scope: !4275, inlinedAt: !4248)
!5109 = !DILocation(line: 547, column: 25, scope: !4243, inlinedAt: !4248)
!5110 = !DILocation(line: 348, column: 7, scope: !4895, inlinedAt: !4266)
!5111 = !DILocation(line: 348, column: 6, scope: !4262, inlinedAt: !4266)
!5112 = !DILocation(line: 349, column: 3, scope: !4895, inlinedAt: !4266)
!5113 = !DILocation(line: 351, column: 6, scope: !4899, inlinedAt: !4266)
!5114 = !DILocation(line: 351, column: 11, scope: !4899, inlinedAt: !4266)
!5115 = !DILocation(line: 351, column: 6, scope: !4262, inlinedAt: !4266)
!5116 = !DILocation(line: 352, column: 3, scope: !4899, inlinedAt: !4266)
!5117 = !DILocation(line: 354, column: 32, scope: !4904, inlinedAt: !4266)
!5118 = !DILocation(line: 354, column: 37, scope: !4904, inlinedAt: !4266)
!5119 = !DILocation(line: 354, column: 42, scope: !4904, inlinedAt: !4266)
!5120 = !DILocation(line: 354, column: 45, scope: !4904, inlinedAt: !4266)
!5121 = !DILocation(line: 354, column: 50, scope: !4904, inlinedAt: !4266)
!5122 = !DILocation(line: 354, column: 6, scope: !4262, inlinedAt: !4266)
!5123 = !DILocation(line: 355, column: 3, scope: !4904, inlinedAt: !4266)
!5124 = !DILocation(line: 356, column: 32, scope: !4912, inlinedAt: !4266)
!5125 = !DILocation(line: 356, column: 37, scope: !4912, inlinedAt: !4266)
!5126 = !DILocation(line: 356, column: 43, scope: !4912, inlinedAt: !4266)
!5127 = !DILocation(line: 356, column: 46, scope: !4912, inlinedAt: !4266)
!5128 = !DILocation(line: 356, column: 51, scope: !4912, inlinedAt: !4266)
!5129 = !DILocation(line: 356, column: 6, scope: !4262, inlinedAt: !4266)
!5130 = !DILocation(line: 357, column: 3, scope: !4912, inlinedAt: !4266)
!5131 = !DILocation(line: 358, column: 6, scope: !4920, inlinedAt: !4266)
!5132 = !DILocation(line: 358, column: 11, scope: !4920, inlinedAt: !4266)
!5133 = !DILocation(line: 358, column: 6, scope: !4262, inlinedAt: !4266)
!5134 = !DILocation(line: 358, column: 26, scope: !4920, inlinedAt: !4266)
!5135 = !DILocation(line: 359, column: 6, scope: !4925, inlinedAt: !4266)
!5136 = !DILocation(line: 359, column: 11, scope: !4925, inlinedAt: !4266)
!5137 = !DILocation(line: 359, column: 6, scope: !4262, inlinedAt: !4266)
!5138 = !DILocation(line: 359, column: 26, scope: !4925, inlinedAt: !4266)
!5139 = !DILocation(line: 360, column: 6, scope: !4930, inlinedAt: !4266)
!5140 = !DILocation(line: 360, column: 11, scope: !4930, inlinedAt: !4266)
!5141 = !DILocation(line: 360, column: 6, scope: !4262, inlinedAt: !4266)
!5142 = !DILocation(line: 360, column: 26, scope: !4930, inlinedAt: !4266)
!5143 = !DILocation(line: 361, column: 6, scope: !4935, inlinedAt: !4266)
!5144 = !DILocation(line: 361, column: 11, scope: !4935, inlinedAt: !4266)
!5145 = !DILocation(line: 361, column: 6, scope: !4262, inlinedAt: !4266)
!5146 = !DILocation(line: 361, column: 26, scope: !4935, inlinedAt: !4266)
!5147 = !DILocation(line: 362, column: 6, scope: !4940, inlinedAt: !4266)
!5148 = !DILocation(line: 362, column: 11, scope: !4940, inlinedAt: !4266)
!5149 = !DILocation(line: 362, column: 6, scope: !4262, inlinedAt: !4266)
!5150 = !DILocation(line: 362, column: 26, scope: !4940, inlinedAt: !4266)
!5151 = !DILocation(line: 363, column: 6, scope: !4945, inlinedAt: !4266)
!5152 = !DILocation(line: 363, column: 11, scope: !4945, inlinedAt: !4266)
!5153 = !DILocation(line: 363, column: 6, scope: !4262, inlinedAt: !4266)
!5154 = !DILocation(line: 363, column: 26, scope: !4945, inlinedAt: !4266)
!5155 = !DILocation(line: 364, column: 6, scope: !4950, inlinedAt: !4266)
!5156 = !DILocation(line: 364, column: 11, scope: !4950, inlinedAt: !4266)
!5157 = !DILocation(line: 364, column: 6, scope: !4262, inlinedAt: !4266)
!5158 = !DILocation(line: 364, column: 26, scope: !4950, inlinedAt: !4266)
!5159 = !DILocation(line: 365, column: 6, scope: !4955, inlinedAt: !4266)
!5160 = !DILocation(line: 365, column: 11, scope: !4955, inlinedAt: !4266)
!5161 = !DILocation(line: 365, column: 6, scope: !4262, inlinedAt: !4266)
!5162 = !DILocation(line: 365, column: 26, scope: !4955, inlinedAt: !4266)
!5163 = !DILocation(line: 366, column: 6, scope: !4960, inlinedAt: !4266)
!5164 = !DILocation(line: 366, column: 11, scope: !4960, inlinedAt: !4266)
!5165 = !DILocation(line: 366, column: 6, scope: !4262, inlinedAt: !4266)
!5166 = !DILocation(line: 366, column: 26, scope: !4960, inlinedAt: !4266)
!5167 = !DILocation(line: 367, column: 6, scope: !4965, inlinedAt: !4266)
!5168 = !DILocation(line: 367, column: 11, scope: !4965, inlinedAt: !4266)
!5169 = !DILocation(line: 367, column: 6, scope: !4262, inlinedAt: !4266)
!5170 = !DILocation(line: 367, column: 26, scope: !4965, inlinedAt: !4266)
!5171 = !DILocation(line: 368, column: 6, scope: !4970, inlinedAt: !4266)
!5172 = !DILocation(line: 368, column: 11, scope: !4970, inlinedAt: !4266)
!5173 = !DILocation(line: 368, column: 6, scope: !4262, inlinedAt: !4266)
!5174 = !DILocation(line: 368, column: 26, scope: !4970, inlinedAt: !4266)
!5175 = !DILocation(line: 369, column: 6, scope: !4975, inlinedAt: !4266)
!5176 = !DILocation(line: 369, column: 11, scope: !4975, inlinedAt: !4266)
!5177 = !DILocation(line: 369, column: 6, scope: !4262, inlinedAt: !4266)
!5178 = !DILocation(line: 369, column: 26, scope: !4975, inlinedAt: !4266)
!5179 = !DILocation(line: 370, column: 6, scope: !4980, inlinedAt: !4266)
!5180 = !DILocation(line: 370, column: 11, scope: !4980, inlinedAt: !4266)
!5181 = !DILocation(line: 370, column: 6, scope: !4262, inlinedAt: !4266)
!5182 = !DILocation(line: 370, column: 26, scope: !4980, inlinedAt: !4266)
!5183 = !DILocation(line: 371, column: 6, scope: !4985, inlinedAt: !4266)
!5184 = !DILocation(line: 371, column: 11, scope: !4985, inlinedAt: !4266)
!5185 = !DILocation(line: 371, column: 6, scope: !4262, inlinedAt: !4266)
!5186 = !DILocation(line: 371, column: 26, scope: !4985, inlinedAt: !4266)
!5187 = !DILocation(line: 372, column: 6, scope: !4990, inlinedAt: !4266)
!5188 = !DILocation(line: 372, column: 11, scope: !4990, inlinedAt: !4266)
!5189 = !DILocation(line: 372, column: 6, scope: !4262, inlinedAt: !4266)
!5190 = !DILocation(line: 372, column: 26, scope: !4990, inlinedAt: !4266)
!5191 = !DILocation(line: 373, column: 6, scope: !4995, inlinedAt: !4266)
!5192 = !DILocation(line: 373, column: 11, scope: !4995, inlinedAt: !4266)
!5193 = !DILocation(line: 373, column: 6, scope: !4262, inlinedAt: !4266)
!5194 = !DILocation(line: 373, column: 26, scope: !4995, inlinedAt: !4266)
!5195 = !DILocation(line: 374, column: 6, scope: !5000, inlinedAt: !4266)
!5196 = !DILocation(line: 374, column: 11, scope: !5000, inlinedAt: !4266)
!5197 = !DILocation(line: 374, column: 6, scope: !4262, inlinedAt: !4266)
!5198 = !DILocation(line: 374, column: 26, scope: !5000, inlinedAt: !4266)
!5199 = !DILocation(line: 375, column: 6, scope: !5005, inlinedAt: !4266)
!5200 = !DILocation(line: 375, column: 11, scope: !5005, inlinedAt: !4266)
!5201 = !DILocation(line: 375, column: 6, scope: !4262, inlinedAt: !4266)
!5202 = !DILocation(line: 375, column: 27, scope: !5005, inlinedAt: !4266)
!5203 = !DILocation(line: 376, column: 6, scope: !5010, inlinedAt: !4266)
!5204 = !DILocation(line: 376, column: 11, scope: !5010, inlinedAt: !4266)
!5205 = !DILocation(line: 376, column: 6, scope: !4262, inlinedAt: !4266)
!5206 = !DILocation(line: 376, column: 32, scope: !5010, inlinedAt: !4266)
!5207 = !DILocation(line: 377, column: 6, scope: !5015, inlinedAt: !4266)
!5208 = !DILocation(line: 377, column: 11, scope: !5015, inlinedAt: !4266)
!5209 = !DILocation(line: 377, column: 6, scope: !4262, inlinedAt: !4266)
!5210 = !DILocation(line: 377, column: 32, scope: !5015, inlinedAt: !4266)
!5211 = !DILocation(line: 378, column: 6, scope: !5020, inlinedAt: !4266)
!5212 = !DILocation(line: 378, column: 11, scope: !5020, inlinedAt: !4266)
!5213 = !DILocation(line: 378, column: 6, scope: !4262, inlinedAt: !4266)
!5214 = !DILocation(line: 378, column: 32, scope: !5020, inlinedAt: !4266)
!5215 = !DILocation(line: 379, column: 6, scope: !5025, inlinedAt: !4266)
!5216 = !DILocation(line: 379, column: 11, scope: !5025, inlinedAt: !4266)
!5217 = !DILocation(line: 379, column: 6, scope: !4262, inlinedAt: !4266)
!5218 = !DILocation(line: 379, column: 33, scope: !5025, inlinedAt: !4266)
!5219 = !DILocation(line: 380, column: 6, scope: !5030, inlinedAt: !4266)
!5220 = !DILocation(line: 380, column: 11, scope: !5030, inlinedAt: !4266)
!5221 = !DILocation(line: 380, column: 6, scope: !4262, inlinedAt: !4266)
!5222 = !DILocation(line: 380, column: 33, scope: !5030, inlinedAt: !4266)
!5223 = !DILocation(line: 381, column: 6, scope: !5035, inlinedAt: !4266)
!5224 = !DILocation(line: 381, column: 11, scope: !5035, inlinedAt: !4266)
!5225 = !DILocation(line: 381, column: 6, scope: !4262, inlinedAt: !4266)
!5226 = !DILocation(line: 381, column: 33, scope: !5035, inlinedAt: !4266)
!5227 = !DILocation(line: 382, column: 2, scope: !5040, inlinedAt: !4266)
!5228 = !DILocation(line: 382, column: 2, scope: !5044, inlinedAt: !4266)
!5229 = !DILocation(line: 382, column: 2, scope: !5045, inlinedAt: !4266)
!5230 = !DILocation(line: 386, column: 1, scope: !4262, inlinedAt: !4266)
!5231 = !DILocation(line: 547, column: 9, scope: !4243, inlinedAt: !4248)
!5232 = !DILocation(line: 549, column: 8, scope: !5051, inlinedAt: !4248)
!5233 = !DILocation(line: 549, column: 7, scope: !4243, inlinedAt: !4248)
!5234 = !DILocation(line: 550, column: 4, scope: !5051, inlinedAt: !4248)
!5235 = !DILocation(line: 553, column: 33, scope: !4243, inlinedAt: !4248)
!5236 = !DILocation(line: 325, column: 6, scope: !5056, inlinedAt: !4260)
!5237 = !DILocation(line: 325, column: 6, scope: !4256, inlinedAt: !4260)
!5238 = !DILocation(line: 326, column: 3, scope: !5056, inlinedAt: !4260)
!5239 = !DILocation(line: 332, column: 9, scope: !4256, inlinedAt: !4260)
!5240 = !DILocation(line: 332, column: 15, scope: !4256, inlinedAt: !4260)
!5241 = !DILocation(line: 332, column: 2, scope: !4256, inlinedAt: !4260)
!5242 = !DILocation(line: 336, column: 1, scope: !4256, inlinedAt: !4260)
!5243 = !DILocation(line: 553, column: 5, scope: !4243, inlinedAt: !4248)
!5244 = !DILocation(line: 553, column: 41, scope: !4243, inlinedAt: !4248)
!5245 = !DILocation(line: 554, column: 5, scope: !4243, inlinedAt: !4248)
!5246 = !DILocation(line: 554, column: 12, scope: !4243, inlinedAt: !4248)
!5247 = !DILocation(line: 448, column: 31, scope: !4238, inlinedAt: !4242)
!5248 = !DILocation(line: 448, column: 34, scope: !4238, inlinedAt: !4242)
!5249 = !DILocation(line: 448, column: 14, scope: !4238, inlinedAt: !4242)
!5250 = !DILocation(line: 450, column: 22, scope: !4238, inlinedAt: !4242)
!5251 = !DILocation(line: 450, column: 25, scope: !4238, inlinedAt: !4242)
!5252 = !DILocation(line: 450, column: 30, scope: !4238, inlinedAt: !4242)
!5253 = !DILocation(line: 450, column: 36, scope: !4238, inlinedAt: !4242)
!5254 = !DILocation(line: 450, column: 8, scope: !4238, inlinedAt: !4242)
!5255 = !DILocation(line: 450, column: 6, scope: !4238, inlinedAt: !4242)
!5256 = !DILocation(line: 451, column: 9, scope: !4238, inlinedAt: !4242)
!5257 = !DILocation(line: 552, column: 3, scope: !4243, inlinedAt: !4248)
!5258 = !DILocation(line: 557, column: 19, scope: !4245, inlinedAt: !4248)
!5259 = !DILocation(line: 557, column: 25, scope: !4245, inlinedAt: !4248)
!5260 = !DILocation(line: 557, column: 9, scope: !4245, inlinedAt: !4248)
!5261 = !DILocation(line: 557, column: 2, scope: !4245, inlinedAt: !4248)
!5262 = !DILocation(line: 558, column: 1, scope: !4245, inlinedAt: !4248)
!5263 = !DILocation(line: 379, column: 2, scope: !4236)
!5264 = !DILocation(line: 379, column: 9, scope: !4236)
!5265 = !DILocation(line: 379, column: 13, scope: !4236)
!5266 = !DILocation(line: 380, column: 7, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 380, column: 6)
!5268 = !DILocation(line: 380, column: 14, scope: !5267)
!5269 = !DILocation(line: 380, column: 6, scope: !4236)
!5270 = !DILocation(line: 381, column: 3, scope: !5267)
!5271 = !DILocation(line: 383, column: 7, scope: !4236)
!5272 = !DILocation(line: 383, column: 5, scope: !4236)
!5273 = !DILocation(line: 384, column: 7, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 384, column: 6)
!5275 = !DILocation(line: 384, column: 6, scope: !4236)
!5276 = !DILocation(line: 385, column: 3, scope: !5274)
!5277 = !DILocation(line: 387, column: 8, scope: !4236)
!5278 = !DILocation(line: 387, column: 6, scope: !4236)
!5279 = !DILocation(line: 388, column: 7, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 388, column: 6)
!5281 = !DILocation(line: 388, column: 6, scope: !4236)
!5282 = !DILocation(line: 389, column: 3, scope: !5280)
!5283 = !DILocation(line: 391, column: 9, scope: !4236)
!5284 = !DILocation(line: 391, column: 7, scope: !4236)
!5285 = !DILocation(line: 392, column: 20, scope: !4236)
!5286 = !DILocation(line: 392, column: 25, scope: !4236)
!5287 = !DILocation(line: 392, column: 33, scope: !4236)
!5288 = !DILocation(line: 392, column: 39, scope: !4236)
!5289 = !DILocation(line: 392, column: 46, scope: !4236)
!5290 = !DILocation(line: 393, column: 25, scope: !4236)
!5291 = !DILocation(line: 392, column: 2, scope: !4236)
!5292 = !DILocation(line: 394, column: 18, scope: !4236)
!5293 = !DILocation(line: 394, column: 2, scope: !4236)
!5294 = !DILocation(line: 394, column: 9, scope: !4236)
!5295 = !DILocation(line: 394, column: 16, scope: !4236)
!5296 = !DILocation(line: 396, column: 8, scope: !4236)
!5297 = !DILocation(line: 396, column: 6, scope: !4236)
!5298 = !DILocation(line: 397, column: 7, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 397, column: 6)
!5300 = !DILocation(line: 397, column: 6, scope: !4236)
!5301 = !DILocation(line: 398, column: 3, scope: !5299)
!5302 = !DILocation(line: 400, column: 9, scope: !4236)
!5303 = !DILocation(line: 400, column: 7, scope: !4236)
!5304 = !DILocation(line: 401, column: 20, scope: !4236)
!5305 = !DILocation(line: 401, column: 25, scope: !4236)
!5306 = !DILocation(line: 401, column: 33, scope: !4236)
!5307 = !DILocation(line: 401, column: 39, scope: !4236)
!5308 = !DILocation(line: 401, column: 46, scope: !4236)
!5309 = !DILocation(line: 402, column: 26, scope: !4236)
!5310 = !DILocation(line: 401, column: 2, scope: !4236)
!5311 = !DILocation(line: 404, column: 16, scope: !4236)
!5312 = !DILocation(line: 404, column: 22, scope: !4236)
!5313 = !DILocation(line: 404, column: 2, scope: !4236)
!5314 = !DILocation(line: 404, column: 9, scope: !4236)
!5315 = !DILocation(line: 404, column: 13, scope: !4236)
!5316 = !DILocation(line: 405, column: 18, scope: !4236)
!5317 = !DILocation(line: 405, column: 2, scope: !4236)
!5318 = !DILocation(line: 405, column: 9, scope: !4236)
!5319 = !DILocation(line: 405, column: 16, scope: !4236)
!5320 = !DILocation(line: 406, column: 14, scope: !4236)
!5321 = !DILocation(line: 406, column: 2, scope: !4236)
!5322 = !DILocation(line: 406, column: 9, scope: !4236)
!5323 = !DILocation(line: 406, column: 12, scope: !4236)
!5324 = !DILocation(line: 407, column: 19, scope: !4236)
!5325 = !DILocation(line: 407, column: 2, scope: !4236)
!5326 = !DILocation(line: 407, column: 9, scope: !4236)
!5327 = !DILocation(line: 407, column: 17, scope: !4236)
!5328 = !DILocation(line: 408, column: 2, scope: !4236)
!5329 = !DILocation(line: 408, column: 9, scope: !4236)
!5330 = !DILocation(line: 408, column: 15, scope: !4236)
!5331 = !DILocation(line: 410, column: 23, scope: !4236)
!5332 = !DILocation(line: 410, column: 30, scope: !4236)
!5333 = !DILocation(line: 410, column: 8, scope: !4236)
!5334 = !DILocation(line: 410, column: 6, scope: !4236)
!5335 = !DILocation(line: 411, column: 6, scope: !5336)
!5336 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 411, column: 6)
!5337 = !DILocation(line: 411, column: 10, scope: !5336)
!5338 = !DILocation(line: 411, column: 6, scope: !4236)
!5339 = !DILocation(line: 412, column: 3, scope: !5340)
!5340 = distinct !DILexicalBlock(scope: !5336, file: !3, line: 411, column: 16)
!5341 = !DILocation(line: 413, column: 10, scope: !5340)
!5342 = !DILocation(line: 413, column: 3, scope: !5340)
!5343 = !DILocation(line: 416, column: 20, scope: !4236)
!5344 = !DILocation(line: 416, column: 8, scope: !4236)
!5345 = !DILocation(line: 416, column: 6, scope: !4236)
!5346 = !DILocation(line: 417, column: 6, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 417, column: 6)
!5348 = !DILocation(line: 417, column: 6, scope: !4236)
!5349 = !DILocation(line: 418, column: 3, scope: !5347)
!5350 = !DILocation(line: 420, column: 2, scope: !4236)
!5351 = !DILocation(line: 423, column: 6, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 423, column: 6)
!5353 = !DILocation(line: 423, column: 13, scope: !5352)
!5354 = !DILocation(line: 423, column: 24, scope: !5352)
!5355 = !DILocation(line: 423, column: 6, scope: !4236)
!5356 = !DILocation(line: 424, column: 3, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 423, column: 42)
!5358 = !DILocation(line: 426, column: 7, scope: !5357)
!5359 = !DILocation(line: 427, column: 3, scope: !5357)
!5360 = !DILocation(line: 430, column: 16, scope: !4236)
!5361 = !DILocation(line: 430, column: 24, scope: !4236)
!5362 = !DILocation(line: 430, column: 31, scope: !4236)
!5363 = !DILocation(line: 430, column: 2, scope: !4236)
!5364 = !DILocation(line: 432, column: 2, scope: !4236)
!5365 = !DILocation(line: 432, column: 6, scope: !4236)
!5366 = !DILocation(line: 432, column: 18, scope: !4236)
!5367 = !DILocation(line: 433, column: 2, scope: !4236)
!5368 = !DILocation(line: 433, column: 6, scope: !4236)
!5369 = !DILocation(line: 433, column: 18, scope: !4236)
!5370 = !DILocation(line: 434, column: 19, scope: !4236)
!5371 = !DILocation(line: 434, column: 26, scope: !4236)
!5372 = !DILocation(line: 434, column: 2, scope: !4236)
!5373 = !DILocation(line: 434, column: 6, scope: !4236)
!5374 = !DILocation(line: 434, column: 17, scope: !4236)
!5375 = !DILocation(line: 435, column: 18, scope: !4236)
!5376 = !DILocation(line: 435, column: 27, scope: !4236)
!5377 = !DILocation(line: 435, column: 31, scope: !4236)
!5378 = !DILocation(line: 435, column: 2, scope: !4236)
!5379 = !DILocation(line: 436, column: 20, scope: !4236)
!5380 = !DILocation(line: 436, column: 26, scope: !4236)
!5381 = !DILocation(line: 436, column: 2, scope: !4236)
!5382 = !DILocation(line: 436, column: 6, scope: !4236)
!5383 = !DILocation(line: 436, column: 10, scope: !4236)
!5384 = !DILocation(line: 436, column: 17, scope: !4236)
!5385 = !DILocation(line: 437, column: 13, scope: !4236)
!5386 = !DILocation(line: 437, column: 2, scope: !4236)
!5387 = !DILocation(line: 437, column: 6, scope: !4236)
!5388 = !DILocation(line: 437, column: 11, scope: !4236)
!5389 = !DILocation(line: 438, column: 2, scope: !4236)
!5390 = !DILocation(line: 438, column: 6, scope: !4236)
!5391 = !DILocation(line: 438, column: 12, scope: !4236)
!5392 = !DILocation(line: 439, column: 2, scope: !4236)
!5393 = !DILocation(line: 439, column: 6, scope: !4236)
!5394 = !DILocation(line: 439, column: 24, scope: !4236)
!5395 = !DILocation(line: 440, column: 2, scope: !4236)
!5396 = !DILocation(line: 440, column: 6, scope: !4236)
!5397 = !DILocation(line: 440, column: 15, scope: !4236)
!5398 = !DILocation(line: 441, column: 2, scope: !4236)
!5399 = !DILocation(line: 441, column: 6, scope: !4236)
!5400 = !DILocation(line: 441, column: 20, scope: !4236)
!5401 = !DILocation(line: 442, column: 2, scope: !4236)
!5402 = !DILocation(line: 442, column: 6, scope: !4236)
!5403 = !DILocation(line: 442, column: 14, scope: !4236)
!5404 = !DILocation(line: 453, column: 2, scope: !4236)
!5405 = !DILocation(line: 453, column: 6, scope: !4236)
!5406 = !DILocation(line: 453, column: 18, scope: !4236)
!5407 = !DILocation(line: 454, column: 2, scope: !4236)
!5408 = !DILocation(line: 454, column: 6, scope: !4236)
!5409 = !DILocation(line: 454, column: 18, scope: !4236)
!5410 = !DILocation(line: 456, column: 27, scope: !4236)
!5411 = !DILocation(line: 456, column: 8, scope: !4236)
!5412 = !DILocation(line: 456, column: 6, scope: !4236)
!5413 = !DILocation(line: 457, column: 6, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 457, column: 6)
!5415 = !DILocation(line: 457, column: 6, scope: !4236)
!5416 = !DILocation(line: 458, column: 3, scope: !5414)
!5417 = !DILocation(line: 460, column: 19, scope: !4236)
!5418 = !DILocation(line: 460, column: 25, scope: !4236)
!5419 = !DILocation(line: 460, column: 2, scope: !4236)
!5420 = !DILocation(line: 462, column: 2, scope: !4236)
!5421 = !DILabel(scope: !4236, name: "free_rcdev", file: !3, line: 464)
!5422 = !DILocation(line: 464, column: 1, scope: !4236)
!5423 = !DILocation(line: 465, column: 15, scope: !4236)
!5424 = !DILocation(line: 465, column: 22, scope: !4236)
!5425 = !DILocation(line: 465, column: 2, scope: !4236)
!5426 = !DILocation(line: 466, column: 15, scope: !4236)
!5427 = !DILocation(line: 466, column: 22, scope: !4236)
!5428 = !DILocation(line: 466, column: 2, scope: !4236)
!5429 = !DILocation(line: 467, column: 15, scope: !4236)
!5430 = !DILocation(line: 467, column: 22, scope: !4236)
!5431 = !DILocation(line: 467, column: 2, scope: !4236)
!5432 = !DILocation(line: 468, column: 15, scope: !4236)
!5433 = !DILocation(line: 468, column: 22, scope: !4236)
!5434 = !DILocation(line: 468, column: 2, scope: !4236)
!5435 = !DILocation(line: 469, column: 17, scope: !4236)
!5436 = !DILocation(line: 469, column: 2, scope: !4236)
!5437 = !DILabel(scope: !4236, name: "free_irtoy", file: !3, line: 470)
!5438 = !DILocation(line: 470, column: 1, scope: !4236)
!5439 = !DILocation(line: 471, column: 8, scope: !4236)
!5440 = !DILocation(line: 471, column: 15, scope: !4236)
!5441 = !DILocation(line: 471, column: 2, scope: !4236)
!5442 = !DILocation(line: 472, column: 8, scope: !4236)
!5443 = !DILocation(line: 472, column: 15, scope: !4236)
!5444 = !DILocation(line: 472, column: 2, scope: !4236)
!5445 = !DILocation(line: 473, column: 8, scope: !4236)
!5446 = !DILocation(line: 473, column: 2, scope: !4236)
!5447 = !DILocation(line: 474, column: 9, scope: !4236)
!5448 = !DILocation(line: 474, column: 2, scope: !4236)
!5449 = !DILocation(line: 475, column: 1, scope: !4236)
!5450 = distinct !DISubprogram(name: "irtoy_disconnect", scope: !3, file: !3, line: 477, type: !4170, scopeLine: 478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!5451 = !DILocalVariable(name: "intf", arg: 1, scope: !5450, file: !3, line: 477, type: !4005)
!5452 = !DILocation(line: 477, column: 52, scope: !5450)
!5453 = !DILocalVariable(name: "ir", scope: !5450, file: !3, line: 479, type: !4333)
!5454 = !DILocation(line: 479, column: 16, scope: !5450)
!5455 = !DILocation(line: 479, column: 38, scope: !5450)
!5456 = !DILocation(line: 479, column: 21, scope: !5450)
!5457 = !DILocation(line: 481, column: 23, scope: !5450)
!5458 = !DILocation(line: 481, column: 27, scope: !5450)
!5459 = !DILocation(line: 481, column: 2, scope: !5450)
!5460 = !DILocation(line: 482, column: 19, scope: !5450)
!5461 = !DILocation(line: 482, column: 2, scope: !5450)
!5462 = !DILocation(line: 483, column: 15, scope: !5450)
!5463 = !DILocation(line: 483, column: 19, scope: !5450)
!5464 = !DILocation(line: 483, column: 2, scope: !5450)
!5465 = !DILocation(line: 484, column: 15, scope: !5450)
!5466 = !DILocation(line: 484, column: 19, scope: !5450)
!5467 = !DILocation(line: 484, column: 2, scope: !5450)
!5468 = !DILocation(line: 485, column: 15, scope: !5450)
!5469 = !DILocation(line: 485, column: 19, scope: !5450)
!5470 = !DILocation(line: 485, column: 2, scope: !5450)
!5471 = !DILocation(line: 486, column: 15, scope: !5450)
!5472 = !DILocation(line: 486, column: 19, scope: !5450)
!5473 = !DILocation(line: 486, column: 2, scope: !5450)
!5474 = !DILocation(line: 487, column: 8, scope: !5450)
!5475 = !DILocation(line: 487, column: 12, scope: !5450)
!5476 = !DILocation(line: 487, column: 2, scope: !5450)
!5477 = !DILocation(line: 488, column: 8, scope: !5450)
!5478 = !DILocation(line: 488, column: 12, scope: !5450)
!5479 = !DILocation(line: 488, column: 2, scope: !5450)
!5480 = !DILocation(line: 489, column: 8, scope: !5450)
!5481 = !DILocation(line: 489, column: 2, scope: !5450)
!5482 = !DILocation(line: 490, column: 1, scope: !5450)
!5483 = distinct !DISubprogram(name: "interface_to_usbdev", scope: !6, file: !6, line: 715, type: !5484, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!5484 = !DISubroutineType(types: !5485)
!5485 = !{!193, !4005}
!5486 = !DILocalVariable(name: "intf", arg: 1, scope: !5483, file: !6, line: 715, type: !4005)
!5487 = !DILocation(line: 715, column: 76, scope: !5483)
!5488 = !DILocalVariable(name: "__mptr", scope: !5489, file: !6, line: 717, type: !192)
!5489 = distinct !DILexicalBlock(scope: !5483, file: !6, line: 717, column: 9)
!5490 = !DILocation(line: 717, column: 9, scope: !5489)
!5491 = !DILocation(line: 717, column: 9, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5489, file: !6, line: 717, column: 9)
!5493 = !DILocation(line: 717, column: 2, scope: !5483)
!5494 = distinct !DISubprogram(name: "usb_endpoint_is_bulk_in", scope: !101, file: !101, line: 570, type: !5495, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!5495 = !DISubroutineType(types: !5496)
!5496 = !{!197, !5497}
!5497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5498, size: 64)
!5498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3858)
!5499 = !DILocalVariable(name: "epd", arg: 1, scope: !5494, file: !101, line: 571, type: !5497)
!5500 = !DILocation(line: 571, column: 43, scope: !5494)
!5501 = !DILocation(line: 573, column: 32, scope: !5494)
!5502 = !DILocation(line: 573, column: 9, scope: !5494)
!5503 = !DILocation(line: 573, column: 37, scope: !5494)
!5504 = !DILocation(line: 573, column: 60, scope: !5494)
!5505 = !DILocation(line: 573, column: 40, scope: !5494)
!5506 = !DILocation(line: 0, scope: !5494)
!5507 = !DILocation(line: 573, column: 2, scope: !5494)
!5508 = distinct !DISubprogram(name: "usb_endpoint_maxp", scope: !101, file: !101, line: 647, type: !5495, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!5509 = !DILocalVariable(name: "epd", arg: 1, scope: !5508, file: !101, line: 647, type: !5497)
!5510 = !DILocation(line: 647, column: 75, scope: !5508)
!5511 = !DILocation(line: 649, column: 9, scope: !5508)
!5512 = !DILocation(line: 649, column: 44, scope: !5508)
!5513 = !DILocation(line: 649, column: 2, scope: !5508)
!5514 = distinct !DISubprogram(name: "usb_endpoint_is_bulk_out", scope: !101, file: !101, line: 583, type: !5495, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!5515 = !DILocalVariable(name: "epd", arg: 1, scope: !5514, file: !101, line: 584, type: !5497)
!5516 = !DILocation(line: 584, column: 43, scope: !5514)
!5517 = !DILocation(line: 586, column: 32, scope: !5514)
!5518 = !DILocation(line: 586, column: 9, scope: !5514)
!5519 = !DILocation(line: 586, column: 37, scope: !5514)
!5520 = !DILocation(line: 586, column: 61, scope: !5514)
!5521 = !DILocation(line: 586, column: 40, scope: !5514)
!5522 = !DILocation(line: 0, scope: !5514)
!5523 = !DILocation(line: 586, column: 2, scope: !5514)
!5524 = distinct !DISubprogram(name: "kzalloc", scope: !175, file: !175, line: 662, type: !4246, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!5525 = !DILocation(line: 445, column: 72, scope: !4238, inlinedAt: !5526)
!5526 = distinct !DILocation(line: 552, column: 10, scope: !4243, inlinedAt: !5527)
!5527 = distinct !DILocation(line: 664, column: 9, scope: !5524)
!5528 = !DILocation(line: 446, column: 9, scope: !4238, inlinedAt: !5526)
!5529 = !DILocation(line: 446, column: 23, scope: !4238, inlinedAt: !5526)
!5530 = !DILocation(line: 448, column: 8, scope: !4238, inlinedAt: !5526)
!5531 = !DILocation(line: 318, column: 67, scope: !4256, inlinedAt: !5532)
!5532 = distinct !DILocation(line: 553, column: 20, scope: !4243, inlinedAt: !5527)
!5533 = !DILocation(line: 346, column: 58, scope: !4262, inlinedAt: !5534)
!5534 = distinct !DILocation(line: 547, column: 11, scope: !4243, inlinedAt: !5527)
!5535 = !DILocation(line: 472, column: 28, scope: !4268, inlinedAt: !5536)
!5536 = distinct !DILocation(line: 481, column: 9, scope: !4273, inlinedAt: !5537)
!5537 = distinct !DILocation(line: 545, column: 11, scope: !4275, inlinedAt: !5527)
!5538 = !DILocation(line: 472, column: 40, scope: !4268, inlinedAt: !5536)
!5539 = !DILocation(line: 472, column: 60, scope: !4268, inlinedAt: !5536)
!5540 = !DILocation(line: 478, column: 51, scope: !4273, inlinedAt: !5537)
!5541 = !DILocation(line: 478, column: 63, scope: !4273, inlinedAt: !5537)
!5542 = !DILocation(line: 480, column: 15, scope: !4273, inlinedAt: !5537)
!5543 = !DILocation(line: 538, column: 45, scope: !4245, inlinedAt: !5527)
!5544 = !DILocation(line: 538, column: 57, scope: !4245, inlinedAt: !5527)
!5545 = !DILocation(line: 542, column: 16, scope: !4243, inlinedAt: !5527)
!5546 = !DILocalVariable(name: "size", arg: 1, scope: !5524, file: !175, line: 662, type: !335)
!5547 = !DILocation(line: 662, column: 36, scope: !5524)
!5548 = !DILocalVariable(name: "flags", arg: 2, scope: !5524, file: !175, line: 662, type: !185)
!5549 = !DILocation(line: 662, column: 48, scope: !5524)
!5550 = !DILocation(line: 664, column: 17, scope: !5524)
!5551 = !DILocation(line: 664, column: 23, scope: !5524)
!5552 = !DILocation(line: 664, column: 29, scope: !5524)
!5553 = !DILocation(line: 540, column: 27, scope: !4244, inlinedAt: !5527)
!5554 = !DILocation(line: 540, column: 6, scope: !4244, inlinedAt: !5527)
!5555 = !DILocation(line: 540, column: 6, scope: !4245, inlinedAt: !5527)
!5556 = !DILocation(line: 544, column: 7, scope: !4275, inlinedAt: !5527)
!5557 = !DILocation(line: 544, column: 12, scope: !4275, inlinedAt: !5527)
!5558 = !DILocation(line: 544, column: 7, scope: !4243, inlinedAt: !5527)
!5559 = !DILocation(line: 545, column: 25, scope: !4275, inlinedAt: !5527)
!5560 = !DILocation(line: 545, column: 31, scope: !4275, inlinedAt: !5527)
!5561 = !DILocation(line: 480, column: 33, scope: !4273, inlinedAt: !5537)
!5562 = !DILocation(line: 480, column: 23, scope: !4273, inlinedAt: !5537)
!5563 = !DILocation(line: 481, column: 29, scope: !4273, inlinedAt: !5537)
!5564 = !DILocation(line: 481, column: 35, scope: !4273, inlinedAt: !5537)
!5565 = !DILocation(line: 481, column: 42, scope: !4273, inlinedAt: !5537)
!5566 = !DILocation(line: 474, column: 23, scope: !4268, inlinedAt: !5536)
!5567 = !DILocation(line: 474, column: 29, scope: !4268, inlinedAt: !5536)
!5568 = !DILocation(line: 474, column: 36, scope: !4268, inlinedAt: !5536)
!5569 = !DILocation(line: 474, column: 9, scope: !4268, inlinedAt: !5536)
!5570 = !DILocation(line: 545, column: 4, scope: !4275, inlinedAt: !5527)
!5571 = !DILocation(line: 547, column: 25, scope: !4243, inlinedAt: !5527)
!5572 = !DILocation(line: 348, column: 7, scope: !4895, inlinedAt: !5534)
!5573 = !DILocation(line: 348, column: 6, scope: !4262, inlinedAt: !5534)
!5574 = !DILocation(line: 349, column: 3, scope: !4895, inlinedAt: !5534)
!5575 = !DILocation(line: 351, column: 6, scope: !4899, inlinedAt: !5534)
!5576 = !DILocation(line: 351, column: 11, scope: !4899, inlinedAt: !5534)
!5577 = !DILocation(line: 351, column: 6, scope: !4262, inlinedAt: !5534)
!5578 = !DILocation(line: 352, column: 3, scope: !4899, inlinedAt: !5534)
!5579 = !DILocation(line: 354, column: 32, scope: !4904, inlinedAt: !5534)
!5580 = !DILocation(line: 354, column: 37, scope: !4904, inlinedAt: !5534)
!5581 = !DILocation(line: 354, column: 42, scope: !4904, inlinedAt: !5534)
!5582 = !DILocation(line: 354, column: 45, scope: !4904, inlinedAt: !5534)
!5583 = !DILocation(line: 354, column: 50, scope: !4904, inlinedAt: !5534)
!5584 = !DILocation(line: 354, column: 6, scope: !4262, inlinedAt: !5534)
!5585 = !DILocation(line: 355, column: 3, scope: !4904, inlinedAt: !5534)
!5586 = !DILocation(line: 356, column: 32, scope: !4912, inlinedAt: !5534)
!5587 = !DILocation(line: 356, column: 37, scope: !4912, inlinedAt: !5534)
!5588 = !DILocation(line: 356, column: 43, scope: !4912, inlinedAt: !5534)
!5589 = !DILocation(line: 356, column: 46, scope: !4912, inlinedAt: !5534)
!5590 = !DILocation(line: 356, column: 51, scope: !4912, inlinedAt: !5534)
!5591 = !DILocation(line: 356, column: 6, scope: !4262, inlinedAt: !5534)
!5592 = !DILocation(line: 357, column: 3, scope: !4912, inlinedAt: !5534)
!5593 = !DILocation(line: 358, column: 6, scope: !4920, inlinedAt: !5534)
!5594 = !DILocation(line: 358, column: 11, scope: !4920, inlinedAt: !5534)
!5595 = !DILocation(line: 358, column: 6, scope: !4262, inlinedAt: !5534)
!5596 = !DILocation(line: 358, column: 26, scope: !4920, inlinedAt: !5534)
!5597 = !DILocation(line: 359, column: 6, scope: !4925, inlinedAt: !5534)
!5598 = !DILocation(line: 359, column: 11, scope: !4925, inlinedAt: !5534)
!5599 = !DILocation(line: 359, column: 6, scope: !4262, inlinedAt: !5534)
!5600 = !DILocation(line: 359, column: 26, scope: !4925, inlinedAt: !5534)
!5601 = !DILocation(line: 360, column: 6, scope: !4930, inlinedAt: !5534)
!5602 = !DILocation(line: 360, column: 11, scope: !4930, inlinedAt: !5534)
!5603 = !DILocation(line: 360, column: 6, scope: !4262, inlinedAt: !5534)
!5604 = !DILocation(line: 360, column: 26, scope: !4930, inlinedAt: !5534)
!5605 = !DILocation(line: 361, column: 6, scope: !4935, inlinedAt: !5534)
!5606 = !DILocation(line: 361, column: 11, scope: !4935, inlinedAt: !5534)
!5607 = !DILocation(line: 361, column: 6, scope: !4262, inlinedAt: !5534)
!5608 = !DILocation(line: 361, column: 26, scope: !4935, inlinedAt: !5534)
!5609 = !DILocation(line: 362, column: 6, scope: !4940, inlinedAt: !5534)
!5610 = !DILocation(line: 362, column: 11, scope: !4940, inlinedAt: !5534)
!5611 = !DILocation(line: 362, column: 6, scope: !4262, inlinedAt: !5534)
!5612 = !DILocation(line: 362, column: 26, scope: !4940, inlinedAt: !5534)
!5613 = !DILocation(line: 363, column: 6, scope: !4945, inlinedAt: !5534)
!5614 = !DILocation(line: 363, column: 11, scope: !4945, inlinedAt: !5534)
!5615 = !DILocation(line: 363, column: 6, scope: !4262, inlinedAt: !5534)
!5616 = !DILocation(line: 363, column: 26, scope: !4945, inlinedAt: !5534)
!5617 = !DILocation(line: 364, column: 6, scope: !4950, inlinedAt: !5534)
!5618 = !DILocation(line: 364, column: 11, scope: !4950, inlinedAt: !5534)
!5619 = !DILocation(line: 364, column: 6, scope: !4262, inlinedAt: !5534)
!5620 = !DILocation(line: 364, column: 26, scope: !4950, inlinedAt: !5534)
!5621 = !DILocation(line: 365, column: 6, scope: !4955, inlinedAt: !5534)
!5622 = !DILocation(line: 365, column: 11, scope: !4955, inlinedAt: !5534)
!5623 = !DILocation(line: 365, column: 6, scope: !4262, inlinedAt: !5534)
!5624 = !DILocation(line: 365, column: 26, scope: !4955, inlinedAt: !5534)
!5625 = !DILocation(line: 366, column: 6, scope: !4960, inlinedAt: !5534)
!5626 = !DILocation(line: 366, column: 11, scope: !4960, inlinedAt: !5534)
!5627 = !DILocation(line: 366, column: 6, scope: !4262, inlinedAt: !5534)
!5628 = !DILocation(line: 366, column: 26, scope: !4960, inlinedAt: !5534)
!5629 = !DILocation(line: 367, column: 6, scope: !4965, inlinedAt: !5534)
!5630 = !DILocation(line: 367, column: 11, scope: !4965, inlinedAt: !5534)
!5631 = !DILocation(line: 367, column: 6, scope: !4262, inlinedAt: !5534)
!5632 = !DILocation(line: 367, column: 26, scope: !4965, inlinedAt: !5534)
!5633 = !DILocation(line: 368, column: 6, scope: !4970, inlinedAt: !5534)
!5634 = !DILocation(line: 368, column: 11, scope: !4970, inlinedAt: !5534)
!5635 = !DILocation(line: 368, column: 6, scope: !4262, inlinedAt: !5534)
!5636 = !DILocation(line: 368, column: 26, scope: !4970, inlinedAt: !5534)
!5637 = !DILocation(line: 369, column: 6, scope: !4975, inlinedAt: !5534)
!5638 = !DILocation(line: 369, column: 11, scope: !4975, inlinedAt: !5534)
!5639 = !DILocation(line: 369, column: 6, scope: !4262, inlinedAt: !5534)
!5640 = !DILocation(line: 369, column: 26, scope: !4975, inlinedAt: !5534)
!5641 = !DILocation(line: 370, column: 6, scope: !4980, inlinedAt: !5534)
!5642 = !DILocation(line: 370, column: 11, scope: !4980, inlinedAt: !5534)
!5643 = !DILocation(line: 370, column: 6, scope: !4262, inlinedAt: !5534)
!5644 = !DILocation(line: 370, column: 26, scope: !4980, inlinedAt: !5534)
!5645 = !DILocation(line: 371, column: 6, scope: !4985, inlinedAt: !5534)
!5646 = !DILocation(line: 371, column: 11, scope: !4985, inlinedAt: !5534)
!5647 = !DILocation(line: 371, column: 6, scope: !4262, inlinedAt: !5534)
!5648 = !DILocation(line: 371, column: 26, scope: !4985, inlinedAt: !5534)
!5649 = !DILocation(line: 372, column: 6, scope: !4990, inlinedAt: !5534)
!5650 = !DILocation(line: 372, column: 11, scope: !4990, inlinedAt: !5534)
!5651 = !DILocation(line: 372, column: 6, scope: !4262, inlinedAt: !5534)
!5652 = !DILocation(line: 372, column: 26, scope: !4990, inlinedAt: !5534)
!5653 = !DILocation(line: 373, column: 6, scope: !4995, inlinedAt: !5534)
!5654 = !DILocation(line: 373, column: 11, scope: !4995, inlinedAt: !5534)
!5655 = !DILocation(line: 373, column: 6, scope: !4262, inlinedAt: !5534)
!5656 = !DILocation(line: 373, column: 26, scope: !4995, inlinedAt: !5534)
!5657 = !DILocation(line: 374, column: 6, scope: !5000, inlinedAt: !5534)
!5658 = !DILocation(line: 374, column: 11, scope: !5000, inlinedAt: !5534)
!5659 = !DILocation(line: 374, column: 6, scope: !4262, inlinedAt: !5534)
!5660 = !DILocation(line: 374, column: 26, scope: !5000, inlinedAt: !5534)
!5661 = !DILocation(line: 375, column: 6, scope: !5005, inlinedAt: !5534)
!5662 = !DILocation(line: 375, column: 11, scope: !5005, inlinedAt: !5534)
!5663 = !DILocation(line: 375, column: 6, scope: !4262, inlinedAt: !5534)
!5664 = !DILocation(line: 375, column: 27, scope: !5005, inlinedAt: !5534)
!5665 = !DILocation(line: 376, column: 6, scope: !5010, inlinedAt: !5534)
!5666 = !DILocation(line: 376, column: 11, scope: !5010, inlinedAt: !5534)
!5667 = !DILocation(line: 376, column: 6, scope: !4262, inlinedAt: !5534)
!5668 = !DILocation(line: 376, column: 32, scope: !5010, inlinedAt: !5534)
!5669 = !DILocation(line: 377, column: 6, scope: !5015, inlinedAt: !5534)
!5670 = !DILocation(line: 377, column: 11, scope: !5015, inlinedAt: !5534)
!5671 = !DILocation(line: 377, column: 6, scope: !4262, inlinedAt: !5534)
!5672 = !DILocation(line: 377, column: 32, scope: !5015, inlinedAt: !5534)
!5673 = !DILocation(line: 378, column: 6, scope: !5020, inlinedAt: !5534)
!5674 = !DILocation(line: 378, column: 11, scope: !5020, inlinedAt: !5534)
!5675 = !DILocation(line: 378, column: 6, scope: !4262, inlinedAt: !5534)
!5676 = !DILocation(line: 378, column: 32, scope: !5020, inlinedAt: !5534)
!5677 = !DILocation(line: 379, column: 6, scope: !5025, inlinedAt: !5534)
!5678 = !DILocation(line: 379, column: 11, scope: !5025, inlinedAt: !5534)
!5679 = !DILocation(line: 379, column: 6, scope: !4262, inlinedAt: !5534)
!5680 = !DILocation(line: 379, column: 33, scope: !5025, inlinedAt: !5534)
!5681 = !DILocation(line: 380, column: 6, scope: !5030, inlinedAt: !5534)
!5682 = !DILocation(line: 380, column: 11, scope: !5030, inlinedAt: !5534)
!5683 = !DILocation(line: 380, column: 6, scope: !4262, inlinedAt: !5534)
!5684 = !DILocation(line: 380, column: 33, scope: !5030, inlinedAt: !5534)
!5685 = !DILocation(line: 381, column: 6, scope: !5035, inlinedAt: !5534)
!5686 = !DILocation(line: 381, column: 11, scope: !5035, inlinedAt: !5534)
!5687 = !DILocation(line: 381, column: 6, scope: !4262, inlinedAt: !5534)
!5688 = !DILocation(line: 381, column: 33, scope: !5035, inlinedAt: !5534)
!5689 = !DILocation(line: 382, column: 2, scope: !5040, inlinedAt: !5534)
!5690 = !DILocation(line: 382, column: 2, scope: !5044, inlinedAt: !5534)
!5691 = !DILocation(line: 382, column: 2, scope: !5045, inlinedAt: !5534)
!5692 = !DILocation(line: 386, column: 1, scope: !4262, inlinedAt: !5534)
!5693 = !DILocation(line: 547, column: 9, scope: !4243, inlinedAt: !5527)
!5694 = !DILocation(line: 549, column: 8, scope: !5051, inlinedAt: !5527)
!5695 = !DILocation(line: 549, column: 7, scope: !4243, inlinedAt: !5527)
!5696 = !DILocation(line: 550, column: 4, scope: !5051, inlinedAt: !5527)
!5697 = !DILocation(line: 553, column: 33, scope: !4243, inlinedAt: !5527)
!5698 = !DILocation(line: 325, column: 6, scope: !5056, inlinedAt: !5532)
!5699 = !DILocation(line: 325, column: 6, scope: !4256, inlinedAt: !5532)
!5700 = !DILocation(line: 326, column: 3, scope: !5056, inlinedAt: !5532)
!5701 = !DILocation(line: 332, column: 9, scope: !4256, inlinedAt: !5532)
!5702 = !DILocation(line: 332, column: 15, scope: !4256, inlinedAt: !5532)
!5703 = !DILocation(line: 332, column: 2, scope: !4256, inlinedAt: !5532)
!5704 = !DILocation(line: 336, column: 1, scope: !4256, inlinedAt: !5532)
!5705 = !DILocation(line: 553, column: 5, scope: !4243, inlinedAt: !5527)
!5706 = !DILocation(line: 553, column: 41, scope: !4243, inlinedAt: !5527)
!5707 = !DILocation(line: 554, column: 5, scope: !4243, inlinedAt: !5527)
!5708 = !DILocation(line: 554, column: 12, scope: !4243, inlinedAt: !5527)
!5709 = !DILocation(line: 448, column: 31, scope: !4238, inlinedAt: !5526)
!5710 = !DILocation(line: 448, column: 34, scope: !4238, inlinedAt: !5526)
!5711 = !DILocation(line: 448, column: 14, scope: !4238, inlinedAt: !5526)
!5712 = !DILocation(line: 450, column: 22, scope: !4238, inlinedAt: !5526)
!5713 = !DILocation(line: 450, column: 25, scope: !4238, inlinedAt: !5526)
!5714 = !DILocation(line: 450, column: 30, scope: !4238, inlinedAt: !5526)
!5715 = !DILocation(line: 450, column: 36, scope: !4238, inlinedAt: !5526)
!5716 = !DILocation(line: 450, column: 8, scope: !4238, inlinedAt: !5526)
!5717 = !DILocation(line: 450, column: 6, scope: !4238, inlinedAt: !5526)
!5718 = !DILocation(line: 451, column: 9, scope: !4238, inlinedAt: !5526)
!5719 = !DILocation(line: 552, column: 3, scope: !4243, inlinedAt: !5527)
!5720 = !DILocation(line: 557, column: 19, scope: !4245, inlinedAt: !5527)
!5721 = !DILocation(line: 557, column: 25, scope: !4245, inlinedAt: !5527)
!5722 = !DILocation(line: 557, column: 9, scope: !4245, inlinedAt: !5527)
!5723 = !DILocation(line: 557, column: 2, scope: !4245, inlinedAt: !5527)
!5724 = !DILocation(line: 558, column: 1, scope: !4245, inlinedAt: !5527)
!5725 = !DILocation(line: 664, column: 2, scope: !5524)
!5726 = distinct !DISubprogram(name: "__create_pipe", scope: !6, file: !6, line: 1945, type: !5727, scopeLine: 1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!5727 = !DISubroutineType(types: !5728)
!5728 = !{!7, !193, !7}
!5729 = !DILocalVariable(name: "dev", arg: 1, scope: !5726, file: !6, line: 1945, type: !193)
!5730 = !DILocation(line: 1945, column: 61, scope: !5726)
!5731 = !DILocalVariable(name: "endpoint", arg: 2, scope: !5726, file: !6, line: 1946, type: !7)
!5732 = !DILocation(line: 1946, column: 16, scope: !5726)
!5733 = !DILocation(line: 1948, column: 10, scope: !5726)
!5734 = !DILocation(line: 1948, column: 15, scope: !5726)
!5735 = !DILocation(line: 1948, column: 22, scope: !5726)
!5736 = !DILocation(line: 1948, column: 31, scope: !5726)
!5737 = !DILocation(line: 1948, column: 40, scope: !5726)
!5738 = !DILocation(line: 1948, column: 28, scope: !5726)
!5739 = !DILocation(line: 1948, column: 2, scope: !5726)
!5740 = distinct !DISubprogram(name: "usb_fill_bulk_urb", scope: !6, file: !6, line: 1647, type: !5741, scopeLine: 1654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!5741 = !DISubroutineType(types: !5742)
!5742 = !{null, !4726, !193, !7, !192, !197, !4775, !192}
!5743 = !DILocalVariable(name: "urb", arg: 1, scope: !5740, file: !6, line: 1647, type: !4726)
!5744 = !DILocation(line: 1647, column: 50, scope: !5740)
!5745 = !DILocalVariable(name: "dev", arg: 2, scope: !5740, file: !6, line: 1648, type: !193)
!5746 = !DILocation(line: 1648, column: 29, scope: !5740)
!5747 = !DILocalVariable(name: "pipe", arg: 3, scope: !5740, file: !6, line: 1649, type: !7)
!5748 = !DILocation(line: 1649, column: 23, scope: !5740)
!5749 = !DILocalVariable(name: "transfer_buffer", arg: 4, scope: !5740, file: !6, line: 1650, type: !192)
!5750 = !DILocation(line: 1650, column: 16, scope: !5740)
!5751 = !DILocalVariable(name: "buffer_length", arg: 5, scope: !5740, file: !6, line: 1651, type: !197)
!5752 = !DILocation(line: 1651, column: 14, scope: !5740)
!5753 = !DILocalVariable(name: "complete_fn", arg: 6, scope: !5740, file: !6, line: 1652, type: !4775)
!5754 = !DILocation(line: 1652, column: 25, scope: !5740)
!5755 = !DILocalVariable(name: "context", arg: 7, scope: !5740, file: !6, line: 1653, type: !192)
!5756 = !DILocation(line: 1653, column: 16, scope: !5740)
!5757 = !DILocation(line: 1655, column: 13, scope: !5740)
!5758 = !DILocation(line: 1655, column: 2, scope: !5740)
!5759 = !DILocation(line: 1655, column: 7, scope: !5740)
!5760 = !DILocation(line: 1655, column: 11, scope: !5740)
!5761 = !DILocation(line: 1656, column: 14, scope: !5740)
!5762 = !DILocation(line: 1656, column: 2, scope: !5740)
!5763 = !DILocation(line: 1656, column: 7, scope: !5740)
!5764 = !DILocation(line: 1656, column: 12, scope: !5740)
!5765 = !DILocation(line: 1657, column: 25, scope: !5740)
!5766 = !DILocation(line: 1657, column: 2, scope: !5740)
!5767 = !DILocation(line: 1657, column: 7, scope: !5740)
!5768 = !DILocation(line: 1657, column: 23, scope: !5740)
!5769 = !DILocation(line: 1658, column: 32, scope: !5740)
!5770 = !DILocation(line: 1658, column: 2, scope: !5740)
!5771 = !DILocation(line: 1658, column: 7, scope: !5740)
!5772 = !DILocation(line: 1658, column: 30, scope: !5740)
!5773 = !DILocation(line: 1659, column: 18, scope: !5740)
!5774 = !DILocation(line: 1659, column: 2, scope: !5740)
!5775 = !DILocation(line: 1659, column: 7, scope: !5740)
!5776 = !DILocation(line: 1659, column: 16, scope: !5740)
!5777 = !DILocation(line: 1660, column: 17, scope: !5740)
!5778 = !DILocation(line: 1660, column: 2, scope: !5740)
!5779 = !DILocation(line: 1660, column: 7, scope: !5740)
!5780 = !DILocation(line: 1660, column: 15, scope: !5740)
!5781 = !DILocation(line: 1661, column: 1, scope: !5740)
!5782 = distinct !DISubprogram(name: "irtoy_in_callback", scope: !3, file: !3, line: 213, type: !4777, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!5783 = !DILocalVariable(name: "urb", arg: 1, scope: !5782, file: !3, line: 213, type: !4726)
!5784 = !DILocation(line: 213, column: 43, scope: !5782)
!5785 = !DILocalVariable(name: "irtoy", scope: !5782, file: !3, line: 215, type: !4333)
!5786 = !DILocation(line: 215, column: 16, scope: !5782)
!5787 = !DILocation(line: 215, column: 24, scope: !5782)
!5788 = !DILocation(line: 215, column: 29, scope: !5782)
!5789 = !DILocalVariable(name: "ret", scope: !5782, file: !3, line: 216, type: !197)
!5790 = !DILocation(line: 216, column: 6, scope: !5782)
!5791 = !DILocation(line: 218, column: 6, scope: !5792)
!5792 = distinct !DILexicalBlock(scope: !5782, file: !3, line: 218, column: 6)
!5793 = !DILocation(line: 218, column: 11, scope: !5792)
!5794 = !DILocation(line: 218, column: 18, scope: !5792)
!5795 = !DILocation(line: 218, column: 6, scope: !5782)
!5796 = !DILocation(line: 219, column: 18, scope: !5792)
!5797 = !DILocation(line: 219, column: 25, scope: !5792)
!5798 = !DILocation(line: 219, column: 30, scope: !5792)
!5799 = !DILocation(line: 219, column: 3, scope: !5792)
!5800 = !DILocation(line: 223, column: 23, scope: !5782)
!5801 = !DILocation(line: 223, column: 8, scope: !5782)
!5802 = !DILocation(line: 223, column: 6, scope: !5782)
!5803 = !DILocation(line: 224, column: 6, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5782, file: !3, line: 224, column: 6)
!5805 = !DILocation(line: 224, column: 10, scope: !5804)
!5806 = !DILocation(line: 224, column: 13, scope: !5804)
!5807 = !DILocation(line: 224, column: 17, scope: !5804)
!5808 = !DILocation(line: 224, column: 6, scope: !5782)
!5809 = !DILocation(line: 225, column: 3, scope: !5804)
!5810 = !DILocation(line: 226, column: 1, scope: !5782)
!5811 = distinct !DISubprogram(name: "irtoy_out_callback", scope: !3, file: !3, line: 201, type: !4777, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!5812 = !DILocalVariable(name: "urb", arg: 1, scope: !5811, file: !3, line: 201, type: !4726)
!5813 = !DILocation(line: 201, column: 44, scope: !5811)
!5814 = !DILocalVariable(name: "irtoy", scope: !5811, file: !3, line: 203, type: !4333)
!5815 = !DILocation(line: 203, column: 16, scope: !5811)
!5816 = !DILocation(line: 203, column: 24, scope: !5811)
!5817 = !DILocation(line: 203, column: 29, scope: !5811)
!5818 = !DILocation(line: 205, column: 6, scope: !5819)
!5819 = distinct !DILexicalBlock(scope: !5811, file: !3, line: 205, column: 6)
!5820 = !DILocation(line: 205, column: 11, scope: !5819)
!5821 = !DILocation(line: 205, column: 18, scope: !5819)
!5822 = !DILocation(line: 205, column: 6, scope: !5811)
!5823 = !DILocation(line: 206, column: 7, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 206, column: 7)
!5825 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 205, column: 24)
!5826 = !DILocation(line: 206, column: 14, scope: !5824)
!5827 = !DILocation(line: 206, column: 20, scope: !5824)
!5828 = !DILocation(line: 206, column: 7, scope: !5825)
!5829 = !DILocation(line: 207, column: 14, scope: !5824)
!5830 = !DILocation(line: 207, column: 21, scope: !5824)
!5831 = !DILocation(line: 207, column: 4, scope: !5824)
!5832 = !DILocation(line: 208, column: 2, scope: !5825)
!5833 = !DILocation(line: 209, column: 3, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 208, column: 9)
!5835 = !DILocation(line: 211, column: 1, scope: !5811)
!5836 = distinct !DISubprogram(name: "irtoy_setup", scope: !3, file: !3, line: 253, type: !5837, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!5837 = !DISubroutineType(types: !5838)
!5838 = !{!197, !4333}
!5839 = !DILocalVariable(name: "irtoy", arg: 1, scope: !5836, file: !3, line: 253, type: !4333)
!5840 = !DILocation(line: 253, column: 38, scope: !5836)
!5841 = !DILocalVariable(name: "err", scope: !5836, file: !3, line: 255, type: !197)
!5842 = !DILocation(line: 255, column: 6, scope: !5836)
!5843 = !DILocation(line: 257, column: 22, scope: !5836)
!5844 = !DILocation(line: 257, column: 8, scope: !5836)
!5845 = !DILocation(line: 257, column: 6, scope: !5836)
!5846 = !DILocation(line: 259, column: 6, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5836, file: !3, line: 259, column: 6)
!5848 = !DILocation(line: 259, column: 10, scope: !5847)
!5849 = !DILocation(line: 259, column: 6, scope: !5836)
!5850 = !DILocation(line: 260, column: 3, scope: !5851)
!5851 = distinct !DILexicalBlock(scope: !5847, file: !3, line: 259, column: 16)
!5852 = !DILocation(line: 262, column: 10, scope: !5851)
!5853 = !DILocation(line: 262, column: 3, scope: !5851)
!5854 = !DILocation(line: 265, column: 2, scope: !5836)
!5855 = !DILocation(line: 268, column: 22, scope: !5836)
!5856 = !DILocation(line: 268, column: 8, scope: !5836)
!5857 = !DILocation(line: 268, column: 6, scope: !5836)
!5858 = !DILocation(line: 270, column: 6, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5836, file: !3, line: 270, column: 6)
!5860 = !DILocation(line: 270, column: 6, scope: !5836)
!5861 = !DILocation(line: 271, column: 3, scope: !5862)
!5862 = distinct !DILexicalBlock(scope: !5859, file: !3, line: 270, column: 11)
!5863 = !DILocation(line: 273, column: 10, scope: !5862)
!5864 = !DILocation(line: 273, column: 3, scope: !5862)
!5865 = !DILocation(line: 277, column: 22, scope: !5836)
!5866 = !DILocation(line: 277, column: 8, scope: !5836)
!5867 = !DILocation(line: 277, column: 6, scope: !5836)
!5868 = !DILocation(line: 279, column: 6, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5836, file: !3, line: 279, column: 6)
!5870 = !DILocation(line: 279, column: 6, scope: !5836)
!5871 = !DILocation(line: 280, column: 3, scope: !5869)
!5872 = !DILocation(line: 283, column: 9, scope: !5836)
!5873 = !DILocation(line: 283, column: 2, scope: !5836)
!5874 = !DILocation(line: 284, column: 1, scope: !5836)
!5875 = distinct !DISubprogram(name: "usb_make_path", scope: !6, file: !6, line: 912, type: !5876, scopeLine: 913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!5876 = !DISubroutineType(types: !5877)
!5877 = !{!197, !193, !289, !335}
!5878 = !DILocalVariable(name: "dev", arg: 1, scope: !5875, file: !6, line: 912, type: !193)
!5879 = !DILocation(line: 912, column: 52, scope: !5875)
!5880 = !DILocalVariable(name: "buf", arg: 2, scope: !5875, file: !6, line: 912, type: !289)
!5881 = !DILocation(line: 912, column: 63, scope: !5875)
!5882 = !DILocalVariable(name: "size", arg: 3, scope: !5875, file: !6, line: 912, type: !335)
!5883 = !DILocation(line: 912, column: 75, scope: !5875)
!5884 = !DILocalVariable(name: "actual", scope: !5875, file: !6, line: 914, type: !197)
!5885 = !DILocation(line: 914, column: 6, scope: !5875)
!5886 = !DILocation(line: 915, column: 20, scope: !5875)
!5887 = !DILocation(line: 915, column: 25, scope: !5875)
!5888 = !DILocation(line: 915, column: 44, scope: !5875)
!5889 = !DILocation(line: 915, column: 49, scope: !5875)
!5890 = !DILocation(line: 915, column: 54, scope: !5875)
!5891 = !DILocation(line: 916, column: 6, scope: !5875)
!5892 = !DILocation(line: 916, column: 11, scope: !5875)
!5893 = !DILocation(line: 915, column: 11, scope: !5875)
!5894 = !DILocation(line: 915, column: 9, scope: !5875)
!5895 = !DILocation(line: 917, column: 10, scope: !5875)
!5896 = !DILocation(line: 917, column: 25, scope: !5875)
!5897 = !DILocation(line: 917, column: 20, scope: !5875)
!5898 = !DILocation(line: 917, column: 17, scope: !5875)
!5899 = !DILocation(line: 917, column: 9, scope: !5875)
!5900 = !DILocation(line: 917, column: 38, scope: !5875)
!5901 = !DILocation(line: 917, column: 2, scope: !5875)
!5902 = distinct !DISubprogram(name: "usb_to_input_id", scope: !5903, file: !5903, line: 18, type: !5904, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!5903 = !DIFile(filename: "./include/linux/usb/input.h", directory: "/home/lizy2001/genbc/linux")
!5904 = !DISubroutineType(types: !5905)
!5905 = !{null, !5906, !5908}
!5906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5907, size: 64)
!5907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!5908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!5909 = !DILocalVariable(name: "dev", arg: 1, scope: !5902, file: !5903, line: 18, type: !5906)
!5910 = !DILocation(line: 18, column: 42, scope: !5902)
!5911 = !DILocalVariable(name: "id", arg: 2, scope: !5902, file: !5903, line: 18, type: !5908)
!5912 = !DILocation(line: 18, column: 64, scope: !5902)
!5913 = !DILocation(line: 20, column: 2, scope: !5902)
!5914 = !DILocation(line: 20, column: 6, scope: !5902)
!5915 = !DILocation(line: 20, column: 14, scope: !5902)
!5916 = !DILocation(line: 21, column: 15, scope: !5902)
!5917 = !DILocation(line: 21, column: 2, scope: !5902)
!5918 = !DILocation(line: 21, column: 6, scope: !5902)
!5919 = !DILocation(line: 21, column: 13, scope: !5902)
!5920 = !DILocation(line: 22, column: 16, scope: !5902)
!5921 = !DILocation(line: 22, column: 2, scope: !5902)
!5922 = !DILocation(line: 22, column: 6, scope: !5902)
!5923 = !DILocation(line: 22, column: 14, scope: !5902)
!5924 = !DILocation(line: 23, column: 16, scope: !5902)
!5925 = !DILocation(line: 23, column: 2, scope: !5902)
!5926 = !DILocation(line: 23, column: 6, scope: !5902)
!5927 = !DILocation(line: 23, column: 14, scope: !5902)
!5928 = !DILocation(line: 24, column: 1, scope: !5902)
!5929 = distinct !DISubprogram(name: "irtoy_tx", scope: !3, file: !3, line: 292, type: !5930, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!5930 = !DISubroutineType(types: !5931)
!5931 = !{!197, !4339, !5932, !4796}
!5932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!5933 = !DILocation(line: 445, column: 72, scope: !4238, inlinedAt: !5934)
!5934 = distinct !DILocation(line: 552, column: 10, scope: !4243, inlinedAt: !5935)
!5935 = distinct !DILocation(line: 300, column: 8, scope: !5929)
!5936 = !DILocation(line: 446, column: 9, scope: !4238, inlinedAt: !5934)
!5937 = !DILocation(line: 446, column: 23, scope: !4238, inlinedAt: !5934)
!5938 = !DILocation(line: 448, column: 8, scope: !4238, inlinedAt: !5934)
!5939 = !DILocation(line: 318, column: 67, scope: !4256, inlinedAt: !5940)
!5940 = distinct !DILocation(line: 553, column: 20, scope: !4243, inlinedAt: !5935)
!5941 = !DILocation(line: 346, column: 58, scope: !4262, inlinedAt: !5942)
!5942 = distinct !DILocation(line: 547, column: 11, scope: !4243, inlinedAt: !5935)
!5943 = !DILocation(line: 472, column: 28, scope: !4268, inlinedAt: !5944)
!5944 = distinct !DILocation(line: 481, column: 9, scope: !4273, inlinedAt: !5945)
!5945 = distinct !DILocation(line: 545, column: 11, scope: !4275, inlinedAt: !5935)
!5946 = !DILocation(line: 472, column: 40, scope: !4268, inlinedAt: !5944)
!5947 = !DILocation(line: 472, column: 60, scope: !4268, inlinedAt: !5944)
!5948 = !DILocation(line: 478, column: 51, scope: !4273, inlinedAt: !5945)
!5949 = !DILocation(line: 478, column: 63, scope: !4273, inlinedAt: !5945)
!5950 = !DILocation(line: 480, column: 15, scope: !4273, inlinedAt: !5945)
!5951 = !DILocation(line: 538, column: 45, scope: !4245, inlinedAt: !5935)
!5952 = !DILocation(line: 538, column: 57, scope: !4245, inlinedAt: !5935)
!5953 = !DILocation(line: 542, column: 16, scope: !4243, inlinedAt: !5935)
!5954 = !DILocalVariable(name: "rc", arg: 1, scope: !5929, file: !3, line: 292, type: !4339)
!5955 = !DILocation(line: 292, column: 36, scope: !5929)
!5956 = !DILocalVariable(name: "txbuf", arg: 2, scope: !5929, file: !3, line: 292, type: !5932)
!5957 = !DILocation(line: 292, column: 46, scope: !5929)
!5958 = !DILocalVariable(name: "count", arg: 3, scope: !5929, file: !3, line: 292, type: !4796)
!5959 = !DILocation(line: 292, column: 58, scope: !5929)
!5960 = !DILocalVariable(name: "irtoy", scope: !5929, file: !3, line: 294, type: !4333)
!5961 = !DILocation(line: 294, column: 16, scope: !5929)
!5962 = !DILocation(line: 294, column: 24, scope: !5929)
!5963 = !DILocation(line: 294, column: 28, scope: !5929)
!5964 = !DILocalVariable(name: "i", scope: !5929, file: !3, line: 295, type: !7)
!5965 = !DILocation(line: 295, column: 15, scope: !5929)
!5966 = !DILocalVariable(name: "size", scope: !5929, file: !3, line: 295, type: !7)
!5967 = !DILocation(line: 295, column: 18, scope: !5929)
!5968 = !DILocalVariable(name: "buf", scope: !5929, file: !3, line: 296, type: !4113)
!5969 = !DILocation(line: 296, column: 10, scope: !5929)
!5970 = !DILocalVariable(name: "err", scope: !5929, file: !3, line: 297, type: !197)
!5971 = !DILocation(line: 297, column: 6, scope: !5929)
!5972 = !DILocation(line: 299, column: 24, scope: !5929)
!5973 = !DILocation(line: 299, column: 30, scope: !5929)
!5974 = !DILocation(line: 299, column: 23, scope: !5929)
!5975 = !DILocation(line: 299, column: 21, scope: !5929)
!5976 = !DILocation(line: 299, column: 9, scope: !5929)
!5977 = !DILocation(line: 299, column: 7, scope: !5929)
!5978 = !DILocation(line: 300, column: 16, scope: !5929)
!5979 = !DILocation(line: 540, column: 27, scope: !4244, inlinedAt: !5935)
!5980 = !DILocation(line: 540, column: 6, scope: !4244, inlinedAt: !5935)
!5981 = !DILocation(line: 540, column: 6, scope: !4245, inlinedAt: !5935)
!5982 = !DILocation(line: 544, column: 7, scope: !4275, inlinedAt: !5935)
!5983 = !DILocation(line: 544, column: 12, scope: !4275, inlinedAt: !5935)
!5984 = !DILocation(line: 544, column: 7, scope: !4243, inlinedAt: !5935)
!5985 = !DILocation(line: 545, column: 25, scope: !4275, inlinedAt: !5935)
!5986 = !DILocation(line: 545, column: 31, scope: !4275, inlinedAt: !5935)
!5987 = !DILocation(line: 480, column: 33, scope: !4273, inlinedAt: !5945)
!5988 = !DILocation(line: 480, column: 23, scope: !4273, inlinedAt: !5945)
!5989 = !DILocation(line: 481, column: 29, scope: !4273, inlinedAt: !5945)
!5990 = !DILocation(line: 481, column: 35, scope: !4273, inlinedAt: !5945)
!5991 = !DILocation(line: 481, column: 42, scope: !4273, inlinedAt: !5945)
!5992 = !DILocation(line: 474, column: 23, scope: !4268, inlinedAt: !5944)
!5993 = !DILocation(line: 474, column: 29, scope: !4268, inlinedAt: !5944)
!5994 = !DILocation(line: 474, column: 36, scope: !4268, inlinedAt: !5944)
!5995 = !DILocation(line: 474, column: 9, scope: !4268, inlinedAt: !5944)
!5996 = !DILocation(line: 545, column: 4, scope: !4275, inlinedAt: !5935)
!5997 = !DILocation(line: 547, column: 25, scope: !4243, inlinedAt: !5935)
!5998 = !DILocation(line: 348, column: 7, scope: !4895, inlinedAt: !5942)
!5999 = !DILocation(line: 348, column: 6, scope: !4262, inlinedAt: !5942)
!6000 = !DILocation(line: 349, column: 3, scope: !4895, inlinedAt: !5942)
!6001 = !DILocation(line: 351, column: 6, scope: !4899, inlinedAt: !5942)
!6002 = !DILocation(line: 351, column: 11, scope: !4899, inlinedAt: !5942)
!6003 = !DILocation(line: 351, column: 6, scope: !4262, inlinedAt: !5942)
!6004 = !DILocation(line: 352, column: 3, scope: !4899, inlinedAt: !5942)
!6005 = !DILocation(line: 354, column: 32, scope: !4904, inlinedAt: !5942)
!6006 = !DILocation(line: 354, column: 37, scope: !4904, inlinedAt: !5942)
!6007 = !DILocation(line: 354, column: 42, scope: !4904, inlinedAt: !5942)
!6008 = !DILocation(line: 354, column: 45, scope: !4904, inlinedAt: !5942)
!6009 = !DILocation(line: 354, column: 50, scope: !4904, inlinedAt: !5942)
!6010 = !DILocation(line: 354, column: 6, scope: !4262, inlinedAt: !5942)
!6011 = !DILocation(line: 355, column: 3, scope: !4904, inlinedAt: !5942)
!6012 = !DILocation(line: 356, column: 32, scope: !4912, inlinedAt: !5942)
!6013 = !DILocation(line: 356, column: 37, scope: !4912, inlinedAt: !5942)
!6014 = !DILocation(line: 356, column: 43, scope: !4912, inlinedAt: !5942)
!6015 = !DILocation(line: 356, column: 46, scope: !4912, inlinedAt: !5942)
!6016 = !DILocation(line: 356, column: 51, scope: !4912, inlinedAt: !5942)
!6017 = !DILocation(line: 356, column: 6, scope: !4262, inlinedAt: !5942)
!6018 = !DILocation(line: 357, column: 3, scope: !4912, inlinedAt: !5942)
!6019 = !DILocation(line: 358, column: 6, scope: !4920, inlinedAt: !5942)
!6020 = !DILocation(line: 358, column: 11, scope: !4920, inlinedAt: !5942)
!6021 = !DILocation(line: 358, column: 6, scope: !4262, inlinedAt: !5942)
!6022 = !DILocation(line: 358, column: 26, scope: !4920, inlinedAt: !5942)
!6023 = !DILocation(line: 359, column: 6, scope: !4925, inlinedAt: !5942)
!6024 = !DILocation(line: 359, column: 11, scope: !4925, inlinedAt: !5942)
!6025 = !DILocation(line: 359, column: 6, scope: !4262, inlinedAt: !5942)
!6026 = !DILocation(line: 359, column: 26, scope: !4925, inlinedAt: !5942)
!6027 = !DILocation(line: 360, column: 6, scope: !4930, inlinedAt: !5942)
!6028 = !DILocation(line: 360, column: 11, scope: !4930, inlinedAt: !5942)
!6029 = !DILocation(line: 360, column: 6, scope: !4262, inlinedAt: !5942)
!6030 = !DILocation(line: 360, column: 26, scope: !4930, inlinedAt: !5942)
!6031 = !DILocation(line: 361, column: 6, scope: !4935, inlinedAt: !5942)
!6032 = !DILocation(line: 361, column: 11, scope: !4935, inlinedAt: !5942)
!6033 = !DILocation(line: 361, column: 6, scope: !4262, inlinedAt: !5942)
!6034 = !DILocation(line: 361, column: 26, scope: !4935, inlinedAt: !5942)
!6035 = !DILocation(line: 362, column: 6, scope: !4940, inlinedAt: !5942)
!6036 = !DILocation(line: 362, column: 11, scope: !4940, inlinedAt: !5942)
!6037 = !DILocation(line: 362, column: 6, scope: !4262, inlinedAt: !5942)
!6038 = !DILocation(line: 362, column: 26, scope: !4940, inlinedAt: !5942)
!6039 = !DILocation(line: 363, column: 6, scope: !4945, inlinedAt: !5942)
!6040 = !DILocation(line: 363, column: 11, scope: !4945, inlinedAt: !5942)
!6041 = !DILocation(line: 363, column: 6, scope: !4262, inlinedAt: !5942)
!6042 = !DILocation(line: 363, column: 26, scope: !4945, inlinedAt: !5942)
!6043 = !DILocation(line: 364, column: 6, scope: !4950, inlinedAt: !5942)
!6044 = !DILocation(line: 364, column: 11, scope: !4950, inlinedAt: !5942)
!6045 = !DILocation(line: 364, column: 6, scope: !4262, inlinedAt: !5942)
!6046 = !DILocation(line: 364, column: 26, scope: !4950, inlinedAt: !5942)
!6047 = !DILocation(line: 365, column: 6, scope: !4955, inlinedAt: !5942)
!6048 = !DILocation(line: 365, column: 11, scope: !4955, inlinedAt: !5942)
!6049 = !DILocation(line: 365, column: 6, scope: !4262, inlinedAt: !5942)
!6050 = !DILocation(line: 365, column: 26, scope: !4955, inlinedAt: !5942)
!6051 = !DILocation(line: 366, column: 6, scope: !4960, inlinedAt: !5942)
!6052 = !DILocation(line: 366, column: 11, scope: !4960, inlinedAt: !5942)
!6053 = !DILocation(line: 366, column: 6, scope: !4262, inlinedAt: !5942)
!6054 = !DILocation(line: 366, column: 26, scope: !4960, inlinedAt: !5942)
!6055 = !DILocation(line: 367, column: 6, scope: !4965, inlinedAt: !5942)
!6056 = !DILocation(line: 367, column: 11, scope: !4965, inlinedAt: !5942)
!6057 = !DILocation(line: 367, column: 6, scope: !4262, inlinedAt: !5942)
!6058 = !DILocation(line: 367, column: 26, scope: !4965, inlinedAt: !5942)
!6059 = !DILocation(line: 368, column: 6, scope: !4970, inlinedAt: !5942)
!6060 = !DILocation(line: 368, column: 11, scope: !4970, inlinedAt: !5942)
!6061 = !DILocation(line: 368, column: 6, scope: !4262, inlinedAt: !5942)
!6062 = !DILocation(line: 368, column: 26, scope: !4970, inlinedAt: !5942)
!6063 = !DILocation(line: 369, column: 6, scope: !4975, inlinedAt: !5942)
!6064 = !DILocation(line: 369, column: 11, scope: !4975, inlinedAt: !5942)
!6065 = !DILocation(line: 369, column: 6, scope: !4262, inlinedAt: !5942)
!6066 = !DILocation(line: 369, column: 26, scope: !4975, inlinedAt: !5942)
!6067 = !DILocation(line: 370, column: 6, scope: !4980, inlinedAt: !5942)
!6068 = !DILocation(line: 370, column: 11, scope: !4980, inlinedAt: !5942)
!6069 = !DILocation(line: 370, column: 6, scope: !4262, inlinedAt: !5942)
!6070 = !DILocation(line: 370, column: 26, scope: !4980, inlinedAt: !5942)
!6071 = !DILocation(line: 371, column: 6, scope: !4985, inlinedAt: !5942)
!6072 = !DILocation(line: 371, column: 11, scope: !4985, inlinedAt: !5942)
!6073 = !DILocation(line: 371, column: 6, scope: !4262, inlinedAt: !5942)
!6074 = !DILocation(line: 371, column: 26, scope: !4985, inlinedAt: !5942)
!6075 = !DILocation(line: 372, column: 6, scope: !4990, inlinedAt: !5942)
!6076 = !DILocation(line: 372, column: 11, scope: !4990, inlinedAt: !5942)
!6077 = !DILocation(line: 372, column: 6, scope: !4262, inlinedAt: !5942)
!6078 = !DILocation(line: 372, column: 26, scope: !4990, inlinedAt: !5942)
!6079 = !DILocation(line: 373, column: 6, scope: !4995, inlinedAt: !5942)
!6080 = !DILocation(line: 373, column: 11, scope: !4995, inlinedAt: !5942)
!6081 = !DILocation(line: 373, column: 6, scope: !4262, inlinedAt: !5942)
!6082 = !DILocation(line: 373, column: 26, scope: !4995, inlinedAt: !5942)
!6083 = !DILocation(line: 374, column: 6, scope: !5000, inlinedAt: !5942)
!6084 = !DILocation(line: 374, column: 11, scope: !5000, inlinedAt: !5942)
!6085 = !DILocation(line: 374, column: 6, scope: !4262, inlinedAt: !5942)
!6086 = !DILocation(line: 374, column: 26, scope: !5000, inlinedAt: !5942)
!6087 = !DILocation(line: 375, column: 6, scope: !5005, inlinedAt: !5942)
!6088 = !DILocation(line: 375, column: 11, scope: !5005, inlinedAt: !5942)
!6089 = !DILocation(line: 375, column: 6, scope: !4262, inlinedAt: !5942)
!6090 = !DILocation(line: 375, column: 27, scope: !5005, inlinedAt: !5942)
!6091 = !DILocation(line: 376, column: 6, scope: !5010, inlinedAt: !5942)
!6092 = !DILocation(line: 376, column: 11, scope: !5010, inlinedAt: !5942)
!6093 = !DILocation(line: 376, column: 6, scope: !4262, inlinedAt: !5942)
!6094 = !DILocation(line: 376, column: 32, scope: !5010, inlinedAt: !5942)
!6095 = !DILocation(line: 377, column: 6, scope: !5015, inlinedAt: !5942)
!6096 = !DILocation(line: 377, column: 11, scope: !5015, inlinedAt: !5942)
!6097 = !DILocation(line: 377, column: 6, scope: !4262, inlinedAt: !5942)
!6098 = !DILocation(line: 377, column: 32, scope: !5015, inlinedAt: !5942)
!6099 = !DILocation(line: 378, column: 6, scope: !5020, inlinedAt: !5942)
!6100 = !DILocation(line: 378, column: 11, scope: !5020, inlinedAt: !5942)
!6101 = !DILocation(line: 378, column: 6, scope: !4262, inlinedAt: !5942)
!6102 = !DILocation(line: 378, column: 32, scope: !5020, inlinedAt: !5942)
!6103 = !DILocation(line: 379, column: 6, scope: !5025, inlinedAt: !5942)
!6104 = !DILocation(line: 379, column: 11, scope: !5025, inlinedAt: !5942)
!6105 = !DILocation(line: 379, column: 6, scope: !4262, inlinedAt: !5942)
!6106 = !DILocation(line: 379, column: 33, scope: !5025, inlinedAt: !5942)
!6107 = !DILocation(line: 380, column: 6, scope: !5030, inlinedAt: !5942)
!6108 = !DILocation(line: 380, column: 11, scope: !5030, inlinedAt: !5942)
!6109 = !DILocation(line: 380, column: 6, scope: !4262, inlinedAt: !5942)
!6110 = !DILocation(line: 380, column: 33, scope: !5030, inlinedAt: !5942)
!6111 = !DILocation(line: 381, column: 6, scope: !5035, inlinedAt: !5942)
!6112 = !DILocation(line: 381, column: 11, scope: !5035, inlinedAt: !5942)
!6113 = !DILocation(line: 381, column: 6, scope: !4262, inlinedAt: !5942)
!6114 = !DILocation(line: 381, column: 33, scope: !5035, inlinedAt: !5942)
!6115 = !DILocation(line: 382, column: 2, scope: !5040, inlinedAt: !5942)
!6116 = !DILocation(line: 382, column: 2, scope: !5044, inlinedAt: !5942)
!6117 = !DILocation(line: 382, column: 2, scope: !5045, inlinedAt: !5942)
!6118 = !DILocation(line: 386, column: 1, scope: !4262, inlinedAt: !5942)
!6119 = !DILocation(line: 547, column: 9, scope: !4243, inlinedAt: !5935)
!6120 = !DILocation(line: 549, column: 8, scope: !5051, inlinedAt: !5935)
!6121 = !DILocation(line: 549, column: 7, scope: !4243, inlinedAt: !5935)
!6122 = !DILocation(line: 550, column: 4, scope: !5051, inlinedAt: !5935)
!6123 = !DILocation(line: 553, column: 33, scope: !4243, inlinedAt: !5935)
!6124 = !DILocation(line: 325, column: 6, scope: !5056, inlinedAt: !5940)
!6125 = !DILocation(line: 325, column: 6, scope: !4256, inlinedAt: !5940)
!6126 = !DILocation(line: 326, column: 3, scope: !5056, inlinedAt: !5940)
!6127 = !DILocation(line: 332, column: 9, scope: !4256, inlinedAt: !5940)
!6128 = !DILocation(line: 332, column: 15, scope: !4256, inlinedAt: !5940)
!6129 = !DILocation(line: 332, column: 2, scope: !4256, inlinedAt: !5940)
!6130 = !DILocation(line: 336, column: 1, scope: !4256, inlinedAt: !5940)
!6131 = !DILocation(line: 553, column: 5, scope: !4243, inlinedAt: !5935)
!6132 = !DILocation(line: 553, column: 41, scope: !4243, inlinedAt: !5935)
!6133 = !DILocation(line: 554, column: 5, scope: !4243, inlinedAt: !5935)
!6134 = !DILocation(line: 554, column: 12, scope: !4243, inlinedAt: !5935)
!6135 = !DILocation(line: 448, column: 31, scope: !4238, inlinedAt: !5934)
!6136 = !DILocation(line: 448, column: 34, scope: !4238, inlinedAt: !5934)
!6137 = !DILocation(line: 448, column: 14, scope: !4238, inlinedAt: !5934)
!6138 = !DILocation(line: 450, column: 22, scope: !4238, inlinedAt: !5934)
!6139 = !DILocation(line: 450, column: 25, scope: !4238, inlinedAt: !5934)
!6140 = !DILocation(line: 450, column: 30, scope: !4238, inlinedAt: !5934)
!6141 = !DILocation(line: 450, column: 36, scope: !4238, inlinedAt: !5934)
!6142 = !DILocation(line: 450, column: 8, scope: !4238, inlinedAt: !5934)
!6143 = !DILocation(line: 450, column: 6, scope: !4238, inlinedAt: !5934)
!6144 = !DILocation(line: 451, column: 9, scope: !4238, inlinedAt: !5934)
!6145 = !DILocation(line: 552, column: 3, scope: !4243, inlinedAt: !5935)
!6146 = !DILocation(line: 557, column: 19, scope: !4245, inlinedAt: !5935)
!6147 = !DILocation(line: 557, column: 25, scope: !4245, inlinedAt: !5935)
!6148 = !DILocation(line: 557, column: 9, scope: !4245, inlinedAt: !5935)
!6149 = !DILocation(line: 557, column: 2, scope: !4245, inlinedAt: !5935)
!6150 = !DILocation(line: 558, column: 1, scope: !4245, inlinedAt: !5935)
!6151 = !DILocation(line: 300, column: 8, scope: !5929)
!6152 = !DILocation(line: 300, column: 6, scope: !5929)
!6153 = !DILocation(line: 301, column: 7, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !5929, file: !3, line: 301, column: 6)
!6155 = !DILocation(line: 301, column: 6, scope: !5929)
!6156 = !DILocation(line: 302, column: 3, scope: !6154)
!6157 = !DILocation(line: 304, column: 9, scope: !6158)
!6158 = distinct !DILexicalBlock(scope: !5929, file: !3, line: 304, column: 2)
!6159 = !DILocation(line: 304, column: 7, scope: !6158)
!6160 = !DILocation(line: 304, column: 14, scope: !6161)
!6161 = distinct !DILexicalBlock(scope: !6158, file: !3, line: 304, column: 2)
!6162 = !DILocation(line: 304, column: 18, scope: !6161)
!6163 = !DILocation(line: 304, column: 16, scope: !6161)
!6164 = !DILocation(line: 304, column: 2, scope: !6158)
!6165 = !DILocalVariable(name: "v", scope: !6166, file: !3, line: 305, type: !187)
!6166 = distinct !DILexicalBlock(scope: !6161, file: !3, line: 304, column: 30)
!6167 = !DILocation(line: 305, column: 7, scope: !6166)
!6168 = !DILocalVariable(name: "__x", scope: !6169, file: !3, line: 305, type: !4796)
!6169 = distinct !DILexicalBlock(scope: !6166, file: !3, line: 305, column: 11)
!6170 = !DILocation(line: 305, column: 11, scope: !6169)
!6171 = !DILocalVariable(name: "__d", scope: !6169, file: !3, line: 305, type: !197)
!6172 = !DILocation(line: 305, column: 11, scope: !6166)
!6173 = !DILocation(line: 307, column: 8, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !6166, file: !3, line: 307, column: 7)
!6175 = !DILocation(line: 307, column: 7, scope: !6166)
!6176 = !DILocation(line: 308, column: 6, scope: !6174)
!6177 = !DILocation(line: 308, column: 4, scope: !6174)
!6178 = !DILocation(line: 309, column: 12, scope: !6166)
!6179 = !DILocation(line: 309, column: 3, scope: !6166)
!6180 = !DILocation(line: 309, column: 7, scope: !6166)
!6181 = !DILocation(line: 309, column: 10, scope: !6166)
!6182 = !DILocation(line: 310, column: 2, scope: !6166)
!6183 = !DILocation(line: 304, column: 26, scope: !6161)
!6184 = !DILocation(line: 304, column: 2, scope: !6161)
!6185 = distinct !{!6185, !6164, !6186}
!6186 = !DILocation(line: 310, column: 2, scope: !6158)
!6187 = !DILocation(line: 312, column: 2, scope: !5929)
!6188 = !DILocation(line: 312, column: 6, scope: !5929)
!6189 = !DILocation(line: 312, column: 13, scope: !5929)
!6190 = !DILocation(line: 314, column: 18, scope: !5929)
!6191 = !DILocation(line: 314, column: 2, scope: !5929)
!6192 = !DILocation(line: 314, column: 9, scope: !5929)
!6193 = !DILocation(line: 314, column: 16, scope: !5929)
!6194 = !DILocation(line: 315, column: 18, scope: !5929)
!6195 = !DILocation(line: 315, column: 2, scope: !5929)
!6196 = !DILocation(line: 315, column: 9, scope: !5929)
!6197 = !DILocation(line: 315, column: 16, scope: !5929)
!6198 = !DILocation(line: 316, column: 2, scope: !5929)
!6199 = !DILocation(line: 316, column: 9, scope: !5929)
!6200 = !DILocation(line: 316, column: 17, scope: !5929)
!6201 = !DILocation(line: 318, column: 22, scope: !5929)
!6202 = !DILocation(line: 318, column: 8, scope: !5929)
!6203 = !DILocation(line: 318, column: 6, scope: !5929)
!6204 = !DILocation(line: 320, column: 8, scope: !5929)
!6205 = !DILocation(line: 320, column: 2, scope: !5929)
!6206 = !DILocation(line: 322, column: 6, scope: !6207)
!6207 = distinct !DILexicalBlock(scope: !5929, file: !3, line: 322, column: 6)
!6208 = !DILocation(line: 322, column: 6, scope: !5929)
!6209 = !DILocation(line: 323, column: 3, scope: !6210)
!6210 = distinct !DILexicalBlock(scope: !6207, file: !3, line: 322, column: 11)
!6211 = !DILocation(line: 326, column: 15, scope: !6210)
!6212 = !DILocation(line: 326, column: 3, scope: !6210)
!6213 = !DILocation(line: 327, column: 10, scope: !6210)
!6214 = !DILocation(line: 327, column: 3, scope: !6210)
!6215 = !DILocation(line: 330, column: 6, scope: !6216)
!6216 = distinct !DILexicalBlock(scope: !5929, file: !3, line: 330, column: 6)
!6217 = !DILocation(line: 330, column: 14, scope: !6216)
!6218 = !DILocation(line: 330, column: 21, scope: !6216)
!6219 = !DILocation(line: 330, column: 11, scope: !6216)
!6220 = !DILocation(line: 330, column: 6, scope: !5929)
!6221 = !DILocation(line: 331, column: 3, scope: !6222)
!6222 = distinct !DILexicalBlock(scope: !6216, file: !3, line: 330, column: 30)
!6223 = !DILocation(line: 334, column: 15, scope: !6222)
!6224 = !DILocation(line: 334, column: 3, scope: !6222)
!6225 = !DILocation(line: 335, column: 3, scope: !6222)
!6226 = !DILocation(line: 338, column: 9, scope: !5929)
!6227 = !DILocation(line: 338, column: 2, scope: !5929)
!6228 = !DILocation(line: 339, column: 1, scope: !5929)
!6229 = distinct !DISubprogram(name: "usb_set_intfdata", scope: !6, file: !6, line: 268, type: !6230, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!6230 = !DISubroutineType(types: !6231)
!6231 = !{null, !4005, !192}
!6232 = !DILocalVariable(name: "intf", arg: 1, scope: !6229, file: !6, line: 268, type: !4005)
!6233 = !DILocation(line: 268, column: 59, scope: !6229)
!6234 = !DILocalVariable(name: "data", arg: 2, scope: !6229, file: !6, line: 268, type: !192)
!6235 = !DILocation(line: 268, column: 71, scope: !6229)
!6236 = !DILocation(line: 270, column: 19, scope: !6229)
!6237 = !DILocation(line: 270, column: 25, scope: !6229)
!6238 = !DILocation(line: 270, column: 30, scope: !6229)
!6239 = !DILocation(line: 270, column: 2, scope: !6229)
!6240 = !DILocation(line: 271, column: 1, scope: !6229)
!6241 = distinct !DISubprogram(name: "usb_endpoint_xfer_bulk", scope: !101, file: !101, line: 515, type: !5495, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!6242 = !DILocalVariable(name: "epd", arg: 1, scope: !6241, file: !101, line: 516, type: !5497)
!6243 = !DILocation(line: 516, column: 43, scope: !6241)
!6244 = !DILocation(line: 518, column: 11, scope: !6241)
!6245 = !DILocation(line: 518, column: 16, scope: !6241)
!6246 = !DILocation(line: 518, column: 29, scope: !6241)
!6247 = !DILocation(line: 518, column: 59, scope: !6241)
!6248 = !DILocation(line: 518, column: 2, scope: !6241)
!6249 = distinct !DISubprogram(name: "usb_endpoint_dir_in", scope: !101, file: !101, line: 492, type: !5495, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!6250 = !DILocalVariable(name: "epd", arg: 1, scope: !6249, file: !101, line: 492, type: !5497)
!6251 = !DILocation(line: 492, column: 77, scope: !6249)
!6252 = !DILocation(line: 494, column: 11, scope: !6249)
!6253 = !DILocation(line: 494, column: 16, scope: !6249)
!6254 = !DILocation(line: 494, column: 33, scope: !6249)
!6255 = !DILocation(line: 494, column: 58, scope: !6249)
!6256 = !DILocation(line: 494, column: 2, scope: !6249)
!6257 = distinct !DISubprogram(name: "usb_endpoint_dir_out", scope: !101, file: !101, line: 503, type: !5495, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!6258 = !DILocalVariable(name: "epd", arg: 1, scope: !6257, file: !101, line: 504, type: !5497)
!6259 = !DILocation(line: 504, column: 43, scope: !6257)
!6260 = !DILocation(line: 506, column: 11, scope: !6257)
!6261 = !DILocation(line: 506, column: 16, scope: !6257)
!6262 = !DILocation(line: 506, column: 33, scope: !6257)
!6263 = !DILocation(line: 506, column: 58, scope: !6257)
!6264 = !DILocation(line: 506, column: 2, scope: !6257)
!6265 = distinct !DISubprogram(name: "get_order", scope: !6266, file: !6266, line: 29, type: !6267, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!6266 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6267 = !DISubroutineType(types: !6268)
!6268 = !{!197, !338}
!6269 = !DILocalVariable(name: "x", arg: 1, scope: !6270, file: !6271, line: 366, type: !432)
!6270 = distinct !DISubprogram(name: "fls64", scope: !6271, file: !6271, line: 366, type: !6272, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!6271 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!6272 = !DISubroutineType(types: !6273)
!6273 = !{!197, !432}
!6274 = !DILocation(line: 366, column: 40, scope: !6270, inlinedAt: !6275)
!6275 = distinct !DILocation(line: 46, column: 9, scope: !6265)
!6276 = !DILocalVariable(name: "bitpos", scope: !6270, file: !6271, line: 368, type: !197)
!6277 = !DILocation(line: 368, column: 6, scope: !6270, inlinedAt: !6275)
!6278 = !DILocalVariable(name: "size", arg: 1, scope: !6265, file: !6266, line: 29, type: !338)
!6279 = !DILocation(line: 29, column: 63, scope: !6265)
!6280 = !DILocation(line: 31, column: 27, scope: !6281)
!6281 = distinct !DILexicalBlock(scope: !6265, file: !6266, line: 31, column: 6)
!6282 = !DILocation(line: 31, column: 6, scope: !6281)
!6283 = !DILocation(line: 31, column: 6, scope: !6265)
!6284 = !DILocation(line: 32, column: 8, scope: !6285)
!6285 = distinct !DILexicalBlock(scope: !6286, file: !6266, line: 32, column: 7)
!6286 = distinct !DILexicalBlock(scope: !6281, file: !6266, line: 31, column: 34)
!6287 = !DILocation(line: 32, column: 7, scope: !6286)
!6288 = !DILocation(line: 33, column: 4, scope: !6285)
!6289 = !DILocation(line: 35, column: 7, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !6286, file: !6266, line: 35, column: 7)
!6291 = !DILocation(line: 35, column: 12, scope: !6290)
!6292 = !DILocation(line: 35, column: 7, scope: !6286)
!6293 = !DILocation(line: 36, column: 4, scope: !6290)
!6294 = !DILocation(line: 38, column: 10, scope: !6286)
!6295 = !DILocation(line: 38, column: 28, scope: !6286)
!6296 = !DILocation(line: 38, column: 41, scope: !6286)
!6297 = !DILocation(line: 38, column: 3, scope: !6286)
!6298 = !DILocation(line: 41, column: 6, scope: !6265)
!6299 = !DILocation(line: 42, column: 7, scope: !6265)
!6300 = !DILocation(line: 46, column: 15, scope: !6265)
!6301 = !DILocation(line: 374, column: 2, scope: !6270, inlinedAt: !6275)
!6302 = !DILocation(line: 376, column: 14, scope: !6270, inlinedAt: !6275)
!6303 = !{i32 252724}
!6304 = !DILocation(line: 377, column: 9, scope: !6270, inlinedAt: !6275)
!6305 = !DILocation(line: 377, column: 16, scope: !6270, inlinedAt: !6275)
!6306 = !DILocation(line: 46, column: 2, scope: !6265)
!6307 = !DILocation(line: 48, column: 1, scope: !6265)
!6308 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6309, file: !6309, line: 30, type: !6310, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!6309 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6310 = !DISubroutineType(types: !6311)
!6311 = !{!197, !431}
!6312 = !DILocation(line: 366, column: 40, scope: !6270, inlinedAt: !6313)
!6313 = distinct !DILocation(line: 32, column: 9, scope: !6308)
!6314 = !DILocation(line: 368, column: 6, scope: !6270, inlinedAt: !6313)
!6315 = !DILocalVariable(name: "n", arg: 1, scope: !6308, file: !6309, line: 30, type: !431)
!6316 = !DILocation(line: 30, column: 21, scope: !6308)
!6317 = !DILocation(line: 32, column: 15, scope: !6308)
!6318 = !DILocation(line: 374, column: 2, scope: !6270, inlinedAt: !6313)
!6319 = !DILocation(line: 376, column: 14, scope: !6270, inlinedAt: !6313)
!6320 = !DILocation(line: 377, column: 9, scope: !6270, inlinedAt: !6313)
!6321 = !DILocation(line: 377, column: 16, scope: !6270, inlinedAt: !6313)
!6322 = !DILocation(line: 32, column: 18, scope: !6308)
!6323 = !DILocation(line: 32, column: 2, scope: !6308)
!6324 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6325, file: !6325, line: 137, type: !6326, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!6325 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6326 = !DISubroutineType(types: !6327)
!6327 = !{!192, !943, !2132, !335, !185}
!6328 = !DILocalVariable(name: "s", arg: 1, scope: !6324, file: !6325, line: 137, type: !943)
!6329 = !DILocation(line: 137, column: 54, scope: !6324)
!6330 = !DILocalVariable(name: "object", arg: 2, scope: !6324, file: !6325, line: 137, type: !2132)
!6331 = !DILocation(line: 137, column: 69, scope: !6324)
!6332 = !DILocalVariable(name: "size", arg: 3, scope: !6324, file: !6325, line: 138, type: !335)
!6333 = !DILocation(line: 138, column: 12, scope: !6324)
!6334 = !DILocalVariable(name: "flags", arg: 4, scope: !6324, file: !6325, line: 138, type: !185)
!6335 = !DILocation(line: 138, column: 24, scope: !6324)
!6336 = !DILocation(line: 140, column: 17, scope: !6324)
!6337 = !DILocation(line: 140, column: 2, scope: !6324)
!6338 = distinct !DISubprogram(name: "irtoy_response", scope: !3, file: !3, line: 78, type: !6339, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!6339 = !DISubroutineType(types: !6340)
!6340 = !{null, !4333, !204}
!6341 = !DILocalVariable(name: "p", arg: 1, scope: !6342, file: !6343, line: 171, type: !6346)
!6342 = distinct !DISubprogram(name: "__swab16p", scope: !6343, file: !6343, line: 171, type: !6344, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!6343 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!6344 = !DISubroutineType(types: !6345)
!6345 = !{!189, !6346}
!6346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6347, size: 64)
!6347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!6348 = !DILocation(line: 171, column: 53, scope: !6342, inlinedAt: !6349)
!6349 = distinct !DILocation(line: 90, column: 9, scope: !6350, inlinedAt: !6356)
!6350 = distinct !DISubprogram(name: "__be16_to_cpup", scope: !6351, file: !6351, line: 88, type: !6352, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!6351 = !DIFile(filename: "./include/uapi/linux/byteorder/little_endian.h", directory: "/home/lizy2001/genbc/linux")
!6352 = !DISubroutineType(types: !6353)
!6353 = !{!189, !6354}
!6354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6355, size: 64)
!6355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4114)
!6356 = distinct !DILocation(line: 25, column: 9, scope: !6357, inlinedAt: !6361)
!6357 = distinct !DISubprogram(name: "get_unaligned_be16", scope: !6358, file: !6358, line: 23, type: !6359, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!6358 = !DIFile(filename: "./include/linux/unaligned/access_ok.h", directory: "/home/lizy2001/genbc/linux")
!6359 = !DISubroutineType(types: !6360)
!6360 = !{!187, !2132}
!6361 = distinct !DILocation(line: 151, column: 19, scope: !6362)
!6362 = distinct !DILexicalBlock(scope: !6363, file: !3, line: 150, column: 41)
!6363 = distinct !DILexicalBlock(scope: !6364, file: !3, line: 149, column: 8)
!6364 = distinct !DILexicalBlock(scope: !6365, file: !3, line: 148, column: 27)
!6365 = distinct !DILexicalBlock(scope: !6366, file: !3, line: 148, column: 7)
!6366 = distinct !DILexicalBlock(scope: !6338, file: !3, line: 80, column: 24)
!6367 = !DILocalVariable(name: "p", arg: 1, scope: !6350, file: !6351, line: 88, type: !6354)
!6368 = !DILocation(line: 88, column: 59, scope: !6350, inlinedAt: !6356)
!6369 = !DILocalVariable(name: "p", arg: 1, scope: !6357, file: !6358, line: 23, type: !2132)
!6370 = !DILocation(line: 23, column: 59, scope: !6357, inlinedAt: !6361)
!6371 = !DILocalVariable(name: "irtoy", arg: 1, scope: !6338, file: !3, line: 78, type: !4333)
!6372 = !DILocation(line: 78, column: 42, scope: !6338)
!6373 = !DILocalVariable(name: "len", arg: 2, scope: !6338, file: !3, line: 78, type: !204)
!6374 = !DILocation(line: 78, column: 53, scope: !6338)
!6375 = !DILocation(line: 80, column: 10, scope: !6338)
!6376 = !DILocation(line: 80, column: 17, scope: !6338)
!6377 = !DILocation(line: 80, column: 2, scope: !6338)
!6378 = !DILocation(line: 82, column: 7, scope: !6379)
!6379 = distinct !DILexicalBlock(scope: !6366, file: !3, line: 82, column: 7)
!6380 = !DILocation(line: 82, column: 11, scope: !6379)
!6381 = !DILocation(line: 82, column: 26, scope: !6379)
!6382 = !DILocation(line: 82, column: 29, scope: !6379)
!6383 = !DILocation(line: 82, column: 36, scope: !6379)
!6384 = !DILocation(line: 82, column: 42, scope: !6379)
!6385 = !DILocation(line: 82, column: 7, scope: !6366)
!6386 = !DILocalVariable(name: "version", scope: !6387, file: !3, line: 83, type: !4796)
!6387 = distinct !DILexicalBlock(scope: !6379, file: !3, line: 82, column: 60)
!6388 = !DILocation(line: 83, column: 9, scope: !6387)
!6389 = !DILocation(line: 85, column: 4, scope: !6387)
!6390 = !DILocation(line: 85, column: 11, scope: !6387)
!6391 = !DILocation(line: 85, column: 27, scope: !6387)
!6392 = !DILocation(line: 87, column: 19, scope: !6393)
!6393 = distinct !DILexicalBlock(scope: !6387, file: !3, line: 87, column: 8)
!6394 = !DILocation(line: 87, column: 26, scope: !6393)
!6395 = !DILocation(line: 87, column: 29, scope: !6393)
!6396 = !DILocation(line: 87, column: 8, scope: !6393)
!6397 = !DILocation(line: 87, column: 8, scope: !6387)
!6398 = !DILocation(line: 88, column: 5, scope: !6399)
!6399 = distinct !DILexicalBlock(scope: !6393, file: !3, line: 87, column: 49)
!6400 = !DILocation(line: 90, column: 5, scope: !6399)
!6401 = !DILocation(line: 95, column: 24, scope: !6387)
!6402 = !DILocation(line: 95, column: 32, scope: !6387)
!6403 = !DILocation(line: 95, column: 4, scope: !6387)
!6404 = !DILocation(line: 95, column: 11, scope: !6387)
!6405 = !DILocation(line: 95, column: 22, scope: !6387)
!6406 = !DILocation(line: 96, column: 24, scope: !6387)
!6407 = !DILocation(line: 96, column: 32, scope: !6387)
!6408 = !DILocation(line: 96, column: 4, scope: !6387)
!6409 = !DILocation(line: 96, column: 11, scope: !6387)
!6410 = !DILocation(line: 96, column: 22, scope: !6387)
!6411 = !DILocation(line: 98, column: 4, scope: !6387)
!6412 = !DILocation(line: 98, column: 11, scope: !6387)
!6413 = !DILocation(line: 98, column: 17, scope: !6387)
!6414 = !DILocation(line: 99, column: 14, scope: !6387)
!6415 = !DILocation(line: 99, column: 21, scope: !6387)
!6416 = !DILocation(line: 99, column: 4, scope: !6387)
!6417 = !DILocation(line: 100, column: 3, scope: !6387)
!6418 = !DILocation(line: 100, column: 14, scope: !6419)
!6419 = distinct !DILexicalBlock(scope: !6379, file: !3, line: 100, column: 14)
!6420 = !DILocation(line: 100, column: 18, scope: !6419)
!6421 = !DILocation(line: 100, column: 41, scope: !6419)
!6422 = !DILocation(line: 101, column: 7, scope: !6419)
!6423 = !DILocation(line: 101, column: 14, scope: !6419)
!6424 = !DILocation(line: 101, column: 20, scope: !6419)
!6425 = !DILocation(line: 100, column: 14, scope: !6379)
!6426 = !DILocalVariable(name: "version", scope: !6427, file: !3, line: 102, type: !4796)
!6427 = distinct !DILexicalBlock(scope: !6419, file: !3, line: 101, column: 46)
!6428 = !DILocation(line: 102, column: 9, scope: !6427)
!6429 = !DILocation(line: 104, column: 4, scope: !6427)
!6430 = !DILocation(line: 104, column: 11, scope: !6427)
!6431 = !DILocation(line: 104, column: 35, scope: !6427)
!6432 = !DILocation(line: 106, column: 19, scope: !6433)
!6433 = distinct !DILexicalBlock(scope: !6427, file: !3, line: 106, column: 8)
!6434 = !DILocation(line: 106, column: 26, scope: !6433)
!6435 = !DILocation(line: 106, column: 29, scope: !6433)
!6436 = !DILocation(line: 106, column: 8, scope: !6433)
!6437 = !DILocation(line: 106, column: 8, scope: !6427)
!6438 = !DILocation(line: 107, column: 5, scope: !6439)
!6439 = distinct !DILexicalBlock(scope: !6433, file: !3, line: 106, column: 49)
!6440 = !DILocation(line: 109, column: 5, scope: !6439)
!6441 = !DILocation(line: 114, column: 27, scope: !6427)
!6442 = !DILocation(line: 114, column: 4, scope: !6427)
!6443 = !DILocation(line: 114, column: 11, scope: !6427)
!6444 = !DILocation(line: 114, column: 25, scope: !6427)
!6445 = !DILocation(line: 116, column: 4, scope: !6427)
!6446 = !DILocation(line: 116, column: 11, scope: !6427)
!6447 = !DILocation(line: 116, column: 17, scope: !6427)
!6448 = !DILocation(line: 117, column: 14, scope: !6427)
!6449 = !DILocation(line: 117, column: 21, scope: !6427)
!6450 = !DILocation(line: 117, column: 4, scope: !6427)
!6451 = !DILocation(line: 118, column: 3, scope: !6427)
!6452 = !DILocation(line: 119, column: 4, scope: !6453)
!6453 = distinct !DILexicalBlock(scope: !6419, file: !3, line: 118, column: 10)
!6454 = !DILocation(line: 122, column: 3, scope: !6366)
!6455 = !DILocalVariable(name: "rawir", scope: !6456, file: !3, line: 124, type: !6457)
!6456 = distinct !DILexicalBlock(scope: !6366, file: !3, line: 123, column: 21)
!6457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ir_raw_event", file: !158, line: 299, size: 64, elements: !6458)
!6458 = !{!6459, !6464, !6465, !6466, !6467, !6468}
!6459 = !DIDerivedType(tag: DW_TAG_member, scope: !6457, file: !158, line: 300, baseType: !6460, size: 32)
!6460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6457, file: !158, line: 300, size: 32, elements: !6461)
!6461 = !{!6462, !6463}
!6462 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !6460, file: !158, line: 301, baseType: !204, size: 32)
!6463 = !DIDerivedType(tag: DW_TAG_member, name: "carrier", scope: !6460, file: !158, line: 302, baseType: !204, size: 32)
!6464 = !DIDerivedType(tag: DW_TAG_member, name: "duty_cycle", scope: !6457, file: !158, line: 304, baseType: !1360, size: 8, offset: 32)
!6465 = !DIDerivedType(tag: DW_TAG_member, name: "pulse", scope: !6457, file: !158, line: 306, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 40)
!6466 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !6457, file: !158, line: 307, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 40)
!6467 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !6457, file: !158, line: 308, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 40)
!6468 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_report", scope: !6457, file: !158, line: 309, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 40)
!6469 = !DILocation(line: 124, column: 23, scope: !6456)
!6470 = !DILocation(line: 124, column: 31, scope: !6456)
!6471 = !DILocation(line: 124, column: 42, scope: !6456)
!6472 = !DILocation(line: 124, column: 49, scope: !6456)
!6473 = !DILocalVariable(name: "in", scope: !6456, file: !3, line: 125, type: !4113)
!6474 = !DILocation(line: 125, column: 11, scope: !6456)
!6475 = !DILocation(line: 125, column: 26, scope: !6456)
!6476 = !DILocation(line: 125, column: 33, scope: !6456)
!6477 = !DILocation(line: 125, column: 16, scope: !6456)
!6478 = !DILocalVariable(name: "i", scope: !6456, file: !3, line: 126, type: !197)
!6479 = !DILocation(line: 126, column: 7, scope: !6456)
!6480 = !DILocation(line: 128, column: 10, scope: !6481)
!6481 = distinct !DILexicalBlock(scope: !6456, file: !3, line: 128, column: 3)
!6482 = !DILocation(line: 128, column: 8, scope: !6481)
!6483 = !DILocation(line: 128, column: 15, scope: !6484)
!6484 = distinct !DILexicalBlock(scope: !6481, file: !3, line: 128, column: 3)
!6485 = !DILocation(line: 128, column: 19, scope: !6484)
!6486 = !DILocation(line: 128, column: 23, scope: !6484)
!6487 = !DILocation(line: 128, column: 17, scope: !6484)
!6488 = !DILocation(line: 128, column: 3, scope: !6481)
!6489 = !DILocalVariable(name: "v", scope: !6490, file: !3, line: 129, type: !187)
!6490 = distinct !DILexicalBlock(scope: !6484, file: !3, line: 128, column: 46)
!6491 = !DILocation(line: 129, column: 8, scope: !6490)
!6492 = !DILocation(line: 129, column: 12, scope: !6490)
!6493 = !DILocation(line: 131, column: 8, scope: !6494)
!6494 = distinct !DILexicalBlock(scope: !6490, file: !3, line: 131, column: 8)
!6495 = !DILocation(line: 131, column: 10, scope: !6494)
!6496 = !DILocation(line: 131, column: 8, scope: !6490)
!6497 = !DILocation(line: 132, column: 11, scope: !6498)
!6498 = distinct !DILexicalBlock(scope: !6494, file: !3, line: 131, column: 21)
!6499 = !DILocation(line: 132, column: 17, scope: !6498)
!6500 = !DILocation(line: 133, column: 4, scope: !6498)
!6501 = !DILocation(line: 134, column: 22, scope: !6502)
!6502 = distinct !DILexicalBlock(scope: !6494, file: !3, line: 133, column: 11)
!6503 = !DILocation(line: 134, column: 24, scope: !6502)
!6504 = !DILocation(line: 134, column: 11, scope: !6502)
!6505 = !DILocation(line: 134, column: 20, scope: !6502)
!6506 = !DILocation(line: 135, column: 37, scope: !6502)
!6507 = !DILocation(line: 135, column: 44, scope: !6502)
!6508 = !DILocation(line: 135, column: 5, scope: !6502)
!6509 = !DILocation(line: 139, column: 25, scope: !6490)
!6510 = !DILocation(line: 139, column: 18, scope: !6490)
!6511 = !DILocation(line: 139, column: 10, scope: !6490)
!6512 = !DILocation(line: 139, column: 16, scope: !6490)
!6513 = !DILocation(line: 140, column: 3, scope: !6490)
!6514 = !DILocation(line: 128, column: 42, scope: !6484)
!6515 = !DILocation(line: 128, column: 3, scope: !6484)
!6516 = distinct !{!6516, !6488, !6517}
!6517 = !DILocation(line: 140, column: 3, scope: !6481)
!6518 = !DILocation(line: 142, column: 24, scope: !6456)
!6519 = !DILocation(line: 142, column: 18, scope: !6456)
!6520 = !DILocation(line: 142, column: 3, scope: !6456)
!6521 = !DILocation(line: 142, column: 10, scope: !6456)
!6522 = !DILocation(line: 142, column: 16, scope: !6456)
!6523 = !DILocation(line: 144, column: 23, scope: !6456)
!6524 = !DILocation(line: 144, column: 30, scope: !6456)
!6525 = !DILocation(line: 144, column: 3, scope: !6456)
!6526 = !DILocation(line: 145, column: 3, scope: !6456)
!6527 = !DILocation(line: 148, column: 7, scope: !6365)
!6528 = !DILocation(line: 148, column: 14, scope: !6365)
!6529 = !DILocation(line: 148, column: 21, scope: !6365)
!6530 = !DILocation(line: 148, column: 7, scope: !6366)
!6531 = !DILocation(line: 149, column: 8, scope: !6363)
!6532 = !DILocation(line: 149, column: 12, scope: !6363)
!6533 = !DILocation(line: 149, column: 27, scope: !6363)
!6534 = !DILocation(line: 150, column: 8, scope: !6363)
!6535 = !DILocation(line: 150, column: 15, scope: !6363)
!6536 = !DILocation(line: 150, column: 21, scope: !6363)
!6537 = !DILocation(line: 149, column: 8, scope: !6364)
!6538 = !DILocalVariable(name: "emitted", scope: !6362, file: !3, line: 151, type: !187)
!6539 = !DILocation(line: 151, column: 9, scope: !6362)
!6540 = !DILocation(line: 151, column: 38, scope: !6362)
!6541 = !DILocation(line: 151, column: 45, scope: !6362)
!6542 = !DILocation(line: 151, column: 48, scope: !6362)
!6543 = !DILocation(line: 25, column: 32, scope: !6357, inlinedAt: !6361)
!6544 = !DILocation(line: 25, column: 22, scope: !6357, inlinedAt: !6361)
!6545 = !DILocation(line: 90, column: 28, scope: !6350, inlinedAt: !6356)
!6546 = !DILocation(line: 176, column: 9, scope: !6342, inlinedAt: !6349)
!6547 = !DILocation(line: 155, column: 22, scope: !6362)
!6548 = !DILocation(line: 155, column: 5, scope: !6362)
!6549 = !DILocation(line: 155, column: 12, scope: !6362)
!6550 = !DILocation(line: 155, column: 20, scope: !6362)
!6551 = !DILocation(line: 156, column: 4, scope: !6362)
!6552 = !DILocation(line: 156, column: 15, scope: !6553)
!6553 = distinct !DILexicalBlock(scope: !6363, file: !3, line: 156, column: 15)
!6554 = !DILocation(line: 156, column: 19, scope: !6553)
!6555 = !DILocation(line: 156, column: 24, scope: !6553)
!6556 = !DILocation(line: 157, column: 8, scope: !6553)
!6557 = !DILocation(line: 157, column: 15, scope: !6553)
!6558 = !DILocation(line: 157, column: 21, scope: !6553)
!6559 = !DILocation(line: 156, column: 15, scope: !6363)
!6560 = !DILocation(line: 158, column: 5, scope: !6561)
!6561 = distinct !DILexicalBlock(scope: !6553, file: !3, line: 157, column: 43)
!6562 = !DILocation(line: 158, column: 12, scope: !6561)
!6563 = !DILocation(line: 158, column: 18, scope: !6561)
!6564 = !DILocation(line: 159, column: 15, scope: !6561)
!6565 = !DILocation(line: 159, column: 22, scope: !6561)
!6566 = !DILocation(line: 159, column: 5, scope: !6561)
!6567 = !DILocation(line: 160, column: 4, scope: !6561)
!6568 = !DILocation(line: 161, column: 3, scope: !6364)
!6569 = !DILocalVariable(name: "space", scope: !6570, file: !3, line: 163, type: !4796)
!6570 = distinct !DILexicalBlock(scope: !6365, file: !3, line: 161, column: 10)
!6571 = !DILocation(line: 163, column: 9, scope: !6570)
!6572 = !DILocation(line: 163, column: 17, scope: !6570)
!6573 = !DILocation(line: 163, column: 24, scope: !6570)
!6574 = !DILocalVariable(name: "buf_len", scope: !6570, file: !3, line: 164, type: !4796)
!6575 = !DILocation(line: 164, column: 9, scope: !6570)
!6576 = !DILocalVariable(name: "err", scope: !6570, file: !3, line: 165, type: !197)
!6577 = !DILocation(line: 165, column: 8, scope: !6570)
!6578 = !DILocation(line: 167, column: 8, scope: !6579)
!6579 = distinct !DILexicalBlock(scope: !6570, file: !3, line: 167, column: 8)
!6580 = !DILocation(line: 167, column: 12, scope: !6579)
!6581 = !DILocation(line: 167, column: 17, scope: !6579)
!6582 = !DILocation(line: 167, column: 20, scope: !6579)
!6583 = !DILocation(line: 167, column: 26, scope: !6579)
!6584 = !DILocation(line: 167, column: 39, scope: !6579)
!6585 = !DILocation(line: 167, column: 42, scope: !6579)
!6586 = !DILocation(line: 167, column: 48, scope: !6579)
!6587 = !DILocation(line: 167, column: 8, scope: !6570)
!6588 = !DILocation(line: 168, column: 5, scope: !6589)
!6589 = distinct !DILexicalBlock(scope: !6579, file: !3, line: 167, column: 54)
!6590 = !DILocation(line: 170, column: 5, scope: !6589)
!6591 = !DILocation(line: 170, column: 12, scope: !6589)
!6592 = !DILocation(line: 170, column: 18, scope: !6589)
!6593 = !DILocation(line: 171, column: 15, scope: !6589)
!6594 = !DILocation(line: 171, column: 22, scope: !6589)
!6595 = !DILocation(line: 171, column: 5, scope: !6589)
!6596 = !DILocation(line: 172, column: 5, scope: !6589)
!6597 = !DILocalVariable(name: "__UNIQUE_ID___x237", scope: !6598, file: !3, line: 175, type: !4796)
!6598 = distinct !DILexicalBlock(scope: !6570, file: !3, line: 175, column: 14)
!6599 = !DILocation(line: 175, column: 14, scope: !6598)
!6600 = !DILocalVariable(name: "__UNIQUE_ID___y238", scope: !6598, file: !3, line: 175, type: !4796)
!6601 = !DILocation(line: 175, column: 12, scope: !6570)
!6602 = !DILocation(line: 180, column: 11, scope: !6570)
!6603 = !DILocation(line: 180, column: 18, scope: !6570)
!6604 = !DILocation(line: 180, column: 23, scope: !6570)
!6605 = !DILocation(line: 180, column: 30, scope: !6570)
!6606 = !DILocation(line: 180, column: 38, scope: !6570)
!6607 = !DILocation(line: 180, column: 4, scope: !6570)
!6608 = !DILocation(line: 181, column: 45, scope: !6570)
!6609 = !DILocation(line: 181, column: 4, scope: !6570)
!6610 = !DILocation(line: 181, column: 11, scope: !6570)
!6611 = !DILocation(line: 181, column: 20, scope: !6570)
!6612 = !DILocation(line: 181, column: 43, scope: !6570)
!6613 = !DILocation(line: 182, column: 25, scope: !6570)
!6614 = !DILocation(line: 182, column: 32, scope: !6570)
!6615 = !DILocation(line: 182, column: 10, scope: !6570)
!6616 = !DILocation(line: 182, column: 8, scope: !6570)
!6617 = !DILocation(line: 183, column: 8, scope: !6618)
!6618 = distinct !DILexicalBlock(scope: !6570, file: !3, line: 183, column: 8)
!6619 = !DILocation(line: 183, column: 12, scope: !6618)
!6620 = !DILocation(line: 183, column: 8, scope: !6570)
!6621 = !DILocation(line: 184, column: 5, scope: !6622)
!6622 = distinct !DILexicalBlock(scope: !6618, file: !3, line: 183, column: 18)
!6623 = !DILocation(line: 186, column: 5, scope: !6622)
!6624 = !DILocation(line: 186, column: 12, scope: !6622)
!6625 = !DILocation(line: 186, column: 18, scope: !6622)
!6626 = !DILocation(line: 187, column: 15, scope: !6622)
!6627 = !DILocation(line: 187, column: 22, scope: !6622)
!6628 = !DILocation(line: 187, column: 5, scope: !6622)
!6629 = !DILocation(line: 188, column: 5, scope: !6622)
!6630 = !DILocation(line: 191, column: 21, scope: !6570)
!6631 = !DILocation(line: 191, column: 4, scope: !6570)
!6632 = !DILocation(line: 191, column: 11, scope: !6570)
!6633 = !DILocation(line: 191, column: 18, scope: !6570)
!6634 = !DILocation(line: 192, column: 21, scope: !6570)
!6635 = !DILocation(line: 192, column: 4, scope: !6570)
!6636 = !DILocation(line: 192, column: 11, scope: !6570)
!6637 = !DILocation(line: 192, column: 18, scope: !6570)
!6638 = !DILocation(line: 194, column: 3, scope: !6366)
!6639 = !DILocation(line: 196, column: 3, scope: !6366)
!6640 = !DILocation(line: 198, column: 2, scope: !6366)
!6641 = !DILocation(line: 199, column: 1, scope: !6338)
!6642 = distinct !DISubprogram(name: "__fswab16", scope: !6343, file: !6343, line: 48, type: !6643, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!6643 = !DISubroutineType(types: !6644)
!6644 = !{!189, !189}
!6645 = !DILocalVariable(name: "val", arg: 1, scope: !6642, file: !6343, line: 48, type: !189)
!6646 = !DILocation(line: 48, column: 57, scope: !6642)
!6647 = !DILocation(line: 53, column: 9, scope: !6642)
!6648 = !DILocation(line: 53, column: 2, scope: !6642)
!6649 = distinct !DISubprogram(name: "irtoy_command", scope: !3, file: !3, line: 228, type: !6650, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!6650 = !DISubroutineType(types: !6651)
!6651 = !{!197, !4333, !6652, !197, !163}
!6652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!6653 = !DILocalVariable(name: "m", arg: 1, scope: !6654, file: !6655, line: 363, type: !2832)
!6654 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !6655, file: !6655, line: 363, type: !6656, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!6655 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!6656 = !DISubroutineType(types: !6657)
!6657 = !{!338, !2832}
!6658 = !DILocation(line: 363, column: 74, scope: !6654, inlinedAt: !6659)
!6659 = distinct !DILocation(line: 245, column: 7, scope: !6660)
!6660 = distinct !DILexicalBlock(scope: !6649, file: !3, line: 244, column: 6)
!6661 = !DILocalVariable(name: "irtoy", arg: 1, scope: !6649, file: !3, line: 228, type: !4333)
!6662 = !DILocation(line: 228, column: 40, scope: !6649)
!6663 = !DILocalVariable(name: "cmd", arg: 2, scope: !6649, file: !3, line: 228, type: !6652)
!6664 = !DILocation(line: 228, column: 57, scope: !6649)
!6665 = !DILocalVariable(name: "cmd_len", arg: 3, scope: !6649, file: !3, line: 228, type: !197)
!6666 = !DILocation(line: 228, column: 66, scope: !6649)
!6667 = !DILocalVariable(name: "state", arg: 4, scope: !6649, file: !3, line: 229, type: !163)
!6668 = !DILocation(line: 229, column: 16, scope: !6649)
!6669 = !DILocalVariable(name: "err", scope: !6649, file: !3, line: 231, type: !197)
!6670 = !DILocation(line: 231, column: 6, scope: !6649)
!6671 = !DILocation(line: 233, column: 2, scope: !6649)
!6672 = !DILocation(line: 235, column: 17, scope: !6649)
!6673 = !DILocation(line: 235, column: 2, scope: !6649)
!6674 = !DILocation(line: 235, column: 9, scope: !6649)
!6675 = !DILocation(line: 235, column: 15, scope: !6649)
!6676 = !DILocation(line: 237, column: 9, scope: !6649)
!6677 = !DILocation(line: 237, column: 16, scope: !6649)
!6678 = !DILocation(line: 237, column: 21, scope: !6649)
!6679 = !DILocation(line: 237, column: 26, scope: !6649)
!6680 = !DILocation(line: 237, column: 2, scope: !6649)
!6681 = !DILocation(line: 238, column: 43, scope: !6649)
!6682 = !DILocation(line: 238, column: 2, scope: !6649)
!6683 = !DILocation(line: 238, column: 9, scope: !6649)
!6684 = !DILocation(line: 238, column: 18, scope: !6649)
!6685 = !DILocation(line: 238, column: 41, scope: !6649)
!6686 = !DILocation(line: 240, column: 23, scope: !6649)
!6687 = !DILocation(line: 240, column: 30, scope: !6649)
!6688 = !DILocation(line: 240, column: 8, scope: !6649)
!6689 = !DILocation(line: 240, column: 6, scope: !6649)
!6690 = !DILocation(line: 241, column: 6, scope: !6691)
!6691 = distinct !DILexicalBlock(scope: !6649, file: !3, line: 241, column: 6)
!6692 = !DILocation(line: 241, column: 10, scope: !6691)
!6693 = !DILocation(line: 241, column: 6, scope: !6649)
!6694 = !DILocation(line: 242, column: 10, scope: !6691)
!6695 = !DILocation(line: 242, column: 3, scope: !6691)
!6696 = !DILocation(line: 244, column: 36, scope: !6660)
!6697 = !DILocation(line: 244, column: 43, scope: !6660)
!6698 = !DILocation(line: 365, column: 27, scope: !6699, inlinedAt: !6659)
!6699 = distinct !DILexicalBlock(scope: !6654, file: !6655, line: 365, column: 6)
!6700 = !DILocation(line: 365, column: 6, scope: !6699, inlinedAt: !6659)
!6701 = !DILocation(line: 365, column: 6, scope: !6654, inlinedAt: !6659)
!6702 = !DILocation(line: 366, column: 12, scope: !6703, inlinedAt: !6659)
!6703 = distinct !DILexicalBlock(scope: !6704, file: !6655, line: 366, column: 7)
!6704 = distinct !DILexicalBlock(scope: !6699, file: !6655, line: 365, column: 31)
!6705 = !DILocation(line: 366, column: 14, scope: !6703, inlinedAt: !6659)
!6706 = !DILocation(line: 366, column: 7, scope: !6704, inlinedAt: !6659)
!6707 = !DILocation(line: 367, column: 4, scope: !6703, inlinedAt: !6659)
!6708 = !DILocation(line: 368, column: 28, scope: !6704, inlinedAt: !6659)
!6709 = !DILocation(line: 368, column: 10, scope: !6704, inlinedAt: !6659)
!6710 = !DILocation(line: 368, column: 3, scope: !6704, inlinedAt: !6659)
!6711 = !DILocation(line: 370, column: 29, scope: !6712, inlinedAt: !6659)
!6712 = distinct !DILexicalBlock(scope: !6699, file: !6655, line: 369, column: 9)
!6713 = !DILocation(line: 370, column: 10, scope: !6712, inlinedAt: !6659)
!6714 = !DILocation(line: 370, column: 3, scope: !6712, inlinedAt: !6659)
!6715 = !DILocation(line: 372, column: 1, scope: !6654, inlinedAt: !6659)
!6716 = !DILocation(line: 244, column: 7, scope: !6660)
!6717 = !DILocation(line: 244, column: 6, scope: !6649)
!6718 = !DILocation(line: 246, column: 16, scope: !6719)
!6719 = distinct !DILexicalBlock(scope: !6660, file: !3, line: 245, column: 35)
!6720 = !DILocation(line: 246, column: 23, scope: !6719)
!6721 = !DILocation(line: 246, column: 3, scope: !6719)
!6722 = !DILocation(line: 247, column: 3, scope: !6719)
!6723 = !DILocation(line: 250, column: 2, scope: !6649)
!6724 = !DILocation(line: 251, column: 1, scope: !6649)
!6725 = !DILocalVariable(name: "x", arg: 1, scope: !4205, file: !1511, line: 85, type: !1509)
!6726 = !DILocation(line: 85, column: 57, scope: !4205)
!6727 = !DILocation(line: 87, column: 2, scope: !4205)
!6728 = !DILocation(line: 87, column: 5, scope: !4205)
!6729 = !DILocation(line: 87, column: 10, scope: !4205)
!6730 = !DILocation(line: 88, column: 2, scope: !4205)
!6731 = !DILocation(line: 88, column: 2, scope: !6732)
!6732 = distinct !DILexicalBlock(scope: !4205, file: !1511, line: 88, column: 2)
!6733 = !DILocation(line: 89, column: 1, scope: !4205)
!6734 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !6655, file: !6655, line: 308, type: !6656, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!6735 = !DILocalVariable(name: "m", arg: 1, scope: !6734, file: !6655, line: 308, type: !2832)
!6736 = !DILocation(line: 308, column: 66, scope: !6734)
!6737 = !DILocation(line: 310, column: 10, scope: !6734)
!6738 = !DILocation(line: 310, column: 12, scope: !6734)
!6739 = !DILocation(line: 310, column: 34, scope: !6734)
!6740 = !DILocation(line: 310, column: 39, scope: !6734)
!6741 = !DILocation(line: 310, column: 2, scope: !6734)
!6742 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !80, file: !80, line: 660, type: !6743, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!6743 = !DISubroutineType(types: !6744)
!6744 = !{null, !224, !192}
!6745 = !DILocalVariable(name: "dev", arg: 1, scope: !6742, file: !80, line: 660, type: !224)
!6746 = !DILocation(line: 660, column: 51, scope: !6742)
!6747 = !DILocalVariable(name: "data", arg: 2, scope: !6742, file: !80, line: 660, type: !192)
!6748 = !DILocation(line: 660, column: 62, scope: !6742)
!6749 = !DILocation(line: 662, column: 21, scope: !6742)
!6750 = !DILocation(line: 662, column: 2, scope: !6742)
!6751 = !DILocation(line: 662, column: 7, scope: !6742)
!6752 = !DILocation(line: 662, column: 19, scope: !6742)
!6753 = !DILocation(line: 663, column: 1, scope: !6742)
!6754 = distinct !DISubprogram(name: "usb_get_intfdata", scope: !6, file: !6, line: 263, type: !6755, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!6755 = !DISubroutineType(types: !6756)
!6756 = !{!192, !4005}
!6757 = !DILocalVariable(name: "intf", arg: 1, scope: !6754, file: !6, line: 263, type: !4005)
!6758 = !DILocation(line: 263, column: 60, scope: !6754)
!6759 = !DILocation(line: 265, column: 26, scope: !6754)
!6760 = !DILocation(line: 265, column: 32, scope: !6754)
!6761 = !DILocation(line: 265, column: 9, scope: !6754)
!6762 = !DILocation(line: 265, column: 2, scope: !6754)
!6763 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !80, file: !80, line: 655, type: !6764, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !262)
!6764 = !DISubroutineType(types: !6765)
!6765 = !{!192, !3722}
!6766 = !DILocalVariable(name: "dev", arg: 1, scope: !6763, file: !80, line: 655, type: !3722)
!6767 = !DILocation(line: 655, column: 58, scope: !6763)
!6768 = !DILocation(line: 657, column: 9, scope: !6763)
!6769 = !DILocation(line: 657, column: 14, scope: !6763)
!6770 = !DILocation(line: 657, column: 2, scope: !6763)
